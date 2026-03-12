-- BLIND SYSTEMS

--#region LSP

---@class JoyousSpring.Blind: SMODS.Blind
---@field opponent_card? JoyousSpring.OpponentCard
---@field opponent_key? string Key for the Joker to add if the player loses to the Blind instead of losing the run (if opponent_card is not specified)
---@field has_ante_ability? true? If true, the Blind can be active for the entire ante
---@field calculate_ante? fun(self:SMODS.Blind|table, context:CalcContext):table? Calculate but for the ante (acts like has_ante_ability is set to true)
---@field on_enter? fun(self:SMODS.Blind|table, blind_type:'Small'|'Big'|'Boss') Called when Blind is chosen for the ante
---@field on_exit? fun(self:SMODS.Blind|table, blind_type:'Small'|'Big'|'Boss', from_defeat:boolean?) Called when Blind is rerolled for the ante
---@field on_game_over? fun(self:SMODS.Blind|table) Called when the player loses to the Blind instead of losing the run
---@field joy_modify_cost? fun(self: JoyousSpring.Blind|table, blind:table|Blind?, other_card:table|Card) Like joy_set_cost but for another card
---@field joy_allow_facedown_ability? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card):boolean? Returns `true` if *other_card* is allowed to use abilities while facedown
---@field joy_apply_to_jokers_added? fun(self:SMODS.Blind|table, blind:table|Blind?, added_card:table|Card) Used to modify *added_card* when obtained
---@field joy_prevent_flip? fun(self:SMODS.Blind|table, blind:Blind|table?, other_card:table|Card):boolean? Determines if *other_card* should flip
---@field joy_prevent_trap_flip? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card):boolean? Determines if the Trap *other_card* should flip at end of round
---@field joy_flip_effect_active? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card):boolean? Determines if the FLIP ability of *other_card* should activate at the start of Blind
---@field joy_set_excavate_count? fun(self: SMODS.Blind|table, blind:table|Blind?, context:CalcContext):integer? Determines how many cards to excavate in a certain context
---@field joy_can_be_sent_to_graveyard? fun(self:SMODS.Blind|table, blind:table|Blind?, choices:string[]):string[]? Used to filter cards that can be sent to the GY
---@field joy_set_hand_highlight_limit? fun(self:SMODS.Blind|table, blind:Blind|table?):integer? Returns what the hand highlight limit should be (at minimum) after calling `JoyousSpring.calculate_hand_highlight_limit`
---@field joy_create_card_for_shop? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card, area:CardArea) Used to modify *other_card* when it's created for the shop
---@field joy_prevent_buy? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card):boolean? Returns if *other_card* is prevented from being bought from the shop
---@field joy_get_attribute? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card, original_attribute:attribute|true?):attribute|true? Returns what attribute *other_card* should be considered as. `"None"` for none, `true` for all.
---@field joy_get_monster_type? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:table|Card, original_type:monster_type|true?):monster_type|true? Returns what monster type *other_card* should be considered as. `"None"` for none, `true` for all.
---@field joy_prevent_revive? fun(self:SMODS.Blind|table, blind:table|Blind?, key:string):boolean? Determines if card with *key* should be able to be revived
---@field joy_prevent_banish? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:Card|table, banish_until:string):boolean? Determines if *other_card* can be banished
---@field joy_prevent_drag? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:Card|table, area:CardArea|table):boolean? Determines if *other_card* can be dragged
---@field joy_prevent_summon? fun(self:SMODS.Blind|table, blind:table|Blind?, other_card:Card|table, card_list:Card[]|table?):boolean? Determines if *other_card* can be summoned
---@field can_debuff? fun():boolean
---@field can_banish? fun():boolean
---@field can_destroy? fun():boolean
---@field can_affect_shop? fun():boolean
---@field can_affect_summon? fun():boolean
---@field can_flip? fun():boolean
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
