-- OPPONENT AREA AND CARDS

-- no there's no AI to play against in this mod

--#region LSP

---@class JoyousSpring.OpponentCard: SMODS.Center
---@field super? SMODS.Center|table Parent class.
---@field __call? fun(self: JoyousSpring.OpponentCard|table, o: JoyousSpring.OpponentCard|table): table|JoyousSpring.OpponentCard?
---@field extend? fun(self: JoyousSpring.OpponentCard|table, o: JoyousSpring.OpponentCard|table): table Primary method of creating a class.
---@field check_duplicate_register? fun(self: JoyousSpring.OpponentCard|table): boolean? Ensures objects already registered will not register.
---@field check_duplicate_key? fun(self: JoyousSpring.OpponentCard|table): boolean? Ensures objects with duplicate keys will not register. Checked on `__call` but not `take_ownership`. For take_ownership, the key must exist.
---@field register? fun(self: JoyousSpring.OpponentCard|table) Registers the object.
---@field check_dependencies? fun(self: JoyousSpring.OpponentCard|table): boolean? Returns `true` if there's no failed dependencies.
---@field process_loc_text? fun(self: JoyousSpring.OpponentCard|table) Called during `inject_class`. Handles injecting loc_text.
---@field send_to_subclasses? fun(self: JoyousSpring.OpponentCard|table, func: string, ...: any) Starting from this class, recusively searches for functions with the given key on all subordinate classes and run all found functions with the given arguments.
---@field pre_inject_class? fun(self: JoyousSpring.OpponentCard|table) Called before `inject_class`. Injects and manages class information before object injection.
---@field post_inject_class? fun(self: JoyousSpring.OpponentCard|table) Called after `inject_class`. Injects and manages class information after object injection.
---@field inject_class? fun(self: JoyousSpring.OpponentCard|table) Injects all direct instances of class objects by calling `obj:inject` and `obj:process_loc_text`. Also injects anything necessary for the class itself. Only called if class has defined both `obj_table` and `obj_buffer`.
---@field inject? fun(self: JoyousSpring.OpponentCard|table, i?: number) Called during `inject_class`. Injects the object into the game.
---@field take_ownership? fun(self: JoyousSpring.OpponentCard|table, key: string, obj: JoyousSpring.OpponentCard|table, silent?: boolean): nil|table|JoyousSpring.OpponentCard Takes control of vanilla objects. Child class must have get_obj for this to function
---@field get_obj? fun(self: JoyousSpring.OpponentCard|table, key: string): JoyousSpring.OpponentCard|table? Returns an object if one matches the `key`.
---@field calc_dollar_bonus? fun(self: JoyousSpring.OpponentCard|table, card: Card|table): nil|number Calculates reward money.
---@field joy_blind_key? string String for the blind that rewards this joker, if any
---@field joy_modify_cost? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card) Like joy_set_cost but for another card
---@field joy_allow_ability? fun(card:table|Card, other_card:table|Card):boolean? Returns `true` if *other_card* is allowed to use abilities while facedown [Not Implemented Yet]
---@field joy_apply_to_jokers_added? fun(card:table|Card,added_card:table|Card) Used to modify *added_card* when obtained [Not Implemented Yet]
---@field joy_prevent_flip? fun(card:table|Card, other_card:table|Card):boolean? Determines if *other_card* should flip [Not Implemented Yet]
---@field joy_prevent_trap_flip? fun(card:table|Card, other_card:table|Card):boolean? Determines if the Trap *other_card* should flip at end of round [Not Implemented Yet]
---@field joy_flip_effect_active? fun(card:table|Card, other_card:table|Card):boolean? Determines if the FLIP ability of *other_card* should activate at the start of Blind [Not Implemented Yet]
---@field joy_set_excavate_count? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, context:CalcContext):integer? Determines how many cards to excavate in a certain context
---@field joy_can_be_sent_to_graveyard? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, choices:string[]):string[]? Used to filter cards that can be sent to the GY
---@field joy_set_hand_highlight_limit? fun(self:JoyousSpring.OpponentCard|table, card:table|Card):integer? Returns what the hand highlight limit should be (at minimum) after calling `JoyousSpring.calculate_hand_highlight_limit`
---@overload fun(self: JoyousSpring.OpponentCard): JoyousSpring.OpponentCard
JoyousSpring.OpponentCard = setmetatable({}, {
    __call = function(self)
        return self
    end
})

--#endregion

SMODS.Atlas({
    key = "small_Back",
    path = "blind_back.png",
    px = 34,
    py = 34
})

JoyousSpring.OpponentCard = SMODS.Center:extend {
    set = "joy_Opponent",
    unlocked = true,
    discovered = true,
    class_prefix = "opp",
    set_sprites = JoyousSpring.set_back_sprite,
    config = {},
    pos = { x = 0, y = 0 },
    display_size = { w = 34, h = 34 },
    pre_inject_class = function(self)
        G.P_CENTER_POOLS[self.set] = {}
    end,
    set_card_type_badge = function(self, card, badges)
        if not card.area or card.area ~= G.joy_blind_effects_area then
            badges[#badges + 1] = create_badge(localize("k_joy_opponent"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        else
            badges[#badges + 1] = create_badge(localize("b_blinds"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        end
    end
}

---Handles the card limit of JoyousSpring.opponent_area
JoyousSpring.handle_opponent_area_limit = function()
    local area = JoyousSpring.opponent_area
    local limit = area.config.card_limit
    local amount = #area.cards
    local i = 1
    while limit < amount do
        local card = area.cards[i]
        if not card then break end
        if (not card.edition or not card.edition.negative) and JoyousSpring.get_card_limit(card) <= 0 then
            SMODS.destroy_cards(card, true)
            amount = amount - 1
        end
        i = i + 1
    end
end

local moveable_drag_ref = Moveable.drag
function Moveable:drag(offset)
    if not self.area or self.area ~= JoyousSpring.opponent_area then
        moveable_drag_ref(self, offset)
    end
end

G.FUNCS.joy_your_collection_opponent = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu {
        definition = JoyousSpring.create_UIBox_your_collection_opponent(),
    }
end

JoyousSpring.create_UIBox_your_collection_opponent = function()
    return SMODS.card_collection_UIBox(G.P_CENTER_POOLS.joy_Opponent, { 8, 8, 8, 8, 8 }, {
        no_materialize = true,
        h_mod = 0.5,
        w_mod = 0.8,
        card_scale = 1.5,
    })
end

function JoyousSpring.opponent_collection_tally()
    local obj_tally = { tally = 0, of = 0 }

    for _, v in pairs(G.P_CENTER_POOLS.joy_Opponent) do
        if not v.no_collection then
            obj_tally.of = obj_tally.of + 1
            if v.discovered then
                obj_tally.tally = obj_tally.tally + 1
            end
        end
    end

    return obj_tally
end
