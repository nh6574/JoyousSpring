--- SOLFACHORD
SMODS.Atlas({
    key = "solfa",
    path = "16Solfachord.png",
    px = 71,
    py = 95
})

local solfa_use = function(self, card, area, copier)
    local destroyed_cards = {}
    for i = #G.hand.highlighted, 1, -1 do
        destroyed_cards[#destroyed_cards + 1] = G.hand.highlighted[i]
    end
    JoyousSpring.pre_consumable_use(card,
        #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.extra.change)

    if #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.extra.change then
        JoyousSpring.pre_consumable_change_use()
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                for _, pcard in ipairs(G.hand.highlighted) do
                    assert(SMODS.change_base(pcard, nil, card.ability.extra.rank))
                    if next(SMODS.find_card("j_joy_solfa_musecia")) and not pcard.edition then
                        local edition = poll_edition("j_joy_solfa_musecia", nil, true, true) or 'e_foil'
                        pcard:set_edition(edition, true)
                    end
                    if next(SMODS.find_card("j_joy_solfa_grancoolia")) and not card.seal then
                        local seal = SMODS.poll_seal({ key = "j_joy_solfa_grancoolia", guaranteed = true })
                        pcard:set_seal(seal, false, true)
                    end
                end
                return true
            end
        }))
        JoyousSpring.post_consumable_change_use()
    end

    JoyousSpring.level_up_hand(card, "Full House", false, 1)
    JoyousSpring.level_up_hand(card, "Straight", false, 1)
    JoyousSpring.level_up_hand(card, "Two Pair", false, 1)
end

local solfa_count = function()
    local count = JoyousSpring.count_materials_owned({ { monster_archetypes = { "Solfachord" } } })
    count = count +
        (next(SMODS.find_card("j_joy_solfa_coolia")) and JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Solfachord" } } }) or 0)
    count = count +
        (next(SMODS.find_card("j_joy_solfa_musecia")) and JoyousSpring.count_materials_owned({ { is_pendulum = true, exclude_monster_archetypes = { "Solfachord" } } }) or 0)
    count = count +
        (next(SMODS.find_card("j_joy_solfa_musecia")) and next(SMODS.find_card("j_joy_solfa_coolia")) and JoyousSpring.count_materials_in_graveyard({ { is_pendulum = true, exclude_monster_archetypes = { "Solfachord" } } }) or 0)
    return count
end

local pend_count = function()
    local count = JoyousSpring.count_materials_owned({ { is_pendulum = true } })
    count = count +
        (next(SMODS.find_card("j_joy_solfa_coolia")) and JoyousSpring.count_materials_in_graveyard({ { is_pendulum = true } }) or 0)
    return count
end

local is_even = function(card)
    return card and card:get_id() <= 10 and card:get_id() >= 0 and card:get_id() % 2 == 0 or false
end

local is_odd = function(card)
    return card and ((card:get_id() <= 10 and card:get_id() >= 0 and card:get_id() % 2 == 1) or (card:get_id() == 14)) or
        false
end

local count_all_cards = function(scoring_hand)
    local even = false
    local odd = false
    for _, card in ipairs(scoring_hand or {}) do
        if is_even(card) then
            even = true
        end
        if is_odd(card) then
            odd = true
        end
        if even and odd then
            return next(SMODS.find_card("j_joy_solfa_musecia")) and true or false,
                next(SMODS.find_card("j_joy_solfa_grancoolia")) and true or false
        end
    end
    return false, false
end

-- DoSolfachord Cutia
SMODS.Joker({
    key = "solfa_cutia",
    atlas = 'solfa',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.change, card.ability.extra.mult, card.ability.extra.mult * solfa_count(), card.ability.extra.creates, card.ability.extra.consumed, card.ability.extra.consumed_this_round } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 1,
            rank = '8',
            mult = 8,
            creates = 1,
            consumed = 3,
            activated = false,
            consumed_this_round = 0
        },
    },
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_even(context.other_card) then
                        return {
                            mult = card.ability.extra.mult * solfa_count()
                        }
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_even(context.other_card) then
                        return {
                            mult = card.ability.extra.mult * solfa_count()
                        }
                    end
                end
            end
            if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
                card.ability.extra.consumed_this_round = card.ability.extra.consumed_this_round + 1
                if not card.ability.extra.activated and card.ability.extra.consumed_this_round >= card.ability.extra.consumed then
                    card.ability.extra.activated = true
                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "Solfachord" }, is_pendulum = true } },
                            'j_joy_solfa_cutia', true)
                    end
                end
            end
            if context.end_of_round and context.main_eval and context.game_over == false then
                card.ability.extra.activated = false
                card.ability.extra.consumed_this_round = 0
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
                { ref_table = "card.ability.extra", ref_value = "consumed_this_round" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "consumed" },
                { text = ")" },
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local mult = 0
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if is_even(scoring_card) then
                            mult = mult + card.ability.extra.mult * solfa_count()
                        end
                    end
                end
                card.joker_display_values.mult = mult
            end
        }
    end
})

-- ReSolfachord Dreamia
SMODS.Joker({
    key = "solfa_dreamia",
    atlas = 'solfa',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.change, card.ability.extra.mult, card.ability.extra.mult * solfa_count() } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "WIND",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 2,
            rank = '7',
            mult = 7
        },
    },
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_odd(context.other_card) then
                        return {
                            mult = card.ability.extra.mult * solfa_count()
                        }
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_odd(context.other_card) then
                        return {
                            mult = card.ability.extra.mult * solfa_count()
                        }
                    end
                end
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { is_pendulum = true } }) > 0 then
            card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
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
                    for _, scoring_card in pairs(scoring_hand) do
                        if is_odd(scoring_card) then
                            mult = mult + card.ability.extra.mult * solfa_count()
                        end
                    end
                end
                card.joker_display_values.mult = mult
            end
        }
    end
})

-- MiSolfachord Eliteia
SMODS.Joker({
    key = "solfa_eliteia",
    atlas = 'solfa',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.change, card.ability.extra.chips, card.ability.extra.current_chips, card.ability.extra.adds, card.ability.extra.scored, card.ability.extra.currently_scored } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "WATER",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 3,
            rank = '6',
            chips = 6,
            current_chips = 0,
            adds = 1,
            scored = 20,
            currently_scored = 0
        },
    },
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_even(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                        card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_even(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                        card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
                    end
                end

                if card.ability.extra.currently_scored >= card.ability.extra.scored then
                    card.ability.extra.currently_scored = card.ability.extra.currently_scored - card.ability.extra
                        .scored
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Solfachord" }, is_extra_deck = true } })
                    for i = 1, card.ability.extra.adds do
                        local key_to_add, _ = pseudorandom_element(choices, 'j_joy_solfa_eliteia')
                        if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                            JoyousSpring.add_to_extra_deck(key_to_add)
                        end
                    end
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "current_chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "currently_scored" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "scored" },
                { text = ")" },
            },
        }
    end
})

-- FaSolfachord Fancia
SMODS.Joker({
    key = "solfa_fancia",
    atlas = 'solfa',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.change, card.ability.extra.chips, card.ability.extra.current_chips, card.ability.extra.creates, card.ability.extra.scored, card.ability.extra.currently_scored } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "FIRE",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 4,
            rank = '5',
            chips = 5,
            current_chips = 0,
            creates = 1,
            scored = 21,
            currently_scored = 0
        },
    },
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_odd(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                        card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_odd(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                        card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
                    end
                end

                if card.ability.extra.currently_scored >= card.ability.extra.scored then
                    card.ability.extra.currently_scored = card.ability.extra.currently_scored - card.ability.extra
                        .scored
                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "Solfachord" }, is_pendulum = true } },
                            'j_joy_solfa_fancia', true)
                    end
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "current_chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "currently_scored" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "scored" },
                { text = ")" },
            },
        }
    end
})

-- SolSolfachord Gracia
SMODS.Joker({
    key = "solfa_gracia",
    atlas = 'solfa',
    pos = { x = 1, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.change, card.ability.extra.repetitions, card.ability.extra.creates, card.ability.extra.scored, card.ability.extra.currently_scored } }
    end,
    joy_desc_cards = {
        { "j_joy_solfa_harmonia",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "WATER",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 5,
            rank = '4',
            repetitions = 1,
            creates = 1,
            scored = 80,
            currently_scored = 0
        },
    },
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_even(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_even(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                    end
                end

                if card.ability.extra.currently_scored >= card.ability.extra.scored then
                    card.ability.extra.currently_scored = card.ability.extra.currently_scored - card.ability.extra
                        .scored
                    for i = 1, card.ability.extra.creates do
                        if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                            JoyousSpring.add_to_extra_deck("j_joy_solfa_harmonia")
                        end
                    end
                end
            end
            if context.repetition then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_even(context.other_card) then
                        return {
                            repetitions = card.ability.extra.repetitions
                        }
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_even(context.other_card) then
                        return {
                            repetitions = card.ability.extra.repetitions
                        }
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "currently_scored" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "scored" },
                { text = ")" },
            },
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                return is_even(card) and joker_card.ability.extra.repetitions or 0
            end
        }
    end
})

-- LaSolfachord Angelia
SMODS.Joker({
    key = "solfa_angelia",
    atlas = 'solfa',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.change, card.ability.extra.repetitions, card.ability.extra.revives, card.ability.extra.scored, card.ability.extra.currently_scored } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "FIRE",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 6,
            rank = '3',
            repetitions = 1,
            revives = 1,
            scored = 41,
            currently_scored = 0
        },
    },
    add_to_deck = function(self, card, from_debuff)
        JoyousSpring.calculate_hand_highlight_limit(card)
    end,
    remove_from_deck = function(self, card, from_debuff)
        JoyousSpring.calculate_hand_highlight_limit(nil, card)
    end,
    joy_set_hand_highlight_limit = function(card)
        return 6
    end,
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_odd(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_odd(context.other_card) then
                        card.ability.extra.currently_scored = card.ability.extra.currently_scored + 1
                    end
                end

                if card.ability.extra.currently_scored >= card.ability.extra.scored then
                    card.ability.extra.currently_scored = card.ability.extra.currently_scored - card.ability.extra
                        .scored
                    for i = 1, card.ability.extra.revives do
                        JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Solfachord" } } },
                            'j_joy_solfa_angelia', true)
                    end
                end
            end
            if context.repetition then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_odd(context.other_card) then
                        return {
                            repetitions = card.ability.extra.repetitions
                        }
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_odd(context.other_card) then
                        return {
                            repetitions = card.ability.extra.repetitions
                        }
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "currently_scored" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "scored" },
                { text = ")" },
            },
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                return is_odd(card) and joker_card.ability.extra.repetitions or 0
            end
        }
    end
})

-- TiSolfachord Beautia
SMODS.Joker({
    key = "solfa_beautia",
    atlas = 'solfa',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.change, card.ability.extra.xchips, 1 + card.ability.extra.xchips * solfa_count(), card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 7,
            rank = '2',
            xchips = 0.1,
            banishes = 2
        },
    },
    add_to_deck = function(self, card, from_debuff)
        JoyousSpring.calculate_hand_highlight_limit(card)
    end,
    remove_from_deck = function(self, card, from_debuff)
        JoyousSpring.calculate_hand_highlight_limit(nil, card)
    end,
    joy_set_hand_highlight_limit = function(card)
        return 7
    end,
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_even(context.other_card) then
                        return {
                            xchips = 1 + card.ability.extra.xchips * solfa_count()
                        }
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_even(context.other_card) then
                        return {
                            xchips = 1 + card.ability.extra.xchips * solfa_count()
                        }
                    end
                end
            end
            if context.joy_post_round_eval then
                local choices = JoyousSpring.get_materials_owned({ { is_pendulum = true } })
                for i = 1, card.ability.extra.banishes do
                    local to_banish, index = pseudorandom_element(choices, 'j_joy_solfa_beautia')
                    if to_banish then
                        JoyousSpring.banish(to_banish, "blind_selected")
                        table.remove(choices, index)
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xchips", retrigger_type = "exp" }
                    },
                    border_colour = G.C.CHIPS
                }
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local count = 0
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if is_even(scoring_card) then
                            count = count + JokerDisplay.calculate_card_triggers(scoring_card)
                        end
                    end
                end
                card.joker_display_values.xchips = (1 + card.ability.extra.xchips * solfa_count()) ^ count
            end
        }
    end
})

-- DoSolfachord Coolia
SMODS.Joker({
    key = "solfa_coolia",
    atlas = 'solfa',
    pos = { x = 0, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.change, card.ability.extra.xmult, 1 + card.ability.extra.xmult * solfa_count() } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "WIND",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
            change = 8,
            rank = 'Ace',
            xmult = 0.1,
        },
    },
    add_to_deck = function(self, card, from_debuff)
        JoyousSpring.calculate_hand_highlight_limit(card)
    end,
    remove_from_deck = function(self, card, from_debuff)
        JoyousSpring.calculate_hand_highlight_limit(nil, card)
    end,
    joy_set_hand_highlight_limit = function(card)
        return 8
    end,
    use = solfa_use,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual then
                local count_all_scored, count_hand = count_all_cards(context.scoring_hand)

                if context.cardarea == G.play then
                    if count_all_scored or is_odd(context.other_card) then
                        return {
                            xmult = 1 + card.ability.extra.xmult * solfa_count()
                        }
                    end
                end
                if context.cardarea == G.hand and count_hand then
                    if is_odd(context.other_card) then
                        return {
                            xmult = 1 + card.ability.extra.xmult * solfa_count()
                        }
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    },
                }
            },
            calc_function = function(card)
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                local count = 0
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if is_odd(scoring_card) then
                            count = count + JokerDisplay.calculate_card_triggers(scoring_card)
                        end
                    end
                end
                card.joker_display_values.xmult = (1 + card.ability.extra.xmult * solfa_count()) ^ count
            end
        }
    end
})

-- GranSolfachord Musecia
SMODS.Joker({
    key = "solfa_musecia",
    atlas = 'solfa',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.consumed, card.ability.extra.consumed - card.ability.extra.consumed_this_ante, card.ability.extra.consumed_increase } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { is_pendulum = true },
                            { is_pendulum = true },
                        },
                    }
                }
            },
            creates = 1,
            consumed = 4,
            consumed_increase = 2,
            consumed_this_ante = 0,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) and not card.ability.extra.activated then
                card.ability.extra.consumed_this_ante = card.ability.extra.consumed_this_ante + 1
                if card.ability.extra.consumed_this_ante >= card.ability.extra.consumed then
                    card.ability.extra.activated = true
                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "Solfachord" }, is_pendulum = true } },
                            "j_joy_solfa_cutia", false, false, "e_negative")
                    end
                    card.ability.extra.consumed = card.ability.extra.consumed + card.ability.extra.consumed_increase
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            card.ability.extra.consumed_this_ante = 0
            card.ability.extra.activated = false
        end
    end
})

-- GranSolfachord Coolia
SMODS.Joker({
    key = "solfa_grancoolia",
    atlas = 'solfa',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * pend_count(), card.ability.extra.money, card.ability.extra.consumed, card.ability.extra.consumed_this_round } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { is_pendulum = true },
                            {},
                            {},
                        },
                    }
                }
            },
            chips = 100,
            money = 50,
            consumed = 3,
            consumed_this_round = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * pend_count()
                }
            end
            if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
                card.ability.extra.consumed_this_round = card.ability.extra.consumed_this_round + 1
                if card.ability.extra.consumed_this_round >= card.ability.extra.consumed then
                    card.ability.extra.consumed_this_round = card.ability.extra.consumed_this_round -
                        card.ability.extra.consumed
                    return {
                        dollars = card.ability.extra.money
                    }
                end
            end
            if context.end_of_round and context.main_eval and context.game_over == false then
                card.ability.extra.consumed_this_round = 0
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
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * pend_count()
            end
        }
    end
})

-- Solfachord Harmonia
SMODS.Joker({
    key = "solfa_harmonia",
    atlas = 'solfa',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.creates, card.ability.extra.solfa_owned } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Solfachord" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Solfachord"] = true }
            },
            revives = 1,
            creates = 1,
            solfa_owned = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                for i = 1, card.ability.extra.revives do
                    local revived_card = JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Solfachord" } } },
                        'j_joy_solfa_harmonia', true)

                    if not revived_card then
                        JoyousSpring.revive_pseudorandom({ { is_pendulum = true } }, 'j_joy_solfa_harmonia',
                            true)
                    end
                end
            end
            if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
                for i = 1, card.ability.extra.creates do
                    if #G.consumeables.cards < G.consumeables.config.card_limit then
                        SMODS.add_card({
                            key = 'c_strength'
                        })
                    end
                end
            end
            if context.after and context.main_eval and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Solfachord" } } }, true) >= 5 then
                return {
                    func = function()
                        for _, playing_card in ipairs(context.scoring_hand) do
                            if not next(SMODS.get_enhancements(playing_card)) then
                                if is_even(playing_card) then
                                    playing_card:set_ability(G.P_CENTERS.m_gold, nil, true)
                                end
                                if is_odd(playing_card) then
                                    playing_card:set_ability(G.P_CENTERS.m_steel, nil, true)
                                end
                            end
                            playing_card:juice_up()
                        end
                    end
                }
            end
        end
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "solfa" },
    label = "k_joy_archetype_solfa"
}
