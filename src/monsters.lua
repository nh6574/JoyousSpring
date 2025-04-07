--- MONSTERS

SMODS.Atlas({
    key = "Back",
    path = "back.png",
    px = 142,
    py = 190
})

--#region LSP

---@class SMODS.Joker
---@field get_weight? fun(self: SMODS.Center|table, args: table):number? Only YGO monsters weighted rarity, if it returns nil then it uses the default rate for the rarity
---@field joy_set_cost? fun(card:table|Card) Sets its own cost and sell cost inside Card:set_cost()
---@field joy_modify_cost? fun(card:table|Card, other_card:table|Card) Like joy_set_cost but for another card
---@field joy_can_activate? fun(card:table|Card):boolean? Returns `true` if the activated ability can be used
---@field joy_allow_ability? fun(card:table|Card,other_card:table|Card):boolean? Returns `true` if *other_card* is allowed to use abilities while facedown by *card*
---@field joy_create_card_for_shop? fun(card:table|Card, other_card:table|Card, area:CardArea) Used to modify *other_Card* when it's created for the shop
---@field joy_apply_to_jokers_added? fun(card:table|Card,added_card:table|Card) Used to modify *added_card* when obtained
---@field joy_allow_ability? fun(card:table|Card, other_card:table|Card):boolean? Determines if *other_card* can use abilities while face-down
---@field joy_prevent_flip? fun(card:table|Card, other_card:table|Card):boolean? Determines if *other_card* should flip
---@field joy_prevent_trap_flip? fun(card:table|Card, other_card:table|Card):boolean? Determines if the Trap *other_card* should flip at end of round
---@field joy_flip_effect_active? fun(card:table|Card, other_card:table|Card):boolean? Determines if the FLIP ability of *other_card* should activate at the start of Blind
---@field joy_can_transfer_ability? fun(self:SMODS.Center|table, other_card:Card|table):boolean? Determines if *self* transfers its ability to *other_card*
---@field joy_transfer_ability_calculate? fun(self:SMODS.Center|table, other_card:Card|table, context:CalcContext, config:table):table? Similar to `calculate` but for transferred abilities. `self` is the center for the material and `other_card` is the card with the effect
---@field joy_transfer_config? fun(self:SMODS.Center|table, other_card:Card|table):table? Similar to `config`, it returns the initial config table for the transferred ability
---@field joy_transfer_loc_vars? fun(self: SMODS.Center|table, info_queue: table, card: Card|table, config: table): table? Similar to `loc_vars` but for the transferred ability text
---@field joy_transfer_add_to_deck? fun(self:SMODS.Center|table, other_card:Card|table, config:table, card:Card|table?, from_debuff:boolean, materials:table[]|Card[]?) Similar to `add_to_deck` but for transferred abilities. `self` is the center for the material and `other_card` is the card with the effect, `card` is the transfering material which only exists when transferred
---@field joy_transfer_remove_from_deck? fun(self:SMODS.Center|table, other_card:Card|table, config:table, from_debuff:boolean) Similar to `remove_from_deck` but for transferred abilities. `self` is the center for the material and `other_card` is the card with the effect
---@field joy_transfer_calc_dollar_bonus? fun(self:SMODS.Center|table, other_card:Card|table, config:table) Similar to `calc_dollar_bonus` but for transferred abilities. `self` is the center for the material and `other_card` is the card with the effect
---@field joy_transfer_flip_effect_active? fun(self:SMODS.Center|table, ability_card:Card|table, other_card:Card|table, config:table):boolean? Similar to `joy_flip_effect_active` but for transferred abilities. `self` is the center for the material and `ability_card` is the card with the effect
---@field joy_transfer_modify_cost? fun(self:SMODS.Center|table, ability_card:Card|table, other_card:Card|table, config:table):boolean? Similar to `joy_modify_cost` but for transferred abilities. `self` is the center for the material and `ability_card` is the card with the effect
---@field joy_transfer_prevent_flip? fun(self:SMODS.Center|table, ability_card:Card|table, other_card:Card|table, config:table):boolean? Similar to `joy_prevent_flip` but for transferred abilities. `self` is the center for the material and `ability_card` is the card with the effect
---@field joy_transfer_apply_to_jokers_added? fun(self:SMODS.Center|table, ability_card:Card|table, added_card:Card|table, config:table):boolean? Similar to `joy_apply_to_jokers_added` but for transferred abilities. `self` is the center for the material and `ability_card` is the card with the effect

---@alias summon_type
---|'"NORMAL"'
---|'"RITUAL"'
---|'"FUSION"'
---|'"SYNCHRO"'
---|'"XYZ"'
---|'"LINK"'

---@alias attribute
---|'"LIGHT"'
---|'"DARK"'
---|'"WATER"'
---|'"FIRE"'
---|'"EARTH"'
---|'"WIND"'
---|'"DIVINE"'

---@alias monster_type
---|'"Aqua"'
---|'"Beast"'
---|'"BeastWarrior"'
---|'"CreatorGod"'
---|'"Cyberse"'
---|'"Dinosaur"'
---|'"DivineBeast"'
---|'"Dragon"'
---|'"Fairy"'
---|'"Fiend"'
---|'"Fish"'
---|'"Illusion"'
---|'"Insect"'
---|'"Machine"'
---|'"Plant"'
---|'"Psychic"'
---|'"Pyro"'
---|'"Reptile"'
---|'"Rock"'
---|'"SeaSerpent"'
---|'"Spellcaster"'
---|'"Thunder"'
---|'"Warrior"'
---|'"WingedBeast"'
---|'"Wyrm"'
---|'"Zombie"'

---@class material_properties
---@field optional boolean?
---@field min number?
---@field max number?
---@field func string?
---@field facedown boolean?
---@field key string?
---@field exclude_keys string[]?
---@field is_token boolean?
---@field exclude_tokens boolean?
---@field rarity 1|2|3|4|string?
---@field exclude_rarities table?
---@field is_debuffed boolean?
---@field exclude_debuffed boolean?
---@field is_joker boolean?
---@field is_monster boolean?
---@field monster_type monster_type?
---@field exclude_monster_types monster_type[]?
---@field monster_attribute attribute?
---@field exclude_monster_attributes attribute[]?
---@field monster_archetypes string[]?
---@field exclude_monster_archetypes string[]?
---@field is_pendulum boolean?
---@field exclude_pendulum boolean?
---@field is_extra_deck boolean?
---@field exclude_extra_deck boolean?
---@field is_main_deck boolean?
---@field exclude_main_deck boolean?
---@field is_field_spell boolean?
---@field exclude_field_spell boolean?
---@field summon_type summon_type?
---@field exclude_summon_types summon_type[]?
---@field is_effect boolean?
---@field is_non_effect boolean?
---@field is_normal boolean?
---@field is_summoned boolean?
---@field exclude_summoned boolean?
---@field is_tuner boolean?
---@field exclude_tuners boolean?
---@field is_trap boolean?
---@field exclude_traps boolean?
---@field is_flip boolean?
---@field exclude_flips boolean?
---@field has_edition boolean?
---@field exclude_edition boolean?
---@field can_flip boolean?
---@field cannot_flip boolean?

---@class material_restrictions
---@field different_names boolean?
---@field same_name boolean?
---@field different_rarities boolean?
---@field same_rarity boolean?
---@field different_attributes boolean?
---@field same_attribute boolean?
---@field different_types boolean?
---@field same_type boolean?

---@class summon_conditions
---@field type summon_type
---@field materials material_properties[]
---@field restrictions material_restrictions?
---@field transfer_materials boolean?

---@class joyous_spring
---@field is_field_spell boolean?
---@field is_main_deck boolean?
---@field summon_type summon_type?
---@field is_effect boolean?
---@field is_tuner boolean?
---@field is_pendulum boolean?
---@field is_trap boolean?
---@field is_flip boolean?
---@field attribute attribute?
---@field monster_type monster_type?
---@field monster_archetypes table?
---@field is_all_attributes boolean|table?
---@field is_all_types boolean|table?
---@field is_all_materials { RITUAL:boolean?, FUSION:boolean?, SYNCHRO:boolean?, XYZ:boolean?, LINK:boolean? }?
---@field summon_conditions summon_conditions[]?
---@field summon_consumeable_conditions table?
---@field cannot_revive boolean?

--#endregion

---Initializes joyous_spring table in Jokers
---@param params joyous_spring
---@return table
JoyousSpring.init_joy_table = function(params)
    return not params.is_field_spell and {
        is_main_deck = params.is_main_deck or (not params.summon_type and true) or
            (params.summon_type == "NORMAL" or params.summon_type == "RITUAL" and true) or false,
        summon_type = params.summon_type or "NORMAL",
        is_effect = params.is_effect == nil and true or params.is_effect,
        is_tuner = params.is_tuner or false,
        is_pendulum = params.is_pendulum or false,
        is_trap = params.is_trap or false,
        is_flip = params.is_flip or false,
        attribute = params.attribute or "FIRE",
        monster_type = params.monster_type or "Dragon",
        monster_archetypes = params.monster_archetypes or {},
        is_all_attributes = params.is_all_attributes or false,
        is_all_types = params.is_all_types or false,
        is_all_materials = params.is_all_materials or {},
        summon_conditions = params.summon_conditions or {},
        summon_consumeable_conditions = params.summon_consumeable_conditions or nil,
        summoned = false,
        summon_materials = {},
        material_effects = {},
        xyz_materials = 0,
        revived = false,
        perma_debuffed = false,
        is_free = false,
        cannot_revive = params.cannot_revive or false,
        flip_active = false,
        cannot_flip = false,
        detached_count = 0,
        detached_count_round = 0
    } or {
        is_field_spell = true,
        monster_archetypes = params.monster_archetypes or {},
        perma_debuffed = false,
        is_free = false,
    }
end
JoyousSpring.is_monster_card = function(card)
    return card and card.ability and card.ability.extra and type(card.ability.extra) == "table" and
        card.ability.extra.joyous_spring or false
end

JoyousSpring.is_monster_archetype = function(card, archetype)
    return JoyousSpring.is_monster_card(card) and
        card.ability.extra.joyous_spring.monster_archetypes[archetype] or false
end

JoyousSpring.is_monster_type = function(card, monster_type)
    return JoyousSpring.is_monster_card(card) and
        (card.ability.extra.joyous_spring.is_all_types or
        card.ability.extra.joyous_spring.monster_type == monster_type)
end

JoyousSpring.is_attribute = function(card, attribute)
    return JoyousSpring.is_monster_card(card) and
        (card.ability.extra.joyous_spring.is_all_attributes or
        card.ability.extra.joyous_spring.attribute == attribute)
end

JoyousSpring.is_effect_monster = function(card)
    return JoyousSpring.is_monster_card(card) and
        card.ability.extra.joyous_spring.is_effect
end

JoyousSpring.is_main_deck_monster = function(card)
    return JoyousSpring.is_monster_card(card) and
        card.ability.extra.joyous_spring.is_main_deck
end

JoyousSpring.is_extra_deck_monster = function(card)
    return JoyousSpring.is_monster_card(card) and
        not card.ability.extra.joyous_spring.is_main_deck and not card.ability.extra.joyous_spring.is_field_spell
end

JoyousSpring.is_summon_type = function(card, summon_type)
    return JoyousSpring.is_monster_card(card) and
        card.ability.extra.joyous_spring.summon_type == summon_type
end

JoyousSpring.is_pendulum_monster = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_pendulum or false
end

JoyousSpring.is_trap_monster = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_trap or false
end

JoyousSpring.is_flip_monster = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_flip or false
end

JoyousSpring.is_tuner_monster = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_tuner or false
end

JoyousSpring.is_nontuner_monster = function(card)
    return not JoyousSpring.is_tuner_monster(card)
end

JoyousSpring.is_field_spell = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_field_spell or false
end

JoyousSpring.is_all_materials = function(card, summon_type)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_all_materials and
        card.ability.extra.joyous_spring.is_all_materials[summon_type]
end

JoyousSpring.is_all_attributes = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_all_attributes or false
end

JoyousSpring.is_all_types = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_all_types or false
end

JoyousSpring.is_summoned = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.summoned or false
end

JoyousSpring.is_revived = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.revived or false
end

JoyousSpring.is_perma_debuffed = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.perma_debuffed or false
end

JoyousSpring.is_free = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.is_free or false
end

JoyousSpring.get_materials = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.summon_materials or {}
end

JoyousSpring.get_xyz_materials = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.xyz_materials or 0
end

JoyousSpring.has_activated_effect = function(card)
    return JoyousSpring.is_monster_card(card) and card.config.center.joy_can_activate and true or false
end

JoyousSpring.cannot_flip = function(card)
    if not JoyousSpring.is_monster_card(card) or card.facing == 'back' then
        return false
    end
    if card.ability.extra.joyous_spring.cannot_flip then
        return true
    end

    if G.jokers then
        for _, joker in ipairs(G.jokers.cards) do
            if not joker.debuff and joker.config.center.joy_prevent_flip and joker.config.center.joy_prevent_flip(joker, card) then
                return true
            end
            if not joker.debuff and joker.ability.extra.joyous_spring.material_effects and next(joker.ability.extra.joyous_spring.material_effects) then
                for material_key, config in pairs(joker.ability.extra.joyous_spring.material_effects) do
                    local material_center = G.P_CENTERS[material_key]

                    if material_center and material_center.joy_transfer_prevent_flip and material_center:joy_transfer_prevent_flip(joker, card, config) then
                        return true
                    end
                end
            end
        end
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            if not joker.debuff and joker.config.center.joy_prevent_flip and joker.config.center.joy_prevent_flip(joker, card) then
                return true
            end
        end
    end

    return false
end

JoyousSpring.can_activate = function(card)
    return not ((G.play and #G.play.cards > 0) or
            (G.CONTROLLER.locked) or
            (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and (not card.debuff and card.facing ~= 'back') and
        G.STATE ~= G.STATES.HAND_PLAYED and G.STATE ~= G.STATES.DRAW_TO_HAND and G.STATE ~= G.STATES.PLAY_TAROT and
        JoyousSpring.has_activated_effect(card) and
        card.config.center.joy_can_activate(card) or false
end

JoyousSpring.can_use = function(card)
    return not ((G.play and #G.play.cards > 0) or
            (G.CONTROLLER.locked) or
            (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and
        (not card.ability.eternal and not card.debuff and card.facing ~= 'back') and
        G.STATE ~= G.STATES.HAND_PLAYED and G.STATE ~= G.STATES.DRAW_TO_HAND and G.STATE ~= G.STATES.PLAY_TAROT and
        card.config.center.can_use and card.config.center:can_use(card) or false
end

JoyousSpring.can_use_abilities = function(card)
    if not card then return false end
    if card.facing == 'front' then return true end
    for _, joker in ipairs(G.jokers.cards) do
        if not joker.debuff and joker.config.center.joy_allow_ability and joker.config.center.joy_allow_ability(joker, card) then
            return true
        end
    end
    for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
        if not joker.debuff and joker.config.center.joy_allow_ability and joker.config.center.joy_allow_ability(joker, card) then
            return true
        end
    end
    return false
end

JoyousSpring.should_trap_flip = function(card)
    if not JoyousSpring.is_trap_monster(card) then
        return false
    end

    for _, joker in ipairs(G.jokers.cards) do
        if not joker.debuff and joker.config.center.joy_prevent_trap_flip and joker.config.center.joy_prevent_trap_flip(joker, card) then
            return false
        end
    end
    for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
        if not joker.debuff and joker.config.center.joy_prevent_trap_flip and joker.config.center.joy_prevent_trap_flip(joker, card) then
            return false
        end
    end
    return true
end

JoyousSpring.flip_effect_active = function(card)
    for _, joker in ipairs(G.jokers.cards) do
        if not joker.debuff and joker.config.center.joy_flip_effect_active and joker.config.center.joy_flip_effect_active(joker, card) then
            return true
        end
        if not joker.debuff and joker.ability.extra.joyous_spring.material_effects and next(joker.ability.extra.joyous_spring.material_effects) then
            for material_key, config in pairs(joker.ability.extra.joyous_spring.material_effects) do
                local material_center = G.P_CENTERS[material_key]

                if material_center and material_center.joy_transfer_flip_effect_active and material_center:joy_transfer_flip_effect_active(joker, card, config) then
                    return true
                end
            end
        end
    end
    for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
        if not joker.debuff and joker.config.center.joy_flip_effect_active and joker.config.center.joy_flip_effect_active(joker, card) then
            return true
        end
    end
    return false
end

JoyousSpring.is_flip_active = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.extra.joyous_spring.flip_active and true or false
end

---Checks if **card** fulfills **properties**
---@param card Card
---@param properties material_properties
---@param summon_type string? Optional to check if the card is a wildcard for that type of summon
---@return boolean
JoyousSpring.is_material = function(card, properties, summon_type)
    if summon_type and card.ability.eternal then
        return false
    end
    if not next(properties) then
        return true
    end
    if properties.has_edition then
        if not card:get_edition() then
            return false
        end
    end
    if properties.exclude_edition then
        if card:get_edition() then
            return false
        end
    end
    if summon_type and JoyousSpring.is_all_materials(card, summon_type) then
        return true
    end
    if properties.func and JoyousSpring.material_functions[properties.func] then
        if not JoyousSpring.material_functions[properties.func](card, properties.func_vars) then
            return false
        end
    end
    if properties.key then
        if card.config.center_key ~= properties.key then
            return false
        end
    end
    if properties.exclude_keys then
        for _, key in ipairs(properties.exclude_keys) do
            if card.config.center_key == key then
                return false
            end
        end
    end
    if properties.is_token then
        if card.config.center_key ~= "j_joy_token" then
            return false
        end
    end
    if properties.exclude_tokens then
        if card.config.center_key == "j_joy_token" then
            return false
        end
    end
    if card.facing == 'back' then
        return properties.facedown or false
    end
    if properties.facedown then
        return false
    end
    if properties.rarity then
        if card.config.center.rarity ~= properties.rarity then
            return false
        end
    end
    if properties.exclude_rarities then
        for _, rarity in ipairs(properties.exclude_rarities) do
            if card.config.center.rarity == rarity then
                return false
            end
        end
    end
    if properties.is_debuffed then
        if not card.debuff then
            return false
        end
    end
    if properties.exclude_debuffed then
        if card.debuff then
            return false
        end
    end
    if properties.is_joker then
        return not JoyousSpring.is_monster_card(card)
    end
    if not JoyousSpring.is_monster_card(card) then
        return not (properties.is_monster or properties.monster_type or properties.monster_attribute or properties.monster_archetypes or properties.is_pendulum or properties.summon_type or properties.is_effect or properties.is_non_effect or properties.is_normal or properties.is_extra_deck or properties.is_main_deck or properties.is_summoned or properties.is_tuner or properties.is_trap or properties.cannot_flip) or
            false
    end
    if properties.monster_type then
        if not JoyousSpring.is_monster_type(card, properties.monster_type) then
            return false
        end
    end
    if properties.exclude_monster_types then
        for _, monster_type in ipairs(properties.exclude_monster_types) do
            if JoyousSpring.is_monster_type(card, monster_type) then
                return false
            end
        end
    end
    if properties.monster_attribute then
        if not JoyousSpring.is_attribute(card, properties.monster_attribute) then
            return false
        end
    end
    if properties.exclude_monster_attributes then
        for _, monster_attribute in ipairs(properties.exclude_monster_attributes) do
            if JoyousSpring.is_attribute(card, monster_attribute) then
                return false
            end
        end
    end
    if properties.monster_archetypes then
        for _, monster_archetype in ipairs(properties.monster_archetypes) do
            if not JoyousSpring.is_monster_archetype(card, monster_archetype) then
                return false
            end
        end
    end
    if properties.exclude_monster_archetypes then
        for _, monster_archetype in ipairs(properties.exclude_monster_archetypes) do
            if JoyousSpring.is_monster_archetype(card, monster_archetype) then
                return false
            end
        end
    end
    if properties.is_pendulum then
        if not JoyousSpring.is_pendulum_monster(card) then
            return false
        end
    end
    if properties.exclude_pendulum then
        if JoyousSpring.is_pendulum_monster(card) then
            return false
        end
    end
    if properties.is_extra_deck then
        if not JoyousSpring.is_extra_deck_monster(card) then
            return false
        end
    end
    if properties.exclude_extra_deck then
        if JoyousSpring.is_extra_deck_monster(card) then
            return false
        end
    end
    if properties.is_main_deck then
        if not JoyousSpring.is_main_deck_monster(card) then
            return false
        end
    end
    if properties.exclude_main_deck then
        if JoyousSpring.is_main_deck_monster(card) then
            return false
        end
    end
    if properties.summon_type then
        if not JoyousSpring.is_summon_type(card, properties.summon_type) then
            return false
        end
    end
    if properties.exclude_summon_types then
        for _, summon_type in ipairs(properties.exclude_summon_types) do
            if JoyousSpring.is_summon_type(card, summon_type) then
                return false
            end
        end
    end
    if properties.is_effect then
        if not JoyousSpring.is_effect_monster(card) then
            return false
        end
    end
    if properties.is_non_effect then
        if JoyousSpring.is_effect_monster(card) then
            return false
        end
    end
    if properties.is_normal then
        if JoyousSpring.is_effect_monster(card) or JoyousSpring.is_extra_deck_monster(card) then
            return false
        end
    end
    if properties.is_summoned then
        if not JoyousSpring.is_summoned(card) then
            return false
        end
    end
    if properties.exclude_summoned then
        if JoyousSpring.is_summoned(card) then
            return false
        end
    end
    if properties.is_tuner then
        if JoyousSpring.is_nontuner_monster(card) then
            return false
        end
    end
    if properties.exclude_tuners then
        if JoyousSpring.is_tuner_monster(card) then
            return false
        end
    end
    if properties.is_trap then
        if not JoyousSpring.is_trap_monster(card) then
            return false
        end
    end
    if properties.exclude_traps then
        if JoyousSpring.is_trap_monster(card) then
            return false
        end
    end
    if properties.is_flip then
        if not JoyousSpring.is_flip_monster(card) then
            return false
        end
    end
    if properties.exclude_flips then
        if JoyousSpring.is_flip_monster(card) then
            return false
        end
    end
    if properties.is_field_spell then
        if not JoyousSpring.is_field_spell(card) then
            return false
        end
    end
    if properties.exclude_field_spell then
        if JoyousSpring.is_field_spell(card) then
            return false
        end
    end
    if properties.cannot_flip then
        if not JoyousSpring.cannot_flip(card) and not JoyousSpring.is_summon_type(card, "LINK") and card.config.center_key ~= "j_joy_token" then
            return false
        end
    end
    if properties.can_flip then
        if JoyousSpring.cannot_flip(card) or JoyousSpring.is_summon_type(card, "LINK") or card.config.center_key == "j_joy_token" then
            return false
        end
    end
    return true
end

---Checks if the center for **card_key** fulfills **properties**
---@param card_key string
---@param properties material_properties
---@return boolean
JoyousSpring.is_material_center = function(card_key, properties)
    local card_center = G.P_CENTERS[card_key]
    if not card_center then return false end

    if properties.func then
        if not properties.func(card_center, properties.func_vars) then
            return false
        end
    end
    if properties.key then
        if card_key ~= properties.key then
            return false
        end
    end
    if properties.exclude_keys then
        for _, key in ipairs(properties.exclude_keys) do
            if card_key == key then
                return false
            end
        end
    end
    if properties.is_token then
        if card_key ~= "j_joy_token" then
            return false
        end
    end
    if properties.exclude_tokens then
        if card_key == "j_joy_token" then
            return false
        end
    end
    if properties.rarity then
        if card_center.rarity ~= properties.rarity then
            return false
        end
    end
    if properties.exclude_rarities then
        for _, rarity in ipairs(properties.exclude_rarities) do
            if card_center.rarity == rarity then
                return false
            end
        end
    end
    if properties.is_debuffed then
        return false
    end
    local monster_card_properties = card_center.config and card_center.config.extra and
        type(card_center.config.extra) == "table" and
        card_center.config.extra.joyous_spring

    if properties.is_joker then
        return not monster_card_properties
    end
    if properties.is_monster or properties.monster_type or properties.monster_attribute or properties.monster_archetypes or properties.is_pendulum or properties.summon_type or properties.is_effect or properties.is_non_effect or properties.is_normal or properties.is_tuner or properties.is_trap or properties.is_flip then
        if not monster_card_properties then
            return false
        end
    end
    if properties.exclude_monster_types or properties.exclude_monster_attributes or properties.exclude_monster_archetypes or properties.exclude_pendulum or properties.exclude_summon_types or properties.exclude_tuners or properties.exclude_traps or properties.exclude_flips then
        if not monster_card_properties then
            return true
        end
    end
    if not monster_card_properties then
        return false
    end
    if properties.monster_type then
        if monster_card_properties.monster_type ~= properties.monster_type then
            return false
        end
    end
    if properties.exclude_monster_types then
        for _, monster_type in ipairs(properties.exclude_monster_types) do
            if monster_card_properties.monster_type == monster_type then
                return false
            end
        end
    end
    if properties.monster_attribute then
        if monster_card_properties.attribute ~= properties.monster_attribute then
            return false
        end
    end
    if properties.exclude_monster_attributes then
        for _, monster_attribute in ipairs(properties.exclude_monster_attributes) do
            if monster_card_properties.attribute == monster_attribute then
                return false
            end
        end
    end
    if properties.monster_archetypes then
        for _, monster_archetype in ipairs(properties.monster_archetypes) do
            if not monster_card_properties.monster_archetypes[monster_archetype] then
                return false
            end
        end
    end
    if properties.exclude_monster_archetypes then
        for _, monster_archetype in ipairs(properties.exclude_monster_archetypes) do
            if monster_card_properties.monster_archetypes[monster_archetype] then
                return false
            end
        end
    end
    if properties.is_pendulum then
        if not monster_card_properties.is_pendulum then
            return false
        end
    end
    if properties.exclude_pendulum then
        if monster_card_properties.is_pendulum then
            return false
        end
    end
    if properties.is_extra_deck then
        if monster_card_properties.is_main_deck or monster_card_properties.is_field_spell then
            return false
        end
    end
    if properties.exclude_main_deck then
        if monster_card_properties.is_main_deck then
            return false
        end
    end
    if properties.exclude_extra_deck then
        if not monster_card_properties.is_main_deck and not monster_card_properties.is_field_spell then
            return false
        end
    end
    if properties.is_main_deck then
        if not monster_card_properties.is_main_deck then
            return false
        end
    end
    if properties.is_field_spell then
        if not monster_card_properties.is_field_spell then
            return false
        end
    end
    if properties.exclude_field_spell then
        if monster_card_properties.is_field_spell then
            return false
        end
    end
    if properties.summon_type then
        if monster_card_properties.summon_type ~= properties.summon_type then
            return false
        end
    end
    if properties.exclude_summon_types then
        for _, summon_type in ipairs(properties.exclude_summon_types) do
            if monster_card_properties.summon_type == summon_type then
                return false
            end
        end
    end
    if properties.is_effect then
        if not monster_card_properties.is_effect then
            return false
        end
    end
    if properties.is_non_effect then
        if monster_card_properties.is_effect then
            return false
        end
    end
    if properties.is_normal then
        if monster_card_properties.is_effect or not monster_card_properties.is_main_deck then
            return false
        end
    end
    if properties.is_tuner then
        if not monster_card_properties.is_tuner then
            return false
        end
    end
    if properties.exclude_tuners then
        if monster_card_properties.is_tuner then
            return false
        end
    end
    if properties.is_trap then
        if not monster_card_properties.is_trap then
            return false
        end
    end
    if properties.exclude_traps then
        if monster_card_properties.is_trap then
            return false
        end
    end
    if properties.is_flip then
        if not monster_card_properties.is_flip then
            return false
        end
    end
    if properties.exclude_flips then
        if monster_card_properties.is_flip then
            return false
        end
    end
    return true
end

-- Hooks

local card_flip_ref = Card.flip
function Card:flip(source)
    if not JoyousSpring.is_summon_type(self, "LINK") and self.config.center_key ~= "j_joy_token" and not JoyousSpring.cannot_flip(self) then
        card_flip_ref(self)
        local is_play_area = false
        for _, area in ipairs(SMODS.get_card_areas('jokers')) do
            if self.area == area then
                is_play_area = true
                break
            end
        end
        if is_play_area or (G.hand and self.area == G.hand and G.GAME.blind.in_blind) then
            SMODS.calculate_context({
                joy_card_flipped = self,
                joy_source = source and type(source) == "table" and
                    JoyousSpring.is_monster_card(source) and source or nil
            })
        end
    end
end
