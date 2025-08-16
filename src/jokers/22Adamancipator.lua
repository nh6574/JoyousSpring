--- ADAMANCIPATOR
SMODS.Atlas({
    key = "adaman",
    path = "22Adamancipator.png",
    px = 71,
    py = 95
})

local adaman_excavate = function(card, context)
    if context.setting_blind then
        return card.ability.extra.excavates
    end
end

-- Adamancipator Analyzer
SMODS.Joker({
    key = "adaman_analyzer",
    atlas = 'adaman',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.chips, card.ability.extra.chips * card.ability.extra.excavated, card.ability.extra.creates, card.ability.extra.hands, card.ability.extra.hands - card.ability.extra.hands_played } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true }
            },
            excavates = 3,
            chips = 100,
            excavated = 0,
            creates = 1,
            hands = 3,
            hands_played = 0,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before and next(context.poker_hands["Flush"]) and
                not card.ability.extra.activated then
                local is_diamond_flush = false
                for _, hand in ipairs(context.poker_hands["Flush"]) do
                    if hand[1] and hand[1]:is_suit("Diamonds", nil, true) then
                        is_diamond_flush = true
                        break
                    end
                end
                if is_diamond_flush then
                    card.ability.extra.hands_played = card.ability.extra.hands_played + 1
                end
                if card.ability.extra.hands_played >= card.ability.extra.hands then
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_type = "Rock", is_main_deck = true }, },
                            'j_joy_adaman_analyzer', true)
                    end
                    card.ability.extra.activated = true
                end
            end
            if context.individual and context.cardarea == G.play and context.other_card:is_suit("Diamonds") and card.ability.extra.excavated > 0 then
                return {
                    chips = card.ability.extra.chips * card.ability.extra.excavated
                }
            end
            if context.joy_excavated and (SMODS.find_card("j_joy_adaman_laputite") or context.joy_number <= card.ability.extra.excavates) and context.joy_other_context.setting_blind then
                if context.joy_excavated:is_suit("Diamonds") then
                    card.ability.extra.excavated = card.ability.extra.excavated + 1
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.excavated = 0
            if context.beat_boss then
                card.ability.extra.activated = false
                card.ability.extra.hands_played = 0
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.excavated = 0
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) > 0 then
            card.cost = 0
        end
    end,
    joy_calculate_excavate = adaman_excavate,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "count" },
                { text = "/" },
                { ref_table = "card.ability.extra",        ref_value = "hands" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * card.ability.extra.excavated
                card.joker_display_values.count = localize('Flush', 'poker_hands') ..
                    ': ' .. card.ability.extra.hands_played
            end
        }
    end
})

-- Adamancipator Researcher
SMODS.Joker({
    key = "adaman_researcher",
    atlas = 'adaman',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.money, card.ability.extra.money * card.ability.extra.excavated, card.ability.extra.creates, card.ability.extra.hands, card.ability.extra.hands - card.ability.extra.hands_played } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true }
            },
            excavates = 3,
            money = 2,
            excavated = 0,
            creates = 1,
            hands = 3,
            hands_played = 0,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before and next(context.poker_hands["Flush"]) and
                not card.ability.extra.activated then
                local is_diamond_flush = false
                for _, hand in ipairs(context.poker_hands["Flush"]) do
                    if hand[1] and hand[1]:is_suit("Diamonds", nil, true) then
                        is_diamond_flush = true
                        break
                    end
                end
                if is_diamond_flush then
                    card.ability.extra.hands_played = card.ability.extra.hands_played + 1
                end
                if card.ability.extra.hands_played >= card.ability.extra.hands then
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_type = "Rock", is_main_deck = true }, },
                            'j_joy_adaman_researcher', true)
                    end
                    card.ability.extra.activated = true
                end
            end
            if context.individual and context.cardarea == G.play and context.other_card:is_suit("Diamonds") and card.ability.extra.excavated > 0 then
                return {
                    dollars = card.ability.extra.money * card.ability.extra.excavated
                }
            end
            if context.joy_excavated and (SMODS.find_card("j_joy_adaman_laputite") or context.joy_number <= card.ability.extra.excavates) and context.joy_other_context.setting_blind then
                if context.joy_excavated:is_suit("Diamonds") then
                    card.ability.extra.excavated = card.ability.extra.excavated + 1
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.excavated = 0
            if context.beat_boss then
                card.ability.extra.activated = false
                card.ability.extra.hands_played = 0
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.excavated = 0
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) > 0 then
            card.cost = 0
        end
    end,
    joy_calculate_excavate = adaman_excavate,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MONEY },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "count" },
                { text = "/" },
                { ref_table = "card.ability.extra",        ref_value = "hands" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.money = card.ability.extra.money * card.ability.extra.excavated
                card.joker_display_values.count = localize('Flush', 'poker_hands') ..
                    ': ' .. card.ability.extra.hands_played
            end
        }
    end
})

-- Adamancipator Seeker
SMODS.Joker({
    key = "adaman_seeker",
    atlas = 'adaman',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.mult, card.ability.extra.mult * card.ability.extra.excavated, card.ability.extra.creates, card.ability.extra.hands, card.ability.extra.hands - card.ability.extra.hands_played } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true }
            },
            excavates = 3,
            mult = 20,
            excavated = 0,
            creates = 1,
            hands = 3,
            hands_played = 0,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before and next(context.poker_hands["Flush"]) and
                not card.ability.extra.activated then
                local is_diamond_flush = false
                for _, hand in ipairs(context.poker_hands["Flush"]) do
                    if hand[1] and hand[1]:is_suit("Diamonds", nil, true) then
                        is_diamond_flush = true
                        break
                    end
                end
                if is_diamond_flush then
                    card.ability.extra.hands_played = card.ability.extra.hands_played + 1
                end
                if card.ability.extra.hands_played >= card.ability.extra.hands then
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_type = "Rock", is_main_deck = true }, },
                            'j_joy_adaman_seeker', true)
                    end
                    card.ability.extra.activated = true
                end
            end
            if context.individual and context.cardarea == G.play and context.other_card:is_suit("Diamonds") and card.ability.extra.excavated > 0 then
                return {
                    mult = card.ability.extra.mult * card.ability.extra.excavated
                }
            end
            if context.joy_excavated and (SMODS.find_card("j_joy_adaman_laputite") or context.joy_number <= card.ability.extra.excavates) and context.joy_other_context.setting_blind then
                if context.joy_excavated:is_suit("Diamonds") then
                    card.ability.extra.excavated = card.ability.extra.excavated + 1
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.excavated = 0
            if context.beat_boss then
                card.ability.extra.activated = false
                card.ability.extra.hands_played = 0
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.excavated = 0
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) > 0 then
            card.cost = 0
        end
    end,
    joy_calculate_excavate = adaman_excavate,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "count" },
                { text = "/" },
                { ref_table = "card.ability.extra",        ref_value = "hands" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult * card.ability.extra.excavated
                card.joker_display_values.count = localize('Flush', 'poker_hands') ..
                    ': ' .. card.ability.extra.hands_played
            end
        }
    end
})

-- Adamancipator Crystal - Dragite
SMODS.Joker({
    key = "adaman_crysdragite",
    atlas = 'adaman',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true }
            },
            chips = 10,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and not context.end_of_round
                and context.other_card:is_suit("Diamonds") then
                return {
                    chips = card.ability.extra.chips * JoyousSpring.count_materials_owned({ { monster_type = "Rock" } })
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            local diamonds = 0
            for _, pcard in ipairs(G.deck.cards) do
                if pcard:is_suit("Diamonds") then
                    diamonds = diamonds + 1
                end
            end
            return {
                chips = config.chips * diamonds
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return { chips = 3 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local diamonds = 0
        for _, pcard in ipairs(G.deck.cards) do
            if pcard:is_suit("Diamonds") then
                diamonds = diamonds + 1
            end
        end
        return { vars = { config.chips, config.chips * diamonds } }
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) * #G.hand.cards
            end
        }
    end
})

-- Adamancipator Crystal - Raptite
SMODS.Joker({
    key = "adaman_crysraptite",
    atlas = 'adaman',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.money, card.ability.extra.money * JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true }
            },
            money = 0.5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and not context.end_of_round
                and context.other_card:is_suit("Diamonds") then
                return {
                    dollars = card.ability.extra.money *
                        JoyousSpring.count_materials_owned({ { monster_type = "Rock" } })
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_transfer_calc_dollar_bonus = function(self, other_card, config)
        local diamonds = 0
        for _, pcard in ipairs(G.deck.cards) do
            if pcard:is_suit("Diamonds") then
                diamonds = diamonds + 1
            end
        end
        return diamonds > 0 and config.money * diamonds or nil
    end,
    joy_transfer_config = function(self, other_card)
        return { money = 0.1 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local diamonds = 0
        for _, pcard in ipairs(G.deck.cards) do
            if pcard:is_suit("Diamonds") then
                diamonds = diamonds + 1
            end
        end
        return { vars = { config.money, config.money * diamonds } }
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.joker_display_values", ref_value = "money", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MONEY },
            calc_function = function(card)
                card.joker_display_values.money = card.ability.extra.money *
                    JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) * #G.hand.cards
            end
        }
    end
})

-- Adamancipator Crystal - Leonite
SMODS.Joker({
    key = "adaman_crysleonite",
    atlas = 'adaman',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true }
            },
            mult = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and not context.end_of_round
                and context.other_card:is_suit("Diamonds") then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_materials_owned({ { monster_type = "Rock" } })
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            local diamonds = 0
            for _, pcard in ipairs(G.deck.cards) do
                if pcard:is_suit("Diamonds") then
                    diamonds = diamonds + 1
                end
            end
            return {
                mult = config.mult * diamonds
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return { mult = 1 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local diamonds = 0
        for _, pcard in ipairs(G.deck.cards) do
            if pcard:is_suit("Diamonds") then
                diamonds = diamonds + 1
            end
        end
        return { vars = { config.mult, config.mult * diamonds } }
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_owned({ { monster_type = "Rock" } }) * #G.hand.cards
            end
        }
    end
})

-- Adamancipator Risen - Dragite
SMODS.Joker({
    key = "adaman_dragite",
    atlas = 'adaman',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.xchips, card.ability.extra.creates, 1 + card.ability.extra.xchips * card.ability.extra.excavated, card.ability.extra.chips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { monster_type = "Rock", is_tuner = true,                         exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            excavates = 5,
            xchips = 1,
            excavated = 0,
            creates = 1,
            chips = 10,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xchips = 1 + card.ability.extra.xchips * card.ability.extra.excavated
                }
            end
            if context.individual and context.cardarea == G.play and context.other_card:is_suit("Diamonds") then
                context.other_card.ability.perma_h_chips = (context.other_card.ability.perma_h_chips or 1) +
                    card.ability.extra.chips
                return {
                    message = localize('k_upgrade_ex'), colour = G.C.CHIPS
                }
            end
            if context.joy_excavated and (SMODS.find_card("j_joy_adaman_laputite") or context.joy_number <= card.ability.extra.excavates) and context.joy_other_context.setting_blind then
                if context.joy_excavated:is_suit("Diamonds") then
                    card.ability.extra.excavated = card.ability.extra.excavated + 1
                end
                if not card.ability.extra.activated and card.ability.extra.excavated >= card.ability.extra.excavates then
                    card.ability.extra.activated = true
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_type = "Rock", is_main_deck = true }, },
                            'j_joy_adaman_dragite', false)
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.excavated = 0
            card.ability.extra.activated = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.excavated = 0
        card.ability.extra.activated = false
    end,
    joy_calculate_excavate = adaman_excavate,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
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
                card.joker_display_values.xchips = 1 + card.ability.extra.xchips * card.ability.extra.excavated
            end
        }
    end
})

-- Adamancipator Risen - Raptite
SMODS.Joker({
    key = "adaman_raptite",
    atlas = 'adaman',
    pos = { x = 0, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.money, card.ability.extra.creates, card.ability.extra.held_money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { monster_type = "Rock", is_tuner = true,                         exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            excavates = 5,
            money = 5,
            excavated = 0,
            creates = 1,
            held_money = 0.1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and context.other_card:is_suit("Diamonds") then
                context.other_card.ability.perma_h_dollars = (context.other_card.ability.perma_h_dollars or 1) +
                    card.ability.extra.held_money
                return {
                    message = localize('k_upgrade_ex'), colour = G.C.MONEY
                }
            end
            if context.joy_excavated and (SMODS.find_card("j_joy_adaman_laputite") or context.joy_number <= card.ability.extra.excavates) and context.joy_other_context.setting_blind then
                if context.joy_excavated:is_suit("Diamonds") then
                    card.ability.extra.excavated = card.ability.extra.excavated + 1
                end
                if not card.ability.extra.activated and card.ability.extra.excavated >= card.ability.extra.excavates then
                    card.ability.extra.activated = true
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_type = "Rock", is_main_deck = true }, },
                            'j_joy_adaman_raptite', false)
                    end
                end
                return {
                    dollars = context.joy_excavated:is_suit("Diamonds") and card.ability.extra.money or nil
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.excavated = 0
            card.ability.extra.activated = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.excavated = 0
        card.ability.extra.activated = false
    end,
    joy_calculate_excavate = adaman_excavate,
})

-- Adamancipator Risen - Leonite
SMODS.Joker({
    key = "adaman_leonite",
    atlas = 'adaman',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.xmult, card.ability.extra.creates, 1 + card.ability.extra.xmult * card.ability.extra.excavated, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Rock",
                monster_archetypes = { ["Adamancipator"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { monster_type = "Rock", is_tuner = true,                         exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            excavates = 5,
            xmult = 1,
            excavated = 0,
            creates = 1,
            mult = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * card.ability.extra.excavated
                }
            end
            if context.individual and context.cardarea == G.play and context.other_card:is_suit("Diamonds") then
                context.other_card.ability.perma_h_mult = (context.other_card.ability.perma_h_mult or 1) +
                    card.ability.extra.mult
                return {
                    message = localize('k_upgrade_ex'), colour = G.C.MULT
                }
            end
            if context.joy_excavated and (SMODS.find_card("j_joy_adaman_laputite") or context.joy_number <= card.ability.extra.excavates) and context.joy_other_context.setting_blind then
                if context.joy_excavated:is_suit("Diamonds") then
                    card.ability.extra.excavated = card.ability.extra.excavated + 1
                end
                if not card.ability.extra.activated and card.ability.extra.excavated >= card.ability.extra.excavates then
                    card.ability.extra.activated = true
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_type = "Rock", is_main_deck = true }, },
                            'j_joy_adaman_leonite', false)
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.excavated = 0
            card.ability.extra.activated = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.excavated = 0
        card.ability.extra.activated = false
    end,
    joy_calculate_excavate = adaman_excavate,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
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
                card.joker_display_values.xmult = 1 + card.ability.extra.xmult * card.ability.extra.excavated
            end
        }
    end
})

-- Adamancipator Laputite
SMODS.Joker({
    key = "adaman_laputite",
    atlas = 'adaman',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Adamancipator" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Adamancipator"] = true }
            },
            mult = 10,
        },
    },
    calculate = function(self, card, context)
        if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Rock") then
            return {
                mult = card.ability.extra.mult,
                message_card = context.other_joker
            }
        end
        if context.first_hand_drawn then
            local cen_pool = {}
            for _, enhancement_center in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                if enhancement_center.key ~= 'm_stone' and not enhancement_center.overrides_base_rank then
                    cen_pool[#cen_pool + 1] = enhancement_center.key
                end
            end
            local enhancement = pseudorandom_element(cen_pool, 'spe_card')
            SMODS.add_card { set = "Base", suit = "D", enhancement = enhancement }
            return {
                message = localize("k_joy_activated_ex")
            }
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                return {
                    mult = (JoyousSpring.is_monster_type(card, "Rock") and mod_joker.ability.extra.mult and
                        mod_joker.ability.extra.mult * JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                }
            end
        }
    end
})


JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "adaman" },
    label = "k_joy_archetype_adaman"
}
