---@meta

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
---@field joy_allow_facedown_ability? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card):boolean? Returns `true` if *other_card* is allowed to use abilities while facedown
---@field joy_apply_to_jokers_added? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, added_card:table|Card) Used to modify *added_card* when obtained
---@field joy_prevent_flip? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card):boolean? Determines if *other_card* should flip
---@field joy_prevent_trap_flip? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card):boolean? Determines if the Trap *other_card* should flip at end of round
---@field joy_flip_effect_active? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card):boolean? Determines if the FLIP ability of *other_card* should activate at the start of Blind
---@field joy_set_excavate_count? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, context:CalcContext):integer? Determines how many cards to excavate in a certain context
---@field joy_can_be_sent_to_graveyard? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, choices:string[]):string[]? Used to filter cards that can be sent to the GY
---@field joy_set_hand_highlight_limit? fun(self:JoyousSpring.OpponentCard|table, card:table|Card):integer? Returns what the hand highlight limit should be (at minimum) after calling `JoyousSpring.calculate_hand_highlight_limit`
---@field joy_create_card_for_shop? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card, area:CardArea) Used to modify *other_card* when it's created for the shop
---@field joy_prevent_buy? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card):boolean? Returns if *other_card* is prevented from being bought from the shop
---@field joy_get_attribute? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card, original_attribute:attribute|true?):attribute|true? Returns what attribute *other_card* should be considered as. `"None"` for none, `true` for all.
---@field joy_get_monster_type? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, other_card:table|Card, original_type:monster_type|true?):monster_type|true? Returns what monster type *other_card* should be considered as. `"None"` for none, `true` for all.
---@field joy_prevent_revive? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, key:string):boolean? Determines if card with *key* should be able to be revived
---@field joy_prevent_banish? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:Card|table, banish_until:string):boolean? Determines if *other_card* can be banished
---@field joy_prevent_drag? fun(self: JoyousSpring.OpponentCard|table, card:table|Card, other_card:Card|table, area:CardArea|table):boolean? Determines if *other_card* can be dragged
---@field joy_prevent_summon? fun(self:JoyousSpring.OpponentCard|table, card:table|Card, other_card:Card|table, card_list:Card[]|table?):boolean? Determines if *other_card* can be summoned
---@overload fun(self: JoyousSpring.OpponentCard): JoyousSpring.OpponentCard
JoyousSpring.OpponentCard = setmetatable({}, {
    __call = function(self)
        return self
    end
})
