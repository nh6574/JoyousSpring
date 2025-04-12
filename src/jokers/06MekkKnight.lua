--- MEKK-KNIGHT
SMODS.Atlas({
    key = "MekkKnight",
    path = "06MekkKnight.png",
    px = 71,
    py = 95
})
SMODS.Atlas({
    key = "MekkKnight02",
    path = "06MekkKnight02.png",
    px = 71,
    py = 95
})
-- Mekk-Knight Avram
SMODS.Joker({
    key = "mekk_avram",
    atlas = 'MekkKnight',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 1,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
        },
    },
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
})

-- Mekk-Knight Red Moon
SMODS.Joker({
    key = "mekk_red",
    atlas = 'MekkKnight',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, JoyousSpring.get_joker_column(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            mult = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        mult = context.other_card.base.nominal * card.ability.extra.mult
                    }
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = JoyousSpring.get_joker_column(card)
            end
        }
    end
})

-- Mekk-Knight Orange Sunset
SMODS.Joker({
    key = "mekk_orange",
    atlas = 'MekkKnight',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { JoyousSpring.get_joker_column(card), card.ability.extra.xchips, card.ability.extra.current_xchips } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            xchips = 0.1,
            current_xchips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xchips = card.ability.extra.current_xchips
                }
            end
            if context.modify_scoring_hand then
                local scoring = context.in_scoring
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    local in_hand = false
                    if scoring then
                        for _, pcard in ipairs(context.scoring_hand) do
                            if pcard == context.other_card then
                                in_hand = true
                                break
                            end
                        end
                        if not in_hand then
                            card.ability.extra.current_xchips = card.ability.extra.current_xchips +
                                card.ability.extra.xchips
                        end
                    end
                    return {
                        add_to_hand = true,
                        message = not in_hand and scoring and localize("k_joy_splash") or nil
                    }
                end
            end
        end
    end,
})

-- Mekk-Knight Yellow Star
SMODS.Joker({
    key = "mekk_yellow",
    atlas = 'MekkKnight',
    pos = { x = 3, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, JoyousSpring.get_joker_column(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            money = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        dollars = context.other_card.base.nominal * card.ability.extra.money
                    }
                end
            end
        end
    end,
})

-- Mekk-Knight Green Horizon
SMODS.Joker({
    key = "mekk_green",
    atlas = 'MekkKnight',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { (G.GAME.probabilities.normal or 1) + JoyousSpring.count_materials_owned({ { monster_archetypes = { "MekkKnight" } } }) - (card.area and card.area == G.jokers and 1 or 0), JoyousSpring.get_joker_column(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and context.cardarea == G.play then
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    if pseudorandom("j_joy_mekk_green") < (G.GAME.probabilities.normal + JoyousSpring.count_materials_owned({ { monster_archetypes = { "MekkKnight" } } }) - 1) / (context.other_card.base.nominal >= 1 and context.other_card.base.nominal or 1) then
                        return {
                            repetitions = ((context.other_card.base.nominal >= 1) and context.other_card.base.nominal or nil)
                        }
                    end
                end
            end
        end
    end,
})

-- Mekk-Knight Blue Sky
SMODS.Joker({
    key = "mekk_blue",
    atlas = 'MekkKnight',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, JoyousSpring.get_joker_column(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            chips = 20
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        chips = context.other_card.base.nominal * card.ability.extra.chips
                    }
                end
            end
        end
    end,
})

-- Mekk-Knight Indigo Eclipse
SMODS.Joker({
    key = "mekk_indigo",
    atlas = 'MekkKnight',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        local has_spectrum = next(SMODS.find_card("j_joy_mekk_spectrum"))
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
                card.ability.extra.xmult,
                card.ability.extra.money,
                colours = {
                    (has_spectrum or JoyousSpring.get_joker_column(card) == 1) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (has_spectrum or JoyousSpring.get_joker_column(card) == 2) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (has_spectrum or JoyousSpring.get_joker_column(card) == 3) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (has_spectrum or JoyousSpring.get_joker_column(card) == 4) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (has_spectrum or JoyousSpring.get_joker_column(card) >= 5) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE
                }
            },
        }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            chips = 20,
            mult = 20,
            xmult = 2,
            money = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local has_spectrum = next(SMODS.find_card("j_joy_mekk_spectrum"))
                return {
                    chips = (has_spectrum or JoyousSpring.get_joker_column(card) == 2) and card.ability.extra.chips or
                        nil,
                    mult = (has_spectrum or JoyousSpring.get_joker_column(card) == 3) and card.ability.extra.mult or nil,
                    xmult = (has_spectrum or JoyousSpring.get_joker_column(card) == 4) and card.ability.extra.xmult or
                        nil
                }
            end
            if context.repetition and context.cardarea == G.play then
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == 1 then
                    return {
                        repetitions = 1
                    }
                end
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return JoyousSpring.can_use_abilities(card) and
            (next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) >= 5) and
            card.ability.extra.money or nil
    end,
})

-- Mekk-Knight Purple Nightfall
SMODS.Joker({
    key = "mekk_purple",
    atlas = 'MekkKnight',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.setting_blind and context.main_eval then
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit +
                    ((card.edition and card.edition.negative) and 0 or 1) then
                    JoyousSpring.banish(card, "end_of_ante")

                    for i = 1, card.ability.extra.cards_to_create do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "MekkKnight" }, is_main_deck = true, exclude_keys = { "j_joy_mekk_purple" } } },
                            pseudoseed("j_joy_mekk_purple"), true)
                    end
                end
            end
        end
    end,
})

-- Mekk-Knight of the Morning Star
SMODS.Joker({
    key = "mekk_morningstar",
    atlas = 'MekkKnight',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, JoyousSpring.get_joker_column(card) - 1, JoyousSpring.get_joker_column(card) + 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Machine",
                monster_archetypes = { ["MekkKnight"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            {},
                        },
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                local card_index = JoyousSpring.index_of(context.full_hand, context.other_card)
                local is_mekk = G.jokers.cards[card_index] and
                    JoyousSpring.is_monster_archetype(G.jokers.cards[card_index], "MekkKnight")
                if is_mekk and (next(SMODS.find_card("j_joy_mekk_spectrum")) or
                        card_index == JoyousSpring.get_joker_column(card) - 1 or card_index == JoyousSpring.get_joker_column(card) + 1) then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
        end
    end,
})

-- Mekk-Knight Spectrum Supreme
SMODS.Joker({
    key = "mekk_spectrum",
    atlas = 'MekkKnight',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
                monster_archetypes = { ["MekkKnight"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "MekkKnight" } },
                            { monster_archetypes = { "MekkKnight" } },
                            { monster_archetypes = { "MekkKnight" } },
                        },
                    }
                }
            },
            cards_to_create = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not card.ability.extra.activated and context.selling_card and JoyousSpring.is_monster_archetype(context.card, "MekkKnight") then
                card.ability.extra.activated = true

                for i = 1, card.ability.extra.cards_to_create do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "MekkKnight" }, is_main_deck = true } },
                        pseudoseed("j_joy_mekk_spectrum"), false, false, "e_negative")
                end
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.activated = false
            end
        end
    end,
})

-- Mekk-Knight Crusadia Avramax
SMODS.Joker({
    key = "mekkcrus_avramax",
    atlas = 'MekkKnight',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.blinds, #JoyousSpring.get_materials(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
                monster_archetypes = { ["MekkKnight"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { min = 2, is_summoned = true, is_extra_deck = true },
                        },
                    }
                }
            },
            blinds = 0
        },
    },
    calculate = function(self, card, context)
        if context.joy_selecting_hand then
            G.GAME.chips = G.GAME.blind.chips
            G.STATE = G.STATES.HAND_PLAYED
            G.STATE_COMPLETE = true
            end_round()
            return {
                message = localize("k_joy_defeated")
            }
        end
        if not context.blueprint and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.blinds = card.ability.extra.blinds + 1
            if card.ability.extra.blinds >= #JoyousSpring.get_materials(card) then
                card.getting_sliced = true
                card:start_dissolve()
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and G.STATE == G.STATES.SELECTING_HAND then
            G.GAME.chips = G.GAME.blind.chips
            G.STATE = G.STATES.HAND_PLAYED
            G.STATE_COMPLETE = true
            end_round()
        end
    end
})

-- World Legacy Scars
SMODS.Joker({
    key = "mekkleg_scars",
    atlas = 'MekkKnight02',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end

        return { vars = { card.ability.extra.mult, card.ability.extra.tributes, card.ability.extra.hands, card.ability.extra.mekk_count } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["WorldLegacy"] = true },
            },
            mult = 50,
            tributes = 1,
            hands = 1,
            mekk_count = 8,
        },
    },
    calculate = function(self, card, context)
        if context.joy_activate_effect and context.joy_activated_card == card then
            local materials = JoyousSpring.get_materials_owned({ { monster_archetypes = { "MekkKnight" } } }, false, true)
            if next(materials) then
                JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                    card.ability.extra.tributes)
            end
        end
        if context.joy_exit_effect_selection and context.joy_card == card and
            #context.joy_selection == card.ability.extra.tributes and G.GAME.blind.in_blind then
            JoyousSpring.tribute(card, context.joy_selection)
            ease_hands_played(card.ability.extra.hands)
        end
        if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_archetype(context.other_joker, "MekkKnight") then
            return {
                mult = card.ability.extra.mult,
                message_card = context.other_joker
            }
        end
        if context.selling_self and G.GAME.blind.in_blind and JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "MekkKnight" } } }, false, true) >= card.ability.extra.mekk_count then
            G.GAME.chips = G.GAME.blind.chips
            G.STATE = G.STATES.HAND_PLAYED
            G.STATE_COMPLETE = true
            end_round()
            return {
                message = localize("k_joy_defeated")
            }
        end
    end,
    joy_can_activate = function(card)
        if not G.GAME.blind.in_blind then
            return false
        end
        local materials = JoyousSpring.get_materials_owned({ { monster_archetypes = { "MekkKnight" } } }, false, true)
        return next(materials) and true or false
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "mekk", "mekkcrus", "mekkleg" },
    label = "k_joy_archetype_mekk"
}
