--- FORTUNE LADY
SMODS.Atlas({
    key = "flady",
    path = "26FortuneLady.png",
    px = 71,
    py = 95
})

local get_flady_probability_sum = function(card)
    local numerator_sum, denominator_sum = 0, 0

    if card.config.center.key == "j_joy_flady_every" then
        for i = 1, 6 do
            local numerator, denominator = SMODS.get_probability_vars(card,
                card.ability.extra.numerator,
                card.ability.extra.odds[i], card.config.center.key .. "_" .. i)
            numerator_sum = numerator_sum + numerator
            denominator_sum = denominator_sum + denominator
        end
    else
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        numerator_sum = numerator_sum + numerator
        denominator_sum = denominator_sum + denominator
    end
    return numerator_sum, denominator_sum
end

local get_all_flady_probabilities = function()
    local numerator_sum, denominator_sum = 0, 0
    local choices = JoyousSpring.get_materials_owned({ { monster_archetypes = { "FortuneLady" } } })
    for _, joker in ipairs(choices) do
        local n_sum, d_sum = get_flady_probability_sum(joker)
        numerator_sum = numerator_sum + n_sum
        denominator_sum = denominator_sum + d_sum
    end
    return numerator_sum, denominator_sum
end

-- Fortune Lady Light
SMODS.Joker({
    key = "flady_light",
    atlas = 'flady',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { numerator, denominator, card.ability.extra.banishes, card.ability.extra.money, card.ability.extra.money * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 1,
            odds = 400,
            banishes = 1,
            money = 0.1,
            current_banished = 0,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                local choices = JoyousSpring.get_materials_owned({ { monster_archetypes = { "FortuneLady" } } })
                local to_banish = pseudorandom_element(choices, card.config.center.key .. "_banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
                return {
                    message = localize("k_joy_banished"),
                    colour = G.C.GREEN
                }
            end
            if context.joy_banished then
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases)
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        local amount = card.ability.extra.money * math.min(numerator, denominator)
        return amount > 0 and amount or nil
    end
})

-- Fortune Lady Fire
SMODS.Joker({
    key = "flady_fire",
    atlas = 'flady',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        local numerator_sum, denominator_sum = numerator, denominator
        if G.jokers then
            numerator_sum, denominator_sum = get_all_flady_probabilities()
        end
        return { vars = { numerator, denominator, card.ability.extra.mult, card.ability.extra.mult * math.min(numerator_sum, denominator_sum), denominator_sum, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 10,
            odds = 500,
            mult = 2,
            increases = 1,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    card.ability.extra.active = true
                    return {
                        message = localize("k_joy_doubled"),
                        colour = G.C.GREEN
                    }
                else
                    card.ability.extra.active = false
                end
            end
            if context.mod_probability and not context.blueprint and context.trigger_obj ~= card and card.ability.extra.active then
                return {
                    numerator = context.numerator * 2
                }
            end
            if context.joker_main then
                local numerator_sum, denominator_sum = get_all_flady_probabilities()
                return {
                    mult = card.ability.extra.mult * math.min(numerator_sum, denominator_sum)
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases)
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
})

-- Fortune Lady Wind
SMODS.Joker({
    key = "flady_wind",
    atlas = 'flady',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { numerator, denominator, card.ability.extra.chips, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 3,
            odds = 300,
            chips = 10,
            increases = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before and SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                local planet = JoyousSpring.get_played_planet(context.scoring_name)
                if planet then
                    for i = 1, card.ability.extra.creates do
                        SMODS.add_card({
                            key = planet
                        })
                    end
                end
                return {
                    message = localize("k_joy_activated_ex"),
                    colour = G.C.GREEN
                }
            end
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_archetype(context.other_joker, "FortuneLady") then
                local numerator, denominator = get_flady_probability_sum(context.other_joker)
                return {
                    chips = card.ability.extra.chips * math.min(numerator, denominator),
                    message_card = context.other_joker
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases *
                    JoyousSpring.count_materials_owned({ { monster_archetypes = { "FortuneLady" } } }))
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
})

-- Fortune Lady Water
SMODS.Joker({
    key = "flady_water",
    atlas = 'flady',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { numerator, denominator, card.ability.extra.h_size, card.ability.extra.current_h_size, card.ability.extra.chips, card.ability.extra.chips * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 4,
            odds = 400,
            chips = 10,
            current_h_size = 0,
            h_size = 1,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    card.ability.extra.current_h_size = card.ability.extra.current_h_size + card.ability.extra.h_size
                    G.hand:change_size(card.ability.extra.h_size)
                    return {
                        message = localize("k_joy_activated_ex"),
                        colour = G.C.GREEN
                    }
                else
                    G.hand:change_size(-card.ability.extra.current_h_size)
                    card.ability.extra.current_h_size = 0
                    return {
                        message = localize('k_reset'),
                        colour = G.C.RED
                    }
                end
            end
            if context.joker_main then
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                return {
                    chips = card.ability.extra.chips * math.min(numerator, denominator),
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases)
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.hand:change_size(-card.ability.extra.current_h_size)
        end
    end
})

-- Fortune Lady Earth
SMODS.Joker({
    key = "flady_earth",
    atlas = 'flady',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { numerator, denominator, card.ability.extra.creates, card.ability.extra.xmult, 1 + card.ability.extra.xmult * card.ability.extra.increased, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 1,
            odds = 50,
            creates = 1,
            xmult = 0.1,
            increased = 0,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "FortuneLady" }, is_main_deck = true } }, card.config.center.key,
                            true)
                    end
                    return {
                        message = localize("k_joy_activated_ex"),
                        colour = G.C.GREEN
                    }
                end
            end
            if context.joker_main then
                local increased = card.ability.extra.increased
                card.ability.extra.increased = 0
                return {
                    xmult = 1 + card.ability.extra.xmult * increased
                }
            end
            if context.joy_modify_probability and context.joy_increased then
                card.ability.extra.increased = card.ability.extra.increased + 1
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases, nil, nil,
                    { j_joy_flady_earth = true })
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.increased = 0
    end
})

-- Fortune Lady Dark
SMODS.Joker({
    key = "flady_dark",
    atlas = 'flady',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { numerator, denominator, card.ability.extra.revives, card.ability.extra.mult, card.ability.extra.mult * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 2,
            odds = 200,
            revives = 1,
            mult = 4,
            increases = 1
        },
    },
})

-- Fortune Lady Past
SMODS.Joker({
    key = "flady_past",
    atlas = 'flady',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { numerator, denominator, card.ability.extra.xmult, 1 + card.ability.extra.xmult * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 2,
            odds = 2000,
            xmult = 0.1,
            increases = 1
        },
    },
})

-- Fortune Lady Every
SMODS.Joker({
    key = "flady_every",
    atlas = 'flady',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerators, denominators = {}, {}
        for i = 1, 6 do
            numerators[#numerators + 1], denominators[#denominators + 1] = SMODS.get_probability_vars(card,
                card.ability.extra.numerator,
                card.ability.extra.odds[i], card.config.center.key .. "_" .. i)
        end
        return {
            vars = {
                numerators[1], denominators[1], card.ability.extra.xmult,
                numerators[2], denominators[2], card.ability.extra.banishes,
                numerators[3], denominators[3], card.ability.extra.money,
                numerators[4], denominators[4],
                numerators[5], denominators[5], card.ability.extra.creates,
                numerators[6], denominators[6], card.ability.extra.revives,
                card.ability.extra.mult, math.max(denominators[1], denominators[2], denominators[3], denominators[4],
                denominators[5], denominators[6]),
                card.ability.extra.mult *
                math.min(math.max(denominators[1], denominators[2], denominators[3], denominators[4],
                        denominators[5], denominators[6]),
                    numerators[1] + numerators[2] + numerators[3] + numerators[4] + numerators[5] + numerators[6])
            },
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,              exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            numerator = 1,
            odds = { 10, 50, 100, 500, 1000, 2000 },
            xmult = 5,
            banishes = 1,
            money = 20,
            creates = 1,
            revives = 1,
            mult = 4,
        },
    },
})

-- Fortune Fairy Hikari
SMODS.Joker({
    key = "ffairy_hikari",
    atlas = 'flady',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.creates, card.ability.extra.succeed, card.ability.extra.successes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            money = 1,
            creates = 1,
            successes = 0,
            succeed = 10,
            activated = false
        },
    },
})

-- Fortune Fairy En
SMODS.Joker({
    key = "ffairy_en",
    atlas = 'flady',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { card.ability.extra.mult, 0, numerator, denominator } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            mult = 1,
            odds = 40,
        },
    },
})

-- Fortune Fairy Hu
SMODS.Joker({
    key = "ffairy_hu",
    atlas = 'flady',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            chips = 10,
        },
    },
})

-- Fortune Fairy Swee
SMODS.Joker({
    key = "ffairy_swee",
    atlas = 'flady',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0, card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            chips = 10,
            banishes = 1
        },
    },
})

-- Fortune Fairy Chee
SMODS.Joker({
    key = "ffairy_chee",
    atlas = 'flady',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            mult = 1,
        },
    },
})

-- Fortune Fairy Ann
SMODS.Joker({
    key = "ffairy_ann",
    atlas = 'flady',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { card.ability.extra.money, card.ability.extra.mills, numerator, denominator } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true },
            },
            money = 1,
            mills = 1,
            odds = 20
        },
    },
})



JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "flady", "ffairy" },
    label = "k_joy_archetype_flady"
}
