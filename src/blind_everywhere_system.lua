-- BLIND SYSTEMS

---@type table<{calculate: fun(self:SMODS.Blind, context:CalcContext)}>
JoyousSpring.BES = {}

local smods_blind_inject_ref = SMODS.Blind.inject or function() end
SMODS.Blind.inject = function(self, i)
    smods_blind_inject_ref(self, i)
    if self.joy_calculate_ante then
        JoyousSpring.BES[self.key] = { calculate = self.joy_calculate_ante }
    end
end

local blind_defeat_ref = Blind.defeat
function Blind:defeat(silent)
    blind_defeat_ref(self, silent)
    G.GAME.joy_blind_defeated = true
end

---Runs when a blind is selected (initially or by rerolling)
---@param blind_type 'Small'|'Big'|'Boss'
---@param new_key string
---@param old_key string
JoyousSpring.blind_changed = function(blind_type, new_key, old_key)
    local new_blind = new_key and G.P_BLINDS[new_key]
    local old_blind = old_key and G.P_BLINDS[old_key]
    G.GAME.joy_active_blinds = G.GAME.joy_active_blinds or {}
    G.GAME.joy_disabled_blinds = G.GAME.joy_disabled_blinds or {}

    local update = false

    if old_blind then
        if not G.GAME.joy_blind_defeated and type(old_blind.joy_on_exit) == "function" then
            old_blind:joy_on_exit(blind_type)
        end
        if blind_type == "Boss" or (G.GAME.round_resets.blind_choices.Boss ~= old_key and
                (blind_type ~= "Small" or G.GAME.round_resets.blind_choices.Big ~= old_key)) then
            G.GAME.joy_active_blinds[old_key] = nil
            update = true
        end
    end

    if new_blind then
        if type(new_blind.joy_on_enter) == "function" then
            new_blind:joy_on_enter(blind_type)
        end
        if type(new_blind.joy_calculate_ante) == "function" then
            G.GAME.joy_active_blinds[new_key] = blind_type
            G.GAME.joy_disabled_blinds[new_key] = nil
            update = true
        end
    end

    if update then JoyousSpring.update_blind_effects_area() end

    G.GAME.joy_blind_defeated = nil
end

---Updates de cards in G.joy_blind_effects_area
JoyousSpring.update_blind_effects_area = function()
    if not G.joy_blind_effects_area or not G.joy_blind_effects_area.cards then return end
    local cards_in_area = {}
    for _, card in ipairs(G.joy_blind_effects_area.cards) do
        local blind_key = card.config.center.joy_blind_key
        if not blind_key or not G.GAME.joy_active_blinds[blind_key]
            or SMODS.is_active_blind(blind_key, true) then
            card:remove()
        else
            cards_in_area[blind_key] = true
        end
    end
    for key, _ in pairs(G.GAME.joy_active_blinds) do
        local prototype = G.P_BLINDS[key]
        if not SMODS.is_active_blind(blind_key, true) and prototype and prototype.joy_joker_key and not cards_in_area[prototype.joy_joker_key] then
            local created_card = SMODS.create_card { key = prototype.joy_joker_key, no_edition = true }
            G.joy_blind_effects_area:emplace(created_card)
        end
    end
    G.joy_blind_effects_area.states.visible = #G.joy_blind_effects_area.cards > 0
end

---Finds the appropriate card in G.joy_blind_effects_area
---@param key string key for the blind
---@return Card|table?
JoyousSpring.find_blind_effect_card = function(key)
    if not G.joy_blind_effects_area or not G.joy_blind_effects_area.cards then return end
    for _, card in ipairs(G.joy_blind_effects_area.cards) do
        if card.config.center.joy_blind_key == key then
            return card
        end
    end
end

---Returns if the blind allowed to lose without game over
---@return boolean
---@return string? #Saved text
JoyousSpring.was_saved_by_blind = function()
    local was_saved = false
    for key, _ in pairs(G.GAME.joy_active_blinds) do
        local prototype = G.P_BLINDS[key]
        was_saved = not not (prototype and (prototype.joy_joker_key or prototype.joy_blind_save))
    end
    if not G.GAME.blind.disabled and not G.GAME.joy_active_blinds[G.GAME.blind.config.blind.key] then
        local prototype = G.GAME.blind.config.blind
        was_saved = was_saved or not not (prototype and (prototype.joy_joker_key or prototype.joy_blind_save))
    end
    return was_saved, localize("k_joy_saved_by_blind")
end

---Runs at end of round when the blind allowed to lose without game over
JoyousSpring.blind_on_game_over = function()
    local disable = {}
    for key, _ in pairs(G.GAME.joy_active_blinds) do
        local prototype = G.P_BLINDS[key]
        if prototype then
            if prototype.joy_joker_key then
                SMODS.add_card { key = prototype.joy_joker_key, no_edition = true, area = JoyousSpring.opponent_area }
            end
            if type(prototype.joy_on_game_over) == "function" then
                prototype:joy_on_game_over()
            end
        end
        table.insert(disable, key)
    end
    if not G.GAME.blind.disabled and not G.GAME.joy_active_blinds[G.GAME.blind.config.blind.key] then
        local prototype = G.GAME.blind.config.blind
        if prototype.joy_joker_key then
            SMODS.add_card { key = prototype.joy_joker_key, no_edition = true, area = JoyousSpring.opponent_area }
        end
        if type(prototype.joy_on_game_over) == "function" then
            prototype:joy_on_game_over()
        end
    end
    for _, key in ipairs(disable) do
        G.GAME.joy_active_blinds[key] = nil
        G.GAME.joy_disabled_blinds[key] = true
    end
    JoyousSpring.update_blind_effects_area()
end

---Disables blind effects during the ante
---@param key string
JoyousSpring.disable_blind_ante = function(key)
    --TODO: For mod compat also run this after defeating a blind
    local prototype = G.P_BLINDS[key]

    if not SMODS.is_active_blind(key, true) then
        if G.GAME.joy_active_blinds[key] and prototype and type(prototype.joy_on_exit) == "function" then
            prototype:joy_on_exit(G.GAME.joy_active_blinds[key])
        end
    else
        if not G.GAME.blind.disabled then
            G.GAME.blind:disable()
        end
    end

    G.GAME.joy_active_blinds[key] = nil
    G.GAME.joy_disabled_blinds[key] = true
    JoyousSpring.update_blind_effects_area()
end

SMODS.current_mod.custom_card_areas = function(game)
    game.joy_blind_effects_area = CardArea(
        0, 0, game.CARD_W * 1.1, 0.7,
        {
            card_limit = 99,
            type = 'joker',
            highlight_limit = 0,
            negative_info = 'joker',
            no_card_count = true,
            --bg_colour = G.C.CLEAR
        })
    game.joy_opponent_area = CardArea(
        0, 0, game.CARD_W * 1.9, 0.7,
        {
            card_limit = 5,
            type = 'joker',
            highlight_limit = 0,
            negative_info = 'joker',
            bg_colour = { G.C.JOY.TRAP[1], G.C.JOY.TRAP[2], G.C.JOY.TRAP[3], 0.5 }
        })
    game.joy_blind_effects_area.states.visible = false
    game.joy_opponent_area.states.visible = false
end
