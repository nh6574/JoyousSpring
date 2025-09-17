--- FORTUNE LADY
SMODS.Atlas({
    key = "flady",
    path = "26FortuneLady.png",
    px = 71,
    py = 95
})

local get_flady_probability_sum = function(card)
    if not card then return 0, 0 end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator, card.ability.extra.banishes, card.ability.extra.money, card.ability.extra.money * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 8,
            odds = 80,
            banishes = 1,
            money = 0.5,
            current_banished = 0,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_post_round_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                local choices = JoyousSpring.get_materials_owned({ { monster_archetypes = { "FortuneLady" } } })
                local to_banish = pseudorandom_element(choices, card.config.center.key .. "_banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                    return {
                        message = localize("k_joy_banished"),
                        colour = G.C.GREEN
                    }
                end
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
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.joker_display_values", ref_value = "money" },
            },
            text_config = { colour = G.C.GOLD },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            reminder_text = {
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
            },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.money = math.max(0, card.ability.extra.money * math.min(numerator, denominator))
                card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
            end
        }
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        local numerator_sum, denominator_sum = numerator, denominator
        if G.jokers then
            numerator_sum, denominator_sum = get_all_flady_probabilities()
        end
        return { vars = { numerator, denominator, card.ability.extra.mult, denominator_sum, card.ability.extra.mult * math.min(numerator_sum, denominator_sum), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 10,
            odds = 100,
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
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                local numerator_sum, denominator_sum = get_all_flady_probabilities()
                card.joker_display_values.mult = card.ability.extra.mult * math.min(numerator_sum, denominator_sum)
            end
        }
    end
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
    cost = 4,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator, card.ability.extra.chips, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 8,
            odds = 200,
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
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
            end,
            mod_function = function(card, mod_joker)
                if card.facing == "front" and JoyousSpring.is_monster_archetype(card, "FortuneLady") then
                    local numerator, denominator = get_flady_probability_sum(card)

                    return {
                        chips = (mod_joker.ability.extra.chips and
                            mod_joker.ability.extra.chips * math.min(numerator, denominator) * JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                    }
                end
                return {}
            end
        }
    end
})

-- Fortune Lady Water
SMODS.Joker({
    key = "flady_water",
    atlas = 'flady',
    pos = { x = 3, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator, card.ability.extra.h_size, card.ability.extra.current_h_size, card.ability.extra.chips, card.ability.extra.chips * math.min(numerator, denominator), card.ability.extra.increases, card.ability.extra.max } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 12,
            odds = 200,
            chips = 10,
            current_h_size = 0,
            h_size = 1,
            increases = 1,
            max = 6
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    if card.ability.extra.current_h_size < card.ability.extra.max then
                        card.ability.extra.current_h_size = card.ability.extra.current_h_size +
                            card.ability.extra.h_size
                    end
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
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.chips = card.ability.extra.chips * math.min(numerator, denominator)
            end
        }
    end
})

-- Fortune Lady Dark
SMODS.Joker({
    key = "flady_dark",
    atlas = 'flady',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator, card.ability.extra.revives, card.ability.extra.mult, card.ability.extra.mult * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 5,
            odds = 100,
            revives = 1,
            mult = 4,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                local has_revived
                if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "FortuneLady" } } },
                            card.config.center.key,
                            true
                        )
                        has_revived = (revived_card and true) or has_revived
                    end
                    if not has_revived then
                        for i = 1, card.ability.extra.revives do
                            local revived_card = JoyousSpring.revive_pseudorandom(
                                { { monster_type = "Spellcaster" } },
                                card.config.center.key,
                                true
                            )
                            has_revived = (revived_card and true) or has_revived
                        end
                    end
                end
                if has_revived then
                    return {
                        message = localize("k_joy_revive"),
                        colour = G.C.GREEN
                    }
                end
            end
            if context.joker_main then
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                return {
                    mult = card.ability.extra.mult * math.min(numerator, denominator),
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases *
                    JoyousSpring.count_materials_owned({ { monster_type = "Spellcaster" } }))
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
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
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.mult = card.ability.extra.mult * math.min(numerator, denominator)
            end
        }
    end
})


-- Fortune Lady Earth
SMODS.Joker({
    key = "flady_earth",
    atlas = 'flady',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator, card.ability.extra.creates, card.ability.extra.xmult, 1 + card.ability.extra.xmult * card.ability.extra.increased, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
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
                return {
                    xmult = 1 + card.ability.extra.xmult * card.ability.extra.increased
                }
            end
            if context.joy_modify_probability and context.joy_increased and context.joy_card == card then
                card.ability.extra.increased = card.ability.extra.increased + 1
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases, nil, nil,
                    { j_joy_flady_earth = true })
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.increased = 0
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
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.xmult = 1 + card.ability.extra.xmult * card.ability.extra.increased
            end
        }
    end
})

-- Fortune Lady Past
SMODS.Joker({
    key = "flady_past",
    atlas = 'flady',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator, card.ability.extra.xmult, 1 + card.ability.extra.xmult * math.min(numerator, denominator), card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneLady"] = true }
            },
            numerator = 6,
            odds = 150,
            xmult = 0.1,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                return {
                    xmult = 1 + card.ability.extra.xmult * math.min(numerator, denominator)
                }
            end
            if context.joy_returned then
                JoyousSpring.modify_probability_jokers(card.ability.extra.increases)
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
            if context.joy_post_round_eval then
                if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    return {
                        message = localize("k_joy_banished"),
                        colour = G.C.GREEN,
                        func = function()
                            for _, joker in ipairs(G.jokers.cards) do
                                if JoyousSpring.is_monster_type(joker, "Spellcaster") then
                                    JoyousSpring.banish(joker, "blind_selected")
                                end
                            end
                        end
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
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.xmult = 1 + card.ability.extra.xmult * math.min(numerator, denominator)
            end
        }
    end
})

-- Fortune Lady Every
SMODS.Joker({
    key = "flady_every",
    atlas = 'flady',
    pos = { x = 1, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 16,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        local numerators, denominators = {}, {}
        for i = 1, 6 do
            numerators[#numerators + 1], denominators[#denominators + 1] = SMODS.get_probability_vars(card,
                card.ability.extra.numerator,
                card.ability.extra.odds[i], self.key .. "_" .. i)
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
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            numerator = 1,
            odds = { 10, 50, 100, 200, 300, 500 },
            xmult = 5,
            banishes = 1,
            money = 20,
            creates = 1,
            revives = 1,
            mult = 4,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                local activated = false
                if SMODS.pseudorandom_probability(card, card.config.center.key .. "_5", card.ability.extra.numerator, card.ability.extra.odds[5]) then
                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "FortuneFairy" } } }, card.config.center.key,
                            true)
                    end
                    activated = true
                end
                if SMODS.pseudorandom_probability(card, card.config.center.key .. "_6", card.ability.extra.numerator, card.ability.extra.odds[6]) then
                    local revived_card
                    for i = 1, card.ability.extra.revives do
                        revived_card = JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "FortuneLady" } } },
                            card.config.center.key,
                            false, "e_negative"
                        )
                    end
                    if not revived_card then
                        for i = 1, card.ability.extra.revives do
                            JoyousSpring.revive_pseudorandom(
                                { { monster_type = "Spellcaster" } },
                                card.config.center.key,
                                false, "e_negative"
                            )
                        end
                    end
                    activated = true
                end
                if activated then
                    return {
                        message = localize("k_joy_activated_ex"),
                        colour = G.C.GREEN
                    }
                end
            end
            if context.joker_main then
                local numerators, denominators = {}, {}
                for i = 1, 6 do
                    numerators[#numerators + 1], denominators[#denominators + 1] = SMODS.get_probability_vars(card,
                        card.ability.extra.numerator,
                        card.ability.extra.odds[i], card.config.center.key .. "_" .. i)
                end
                return {
                    mult = card.ability.extra.mult *
                        math.min(
                            math.max(denominators[1], denominators[2], denominators[3], denominators[4],
                                denominators[5], denominators[6]),
                            numerators[1] + numerators[2] + numerators[3] +
                            numerators[4] + numerators[5] + numerators[6]
                        ),
                    xmult = SMODS.pseudorandom_probability(card, card.config.center.key .. "_1",
                        card.ability.extra.numerator,
                        card.ability.extra.odds[1]) and card.ability.extra.xmult or nil
                }
            end
            if context.individual and context.cardarea == G.play then
                if SMODS.pseudorandom_probability(card, card.config.center.key .. "_4", card.ability.extra.numerator, card.ability.extra.odds[4]) then
                    JoyousSpring.modify_probability_numerator(context.other_card, nil, 2)
                    return {
                        message = localize("k_joy_increased"),
                        colour = G.C.GREEN
                    }
                end
            end
            if context.joy_post_round_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key .. "_2", card.ability.extra.numerator, card.ability.extra.odds[2]) then
                local choices = JoyousSpring.get_materials_owned({ { monster_archetypes = { "FortuneLady" } } })
                local to_banish = pseudorandom_element(choices, card.config.center.key .. "_banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                    return {
                        message = localize("k_joy_banished"),
                        colour = G.C.GREEN
                    }
                end
            end
            if context.joy_returned then
                JoyousSpring.modify_probability_numerator(context.joy_returned_card, nil, 2)
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        if SMODS.pseudorandom_probability(card, card.config.center.key .. "_3", card.ability.extra.numerator, card.ability.extra.odds[3]) then
            SMODS.calculate_effect({ message = localize("k_joy_activated_ex"), colour = G.C.GREEN }, card)
            return card.ability.extra.money
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+",                              colour = G.C.MULT },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
                { text = " " },
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
                    }
                },
                { text = "?" },
            },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_1" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_2" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_3" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_4" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_5" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_6" },
                    { text = ")" },
                },
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerators, denominators = {}, {}
                for i = 1, 6 do
                    numerators[#numerators + 1], denominators[#denominators + 1] = SMODS.get_probability_vars(card,
                        card.ability.extra.numerator,
                        card.ability.extra.odds[i], card.config.center.key .. "_" .. i)
                    card.joker_display_values["odds_" .. i] = localize { type = 'variable', key = "jdis_odds", vars = { numerators[i], denominators[i] } }
                end
                card.joker_display_values.mult = card.ability.extra.mult * math.min(
                    math.max(denominators[1], denominators[2], denominators[3], denominators[4],
                        denominators[5], denominators[6]),
                    numerators[1] + numerators[2] + numerators[3] +
                    numerators[4] + numerators[5] + numerators[6]
                )
            end
        }
    end
})

local ffairy_bypass_room_check = function(card, from_booster)
    return JoyousSpring.count_materials_owned({ { monster_archetypes = { "FortuneLady" } } }) > 0
end

local ffairy_set_cost = function(card)
    if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FortuneLady" } } }) > 0 then
        card.cost = 0
    end
end

-- Fortune Fairy Hikari
SMODS.Joker({
    key = "ffairy_hikari",
    atlas = 'flady',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.money, card.ability.extra.creates, card.ability.extra.succeed, card.ability.extra.successes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            money = 3,
            creates = 1,
            successes = 0,
            succeed = 10,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.pseudorandom_result and context.result then
                card.ability.extra.successes = card.ability.extra.successes + 1
                if not card.ability.extra.activated and card.ability.extra.successes >= card.ability.extra.succeed then
                    card.ability.extra.activated = true
                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom({ { monster_type = "Spellcaster", is_main_deck = true } },
                            card.config.center.key, true)
                    end
                end
                return {
                    dollars = card.ability.extra.money
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
                card.ability.extra.successes = 0
                card.ability.extra.activated = false
            end
        end
    end,
    joy_bypass_room_check = ffairy_bypass_room_check,
    joy_set_cost = ffairy_set_cost,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "active" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.active = card.ability.extra.successes .. "/" .. card.ability.extra.succeed
            end
        }
    end
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
    cost = 3,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds, self.key)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_probability_success or 0), numerator, denominator } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            mult = 4,
            odds = 40,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_probability_success or 0)
                }
            end
            if context.individual and context.cardarea == G.play then
                if SMODS.pseudorandom_probability(card, card.config.center.key, 1, card.ability.extra.odds) then
                    context.other_card:set_ability('m_lucky', nil, true)

                    return {
                        message = localize("k_joy_activated_ex"),
                        colour = G.C.GREEN,
                        message_card = card
                    }
                end
            end
        end
    end,
    joy_bypass_room_check = ffairy_bypass_room_check,
    joy_set_cost = ffairy_set_cost,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.mult = card.ability.extra.mult * (G.GAME.joy_probability_success or 0)
            end
        }
    end
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
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.joy_probability_success or 0) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            chips = 20,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * (G.GAME.joy_probability_success or 0)
                }
            end
            if context.joy_returned and context.joy_returned_card == card then
                card.ability.extra.active = true
            end
            if context.joy_probability_roll and card.ability.extra.active then
                JoyousSpring.guaranteed_probability = true
                card.ability.extra.active = false
                return {
                    message = localize("k_joy_activated_ex"),
                    colour = G.C.GREEN,
                }
            end
        end
    end,
    joy_bypass_room_check = ffairy_bypass_room_check,
    joy_set_cost = ffairy_set_cost,
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
                { ref_table = "card.joker_display_values", ref_value = "active" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * (G.GAME.joy_probability_success or 0)
                card.joker_display_values.active = (card.ability.extra.active and localize("jdis_active") or localize("jdis_inactive"))
            end
        }
    end
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
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.joy_probability_success or 0), card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            chips = 20,
            banishes = 1,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                card.ability.extra.active = false
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * (G.GAME.joy_probability_success or 0)
                }
            end
            if context.pseudorandom_result and context.result then
                card.ability.extra.active = true
            end
            if context.joy_post_round_eval and card.ability.extra.active then
                card.ability.extra.active = false
                JoyousSpring.banish(card, "blind_selected")
                local choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card then
                        table.insert(choices, joker)
                    end
                end
                local to_banish = pseudorandom_element(choices, card.config.center.key)
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
        end
    end,
    joy_bypass_room_check = ffairy_bypass_room_check,
    joy_set_cost = ffairy_set_cost,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * (G.GAME.joy_probability_success or 0)
            end
        }
    end
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
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds, self.key)
        return { vars = { card.ability.extra.money, card.ability.extra.mills, numerator, denominator } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true },
            },
            money = 3,
            mills = 1,
            odds = 20
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.pseudorandom_result and context.result then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_type = "Spellcaster" } },
                    card.config.center.key, card.ability.extra.mills)
                return {
                    dollars = card.ability.extra.money
                }
            end
            if context.joy_post_round_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key, 1, card.ability.extra.odds) then
                JoyousSpring.banish(card, "blind_selected")
            end
        end
    end,
    joy_bypass_room_check = ffairy_bypass_room_check,
    joy_set_cost = ffairy_set_cost,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
            end
        }
    end
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
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_probability_success or 0) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
                monster_archetypes = { ["FortuneFairy"] = true }
            },
            mult = 4,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_probability_success or 0)
                }
            end
            if context.mod_probability and not context.blueprint then
                local is_nonspellcaster_card = JoyousSpring.is_card(context.trigger_obj) and
                    not JoyousSpring.is_monster_type(context.trigger_obj, "Spellcaster")
                if is_nonspellcaster_card then
                    return {
                        denominator = context.denominator / 2
                    }
                end
            end
        end
    end,
    joy_bypass_room_check = ffairy_bypass_room_check,
    joy_set_cost = ffairy_set_cost,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult * (G.GAME.joy_probability_success or 0)
            end
        }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "flady", "ffairy" },
    label = "k_joy_archetype_flady"
}
