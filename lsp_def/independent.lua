---@meta

---@class JoyousSpring.calculate_effects
---@field joy_modify_cost? fun(self: JoyousSpring.calculate_effects|table, other_card:table|Card) Like joy_set_cost but for another card
---@field joy_create_card_for_shop? fun(self: JoyousSpring.calculate_effects|table, other_card:table|Card, area:CardArea) Used to modify *other_card* when it's created for the shop
---@field joy_apply_to_jokers_added? fun(self: JoyousSpring.calculate_effects|table, added_card:table|Card) Used to modify *added_card* when obtained
---@field joy_allow_facedown_ability? fun(self: JoyousSpring.calculate_effects|table, other_card:table|Card):boolean? Determines if *other_card* can use abilities while face-down
---@field joy_prevent_flip? fun(self: JoyousSpring.calculate_effects|table, other_card:table|Card):boolean? Determines if *other_card* should flip
---@field joy_prevent_trap_flip? fun(self: JoyousSpring.calculate_effects|table, other_card:table|Card):boolean? Determines if the Trap *other_card* should flip at end of round
---@field joy_flip_effect_active? fun(self: JoyousSpring.calculate_effects|table, other_card:table|Card):boolean? Determines if the FLIP ability of *other_card* should activate at the start of Blind
---@field prevent_illusion_banish? fun(self:JoyousSpring.calculate_effects|table, other_card:table|Card):boolean? Determines if the Illusion Joker *other_card* should banish at the start of Blind
---@field joy_set_excavate_count? fun(self: JoyousSpring.calculate_effects|table, context:CalcContext):integer? Determines how many cards to excavate in a certain context
---@field joy_bypass_room_check? fun(self:JoyousSpring.calculate_effects|table, from_booster:boolean?):boolean? Determines if you can buy the card with no room
---@field joy_can_be_sent_to_graveyard? fun(self:JoyousSpring.calculate_effects|table, choices:string[]):string[]? Used to filter cards that can be sent to the GY
---@field joy_set_hand_highlight_limit? fun(self:JoyousSpring.calculate_effects|table):integer? Returns what the hand highlight limit should be (at minimum) after calling `JoyousSpring.calculate_hand_highlight_limit`
---@field joy_prevent_buy? fun(self:JoyousSpring.calculate_effects|table, other_card:table|Card):boolean? Returns if *other_card* is prevented from being bought from the shop
---@field joy_get_attribute? fun(self:JoyousSpring.calculate_effects|table, other_card:table|Card, original_attribute:attribute|true?):attribute|true? Returns what attribute *other_card* should be considered as. `"None"` for none, `true` for all.
---@field joy_get_monster_type? fun(self:JoyousSpring.calculate_effects|table, other_card:table|Card, original_type:monster_type|true?):monster_type|true? Returns what monster type *other_card* should be considered as. `"None"` for none, `true` for all.
---@field joy_prevent_revive? fun(self: JoyousSpring.calculate_effects|table, key:string):boolean? Determines if card with *key* should be able to be revived
---@field joy_prevent_banish? fun(self: JoyousSpring.calculate_effects|table, other_card:Card|table, banish_until:string):boolean? Determines if *other_card* can be banished
---@field joy_prevent_drag? fun(self: JoyousSpring.calculate_effects|table, other_card:Card|table, area:CardArea|table):boolean? Determines if *other_card* can be dragged
---@field joy_prevent_summon? fun(self: JoyousSpring.calculate_effects|table, other_card:Card|table, card_list:Card[]|table?):boolean? Determines if *other_card* can be summoned
---@field is_active? fun(self: JoyousSpring.calculate_effects, func: string):boolean?
---@field calculate? fun(self: JoyousSpring.calculate_effects, context: CalcContext):table?
---@field key? string
---@field center? SMODS.Center

---@type JoyousSpring.calculate_effects[]
JoyousSpring.calculate_effects = {}
