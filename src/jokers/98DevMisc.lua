--- MISCELLANEOUS

-- Rock Band Xenoguitar
SMODS.Joker({
    key = "zenoguitar",
    atlas = 'Misc02',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mills, card.ability.extra.revives, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mills = 2,
            revives = 1,
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_sent_to_gy and context.joy_from_field and context.joy_card == card then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_type = "Rock" } },
                    card.config.center.key, card.ability.extra.mills)
                JoyousSpring.revive_pseudorandom(
                    { { monster_type = "Rock" } },
                    card.config.center.key, true
                )
            end
            if JoyousSpring.used_as_material(card, context) then
                for _ = 1, card.ability.extra.adds do
                    SMODS.add_card { set = "Enhanced", suit = "Diamonds", area = G.deck }
                end
            end
        end
    end
})

-- Revival Golem
SMODS.Joker({
    key = "revgolem",
    atlas = 'Misc02',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            adds = 2,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.used_as_material(card, context) then
                for _ = 1, card.ability.extra.adds do
                    SMODS.add_card { set = "Base", suit = "Diamonds", seal = SMODS.poll_seal({ guaranteed = true }), area = G.deck }
                end
                JoyousSpring.create_perma_debuffed_card("j_joy_revgolem", card.config.center.key, "e_negative")
            end
        end
    end
})

-- Tackle Crusader
SMODS.Joker({
    key = "tackcrusader",
    atlas = 'Misc02',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.get_excavated_count("Diamonds"), card.ability.extra.tributes, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mult = 1,
            tributes = 1,
            adds = 2,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Rock" } }, false, true)
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                card.ability.extra.activated = true
                JoyousSpring.tribute(card, context.joy_selection)
                for _ = 1, card.ability.extra.adds do
                    SMODS.add_card { set = "Base", suit = "Diamonds", edition = poll_edition(card.config.center.key, nil, true, true), area = G.deck }
                end
                JoyousSpring.flip_all_cards(card, 'front', { G.jokers })
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.get_excavated_count("Diamonds")
                }
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
        local materials = JoyousSpring.get_materials_owned(
            { { monster_type = "Rock" } }, false, true)
        return #materials >= card.ability.extra.tributes
    end,
})

-- Doki Doki
SMODS.Joker({
    key = "doki",
    atlas = 'Misc02',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.get_excavated_count("Diamonds"), card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            chips = 5,
            tributes = 1,
            creates = 2,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Rock" } }, false, true)
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes and #G.jokers.cards + G.GAME.joker_buffer + card.ability.extra.creates - card.ability.extra.tributes <= G.jokers.config.card_limit then
                card.ability.extra.activated = true
                JoyousSpring.tribute(card, context.joy_selection)
                for _ = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom({ { monster_type = "Rock", is_main_deck = true } },
                        card.config.center.key, true)
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * JoyousSpring.get_excavated_count("Diamonds")
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated or not (#G.jokers.cards + G.GAME.joker_buffer + card.ability.extra.creates - card.ability.extra.tributes <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_materials_owned(
            { { monster_type = "Rock" } }, false, true)
        return #materials >= card.ability.extra.tributes
    end,
})

-- Block Dragon
SMODS.Joker({
    key = "blockdragon",
    atlas = 'Misc02',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }), card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_excavated_count("Diamonds"), card.ability.extra.requirement, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mult = 1,
            xmult = 0.1,
            requirement = 30,
            creates = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }),
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_excavated_count("Diamonds")
                }
            end
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }) >= card.ability.extra.requirement then
                for _ = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom({ { monster_type = "Rock", is_main_deck = true, rarity = 1 },
                            { monster_type = "Rock", is_main_deck = true, rarity = 2 } },
                        card.config.center.key, false, false, "e_negative")
                end
                JoyousSpring.empty_graveyard(nil, { { monster_type = "Rock" } })
            end
        end
    end,
})

-- Ghost Fairy Elfobia
SMODS.Joker({
    key = "elfobia",
    atlas = 'Misc05',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } }), card.ability.extra.increases } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
            },
            chips = 20,
            increases = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } })
                }
            end
            if context.setting_blind and context.blind.boss then
                local materials = JoyousSpring.get_materials_owned({ { monster_attribute = "WIND" } })
                for _, joker in ipairs(materials) do
                    JoyousSpring.modify_probability_numerator(joker, card.ability.extra.increases)
                end
            end
        end
    end,
    joy_can_be_sent_to_graveyard = function(self, card, choices)
        if next(SMODS.find_card("j_joy_elfuria")) then
            return JoyousSpring.filter_material_keys_from_list(choices, { { monster_attribute = "WIND" } })
        end
    end
})

-- Mystical Fairy Elfuria
SMODS.Joker({
    key = "elfuria",
    atlas = 'Misc05',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } }), card.ability.extra.attach } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
            },
            mult = 1,
            attach = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } })
                }
            end
            if context.setting_blind and context.blind.boss then
                for _, joker in ipairs(G.jokers.cards) do
                    if JoyousSpring.is_summon_type(joker, "XYZ") and JoyousSpring.is_attribute(joker, "WIND") then
                        joker.ability.extra.joyous_spring.xyz_materials = joker.ability.extra.joyous_spring
                            .xyz_materials + card.ability.extra.attach
                    end
                end
            end
        end
    end,
})

-- Lindbloom
SMODS.Joker({
    key = "lindbloom",
    atlas = 'Misc05',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" then
                local exists = false
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= context.other_joker and JoyousSpring.is_same_type_attribute(joker, context.other_joker) then
                        exists = true
                    end
                end
                if exists then
                    return {
                        xmult = card.ability.extra.xmult,
                        message_card = context.other_joker
                    }
                end
            end
        end
    end,
})

-- Genomix Fighter
SMODS.Joker({
    key = "genomix",
    atlas = 'Misc05',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                is_tuner = true,
                is_all_materials = { SYNCHRO = true }
            },
            mult = 5
        },
    },
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            local monster_type = JoyousSpring.get_monster_type(card)
            local attribute = JoyousSpring.get_attribute(card)
            return {
                mult = config.mult * JoyousSpring.count_all_materials({ {
                    monster_type = monster_type ~= true and monster_type or nil,
                    monster_attribute = attribute ~= true and attribute or nil
                } })
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return { mult = 3 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, card, config)
        local monster_type = JoyousSpring.get_monster_type(card)
        local attribute = JoyousSpring.get_attribute(card)

        return {
            vars = { config.mult, config.mult * JoyousSpring.count_all_materials({ {
                monster_type = monster_type ~= true and monster_type or nil,
                monster_attribute = attribute ~= true and attribute or nil
            } }) }
        }
    end
})

-- Maximum Six
SMODS.Joker({
    key = "maxsix",
    atlas = 'Misc05',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_xmult,
            card.config.center.key .. "_xmult")
        local numerator_negative, denominator_negative = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds_negative, card.config.center.key .. "_negative")
        return { vars = { numerator_xmult, denominator_xmult, card.ability.extra.xmult, numerator_negative, denominator_negative } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Warrior",
            },
            odds_xmult = 6,
            odds_negative = 66,
            xmult = 6
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and not card.edition and SMODS.pseudorandom_probability(card, card.config.center.key .. "_negative", 1, card.ability.extra.odds_negative) then
                card:set_edition("e_negative")
            end
            if context.joker_main and SMODS.pseudorandom_probability(card, card.config.center.key .. "_xmult", 1, card.ability.extra.odds_xmult) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
})

-- Space-Time Police
SMODS.Joker({
    key = "stpolice",
    atlas = 'Misc05',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.returns } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
            },
            returns = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                local choices = SMODS.merge_lists({ JoyousSpring.banish_boss_selected_area.cards,
                    JoyousSpring.banish_end_of_ante_area.cards })
                local to_return = pseudorandom_element(choices, card.config.center.key)
                if to_return then
                    JoyousSpring.return_from_banish(to_return)
                end
                JoyousSpring.banish(card, "boss_selected")
                local banish_choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and JoyousSpring.is_monster_type(joker, "Psychic") then
                        table.insert(banish_choices, joker)
                    end
                end
                local to_banish = pseudorandom_element(banish_choices, card.config.center.key)
                if to_banish then
                    JoyousSpring.banish(to_banish, "boss_selected")
                end
            end
        end
    end,
})

-- Wannabee!
SMODS.Joker({
    key = "wannabee",
    atlas = 'Misc05',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.excavates, card.ability.extra.draws } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Insect",
            },
            excavates = 5,
            draws = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:get_id() == 2 then
                    card.joy_draw = (card.joy_draw or 0) + 1
                    hit = true
                end
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.first_hand_drawn and card.joy_draw then
                SMODS.draw_cards(card.joy_draw)
                card.joy_draw = nil
            end
        end
    end,
    joy_calculate_excavate = function(card, context)
        if context.setting_blind then
            return card.ability.extra.excavates
        end
    end
})

-- Magical Merchant
SMODS.Joker({
    key = "merchant",
    atlas = 'Misc05',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.requirement, math.max(card.ability.extra.requirement - card.ability.extra.flipped, 0), localize(card.ability.extra.suit, 'suits_plural'), colours = { G.C.SUITS[card.ability.extra.suit] } } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Insect",
                is_flip = true
            },
            requirement = 10,
            excavated = 0,
            suit = "Diamonds",
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:get_id() == 2 then
                    card.joy_draw = (card.joy_draw or 0) + 1
                    hit = true
                end
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.first_hand_drawn and card.joy_draw then
                SMODS.draw_cards(card.joy_draw)
                card.joy_draw = nil
            end
        end
        if context.joy_excavated then
            card.ability.extra.excavated = card.ability.extra.excavated + 1
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.suit = JoyousSpring.most_owned_suit(card.config.center.key)
            if card.ability.extra.excavated >= card.ability.extra.requirement then
                card:flip()
                card.ability.extra.excavated = 0
            end
        end
        JoyousSpring.calculate_flip_effect(card, context)
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if G.deck then
            card.ability.extra.suit = JoyousSpring.most_owned_suit(card.config.center.key)
        end
    end,
    joy_calculate_excavate = function(card, context)
        if context.setting_blind and JoyousSpring.is_flip_active(card) then
            local count = 0
            for i = #G.deck.cards, 1, -1 do
                count = count + 1
                if G.deck.cards[i]:is_suit(card.ability.extra.suit) then
                    break
                end
            end
            return count
        end
    end
})

-- Catoblepas and the Witch of Fate
SMODS.Joker({
    key = "catoblepas",
    atlas = 'Misc05',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            card.config.center.key)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } }), numerator, denominator, card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
            },
            mult = 1,
            odds = 100,
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } })
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key, 1, card.ability.extra.odds) then
                local choices = JoyousSpring.get_materials_owned({ { monster_type = "Spellcaster" } })
                local to_banish = pseudorandom_element(choices, card.config.center.key .. "_banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                    JoyousSpring.modify_probability_numerator(to_banish, nil, 2)
                    return {
                        message = localize("k_joy_banished"),
                        colour = G.C.GREEN
                    }
                end
            end
        end
    end,
})

-- Couple of Aces
SMODS.Joker({
    key = "coupleofaces",
    atlas = 'Misc05',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_xmult,
            card.config.center.key .. "_xmult")
        local numerator_level, denominator_level = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_level,
            card.config.center.key .. "_level")
        local numerator_enhance, denominator_enhance = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds_enhance, card.config.center.key .. "_enhance")
        return { vars = { card.ability.extra.xmult, numerator_xmult, denominator_xmult, numerator_level, denominator_level, numerator_enhance, denominator_enhance } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Fairy",
            },
            xmult = 2,
            odds_xmult = 2,
            odds_level = 20,
            odds_enhance = 200
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                return {
                    level_up = SMODS.pseudorandom_probability(card, card.config.center.key .. "_level", 1,
                        card.ability.extra.odds_level) or nil
                }
            end
            if context.joker_main and next(context.poker_hands["Pair"]) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.individual and context.cardarea == G.play and next(context.poker_hands["Pair"]) then
                if (context.other_card.seal ~= "Gold" or not SMODS.has_enhancement(context.other_card, "m_lucky") or
                        context.other_card:get_id() ~= 14) and
                    SMODS.pseudorandom_probability(card, card.config.center.key .. "_enhance", 1,
                        card.ability.extra.odds_enhance) then
                    if context.other_card.seal ~= "Gold" then
                        context.other_card:set_seal("Gold")
                    end
                    if not SMODS.has_enhancement(context.other_card, "m_lucky") then
                        context.other_card:set_ability("m_lucky")
                    end
                    if context.other_card:get_id() ~= 14 then
                        assert(SMODS.change_base(context.other_card, nil, "Ace"))
                    end
                end
                return {
                    xmult = context.other_card:get_id() == 14 and
                        SMODS.pseudorandom_probability(card, card.config.center.key .. "_xmult", 1,
                            card.ability.extra.odds_xmult) and
                        card.ability.extra.xmult or nil
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key, 1, card.ability.extra.odds) then
                local choices = JoyousSpring.get_materials_owned({ { monster_type = "Spellcaster" } })
                local to_banish = pseudorandom_element(choices, card.config.center.key .. "_banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                    JoyousSpring.modify_probability_numerator(to_banish, nil, 2)
                    return {
                        message = localize("k_joy_banished"),
                        colour = G.C.GREEN
                    }
                end
            end
        end
    end,
})

-- Hallohallo
SMODS.Joker({
    key = "hallo",
    atlas = 'Misc05',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.from, card.ability.extra.to } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                is_pendulum = true,
                is_tuner = true,
                is_effect = false
            },
            from = 1,
            to = 6
        },
    },
    use = function(self, card, area, copier)
        for _, jokerarea in ipairs(SMODS.get_card_areas('jokers')) do
            for _, joker in ipairs(jokerarea.cards or {}) do
                if joker.ability.set == "Joker" and joker ~= card then
                    local amount = pseudorandom(card.config.center.key, 1, 6)
                    JoyousSpring.modify_probability_numerator(joker, amount)
                    SMODS.calculate_effect({ message = "+" .. amount, colour = G.C.GREEN }, joker)
                end
            end
        end
    end,
    can_use = function(self, card)
        return #G.jokers.cards > (card.area ~= G.jokers and 0 or 1)
    end,
})

-- Number 67: Pair-a-Dice Smasher
SMODS.Joker({
    key = "67",
    atlas = 'Misc05',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            card.config.center.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.from, card.ability.extra.to, numerator, denominator, card.ability.extra.attach } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fairy",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_rarity = true,
                        }
                    }
                }
            },
            detach = 2,
            from = 1,
            to = 6,
            odds = 100,
            attach = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and SMODS.pseudorandom_probability(card, card.config.center.key, 1, card.ability.extra.odds) then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring
                    .xyz_materials + card.ability.extra.attach
                return {
                    message = localize("k_joy_attach"),
                    colour = G.C.GREEN
                }
            end
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                for _, jokerarea in ipairs(SMODS.get_card_areas('jokers')) do
                    for _, joker in ipairs(jokerarea.cards or {}) do
                        if joker.ability.set == "Joker" then
                            local amount = pseudorandom(card.config.center.key .. "_increase", 1, 6)
                            JoyousSpring.modify_probability_numerator(joker, amount)
                            SMODS.calculate_effect({ message = "+" .. amount, colour = G.C.GREEN }, joker)
                        end
                    end
                end
            end
            if context.mod_probability and not context.blueprint and JoyousSpring.get_xyz_materials(card) > 0 then
                return {
                    numerator = context.numerator * 2
                }
            end
        end
    end,
})

-- Number 85: Crazy Box
SMODS.Joker({
    key = "85",
    atlas = 'Misc05',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.plus_h_size, card.ability.extra.minus_h_size, numerator, denominator, card.ability.extra.attach } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 1,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                            },
                            {
                                rarity = 1,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                            },
                        },
                    }
                }
            },
            detach = 1,
            plus_h_size = 5,
            minus_h_size = 1,
            numerator = 6,
            odds = 36,
            attach = 1,
            h_size_active = false,
            enhance_active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring
                    .xyz_materials + card.ability.extra.attach
                return {
                    message = localize("k_joy_attach"),
                    colour = G.C.GREEN
                }
            end
            if context.joy_detach and context.joy_detaching_card == card and G.GAME.blind.in_blind then
                JoyousSpring.ease_detach(card)
                local effect = pseudorandom(card.config.center.key .. "_effect", 1, 6)
                if effect == 1 then
                    G.GAME.blind.chips = math.floor(G.GAME.blind.chips * 2)
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                end
                if effect == 2 then
                    G.GAME.blind.chips = math.floor(G.GAME.blind.chips / 2)
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                end
                if effect == 3 then
                    card.ability.extra.h_size_active = true
                    G.hand:change_size(card.ability.extra.plus_h_size)
                end
                if effect == 4 then
                    G.hand:change_size(-card.ability.extra.minus_h_size)
                end
                if effect == 5 then
                    card.ability.extra.enhance_active = true
                end
                if effect == 6 then
                    SMODS.destroy_cards(card)
                end
                return {
                    message = effect,
                    colour = G.C.GREEN
                }
            end
            if context.before and card.ability.extra.enhance_active then
                for _, pcard in ipairs(context.scoring_hand) do
                    pcard:set_edition("e_polychrome")
                    pcard:set_seal("Red")
                    pcard:set_ability("m_lucky")
                end
                card.ability.extra.enhance_active = false
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.h_size_active then
                G.hand:change_size(-card.ability.extra.plus_h_size)
            end
            card.ability.extra.h_size_active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.h_size_active then
            G.hand:change_size(-card.ability.extra.plus_h_size)
        end
        card.ability.extra.h_size_active = false
    end,
    joy_can_detach = function(card)
        return G.GAME.blind.in_blind
    end
})
