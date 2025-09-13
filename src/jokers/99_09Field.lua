--- FIELD SPELL FREE AGENTS

-- Chicken Game
SMODS.Joker({
    key = "chickengame",
    atlas = 'Misc04',
    pos = { x = 3, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent * 100, card.ability.extra.hands, card.ability.extra.discards } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            percent = 0.5,
            hands = 1,
            discards = 1
        },
    },
    calculate = function(self, card, context)
        if context.joy_activate_effect and context.joy_activated_card == card and G.GAME.blind.in_blind then
            ease_discard(card.ability.extra.discards)
            ease_hands_played(card.ability.extra.hands)
            G.GAME.blind.chips = math.floor(G.GAME.blind.chips + G.GAME.blind.chips * card.ability.extra.percent)
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end,
    joy_can_activate = function(card)
        return G.GAME.blind.in_blind
    end,
})

-- Fusion Gate
SMODS.Joker({
    key = "fusiongate",
    atlas = 'Misc04',
    pos = { x = 5, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
                local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "FUSION" } }, nil, nil,
                    card.config.center.key)
                for _ = 1, card.ability.extra.adds do
                    local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                    if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                        JoyousSpring.add_to_extra_deck(key_to_add)
                    end
                end
            end
        end
    end,
})

-- Xyz Territory
SMODS.Joker({
    key = "xyzterritory",
    atlas = 'Misc04',
    pos = { x = 2, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.money } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            mult = 25,
            current_mult = 0,
            money = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
            if context.joy_detached then
                return {
                    dollars = card.ability.extra.money
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.current_mult = card.ability.extra.current_mult +
                    card.ability.extra.mult * JoyousSpring.count_materials_owned({ { summon_type = "XYZ" } })
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "current_mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Xyz Override
SMODS.Joker({
    key = "xyzoverride",
    atlas = 'Misc04',
    pos = { x = 1, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.attach } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            tributes = 1,
            attach = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
            local materials = JoyousSpring.get_materials_owned({ {} }, false, true)
            if #materials >= card.ability.extra.tributes then
                JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                    card.ability.extra.tributes)
            end
        end
        if context.joy_exit_effect_selection and context.joy_card == card and
            #context.joy_selection == card.ability.extra.tributes then
            JoyousSpring.tribute(card, context.joy_selection)
            card.ability.extra.activated = true
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_summon_type(joker, "XYZ") then
                    joker.ability.extra.joyous_spring.xyz_materials = joker.ability.extra.joyous_spring.xyz_materials +
                        card.ability.extra.attach
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        local materials_owned = JoyousSpring.get_materials_owned({ {} }, false, true)
        local xyz_owned = JoyousSpring.get_materials_owned({ { summon_type = "XYZ" } })

        if not next(xyz_owned) or (#materials_owned == 1 and #xyz_owned == 1 and materials_owned[1] == xyz_owned[1]) then
            return false
        end
        return #materials_owned >= card.ability.extra.tributes
    end,
})

-- Summon Breaker
SMODS.Joker({
    key = "summonbreaker",
    atlas = 'Misc04',
    pos = { x = 0, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { JoyousSpring.get_summoned_count(nil, true), card.ability.extra.to_summon } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            to_summon = 3
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon and JoyousSpring.get_summoned_count(nil, true) >= card.ability.extra.to_summon then
            context.joy_card:set_edition("e_negative", true)
            SMODS.destroy_cards(card, nil, true)
        end
    end,
})

-- Extra Net
SMODS.Joker({
    key = "extranet",
    atlas = 'Misc04',
    pos = { x = 4, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            h_size = 1,
            h_size_change = 0
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon then
            card.ability.extra.h_size_change = card.ability.extra.h_size_change + 1
            G.hand:change_size(1)
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.h_size_change > 0 then
                G.hand:change_size(-card.ability.extra.h_size_change)
                card.ability.extra.h_size_change = 0
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.h_size_change = JoyousSpring.get_summoned_count(nil, true)
        G.hand:change_size(card.ability.extra.h_size_change)
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.h_size_change > 0 then
            G.hand:change_size(-card.ability.extra.h_size_change)
            card.ability.extra.h_size_change = 0
        end
    end,
})

-- Future Visions
SMODS.Joker({
    key = "futurevisions",
    atlas = 'Misc04',
    pos = { x = 6, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.banishes, card.ability.extra.increases } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            banishes = 1,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_post_round_eval then
                local choices = JoyousSpring.get_materials_owned({ { is_main_deck = true } })
                local joker = pseudorandom_element(choices, 'j_joy_futurevisions')
                if joker then
                    if JoyousSpring.is_monster_archetype(joker, "FortuneLady") then
                        JoyousSpring.modify_probability_numerator(joker, nil, 2)
                    else
                        JoyousSpring.modify_probability_numerator(joker, card.ability.extra.increases)
                    end
                    JoyousSpring.banish(joker, "boss_selected")
                end
            end
        end
    end
})

-- Magical Mid-Breaker Field
SMODS.Joker({
    key = "midbreaker",
    atlas = 'Misc04',
    pos = { x = 7, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            xmult = 3
        },
    },
    calculate = function(self, card, context)
        if context.other_joker and G.GAME.blind.boss then
            return {
                xmult = card.ability.extra.xmult,
                message_card = context.other_joker
            }
        end
        if (context.setting_blind or (context.end_of_round and context.game_over == false)) and context.main_eval then
            if G.GAME.blind.boss then
                for _, joker in ipairs(G.jokers.cards) do
                    SMODS.debuff_card(joker, context.setting_blind and "prevent_debuff" or false, "j_joy_midbreaker")
                end
            else
                JoyousSpring.flip_all_cards(card, context.setting_blind and "back" or "front", { G.jokers })
            end
        end
        if context.setting_blind and G.GAME.blind.boss then
            for _, joker in ipairs(G.jokers.cards) do
                SMODS.debuff_card(joker, "prevent_debuff", "j_joy_midbreaker")
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, "j_joy_midbreaker")
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if G.GAME.blind.boss then
            SMODS.debuff_card(added_card, "prevent_debuff", "j_joy_midbreaker")
        end
    end,
    joy_prevent_flip = function(card, other_card)
        return G.GAME.blind.boss and true or false
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            mod_function = function(card, mod_joker)
                return {
                    x_mult = G.GAME.blind and G.GAME.blind.boss and
                        mod_joker.ability.extra.xmult ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
})
