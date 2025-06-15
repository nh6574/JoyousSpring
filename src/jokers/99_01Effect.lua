--- EFFECT FREE AGENTS

-- Inspector Boarder

SMODS.Joker({
    key = "boarder",
    atlas = 'Misc01',
    pos = { x = 0, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return {
            vars = {
                card.ability.extra.xmult,
                1 + card.ability.extra.xmult * JoyousSpring.count_materials_owned({ { is_extra_deck = true } })
            }
        }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Machine",
            },
            xmult = 5,
            hands = {}
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 +
                        card.ability.extra.xmult *
                        JoyousSpring.count_materials_owned({ { is_extra_deck = true } })
                }
            end
            if context.setting_blind and context.main_eval then
                local types_owned = JoyousSpring.extra_deck_types_owned() + 1
                ease_hands_played(types_owned - G.GAME.current_round.hands_left, true)
                card.ability.extra.hands = {}
            end
            if context.debuff_hand and context.main_eval then
                if card.ability.extra.hands[context.scoring_name] then
                    return {
                        debuff = true
                    }
                end
            end
            if context.after and context.main_eval then
                card.ability.extra.hands[context.scoring_name] = true
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            card.ability.extra.unique_count = #SMODS.find_card("j_joy_spright_sprind", true)
        end
        if not card.debuff then
            for _, joker in ipairs(JoyousSpring.get_materials_owned({ { is_main_deck = true, exclude_keys = { "j_joy_boarder" } } })) do
                SMODS.debuff_card(joker, true, "j_joy_boarder" .. (card.ability.extra.unique_count or 0))
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not next(SMODS.find_card("j_joy_boarder")) then
            for _, joker in ipairs(G.jokers.cards) do
                SMODS.debuff_card(joker, false, "j_joy_boarder" .. (card.ability.extra.unique_count or 0))
            end
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff and JoyousSpring.is_main_deck_monster(added_card) and added_card.config.center.key ~= "j_joy_boarder" then
            SMODS.debuff_card(added_card, true, "j_joy_boarder" .. (card.ability.extra.unique_count or 0))
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult * JoyousSpring.count_materials_owned({ { is_extra_deck = true } })
            end
        }
    end
})

-- Gren Maju Da Eiza
SMODS.Joker({
    key = "grenmaju",
    atlas = 'Misc02',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.joy_cards_banished or 0) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Fiend",
            },
            chips = 20,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * (G.GAME.joy_cards_banished or 0)
                }
            end
        end
    end,
})

-- Fiendish Rhino Warrior
SMODS.Joker({
    key = "rhino",
    atlas = 'Misc03',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_type = "Fiend" } }, name = "Sends" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Fiend",
            },
            mills = 5,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_type = "Fiend" } })
            for _ = 1, card.ability.extra.mills do
                local key_to_send = pseudorandom_element(choices, 'j_joy_rhino')
                JoyousSpring.send_to_graveyard(key_to_send or "j_joy_ba_cagna")
            end
            JoyousSpring.revive_pseudorandom({ { monster_type = "Fiend" } }, 'j_joy_rhino')
        end
    end,
})

-- Tour Guide From the Underworld
SMODS.Joker({
    key = "tourguide",
    atlas = 'Misc03',
    pos = { x = 4, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { is_main_deck = true, monster_type = "Fiend" } }, name = "Creates" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
            },
            adds = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for _ = 1, card.ability.extra.adds do
                JoyousSpring.create_pseudorandom(
                    { { monster_type = "Fiend", rarity = 1, is_main_deck = true }, { monster_type = "Fiend", rarity = 2, is_main_deck = true } },
                    "j_joy_tourguide", false, false, "e_negative")
            end
        end
    end,
})

-- Lord of the Heavenly Prison
SMODS.Joker({
    key = "heavenlyprison",
    atlas = 'Misc03',
    pos = { x = 3, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_gain, card.ability.extra.xmult + (card.ability.extra.xmult_gain * JoyousSpring.count_materials_owned({ { is_trap = true } })) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Rock",
            },
            xmult = 2,
            xmult_gain = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult +
                        (card.ability.extra.xmult_gain * JoyousSpring.count_materials_owned({ { is_trap = true } }))
                }
            end
        end
    end,
    joy_prevent_trap_flip = function(card, other_card)
        return other_card.facing == 'front'
    end,
    joy_flip_effect_active = function(card, other_card)
        return JoyousSpring.is_trap_monster(other_card)
    end
})

-- Backup Secretary
SMODS.Joker({
    key = "backup",
    atlas = 'Misc03',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_type = "Cyberse", is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Cyberse Wizard
SMODS.Joker({
    key = "wizard",
    atlas = 'Misc03',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            chips = 50,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } })
                }
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Formud Skipper
SMODS.Joker({
    key = "formud",
    atlas = 'Misc04',
    pos = { x = 7, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_all_materials = { LINK = true },
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Cyberse") then
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { monster_type = "Cyberse", rarity = 3, is_main_deck = true } },
                    'j_joy_formud')
            end
        end
    end
})

-- Procession of the Tea Jar
SMODS.Joker({
    key = "procession",
    atlas = 'Misc04',
    pos = { x = 6, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    if joker.config.center.key ~= "j_joy_procession" and joker.facing == "front" then
                        joker:flip(card)
                    end
                end
            end
            if context.other_joker and context.other_joker.facing == "back" then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
        end
    end,
})


-- Dark Cat with White Tail
SMODS.Joker({
    key = "darkcat",
    atlas = 'Misc04',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
            },
            mult = 22,
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.adds do
                SMODS.add_card { set = "Base", enhancement = "m_lucky", edition = "e_negative", rank = 2, area = G.GAME.blind.in_blind and G.hand or G.deck }
            end
        end
    end,
})

-- Dekoichi the Battlechanted Locomotive
SMODS.Joker({
    key = "dekoichi",
    atlas = 'Misc04',
    pos = { x = 4, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult_normal,
                card.ability.extra.mult +
                card.ability.extra.mult_normal * JoyousSpring.count_materials_owned({ { is_normal = true } }),
                card.ability.extra.h_size,
                card.ability.extra.h_size_normal,
                card.ability.extra.creates
            },
        }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Machine",
            },
            mult = 10,
            mult_normal = 25,
            h_size = 1,
            h_size_normal = 1,
            creates = 1,
            h_size_change = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult +
                        card.ability.extra.mult_normal * JoyousSpring.count_materials_owned({ { is_normal = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            local h_size_change = card.ability.extra.h_size +
                card.ability.extra.h_size_normal * JoyousSpring.count_materials_owned({ { is_normal = true } })
            G.hand:change_size(h_size_change)
            card.ability.extra.h_size_change = card.ability.extra.h_size_change + h_size_change
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_summon({
                    key = "j_joy_bokoichi",
                    edition = "e_negative"
                })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.h_size_change > 0 then
                G.hand:change_size(-card.ability.extra.h_size_change)
                card.ability.extra.h_size_change = 0
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.h_size_change > 0 then
            G.hand:change_size(-card.ability.extra.h_size_change)
            card.ability.extra.h_size_change = 0
        end
    end,
})

-- Bokoichi the Freightening Car
SMODS.Joker({
    key = "bokoichi",
    atlas = 'Misc04',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 1,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "DARK",
                monster_type = "Machine",
            },
        },
    },
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
})

-- Desertapir
SMODS.Joker({
    key = "desertapir",
    atlas = 'Misc04',
    pos = { x = 5, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.flips } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
            },
            money = 4,
            flips = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.flips do
                local choices = JoyousSpring.get_materials_owned({ { facedown = true } })
                local joker = pseudorandom_element(choices, 'j_joy_desertapir')
                if joker then
                    joker:flip(card)
                end
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return JoyousSpring.can_use_abilities(card) and
            card.ability.extra.money or nil
    end
})

-- Searchlightman
SMODS.Joker({
    key = "searchlight",
    atlas = 'Misc04',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.extra_mult, card.ability.extra.mult + card.ability.extra.current_mult, G.GAME.probabilities.normal or 1, card.ability.extra.odds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Machine",
            },
            mult = 10,
            extra_mult = 10,
            current_mult = 0,
            odds = 2
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval then
            if pseudorandom("j_joy_searchlight") < G.GAME.probabilities.normal / card.ability.extra.odds then
                card:flip(card)
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult + card.ability.extra.current_mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            JoyousSpring.flip_all_cards(card, 'front', { G.jokers })
        end
        if context.joy_card_flipped and context.joy_card_flipped.ability.set == "Joker" and context.joy_card_flipped.facing == "front" then
            card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.extra_mult
        end
    end,
})

-- The Stern Mystic
SMODS.Joker({
    key = "sternmystic",
    atlas = 'Misc04',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.extra_chips, card.ability.extra.chips + card.ability.extra.current_chips, G.GAME.probabilities.normal or 1, card.ability.extra.odds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            chips = 50,
            extra_chips = 5,
            current_chips = 0,
            odds = 2
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval then
            if pseudorandom("j_joy_sternmystic") < G.GAME.probabilities.normal / card.ability.extra.odds then
                card:flip(card)
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips + card.ability.extra.current_chips
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) and G.GAME.blind.in_blind then
            JoyousSpring.flip_all_cards(card, nil, { G.hand })
        end
        if context.joy_card_flipped and JoyousSpring.is_playing_card(context.joy_card_flipped) then
            card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.extra_chips
        end
    end,
})

-- Magician of Faith
SMODS.Joker({
    key = "mof",
    atlas = 'Misc04',
    pos = { x = 4, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } }), card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            chips = 200,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            local choices = JoyousSpring.get_materials_in_graveyard({ { is_field_spell = true } })
            for i = 1, card.ability.extra.creates do
                local spell = pseudorandom_element(choices, pseudorandom("j_joy_mof"))
                if spell and #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(spell, { edition = "e_negative" })
                end
            end
        end
    end,
})

-- Mask of Darkness
SMODS.Joker({
    key = "mask",
    atlas = 'Misc04',
    pos = { x = 5, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { is_trap = true } }), card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Fiend",
            },
            mult = 5,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { is_trap = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { is_trap = true } }, pseudorandom("j_joy_mask"), true)
            end
        end
    end,
})

-- Angraecum Umbrella
SMODS.Joker({
    key = "angraecum",
    atlas = 'Misc04',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Spellcaster",
            },
            revives = 1,
            adds = 1,
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { exclude_tuners = true } }, 'j_joy_angraecum', false,
                    "e_negative", nil, nil, "j_joy_angraecum")
            end
            local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "SYNCHRO" } })
            for i = 1, card.ability.extra.adds do
                local key_to_add = pseudorandom_element(choices, 'j_joy_angraecum')
                JoyousSpring.add_monster_tag(key_to_add or "j_joy_psy_zeta")
            end
        end
    end
})

-- Eater of Millions
SMODS.Joker({
    key = "eater",
    atlas = 'Misc04',
    pos = { x = 6, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
            },
            xmult = 0.1,
            current_xmult = 1,
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
            if context.joy_banished and JoyousSpring.is_extra_deck_monster(context.joy_banished_card) then
                card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                local choices = JoyousSpring.get_materials_owned({ { exclude_debuffed = true, is_extra_deck = true } })
                local joker = pseudorandom_element(choices, 'j_joy_eater')
                if joker then
                    JoyousSpring.banish(joker, "boss_selected")
                end
            end
        end
    end
})

-- Heavenly Zephyr - Miradora
SMODS.Joker({
    key = "miradora",
    atlas = 'Misc04',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.turns, card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Dragon",
            },
            turns = 1,
            xmult = 1.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and JoyousSpring.is_extra_deck_monster(context.other_joker) and context.other_joker.debuff then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local choices = JoyousSpring.get_materials_owned({ { exclude_debuffed = true, is_extra_deck = true } })
            local joker = pseudorandom_element(choices, 'j_joy_miradora')
            if joker then
                SMODS.debuff_card(joker, true, "j_joy_miradora")
                joker:set_edition("e_negative")
            end
        end
    end
})

-- Beautunaful Princess
SMODS.Joker({
    key = "beautunaful",
    atlas = 'Misc04',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_returned and context.joy_returned_card == card then
                for _ = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom(
                        { { monster_type = "Fish", is_main_deck = true } },
                        'j_joy_beautunaful', true)
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for _ = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom(
                    { { monster_type = "Fish", is_main_deck = true } },
                    'j_joy_beautunaful', true)
            end
        end
    end,
})

-- Lifeless Leaffish
SMODS.Joker({
    key = "leaffish",
    atlas = 'Misc04',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
            },
            mills = 1,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                local choices = JoyousSpring.get_materials_in_collection({ { monster_type = "Fish", is_main_deck = true } })
                for _ = 1, card.ability.extra.mills do
                    local key_to_send = pseudorandom_element(choices, 'j_joy_ba_leaffish')
                    JoyousSpring.send_to_graveyard(key_to_send or "j_joy_beautunaful")
                end
            end
            if context.selling_self then
                for i = 1, card.ability.extra.revives do
                    JoyousSpring.revive_pseudorandom({ { monster_type = "Fish", exclude_keys = { "j_joy_leaffish" } } },
                        'j_joy_leaffish', true, nil, (card.edition and card.edition.negative and 0 or 1))
                end
            end
        end
    end
})

-- Ringowurm, the Dragon Guarding the Hundred Apples
SMODS.Joker({
    key = "ringowurm",
    atlas = 'Misc04',
    pos = { x = 7, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Dragon",
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            for i = 1, card.ability.extra.creates do
                JoyousSpring.summon_token("ringo", "e_negative")
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { is_non_effect = true } }) > 0 then
            card.cost = 0
        end
    end
})

JoyousSpring.token_pool["ringo"] = {
    order = 8,
    name = "j_joy_token_ringo",
    atlas = "joy_Misc04",
    sprite_pos = { x = 0, y = 4 },
    joyous_spring = {
        attribute = "LIGHT",
        monster_type = "Wyrm",
        is_tuner = true
    }
}

-- Storm Shooter
SMODS.Joker({
    key = "stormshooter",
    atlas = 'Misc04',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.column, JoyousSpring.get_joker_column(card) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "WingedBeast",
            },
            column = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.after and JoyousSpring.get_joker_column(card) == card.ability.extra.column and
                #context.full_hand >= card.ability.extra.column and #context.scoring_hand < card.ability.extra.column and
                #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local planet
                for _, center in pairs(G.P_CENTER_POOLS.Planet) do
                    if center.config.hand_type == context.scoring_name then
                        planet = center.key
                    end
                end
                if planet then
                    local amount = G.consumeables.config.card_limit - #G.consumeables.cards
                    for i = 1, amount do
                        SMODS.add_card({
                            key = planet
                        })
                    end
                end
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.column = pseudorandom("j_joy_stormshooter", 2, 5)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.column = pseudorandom("j_joy_stormshooter", 2, 5)
    end
})

-- Ghost Bird of Bewitchment
SMODS.Joker({
    key = "ghostbird",
    atlas = 'Misc04',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                JoyousSpring.get_joker_column(card),
                card.ability.extra.chips,
                colours = {
                    (JoyousSpring.get_joker_column(card) == 1) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (JoyousSpring.get_joker_column(card) == 3) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (JoyousSpring.get_joker_column(card) == 5) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE
                }
            },
        }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "WingedBeast",
            },
            chips = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and JoyousSpring.get_joker_column(card) == 1 and JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) +
                    card.ability.extra.chips
                return { message = localize('k_upgrade_ex'), colour = G.C.CHIPS }
            end
            if ((context.destroying_card and JoyousSpring.get_joker_column(card) ~= 1) or
                    (context.destroy_card and context.cardarea == 'unscored')) and
                JoyousSpring.get_joker_column(card) ==
                (JoyousSpring.index_of(context.full_hand, context.destroy_card)) then
                return { remove = true }
            end
            if context.repetition and context.cardarea == G.play and JoyousSpring.get_joker_column(card) == 3 then
                if JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        repetitions = 2
                    }
                end
            end
            if context.modify_scoring_hand and JoyousSpring.get_joker_column(card) == 5 then
                if JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        add_to_hand = true,
                        message = context.in_scoring and localize("k_joy_splash")
                    }
                end
            end
        end
    end
})

-- Iron Dragon Tiamaton
SMODS.Joker({
    key = "tiamaton",
    atlas = 'Misc04',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, JoyousSpring.get_joker_column(card) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Dragon",
            },
            xmult = 0.05,
            current_xmult = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
            if context.remove_playing_cards then
                card.ability.extra.current_xmult = card.ability.extra.current_xmult +
                    card.ability.extra.xmult * #context.removed
            end
            if (context.destroying_card or (context.destroy_card and context.cardarea == 'unscored')) and (JoyousSpring.get_joker_column(card) > 5 or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.destroying_card or context.destroy_card))) then
                return { remove = true }
            end
        end
    end
})
