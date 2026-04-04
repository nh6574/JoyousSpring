-- BLIND SYSTEMS

---@type table<{calculate: fun(self:SMODS.Blind, context:CalcContext)}>
JoyousSpring.BES = {}

JoyousSpring.Blind = SMODS.Blind:extend {
    discovered = true,
    config = {},
    pos = { x = 0, y = 0 },
    boss = { min = 2 },
}

JoyousSpring.Blind.register = function(self)
    self.opponent_card.key = self.opponent_card.key or self.original_key
    self.opponent_card.atlas = (self.opponent_card.atlas or self.atlas)
    self.opponent_card.pos = self.opponent_card.pos or { x = self.pos.x, y = self.pos.y }
    self.opponent_card.joy_blind_key = self.opponent_card.joy_blind_key or self.key
    local og_loc_vars_ref = self.opponent_card.loc_vars
    self.opponent_card.loc_vars = function(opp_self, info_queue, card)
        local og_loc_vars
        if card.area and card.area == G.joy_blind_effects_area then
            if self.loc_vars then
                og_loc_vars = self:loc_vars()
            end
        elseif og_loc_vars_ref then
            og_loc_vars = og_loc_vars_ref(opp_self, info_queue, card)
        end
        og_loc_vars = og_loc_vars or {}
        og_loc_vars.key = og_loc_vars.key or
            (card.area and card.area == G.joy_blind_effects_area and opp_self.joy_blind_key or nil)
        og_loc_vars.set = og_loc_vars.set or
            (card.area and card.area == G.joy_blind_effects_area and "Blind" or nil)
        return og_loc_vars
    end
    local proto = JoyousSpring.OpponentCard(SMODS.shallow_copy(self.opponent_card))

    self.opponent_key = proto.key

    SMODS.Blind.register(self)
end

local smods_blind_inject_ref = SMODS.Blind.inject or function() end
SMODS.Blind.inject = function(self, i)
    smods_blind_inject_ref(self, i)
    if self.calculate_ante then
        JoyousSpring.BES[self.key] = { key = self.key, config = self.config, calculate = self.calculate_ante }
    end
end

local blind_defeat_ref = Blind.defeat
function Blind:defeat(silent)
    blind_defeat_ref(self, silent)
    if self.boss then
        G.GAME.joy_blind_defeated = self.config.blind.key
    end
end

---Runs when a blind is selected (initially or by rerolling)
---@param blind_type 'Small'|'Big'|'Boss'
---@param new_key string
---@param old_key string
JoyousSpring.blind_changed = function(blind_type, new_key, old_key)
    G.GAME.joy_active_blinds = G.GAME.joy_active_blinds or {}
    G.GAME.joy_disabled_blinds = G.GAME.joy_disabled_blinds or {}
    G.GAME.joy_already_disabled_blinds = G.GAME.joy_already_disabled_blinds or {}
    G.GAME.joy_blind_effects = G.GAME.joy_blind_effects or {}
    JoyousSpring.blind_effects = G.GAME.joy_blind_effects

    JoyousSpring.disable_blind_ante(old_key, blind_type)
    JoyousSpring.enable_blind_ante(new_key, blind_type)

    G.GAME.joy_blind_defeated = nil

    if G.jokers then
        SMODS.calculate_context({
            joy_blind_changed = true,
            joy_blind_type = blind_type,
            joy_old = old_key,
            joy_new = new_key
        })
    end
end

---Enables Blind with ante abilities
---@param key string
---@param blind_type 'Small'|'Big'|'Boss'
JoyousSpring.enable_blind_ante = function(key, blind_type)
    if not key then return end
    JoyousSpring.blind_effects[key] = {}
    local prototype = G.P_BLINDS[key]
    if not prototype then return end

    if type(prototype.on_enter) == "function" then
        prototype:on_enter(blind_type)
    end
    if prototype.has_ante_ability or type(prototype.calculate_ante) == "function" then
        G.GAME.joy_active_blinds[key] = blind_type
        G.GAME.joy_disabled_blinds[key] = nil
        G.GAME.joy_already_disabled_blinds[key] = nil
    end
    JoyousSpring.update_blind_effects_area()
end

---Disables blind effects during the ante
---@param key string
---@param blind_type 'Small'|'Big'|'Boss'
JoyousSpring.disable_blind_ante = function(key, blind_type)
    if not key then return end
    local prototype = G.P_BLINDS[key]

    if not SMODS.is_active_blind(key, true) then
        if prototype and type(prototype.on_exit) == "function" then
            prototype:on_exit(blind_type, G.GAME.joy_blind_defeated == key)
            G.GAME.joy_already_disabled_blinds[key] = true
        end
    else
        if not G.GAME.blind.disabled then
            G.GAME.blind:disable()
            G.GAME.joy_already_disabled_blinds[key] = true
        end
    end

    JoyousSpring.blind_effects[key] = nil
    G.GAME.joy_active_blinds[key] = nil
    G.GAME.joy_disabled_blinds[key] = true
    JoyousSpring.update_blind_effects_area()
end

---Disables all current active blinds
JoyousSpring.disable_all_active_blinds = function()
    for key, blind_type in pairs(G.GAME.joy_active_blinds) do
        JoyousSpring.disable_blind_ante(key, blind_type)
    end
    if G.GAME.blind.boss and G.GAME.blind.in_blind then
        JoyousSpring.disable_blind_ante(G.GAME.blind.config.blind.key, G.GAME.blind_on_deck)
    end
end

---Disables all the remaining blinds this ante
JoyousSpring.disable_next_boss_blinds = function()
    for blind_type, key in pairs(G.GAME.round_resets.blind_choices) do
        if not SMODS.is_active_blind(key, true) then
            JoyousSpring.disable_blind_ante(key, G.GAME.joy_active_blinds[key] or blind_type:sub(4))
        end
    end
end

---Checks if there are any blinds currently active
---@return boolean?
JoyousSpring.are_blinds_active = function()
    return (not not next(G.GAME.joy_active_blinds)) or
        (G.GAME.blind.boss and not G.GAME.blind.disabled and G.GAME.blind.in_blind)
end

---Checks if there are any future blinds this ante left to disable
---@return boolean?
JoyousSpring.are_any_future_blinds_enabled = function()
    local ret = false
    for _, key in pairs(G.GAME.round_resets.blind_choices) do
        if key ~= "bl_small" and key ~= "bl_big" and not SMODS.is_active_blind(key, true) then
            ret = not G.GAME.joy_disabled_blinds[key]
            if ret then return ret end
        end
    end
    return ret
end

---Checks if there are any active or future blinds this ante left to disable
---@return boolean?
JoyousSpring.are_there_blinds_to_disable_this_ante = function()
    return JoyousSpring.are_blinds_active() or JoyousSpring.are_any_future_blinds_enabled()
end

---Updates the cards in G.joy_blind_effects_area
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
        if not SMODS.is_active_blind(blind_key, true) and prototype and prototype.opponent_key and not cards_in_area[prototype.opponent_key] then
            local created_card = SMODS.create_card { key = prototype.opponent_key, no_edition = true }
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
        was_saved = not not (prototype and (prototype.opponent_key or prototype.joy_blind_save))
    end
    if not G.GAME.blind.disabled and not G.GAME.joy_active_blinds[G.GAME.blind.config.blind.key] then
        local prototype = G.GAME.blind.config.blind
        was_saved = was_saved or not not (prototype and (prototype.opponent_key or prototype.joy_blind_save))
    end
    return was_saved, localize("k_joy_saved_by_blind")
end

---Runs at end of round when the blind allowed to lose without game over
JoyousSpring.blind_on_game_over = function()
    local disable = {}
    for key, _ in pairs(G.GAME.joy_active_blinds) do
        local prototype = G.P_BLINDS[key]
        if prototype then
            if prototype.opponent_key then
                SMODS.add_card { key = prototype.opponent_key, no_edition = true, area = JoyousSpring.opponent_area }
            end
            if type(prototype.on_game_over) == "function" then
                prototype:on_game_over()
            end
        end
        table.insert(disable, key)
    end
    if not G.GAME.blind.disabled and not G.GAME.joy_active_blinds[G.GAME.blind.config.blind.key] then
        local prototype = G.GAME.blind.config.blind
        if prototype.opponent_key then
            SMODS.add_card { key = prototype.opponent_key, no_edition = true, area = JoyousSpring.opponent_area }
        end
        if type(prototype.on_game_over) == "function" then
            prototype:on_game_over()
        end
    end
    for _, key in ipairs(disable) do
        JoyousSpring.disable_blind_ante(key, G.GAME.joy_active_blinds[key])
    end
end

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    game_start_run_ref(self, args)

    JoyousSpring.blind_effects = G.GAME.joy_blind_effects
end

-- Effects
-- Kinda hardcoded because I don't really care

JoyousSpring.Blind.prevent_debuff_keys = {}
JoyousSpring.Blind.prevent_banish_keys = {}
JoyousSpring.Blind.prevent_destruction_keys = {}
JoyousSpring.Blind.prevent_shop_keys = {}
JoyousSpring.Blind.prevent_summon_keys = {}
JoyousSpring.Blind.prevent_flip_keys = {}

local can_do_effect = function(type)
    local list = JoyousSpring.Blind["prevent_" .. type .. "_keys"]
    if not list or #list <= 0 then return true end
    for _, key in ipairs(list) do
        if next(SMODS.find_card(key)) then
            return false
        end
    end
    return true
end

JoyousSpring.Blind.can_debuff = function() return can_do_effect("debuff") end
JoyousSpring.Blind.can_banish = function() return can_do_effect("banish") end
JoyousSpring.Blind.can_destroy = function() return can_do_effect("destruction") end
JoyousSpring.Blind.can_affect_shop = function() return can_do_effect("shop") end
JoyousSpring.Blind.can_affect_summon = function() return can_do_effect("summon") end
JoyousSpring.Blind.can_flip = function() return can_do_effect("flip") end
