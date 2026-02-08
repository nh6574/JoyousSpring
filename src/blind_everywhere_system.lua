-- BLIND SYSTEMS

--#region LSP

---@class JoyousSpring.Blind: SMODS.Blind
---@field opponent_card? JoyousSpring.OpponentCard
---@field opponent_key? string Key for the Joker to add if the player loses to the Blind instead of losing the run (if opponent_card is not specified)
---@field has_ante_ability? true? If true, the Blind can be active for the entire ante
---@field calculate_ante? fun(self:SMODS.Blind|table, context:CalcContext):table? Calculate but for the ante (acts like has_ante_ability is set to true)
---@field on_enter? fun(self:SMODS.Blind|table, blind_type:'Small'|'Big'|'Boss') Called when Blind is chosen for the ante
---@field on_exit? fun(self:SMODS.Blind|table, blind_type:'Small'|'Big'|'Boss') Called when Blind is rerolled for the ante
---@field on_game_over? fun(self:SMODS.Blind|table) Called when the player loses to the Blind instead of losing the run
---@field joy_modify_cost? fun(self: JoyousSpring.Blind|table, blind:table|Blind?, other_card:table|Card) Like joy_set_cost but for another card
---@field joy_allow_facedown_ability? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card):boolean? Returns `true` if *other_card* is allowed to use abilities while facedown
---@field joy_apply_to_jokers_added? fun(self:SMODS.Blind|table, blind:table|Blind?, added_card:table|Card) Used to modify *added_card* when obtained
---@field joy_prevent_flip? fun(self:SMODS.Blind|table, blind:Blind|table?, other_card:table|Card):boolean? Determines if *other_card* should flip
---@field joy_prevent_trap_flip? fun(self:SMODS.Blind|table, other_card:table|Card):boolean? Determines if the Trap *other_card* should flip at end of round [Not Implemented Yet]
---@field joy_flip_effect_active? fun(self:SMODS.Blind|table, other_card:table|Card):boolean? Determines if the FLIP ability of *other_card* should activate at the start of Blind [Not Implemented Yet]
---@field joy_set_excavate_count? fun(self: SMODS.Blind|table,blind:table|Blind?, context:CalcContext):integer? Determines how many cards to excavate in a certain context
---@field joy_can_be_sent_to_graveyard? fun(self:SMODS.Blind|table, blind:table|Blind?, choices:string[]):string[]? Used to filter cards that can be sent to the GY
---@field joy_set_hand_highlight_limit? fun(self:SMODS.Blind|table, blind:Blind|table?):integer? Returns what the hand highlight limit should be (at minimum) after calling `JoyousSpring.calculate_hand_highlight_limit`
---@field joy_create_card_for_shop? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card, area:CardArea) Used to modify *other_card* when it's created for the shop
---@overload fun(self: JoyousSpring.Blind): JoyousSpring.Blind
JoyousSpring.Blind = setmetatable({}, {
    __call = function(self)
        return self
    end
})

--#endregion

---@type table<{calculate: fun(self:SMODS.Blind, context:CalcContext)}>
JoyousSpring.BES = {}

JoyousSpring.Blind = SMODS.Blind:extend {
    discovered = true,
    config = {},
    pos = { x = 0, y = 0 },
    boss = { min = 2 },
    inject = function(self, i)
        SMODS.Blind.inject(self, i)

        if self.opponent_card and not SMODS.Centers["opp_" .. (self.opponent_card.key or "")] then
            self.opponent_card.key = "joy_" .. (self.opponent_card.key or self.original_key)
            self.opponent_card.atlas = (self.opponent_card.atlas and "joy_" .. self.opponent_card.atlas or self.atlas)
            self.opponent_card.pos = self.opponent_card.pos or { x = self.pos.x, y = self.pos.y }
            self.opponent_card.joy_blind_key = self.opponent_card.joy_blind_key or self.key
            self.opponent_card.loc_vars = self.opponent_card.loc_vars or function(self, info_queue, card)
                return {
                    key = card.area and card.area == G.joy_blind_effects_area and self.joy_blind_key or nil,
                    set = card.area and card.area == G.joy_blind_effects_area and "Blind" or nil
                }
            end
            local proto = JoyousSpring.OpponentCard(SMODS.shallow_copy(self.opponent_card))
            proto.mod = SMODS.Mods.JoyousSpring
            proto.original_mod = proto.mod

            if proto._discovered_unlocked_overwritten then
                assert(proto._saved_d_u,
                    ("Internal: original discovery/unlocked state for object \"%s\" should have been saved at this point.")
                    :format(proto and proto.key or "UNKNOWN"))
                proto.discovered, proto.unlocked = proto._d, proto._u
                proto._discovered_unlocked_overwritten = false
            else
                SMODS._save_d_u(proto)
            end

            proto:inject(i)

            proto:process_loc_text()

            self.opponent_key = proto.key
        end
    end,
}

local smods_blind_inject_ref = SMODS.Blind.inject or function() end
SMODS.Blind.inject = function(self, i)
    smods_blind_inject_ref(self, i)
    if self.calculate_ante then
        JoyousSpring.BES[self.key] = { calculate = self.calculate_ante }
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
        if not G.GAME.joy_blind_defeated and type(old_blind.on_exit) == "function" then
            old_blind:on_exit(blind_type)
        end
        if blind_type == "Boss" or (G.GAME.round_resets.blind_choices.Boss ~= old_key and
                (blind_type ~= "Small" or G.GAME.round_resets.blind_choices.Big ~= old_key)) then
            G.GAME.joy_active_blinds[old_key] = nil
            update = true
        end
    end

    if new_blind then
        if type(new_blind.on_enter) == "function" then
            new_blind:on_enter(blind_type)
        end
        if new_blind.has_ante_ability or type(new_blind.calculate_ante) == "function" then
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
        if G.GAME.joy_active_blinds[key] and prototype and type(prototype.on_exit) == "function" then
            prototype:on_exit(G.GAME.joy_active_blinds[key])
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
