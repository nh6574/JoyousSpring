---@meta

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
