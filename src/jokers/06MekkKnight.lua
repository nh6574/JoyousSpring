--- MEKK-KNIGHT
SMODS.Atlas({
    key = "MekkKnight",
    path = "06MekkKnight.png",
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
    set_sprites = JoyousSpring.set_back_sprite,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
        end
    end,
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
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local mult = 0
                local column = JoyousSpring.get_joker_column(card)
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if next(SMODS.find_card("j_joy_mekk_spectrum")) or column == (JoyousSpring.index_of(JokerDisplay.current_hand, scoring_card)) then
                            mult = mult + scoring_card.base.nominal * card.ability.extra.mult
                        end
                    end
                end
                card.joker_display_values.mult = mult
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
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
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "current_xchips", retrigger_type = "exp" }
                    },
                    border_colour = G.C.CHIPS
                }
            },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                local column = JoyousSpring.get_joker_column(card)
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
            end
        }
    end
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
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.GOLD },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local money = 0
                local column = JoyousSpring.get_joker_column(card)
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if next(SMODS.find_card("j_joy_mekk_spectrum")) or column == (JoyousSpring.index_of(JokerDisplay.current_hand, scoring_card)) then
                            money = money + scoring_card.base.nominal * card.ability.extra.money
                        end
                    end
                end
                card.joker_display_values.money = money
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
            end
        }
    end
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
        local numerator, denominator = SMODS.get_probability_vars(card,
            JoyousSpring.count_materials_owned({ { monster_archetypes = { "MekkKnight" } } }), card.ability.extra.odds,
            self.key)
        return { vars = { numerator, denominator, JoyousSpring.get_joker_column(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            odds = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and context.cardarea == G.play then
                if next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    if SMODS.pseudorandom_probability(card, card.config.center.key, JoyousSpring.count_materials_owned({ { monster_archetypes = { "MekkKnight" } } }), card.ability.extra.odds) then
                        return {
                            repetitions = ((context.other_card.base.nominal >= 1) and context.other_card.base.nominal or nil)
                        }
                    end
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
                local column = JoyousSpring.get_joker_column(card)
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
            end
        }
    end
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
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local chips = 0
                local column = JoyousSpring.get_joker_column(card)
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if next(SMODS.find_card("j_joy_mekk_spectrum")) or column == (JoyousSpring.index_of(JokerDisplay.current_hand, scoring_card)) then
                            chips = chips + scoring_card.base.nominal * card.ability.extra.chips
                        end
                    end
                end
                card.joker_display_values.chips = chips
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
            end
        }
    end
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
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["MekkKnight"] = true }
            },
            chips = 80,
            mult = 15,
            xmult = 1.5,
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
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+",                              colour = G.C.CHIPS },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
                { text = " +",                             colour = G.C.MULT },
                { ref_table = "card.joker_display_values", ref_value = "mult",  retrigger_type = "mult", colour = G.C.MULT }
            },
            extra = {
                {
                    {
                        border_nodes = {
                            { text = "X" },
                            { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                        }
                    },
                    { text = " +$",                            colour = G.C.GOLD },
                    { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult", colour = G.C.GOLD }
                }
            },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                local column = JoyousSpring.get_joker_column(card)
                local has_spectrum = next(SMODS.find_card("j_joy_mekk_spectrum"))
                card.joker_display_values.chips = (has_spectrum or JoyousSpring.get_joker_column(card) == 2) and
                    card.ability.extra.chips or
                    0
                card.joker_display_values.mult = (has_spectrum or JoyousSpring.get_joker_column(card) == 3) and
                    card.ability.extra.mult or 0
                card.joker_display_values.xmult = (has_spectrum or JoyousSpring.get_joker_column(card) == 4) and
                    card.ability.extra.xmult or
                    1
                card.joker_display_values.money = (has_spectrum or JoyousSpring.get_joker_column(card) >= 5) and
                    card.ability.extra.money or 0
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
            end,
            retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand then return 0 end
                return next(SMODS.find_card("j_joy_mekk_spectrum")) or JoyousSpring.get_joker_column(joker_card) == 1 and
                    1 * JokerDisplay.calculate_joker_triggers(joker_card) or 0
            end
        }
    end
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
                context.joy_pre_setting_blind then
                if #G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit then
                    JoyousSpring.banish(card, "end_of_ante")

                    for i = 1, card.ability.extra.cards_to_create do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "MekkKnight" }, is_main_deck = true, exclude_keys = { "j_joy_mekk_purple" } } },
                            'j_joy_mekk_purple', true)
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
            xmult = 5
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
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "column" },
                { text = ")" },
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local xmult = 1
                local column = JoyousSpring.get_joker_column(card)
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        local card_column = JoyousSpring.index_of(JokerDisplay.current_hand, scoring_card)
                        if next(SMODS.find_card("j_joy_mekk_spectrum")) or column + 1 == card_column or column - 1 == card_column and
                            G.jokers.cards[card_column] and
                            JoyousSpring.is_monster_archetype(G.jokers.cards[card_column], "MekkKnight") then
                            xmult = xmult * card.ability.extra.xmult
                        end
                    end
                end
                card.joker_display_values.xmult = xmult
                card.joker_display_values.localized_text = localize("k_joy_column")
                card.joker_display_values.column = column
            end
        }
    end
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
                        "j_joy_mekk_spectrum", false, false, "e_negative")
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
    eternal_compat = false,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.blinds, #JoyousSpring.get_materials(card) } }
    end,
    joy_desc_cards = {
        { "j_joy_mekkleg_scars", properties = { { monster_archetypes = { "MekkKnight" } } }, name = "k_joy_archetype" },
    },
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
                SMODS.destroy_cards(card, nil, true)
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
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra",        ref_value = "blinds" },
                { text = "/" },
                { ref_table = "card.joker_display_values", ref_value = "materials" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.materials = #JoyousSpring.get_materials(card)
            end
        }
    end
})

-- World Legacy Scars
SMODS.Joker({
    key = "mekkleg_scars",
    atlas = 'MekkKnight',
    pos = { x = 3, y = 2 },
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
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                return {
                    mult = (JoyousSpring.is_monster_archetype(card, "MekkKnight") and mod_joker.ability.extra.mult and
                        mod_joker.ability.extra.mult * JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                }
            end
        }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "mekk", "mekkcrus", "mekkleg" },
    label = "k_joy_archetype_mekk"
}
