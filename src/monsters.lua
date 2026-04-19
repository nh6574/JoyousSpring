--- MONSTERS

SMODS.Atlas({
    key = "Back",
    path = "back.png",
    px = 142,
    py = 190
})

---Initializes joyous_spring table in Jokers
---@param params joyous_spring
---@return joyous_spring|table
JoyousSpring.init_joy_table = function(params)
    return not params.is_field_spell and not params.is_spell and {
        is_main_deck = params.is_main_deck or
            not params.summon_type or params.summon_type == "NORMAL" or params.summon_type == "RITUAL",
        summon_type = params.summon_type or "NORMAL",
        is_effect = (params.is_effect == nil and not params.token_name) and true or params.is_effect,
        is_tuner = params.is_tuner or false,
        is_pendulum = params.is_pendulum or false,
        is_trap = params.is_trap or false,
        is_flip = params.is_flip or false,
        attribute = params.attribute or "None",
        monster_type = params.monster_type or "None",
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
        is_field_spell = params.is_field_spell,
        is_spell = params.is_spell,
        monster_archetypes = params.monster_archetypes or {},
        perma_debuffed = false,
        is_free = false,
    }
end

local smods_attribute_list = {
    "joy_field_spell", "joy_spell", "joy_main_deck", "joy_extra_deck", "joy_effect", "joy_noneffect",
    "joy_special", "joy_nonspecial", "joy_normal", "joy_tuner", "joy_pendulum", "joy_trap",
    "joy_flip", "joy_RITUAL", "joy_FUSION", "joy_SYNCHRO", "joy_XYZ", "joy_LINK", "joy_monster"
}
for _, key in ipairs(SMODS.merge_lists({ JoyousSpring.types_list, JoyousSpring.attributes_list })) do
    smods_attribute_list[#smods_attribute_list + 1] = "joy_" .. key
end

for _, key in ipairs(smods_attribute_list) do
    SMODS.Attribute {
        key = key,
    }
end

-- It's too much work to switch my systems to SMODS.Attributes so you get this instead
local get_attributes_from_joy_table = function(center)
    local attributes = {}
    ---@type joyous_spring
    local joy_table = (center.config.extra or {}).joyous_spring
    if not joy_table then return attributes end
    attributes[#attributes + 1] = "joy_monster"
    for archetype, _ in pairs(joy_table.monster_archetypes) do -- this is not used for now because im too lazy to make an attribute for each
        attributes[#attributes + 1] = "joy_" .. archetype
    end
    if joy_table.is_field_spell or joy_table.is_spell then
        attributes[#attributes + 1] = joy_table.is_field_spell and "joy_field_spell" or "joy_spell"
        return attributes
    end
    attributes[#attributes + 1] = joy_table.is_main_deck and "joy_main_deck" or "joy_extra_deck"
    attributes[#attributes + 1] = joy_table.is_effect and "joy_effect" or "joy_noneffect"
    attributes[#attributes + 1] = "joy_" .. joy_table.attribute
    attributes[#attributes + 1] = "joy_" .. joy_table.monster_type
    if joy_table.summon_type ~= "NORMAL" then
        attributes[#attributes + 1] = "joy_" .. joy_table.summon_type
        attributes[#attributes + 1] = "joy_special"
    else
        attributes[#attributes + 1] = "joy_nonspecial"
        if not joy_table.is_effect then
            attributes[#attributes + 1] = "joy_normal"
        end
    end
    if joy_table.is_tuner then attributes[#attributes + 1] = "joy_tuner" end
    if joy_table.is_pendulum then attributes[#attributes + 1] = "joy_pendulum" end
    if joy_table.is_trap then attributes[#attributes + 1] = "joy_trap" end
    if joy_table.is_flip then attributes[#attributes + 1] = "joy_flip" end

    return attributes
end

JoyousSpring.Joker = SMODS.Joker:extend {
    unlocked = true,
    discovered = true,
    config = { extra = { joyous_spring = JoyousSpring.init_joy_table {} } },
    set_sprites = JoyousSpring.set_back_sprite,
    inject = function(self, i)
        self.attributes = SMODS.merge_lists({ self.attributes or {}, get_attributes_from_joy_table(self) })
        self.weight = ({ 7, 2.5, 0.5, 0.1 })[self.rarity]

        SMODS.Joker.inject(self, i)
    end,
    get_weight = function(self, original_weight, args)
        if G.GAME.joy_only_ygo_cards then
            local rarity = ({ "Common", "Uncommon", "Rare", "Legendary" })[self.rarity]
            local weight = original_weight
            local mod = G.GAME[tostring(rarity):lower() .. "_mod"] or 1
            if SMODS.Rarities[rarity] and type(SMODS.Rarities[rarity].get_weight) == "function" then
                weight = SMODS.Rarities[rarity]:get_weight(SMODS.Rarities[rarity].default_weight,
                    SMODS.ObjectTypes['Joker']) * 10
                if rarity == "Legendary" and weight == 0 then
                    local legend = args.rarity == "Legendary"
                    for _, rar in ipairs(args.rarities or {}) do
                        if rar == "Legendary" then
                            legend = true
                            break
                        end
                    end
                    weight = (legend or args.append == "sou") and 10 or 0.1
                end
            end
            return weight * mod
        end
        return 10
    end
}

---Checks if *card* is from JoyousSpring originally
---@param card Card|table
---@return boolean
JoyousSpring.is_from_joyousspring = function(card)
    return type(card) == "table" and (((card.config or {}).center or {}).original_mod or {}).id == "JoyousSpring"
end

---Checks if *card* is a Monster Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_monster_card = function(card)
    return card and card.ability and card.ability.extra and type(card.ability.extra) == "table" and
        card.ability.extra.joyous_spring and true or (JoyousSpring.get_extra_values(card) or {}).is_monster or false
end

---Checks if *card* has a joyous_spring table
---@param card Card|table
---@return boolean?
JoyousSpring.has_joyous_table = function(card)
    return JoyousSpring.is_monster_card(card) and card and card.ability and card.ability.extra and
        type(card.ability.extra) == "table" and
        not not card.ability.extra.joyous_spring
end

---Gets extra joyous_spring table values outside of the joyous_spring table
---@param card Card|table
---@return joy_extra_value?
JoyousSpring.get_extra_values = function(card)
    return card and card.ability and card.ability.joy_extra_values
end

---Checks if *card* belongs to *archetype*
---@param card Card|table
---@param archetype string
---@return boolean
JoyousSpring.is_monster_archetype = function(card, archetype)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.monster_archetypes[archetype] and true or false
end

--TODO: Allow multi-types/attributes

---Checks if *card* belongs to *monster_type*
---@param card Card|table
---@param monster_type monster_type
---@return boolean
JoyousSpring.is_monster_type = function(card, monster_type)
    local card_type = JoyousSpring.get_monster_type(card)
    return card_type == true or (card_type and card_type == monster_type)
end

---Gets the monster type of the card
---Returns `nil` if it doesn't have any and true when it's treated as all types
---@param card Card|table
---@return monster_type|true?
JoyousSpring.get_monster_type = function(card)
    local monster_type
    if not JoyousSpring.is_monster_card(card) and (not JoyousSpring.get_extra_values(card) or (not JoyousSpring.get_extra_values(card).is_all_types and not JoyousSpring.get_extra_values(card).monster_type)) then
        -- I didnt want to rewrite this
    elseif (JoyousSpring.get_extra_values(card) or {}).is_all_types or (JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_all_types) then
        monster_type = true
    else
        monster_type = (JoyousSpring.get_extra_values(card) or {}).monster_type or
            card.ability.extra.joyous_spring.monster_type

        if monster_type == "None" then
            monster_type = nil
        end
    end

    if card.area and not card.area.config.collection then
        local calc_return = JoyousSpring.calculate_prototype_function("get_monster_type", {
            return_func = function(new, original)
                return original == true and original or new
            end
        }, card, monster_type)
        if calc_return then
            return calc_return ~= "None" and calc_return or nil
        end
    end

    return monster_type
end

---Checks if *card* is *attribute*
---@param card Card|table
---@param attribute attribute
---@return boolean
JoyousSpring.is_attribute = function(card, attribute)
    local card_attribute = JoyousSpring.get_attribute(card)
    return card_attribute == true or (card_attribute and card_attribute == attribute)
end

---Gets the attribute of the card
---Returns `nil` if it doesn't have any and true when it's treated as all types
---@param card Card|table
---@return attribute|true?
JoyousSpring.get_attribute = function(card)
    local attribute

    if not JoyousSpring.is_monster_card(card) and (not JoyousSpring.get_extra_values(card) or not (JoyousSpring.get_extra_values(card).is_all_attributes and not JoyousSpring.get_extra_values(card).attribute)) then
        -- I didnt want to rewrite this
    elseif (JoyousSpring.get_extra_values(card) or {}).is_all_attributes or (JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_all_attributes) then
        attribute = true
    else
        attribute = (JoyousSpring.get_extra_values(card) or {}).attribute or
            card.ability.extra.joyous_spring.attribute

        if attribute == "None" then
            attribute = nil
        end
    end

    if card.area and not card.area.config.collection then
        local calc_return = JoyousSpring.calculate_prototype_function("get_attribute", {
            return_func = function(new, original)
                return original == true and original or new
            end
        }, card, attribute)
        if calc_return then
            return calc_return ~= "None" and calc_return or nil
        end
    end

    return attribute
end

---Check if card_a and card_b are the same type and/or attribute
---@param card_a Card|table
---@param card_b Card|table
---@param no_type_check boolean?
---@param no_attribute_check boolean?
---@return boolean
JoyousSpring.is_same_type_attribute = function(card_a, card_b, no_type_check, no_attribute_check)
    if not no_type_check then
        local a_type = JoyousSpring.get_monster_type(card_a)
        local b_type = JoyousSpring.get_monster_type(card_b)
        if not a_type or not b_type or not (a_type == true or b_type == true or a_type == b_type) then
            return false
        end
    end
    if not no_attribute_check then
        local a_attribute = JoyousSpring.get_attribute(card_a)
        local b_attribute = JoyousSpring.get_attribute(card_b)
        if not a_attribute or not b_attribute or not (a_attribute == true or b_attribute == true or a_attribute == b_attribute) then
            return false
        end
    end
    return true
end

---Checks if *card* is an Effect Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_effect_monster = function(card)
    if not JoyousSpring.is_monster_card(card or not JoyousSpring.has_joyous_table(card)) then
        return (JoyousSpring.get_extra_values(card) or {})
            .is_effect or false
    end

    return (JoyousSpring.get_extra_values(card) or {}).is_effect or
        (JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_effect)
end

---Checks if *card* is a Main Deck Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_main_deck_monster = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.is_main_deck
end

---Checks if *card* is an Extra Deck Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_extra_deck_monster = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        not card.ability.extra.joyous_spring.is_main_deck and not card.ability.extra.joyous_spring.is_field_spell
end

---Checks if *card* is a Normal Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_normal_monster = function(card)
    return JoyousSpring.is_monster_card(card) and
        not (JoyousSpring.is_effect_monster(card) or JoyousSpring.is_extra_deck_monster(card) or JoyousSpring.is_field_spell(card))
end

---Checks if *card* is a non-Effect Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_noneffect_monster = function(card)
    return JoyousSpring.is_monster_card(card) and
        not (JoyousSpring.is_effect_monster(card) or JoyousSpring.is_field_spell(card))
end

---Checks if *card* has summon type *summon_type*
---@param card Card|table
---@param summon_type summon_type
---@return boolean
JoyousSpring.is_summon_type = function(card, summon_type)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.summon_type == summon_type
end

---Checks if *card* is a Pendulum Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_pendulum_monster = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.is_pendulum or false
end

---Checks if *card* is a Trap Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_trap_monster = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.is_trap or false
end

---Checks if *card* is a Flip Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_flip_monster = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.is_flip or false
end

---Checks if *card* is a Tuner Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_tuner_monster = function(card)
    if not JoyousSpring.is_monster_card(card) or not JoyousSpring.has_joyous_table(card) then
        return (JoyousSpring.get_extra_values(card) or {})
            .is_tuner or false
    end
    if (JoyousSpring.get_extra_values(card) or {}).is_tuner then return true end

    return JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_tuner or false
end

---Checks if *card* is a Non-Tuner Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_nontuner_monster = function(card)
    return not JoyousSpring.is_tuner_monster(card)
end

---Checks if *card* is a Field Spell Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_field_spell = function(card)
    if not JoyousSpring.is_monster_card(card) or not JoyousSpring.has_joyous_table(card) then
        return (JoyousSpring.get_extra_values(card) or {}).is_field_spell or
            false
    end
    if (JoyousSpring.get_extra_values(card) or {}).is_field_spell then return true end

    return JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_field_spell or false
end

---Checks if *card* is an Opponent's Joker
---@param card Card|table
---@return boolean
JoyousSpring.is_opponent_card = function(card)
    return JoyousSpring.is_monster_card(card) and card.ability.set == "joy_Opponent"
end

---Checks if *card* is treated as all matrerials for a summon type
---@param card Card|table
---@param summon_type summon_type
---@return boolean
JoyousSpring.is_all_materials = function(card, summon_type)
    if not JoyousSpring.is_monster_card(card) or not JoyousSpring.has_joyous_table(card) then
        return ((JoyousSpring.get_extra_values(card) or {}).is_all_materials or {})[summon_type] or false
    end
    if (JoyousSpring.get_extra_values(card) or {}).is_all_materials then
        return JoyousSpring.get_extra_values(card).is_all_materials[summon_type]
    end

    return JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_all_materials and
        card.ability.extra.joyous_spring.is_all_materials[summon_type]
end

---Checks if *card* is treated as all attributes
---@param card Card|table
---@return boolean
JoyousSpring.is_all_attributes = function(card)
    return (JoyousSpring.get_extra_values(card) or {}).is_all_attributes or
        (JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_all_attributes) or
        false
end

---Checks if *card* is treated as all types
---@param card Card|table
---@return boolean
JoyousSpring.is_all_types = function(card)
    return (JoyousSpring.get_extra_values(card) or {}).is_all_types or
        (JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and card.ability.extra.joyous_spring.is_all_types) or
        false
end

---Checks if *card* has been summoned
---@param card Card|table
---@return boolean
JoyousSpring.is_summoned = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.summoned or false
end

---Checks if *card* has been revived
---@param card Card|table
---@return boolean
JoyousSpring.is_revived = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.revived or false
end

---Checks if *card* is perma debuffed (by an ability from JoyousSpring)
---@param card Card|table
---@return boolean
JoyousSpring.is_perma_debuffed = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.perma_debuffed or false
end

---Checks if *card* is free (thanks to an ability from JoyousSpring)
---@param card Card|table
---@return boolean
JoyousSpring.is_free = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.is_free or false
end

---Gets the *card*'s summoning materials (or transferred materials)
---@param card Card|table
---@return string[]
JoyousSpring.get_materials = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.summon_materials or {}
end

---Gets the *card*'s remaining Xyz material count
---@param card Card|table
---@return integer
JoyousSpring.get_xyz_materials = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.xyz_materials or 0
end

---Checks if *card* has an activated ability
---@param card Card|table
---@return boolean
JoyousSpring.has_activated_effect = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.config.center.joy_can_activate and true or false
end

---Checks if *card* cannot flip face-down
---@param card Card|table
---@return boolean
JoyousSpring.cannot_flip = function(card)
    if not JoyousSpring.is_monster_card(card) or card.facing == 'back' or not JoyousSpring.has_joyous_table(card) then
        return card and JoyousSpring.calculate_prototype_function("prevent_flip", {
            return_if_true = true
        }, card)
    end
    if card.ability.extra.joyous_spring.cannot_flip or JoyousSpring.is_summon_type(card, "LINK") or card.config.center_key == "j_joy_token" then
        return true
    end

    return JoyousSpring.calculate_prototype_function("prevent_flip", {
        return_if_true = true
    }, card)
end

---Checks if *card* can activate its ability
---@param card Card|table
---@param for_glow? boolean
---@return boolean
JoyousSpring.can_activate = function(card, for_glow)
    return (not card.debuff and card.facing ~= 'back') and JoyousSpring.is_monster_card(card) and
        (for_glow or (not ((G.play and #G.play.cards > 0) or
                (G.CONTROLLER.locked) or
                (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and
            G.STATE ~= G.STATES.HAND_PLAYED and G.STATE ~= G.STATES.DRAW_TO_HAND and G.STATE ~= G.STATES.PLAY_TAROT)) and
        JoyousSpring.has_activated_effect(card) and
        card.config.center.joy_can_activate(card) or false
end

---Checks if *card* can be used as a consumable
---@param card Card|table
---@return boolean
JoyousSpring.can_use = function(card)
    return not ((G.play and #G.play.cards > 0) or
            (G.CONTROLLER.locked) or
            (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and
        (not SMODS.is_eternal(card, { joy_from_use = true }) and not card.debuff and card.facing ~= 'back') and
        (JoyousSpring.is_summon_type(card, "NORMAL") or JoyousSpring.is_summoned(card)) and
        G.STATE ~= G.STATES.HAND_PLAYED and G.STATE ~= G.STATES.DRAW_TO_HAND and G.STATE ~= G.STATES.PLAY_TAROT and
        card.config.center.can_use and card.config.center:can_use(card) or false
end

---Checks if *card* can use its abilities (i.e. is not face-down or debuffed)
---@param card Card|table
---@return boolean
JoyousSpring.can_use_abilities = function(card)
    if not card or card.debuff then return false end
    if card.facing == 'front' then return true end

    return JoyousSpring.calculate_prototype_function("allow_facedown_ability", {
        return_if_true = true
    }, card)
end

---Checks if *card* is a trap that should flip face-up at end of round
---@param card Card|table
---@return boolean
JoyousSpring.should_trap_flip = function(card)
    if not JoyousSpring.is_trap_monster(card) then
        return false
    end

    return not JoyousSpring.calculate_prototype_function("prevent_trap_flip", {
        return_if_true = true
    }, card)
end

---Checks if *card* should have its FLIP ability active
---@param card Card|table
---@return boolean
JoyousSpring.flip_effect_active = function(card)
    return JoyousSpring.calculate_prototype_function("flip_effect_active", {
        return_if_true = true
    }, card)
end

---Checks if *card* has its FLIP ability active by having been flipped
---@param card Card|table
---@return boolean
JoyousSpring.is_flip_active = function(card)
    return JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) and
        card.ability.extra.joyous_spring.flip_active and true or false
end

---Checks if *card* is an Illusion Joker that should banish when blind is selected
---@param card Card|table
---@return boolean
JoyousSpring.should_illusion_banish = function(card)
    if not JoyousSpring.has_joyous_table(card) or card.ability.extra.joyous_spring.monster_type ~= "Illusion" then
        return false
    end

    return not JoyousSpring.calculate_prototype_function("prevent_illusion_banish", {
        return_if_true = true
    }, card)
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
    if not properties.allow_opponent and not properties.is_opponent then
        if card.ability.set == "joy_Opponent" then
            return false
        end
    end
    if properties.is_opponent then
        if card.ability.set ~= "joy_Opponent" then
            return false
        end
    end
    if card.ability.set == "joy_Opponent" then
        if properties.is_blind_card then
            if not card.config.center.joy_blind_key then
                return false
            end
        end
        if properties.exclude_blind_cards then
            if card.config.center.joy_blind_key then
                return false
            end
        end
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
    if properties.func and JoyousSpring.material_functions[properties.func] then
        if not JoyousSpring.material_functions[properties.func](card, properties.func_vars) then
            return false
        end
    end
    if summon_type and JoyousSpring.is_all_materials(card, summon_type) then
        return true
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
    if card.facing == 'back' and summon_type ~= "FUSION" then
        return properties.facedown or false
    end
    if properties.facedown and card.facing ~= 'back' then
        return false
    end
    if properties.rarity then
        if not card:is_rarity(properties.rarity) then
            return false
        end
    end
    if properties.exclude_rarities then
        for _, rarity in ipairs(properties.exclude_rarities) do
            if card:is_rarity(rarity) then
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
        if JoyousSpring.is_monster_card(card) then
            return false
        end
    end
    if properties.is_monster then
        if not JoyousSpring.is_monster_card(card) then
            return false
        end
    end
    if not JoyousSpring.is_monster_card(card) and not JoyousSpring.get_extra_values(card) then
        return not (properties.monster_type or properties.monster_attribute or properties.monster_archetypes or properties.is_pendulum or properties.summon_type or properties.is_effect or properties.is_non_effect or properties.is_normal or properties.is_extra_deck or properties.is_main_deck or properties.is_summoned or properties.is_tuner or properties.is_trap or properties.cannot_flip)
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
        if not JoyousSpring.is_noneffect_monster(card) then
            return false
        end
    end
    if properties.is_normal then
        if not JoyousSpring.is_normal_monster(card) then
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
    if not properties.allow_opponent and not properties.is_opponent then
        if card_center.set == "joy_Opponent" then
            return false
        end
    end
    if properties.is_opponent then
        if card_center.set ~= "joy_Opponent" then
            return false
        end
    end
    if card_center.set == "joy_Opponent" then
        if properties.is_blind_card then
            if not card_center.joy_blind_key then
                return false
            end
        end
        if properties.exclude_blind_cards then
            if card_center.joy_blind_key then
                return false
            end
        end
    end
    if properties.from_shop then
        if card_center.joy_no_shop then
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
    local extra_values = card_center.config and card_center.config.joy_extra_values or {}
    local has_extra_values = not not next(extra_values)

    if properties.is_joker then
        if monster_card_properties or extra_values.is_monster then
            return false
        end
    end
    if properties.is_monster then
        if not monster_card_properties and not extra_values.is_monster then
            return false
        end
    end
    if properties.monster_type or properties.monster_attribute or properties.monster_archetypes or properties.is_pendulum or properties.summon_type or properties.is_effect or properties.is_non_effect or properties.is_normal or properties.is_tuner or properties.is_trap or properties.is_flip then
        if not has_extra_values and not monster_card_properties then
            return false
        end
    end
    if properties.exclude_monster_types or properties.exclude_monster_attributes or properties.exclude_monster_archetypes or properties.exclude_pendulum or properties.exclude_summon_types or properties.exclude_tuners or properties.exclude_traps or properties.exclude_flips then
        if not has_extra_values and not monster_card_properties then
            return true
        end
    end
    if not has_extra_values and not monster_card_properties then
        return false
    end
    if properties.monster_type then
        if has_extra_values and extra_values.monster_type then
            if extra_values.monster_type ~= properties.monster_type then
                return false
            end
        else
            if not monster_card_properties then
                return false
            end
            if monster_card_properties.monster_type ~= properties.monster_type then
                return false
            end
        end
    end
    if properties.exclude_monster_types then
        for _, monster_type in ipairs(properties.exclude_monster_types) do
            if has_extra_values and extra_values.monster_type then
                if extra_values.monster_type == monster_type then
                    return false
                end
            else
                if monster_card_properties and monster_card_properties.monster_type == monster_type then
                    return false
                end
            end
        end
    end
    if properties.monster_attribute then
        if has_extra_values and extra_values.monster_attribute then
            if extra_values.attribute ~= properties.monster_attribute then
                return false
            end
        else
            if not monster_card_properties then
                return false
            end
            if monster_card_properties.attribute ~= properties.monster_attribute then
                return false
            end
        end
    end
    if properties.exclude_monster_attributes then
        for _, monster_attribute in ipairs(properties.exclude_monster_attributes) do
            if has_extra_values and extra_values.monster_attribute then
                if extra_values.attribute == monster_attribute then
                    return false
                end
            else
                if monster_card_properties and monster_card_properties.attribute == monster_attribute then
                    return false
                end
            end
        end
    end
    if properties.monster_archetypes then
        if not monster_card_properties then
            return false
        end
        for _, monster_archetype in ipairs(properties.monster_archetypes) do
            if not monster_card_properties.monster_archetypes[monster_archetype] then
                return false
            end
        end
    end
    if properties.exclude_monster_archetypes then
        for _, monster_archetype in ipairs(properties.exclude_monster_archetypes) do
            if monster_card_properties and monster_card_properties.monster_archetypes[monster_archetype] then
                return false
            end
        end
    end
    if properties.is_pendulum then
        if not monster_card_properties then
            return false
        end
        if not monster_card_properties.is_pendulum then
            return false
        end
    end
    if properties.exclude_pendulum then
        if monster_card_properties and monster_card_properties.is_pendulum then
            return false
        end
    end
    if properties.is_extra_deck then
        if (monster_card_properties or {}).is_main_deck or (monster_card_properties or {}).is_field_spell or extra_values.is_field_spell then
            return false
        end
    end
    if properties.exclude_main_deck then
        if monster_card_properties and monster_card_properties.is_main_deck then
            return false
        end
    end
    if properties.exclude_extra_deck then
        if not (monster_card_properties or {}).is_main_deck and not (monster_card_properties or {}).is_field_spell and not extra_values.is_field_spell then
            return false
        end
    end
    if properties.is_main_deck then
        if not monster_card_properties then
            return false
        end
        if not monster_card_properties.is_main_deck then
            return false
        end
    end

    if properties.is_field_spell then
        if not (monster_card_properties or {}).is_field_spell and not extra_values.is_field_spell then
            return false
        end
    end
    if properties.exclude_field_spell then
        if (monster_card_properties or {}).is_field_spell or extra_values.is_field_spell then
            return false
        end
    end
    if properties.summon_type then
        if not monster_card_properties then
            return false
        end
        if monster_card_properties.summon_type ~= properties.summon_type then
            return false
        end
    end
    if properties.exclude_summon_types then
        for _, summon_type in ipairs(properties.exclude_summon_types) do
            if monster_card_properties and monster_card_properties.summon_type == summon_type then
                return false
            end
        end
    end
    if properties.is_effect then
        if not (monster_card_properties or {}).is_effect and not extra_values.is_effect then
            return false
        end
    end
    if properties.is_non_effect then
        if monster_card_properties and (monster_card_properties.is_effect or monster_card_properties.is_field_spell) or (extra_values.is_effect or extra_values.is_field_spell) then
            return false
        end
    end
    if properties.is_normal then
        if monster_card_properties and (monster_card_properties.is_effect or not monster_card_properties.is_main_deck or monster_card_properties.is_field_spell) or (extra_values.is_effect or extra_values.is_field_spell) then
            return false
        end
    end
    if properties.is_tuner then
        if not (monster_card_properties or {}).is_tuner and not extra_values.is_tuner then
            return false
        end
    end
    if properties.exclude_tuners then
        if monster_card_properties and monster_card_properties.is_tuner or extra_values.is_tuner then
            return false
        end
    end
    if properties.is_trap then
        if not monster_card_properties then
            return false
        end
        if not monster_card_properties.is_trap then
            return false
        end
    end
    if properties.exclude_traps then
        if monster_card_properties and monster_card_properties.is_trap then
            return false
        end
    end
    if properties.is_flip then
        if not monster_card_properties then
            return false
        end
        if not monster_card_properties.is_flip then
            return false
        end
    end
    if properties.exclude_flips then
        if monster_card_properties and monster_card_properties.is_flip then
            return false
        end
    end
    return true
end

---Get all materials in G.jokers that fulfill **property_list**
---@param property_list material_properties[]?
---@param different_names boolean?
---@param for_tribute boolean?
---@param count_field_spell boolean?
---@return Card[]
JoyousSpring.get_materials_owned = function(property_list, different_names, for_tribute, count_field_spell)
    if not G.jokers then return {} end

    local materials = {}
    local keys = {}

    for _, joker in ipairs(SMODS.merge_lists({ G.jokers.cards, property_list and #property_list > 0 and JoyousSpring.opponent_area.cards or {} })) do
        if joker.getting_sliced then
        elseif not property_list or #property_list == 0 then
            if not keys[joker.config.center_key] or not different_names then
                table.insert(materials, joker)
                keys[joker.config.center_key] = true
            end
        else
            for _, property in ipairs(property_list) do
                if keys[joker.config.center_key] and different_names then
                    break
                end
                if JoyousSpring.is_material(joker, property, for_tribute and "TRIBUTE" or nil) then
                    table.insert(materials, joker)
                    keys[joker.config.center_key] = true
                    break
                end
            end
        end
    end
    if count_field_spell then
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            if joker.getting_sliced then
            elseif not property_list or #property_list == 0 then
                if not keys[joker.config.center_key] or not different_names then
                    table.insert(materials, joker)
                    keys[joker.config.center_key] = true
                end
            else
                for _, property in ipairs(property_list) do
                    if keys[joker.config.center_key] and different_names then
                        break
                    end
                    if JoyousSpring.is_material(joker, property, for_tribute and "TRIBUTE" or nil) then
                        table.insert(materials, joker)
                        keys[joker.config.center_key] = true
                        break
                    end
                end
            end
        end
    end
    return materials
end

---Count all materials in G.jokers that fulfill **property_list**
---@param property_list material_properties[]
---@param different_names boolean?
---@param for_tribute boolean?
---@param count_field_spell boolean?
---@return integer
JoyousSpring.count_materials_owned = function(property_list, different_names, for_tribute, count_field_spell)
    return #JoyousSpring.get_materials_owned(property_list, different_names, for_tribute, count_field_spell)
end

---Get all materials in graveyard that fulfill **property_list**
---@param property_list material_properties[]
---@param to_revive boolean? Checks if it can be revived
---@param different_names boolean?
---@return string[]
JoyousSpring.get_materials_in_graveyard = function(property_list, to_revive, different_names)
    if not JoyousSpring.graveyard then return {} end

    local materials = {}
    for key, t in pairs(JoyousSpring.graveyard) do
        local count = t.count
        local summonable = t.summonable
        if count > 0 then
            if not (to_revive and (G.P_CENTERS[key].config.extra.joyous_spring.cannot_revive or summonable < 1)) then
                if not property_list or #property_list == 0 then
                    for i = 1, (different_names and 1 or count) do
                        table.insert(materials, key)
                    end
                else
                    for _, property in ipairs(property_list) do
                        if JoyousSpring.is_material_center(key, property) then
                            for i = 1, (different_names and 1 or count) do
                                table.insert(materials, key)
                            end
                            break
                        end
                    end
                end
            end
        end
    end
    return materials
end

---Count all materials in graveyard that fulfill **property_list**
---@param property_list material_properties[]
---@param to_revive boolean? Checks if it can be revived
---@param different_names boolean?
---@return integer
JoyousSpring.count_materials_in_graveyard = function(property_list, to_revive, different_names)
    return #JoyousSpring.get_materials_in_graveyard(property_list, to_revive, different_names)
end

---Get the keys to all matrerials in G.jokers and graveyard that fulfill **property_list**
---@param property_list material_properties[]
---@param to_revive boolean? Checks if it can be revived
---@param different_names boolean?
---@return string[]
JoyousSpring.get_all_material_keys = function(property_list, to_revive, different_names)
    local gy = JoyousSpring.get_materials_in_graveyard(property_list, to_revive, different_names)
    local owned = JoyousSpring.get_materials_owned(property_list, different_names)
    for _, card in ipairs(owned) do
        gy[#gy + 1] = card.config.center_key or nil
    end
    return gy
end

---Count all materials in G.jokers and graveyard that fulfill **property_list**
---@param property_list material_properties[]
---@param to_revive boolean? Checks if it can be revived
---@param different_names boolean?
---@param count_field_spell boolean?
---@return integer
JoyousSpring.count_all_materials = function(property_list, to_revive, different_names, count_field_spell)
    return JoyousSpring.count_materials_in_graveyard(property_list, to_revive, different_names) +
        JoyousSpring.count_materials_owned(property_list, different_names, false, count_field_spell)
end

---Get cards in the collection that fulfill *property_list*
---@param property_list material_properties[]
---@param not_owned boolean?
---@param not_extra boolean?
---@param is_in_pool string|true?
---@return string[]
JoyousSpring.get_materials_in_collection = function(property_list, not_owned, not_extra, is_in_pool)
    local pool = {}
    for _, v in pairs(SMODS.merge_lists({ G.P_CENTER_POOLS.Joker, G.P_CENTER_POOLS.joy_Opponent })) do
        local k = v.key
        if (not not_owned or not G.jokers or not next(SMODS.find_card(k, true))) and
            (not not_extra or not JoyousSpring.is_in_extra_deck(k)) then
            local in_pool = true
            if is_in_pool and v.in_pool and type(v.in_pool) == 'function' then
                in_pool, _ = v:in_pool({ source = type(is_in_pool) == "string" and is_in_pool or "JoyousSpring" })
            end
            if not is_in_pool or in_pool then
                if not property_list or #property_list == 0 then
                    table.insert(pool, k)
                else
                    for _, property in ipairs(property_list) do
                        if JoyousSpring.is_material_center(k, property) then
                            table.insert(pool, k)
                            break
                        end
                    end
                end
            end
        end
    end
    return pool
end

---Filter materials from a key list
---@param list string[]
---@param allow? material_properties[]
---@param deny? material_properties[]
---@return string[]
JoyousSpring.filter_material_keys_from_list = function(list, allow, deny)
    local pool = {}
    for _, key in pairs(list) do
        local added = not (allow and #allow > 0)

        for _, property in ipairs(allow or {}) do
            if JoyousSpring.is_material_center(key, property) then
                added = true
                break
            end
        end

        for _, property in ipairs(deny or {}) do
            if JoyousSpring.is_material_center(key, property) then
                added = false
                break
            end
        end
        if added then
            table.insert(pool, key)
        end
    end
    return pool
end
