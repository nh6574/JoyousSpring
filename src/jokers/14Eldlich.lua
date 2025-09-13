--- ELDLICH
SMODS.Atlas({
    key = "eld",
    path = "14Eldlich.png",
    px = 71,
    py = 95
})

-- Eldlich the Golden Lord
SMODS.Joker({
    key = "eld_eldlich",
    atlas = 'eld',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 1, y = 2 } },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.money, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["Eldlich"] = true }
            },
            money = 0.25,
            tributes = 1,
            creates = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    dollars = card.ability.extra.money *
                        JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                }
            end
            if context.after and context.main_eval then
                return {
                    func = function()
                        for _, playing_card in ipairs(context.scoring_hand) do
                            playing_card:set_ability(G.P_CENTERS.m_gold, nil, true)
                            playing_card:juice_up()
                        end
                    end
                }
            end
            if not context.blueprint then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_materials_owned(
                        { { monster_type = "Zombie" }, { is_trap = true } }, false, true)
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.tributes then
                    card.ability.extra.activated = true
                    JoyousSpring.tribute(card, context.joy_selection)

                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "GoldenLand" }, is_main_deck = true } },
                            'j_joy_eld_eldlich', true)
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated or not (#G.jokers.cards + G.GAME.joker_buffer - card.ability.extra.tributes < G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_materials_owned({ { monster_type = "Zombie" }, { is_trap = true } }, false,
            true)
        return next(materials) and true or false
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.GOLD },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local money = 0
                if text ~= 'Unknown' then
                    local materials = JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                    for _, scoring_card in pairs(scoring_hand) do
                        if SMODS.has_enhancement(scoring_card, 'm_gold') then
                            money = money + card.ability.extra.money * materials
                        end
                    end
                end
                card.joker_display_values.money = money
            end
        }
    end
})

-- Conquistador of the Golden Land
SMODS.Joker({
    key = "eld_conq",
    atlas = 'eld',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.discards } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["GoldenLand"] = true }
            },
            chips = 2,
            discards = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                }
            end
            if context.repetition and (context.cardarea == G.play or (context.cardarea == G.hand and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0)) and next(SMODS.get_enhancements(context.other_card) or {}) then
                return {
                    repetitions = 1
                }
            end
        end
        if card.ability.extra.activated and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
            ease_discard(-card.ability.extra.discards)
        end
        if JoyousSpring.calculate_flip_effect(card, context) and not card.ability.extra.activated then
            card.ability.extra.activated = true
            G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
            ease_discard(card.ability.extra.discards)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.should_trap_flip(card) then
            JoyousSpring.flip(card, card)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.activated then
            card.ability.extra.activated = false
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
            ease_discard(-card.ability.extra.discards)
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local chips = 0
                if text ~= 'Unknown' then
                    local materials = JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                    for _, scoring_card in pairs(scoring_hand) do
                        if SMODS.has_enhancement(scoring_card, 'm_gold') then
                            chips = chips + card.ability.extra.chips * materials
                        end
                    end
                end
                card.joker_display_values.chips = chips
            end,
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand and not (JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0) then return 0 end
                return next(SMODS.get_enhancements(card) or {}) and 1 or 0
            end
        }
    end
})

-- Guardian of the Golden Land
SMODS.Joker({
    key = "eld_guard",
    atlas = 'eld',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.hands } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["GoldenLand"] = true }
            },
            mult = 1,
            hands = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                }
            end
            if context.repetition and (context.cardarea == G.play or (context.cardarea == G.hand and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0)) and next(SMODS.get_enhancements(context.other_card) or {}) then
                return {
                    repetitions = 1
                }
            end
        end
        if card.ability.extra.activated and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
            ease_hands_played(-card.ability.extra.hands)
        end
        if JoyousSpring.calculate_flip_effect(card, context) and not card.ability.extra.activated then
            card.ability.extra.activated = true
            G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
            ease_hands_played(card.ability.extra.hands)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.should_trap_flip(card) then
            JoyousSpring.flip(card, card)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.activated then
            card.ability.extra.activated = false
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
            ease_hands_played(-card.ability.extra.hands)
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local mult = 0
                if text ~= 'Unknown' then
                    local materials = JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                    for _, scoring_card in pairs(scoring_hand) do
                        if SMODS.has_enhancement(scoring_card, 'm_gold') then
                            mult = mult + card.ability.extra.mult * materials
                        end
                    end
                end
                card.joker_display_values.mult = mult
            end,
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand and not (JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0) then return 0 end
                return next(SMODS.get_enhancements(card) or {}) and 1 or 0
            end
        }
    end
})

-- Huaquero of the Golden Land
SMODS.Joker({
    key = "eld_huaq",
    atlas = 'eld',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["GoldenLand"] = true }
            },
            chips = 2,
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                }
            end
            if context.repetition and (context.cardarea == G.play or (context.cardarea == G.hand and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0)) and next(SMODS.get_enhancements(context.other_card) or {}) then
                return {
                    repetitions = 1
                }
            end
            if JoyousSpring.is_flip_active(card) and not context.blueprint_card and context.joy_post_round_eval then
                local choices = JoyousSpring.get_materials_owned({ { monster_type = "Zombie", exclude_keys = { "j_joy_eld_huaq" } } })
                local to_banish = pseudorandom_element(choices, 'j_joy_sub_uma')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
        end
        JoyousSpring.calculate_flip_effect(card, context)
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.should_trap_flip(card) then
            JoyousSpring.flip(card, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local chips = 0
                if text ~= 'Unknown' then
                    local materials = JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                    for _, scoring_card in pairs(scoring_hand) do
                        if SMODS.has_enhancement(scoring_card, 'm_gold') then
                            chips = chips + card.ability.extra.chips * materials
                        end
                    end
                end
                card.joker_display_values.chips = chips
            end,
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand and not (JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0) then return 0 end
                return next(SMODS.get_enhancements(card) or {}) and 1 or 0
            end
        }
    end
})

-- Eldlixir of the Glorious Golden Land
SMODS.Joker({
    key = "eld_glorious",
    atlas = 'eld',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["GoldenLand"] = true, ["Eldlixir"] = true }
            },
            mult = 1,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                }
            end
            if context.repetition and (context.cardarea == G.play or (context.cardarea == G.hand and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0)) and next(SMODS.get_enhancements(context.other_card) or {}) then
                return {
                    repetitions = 1
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            local revived_card = JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "GoldenLand" } } },
                'j_joy_eld_glorious', true)
            if not revived_card then
                JoyousSpring.revive_pseudorandom({ { is_trap = true } },
                    'j_joy_eld_glorious', true)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.should_trap_flip(card) then
            JoyousSpring.flip(card, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local mult = 0
                if text ~= 'Unknown' then
                    local materials = JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                    for _, scoring_card in pairs(scoring_hand) do
                        if SMODS.has_enhancement(scoring_card, 'm_gold') then
                            mult = mult + card.ability.extra.mult * materials
                        end
                    end
                end
                card.joker_display_values.mult = mult
            end,
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand and not (JoyousSpring.count_materials_owned({ { monster_archetypes = { "Eldlich" } } }) > 0) then return 0 end
                return next(SMODS.get_enhancements(card) or {}) and 1 or 0
            end
        }
    end
})

-- Eldlich the Mad Golden Lord
SMODS.Joker({
    key = "eld_mad",
    atlas = 'eld',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["Eldlich"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Eldlich" } },
                            { monster_type = "Zombie" }
                        }
                    }
                },
            },
            xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and SMODS.has_enhancement(context.other_card, 'm_gold') then
                return {
                    xmult = 1 +
                        card.ability.extra.xmult * JoyousSpring.count_all_materials({ { monster_type = "Zombie" } })
                }
            end
            if context.after and context.main_eval then
                return {
                    func = function()
                        for _, playing_card in ipairs(context.full_hand) do
                            playing_card:set_ability(G.P_CENTERS.m_gold, nil, true)
                            playing_card:juice_up()
                        end
                    end
                }
            end
        end
    end,
    joy_prevent_trap_flip = function(card, other_card)
        return other_card.facing == 'front'
    end,
    joy_flip_effect_active = function(card, other_card)
        return JoyousSpring.is_trap_monster(other_card)
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                local count = 0
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if not scoring_card.debuff and SMODS.has_enhancement(scoring_card, 'm_gold') then
                            count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                        end
                    end
                end
                card.joker_display_values.x_mult = (1 + card.ability.extra.xmult) ^ count
            end
        }
    end
})

-- Fallen Angel of the Golden Land
SMODS.Joker({
    key = "eld_angel",
    atlas = 'eld',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        info_queue[#info_queue + 1] = JoyousSpring.PokerHandDummies["phd_joy_eldlixir"]
        return { vars = { card.ability.extra.mills, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_eld_eldlich",                                                                                name = "k_joy_mills" },
        { properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Zombie",
                monster_archetypes = { ["GoldenLand"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { is_trap = true },
                            {}
                        }
                    }
                },
            },
            mills = 1,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_sent_to_gy and context.joy_from_field and context.joy_card == card then
                JoyousSpring.revive_pseudorandom(
                    { { monster_archetypes = { "Eldlich" } } },
                    'j_joy_eld_angel',
                    false,
                    { negative = true }
                )
            end
            if context.joy_flip_activated and JoyousSpring.is_trap_monster(context.joy_flip_activated) then
                return {
                    level_up = 1,
                    level_up_hand = "joy_eldlixir"
                }
            end
            if context.before and context.main_eval and next(context.poker_hands["joy_eldlixir"]) then
                for i = 1, card.ability.extra.mills do
                    JoyousSpring.send_to_graveyard("j_joy_eld_eldlich")
                end
                SMODS.calculate_effect({ message = localize("k_joy_mill") }, card)
            end
        end
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "eld" },
    label = "k_joy_archetype_eld"
}
