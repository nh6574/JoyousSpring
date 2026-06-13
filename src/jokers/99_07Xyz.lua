--- XYZ FREE AGENTS

-- Divine Arsenal AA-ZEUS - Sky Thunder
JoyousSpring.Joker({
    key = "zeus",
    atlas = 'Misc01',
    pos = { x = 5, y = 4 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "LIGHT",
                monster_type = "Machine",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 3,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                    },
                    {
                        type = "XYZ",
                        materials = {
                            {
                                func = "detached_this_round",
                            },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 1,
            percent = 0.75
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card and G.GAME.blind.in_blind then
                JoyousSpring.ease_detach(card)
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips - G.GAME.blind.chips * card.ability.extra.percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)

                for _, pcard in ipairs(G.playing_cards) do
                    pcard:set_ability("c_base")
                end
            end
        end
    end,
    joy_can_detach = function(self, card)
        return G.GAME.blind.in_blind
    end
})

-- Super Starslayer TY-PHON - Sky Crisis
JoyousSpring.Joker({
    key = "typhon",
    atlas = 'Misc01',
    pos = { x = 6, y = 4 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Fiend",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 3,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                    },
                    {
                        type = "XYZ",
                        materials = {
                            {
                                func = "summoned_this_round",
                                func_vars = { more = 2 }
                            },
                        },
                    },
                }
            },
            detach = 1,
            percent = 0.5,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card and G.GAME.blind.in_blind and not card.ability.extra.active then
                JoyousSpring.ease_detach(card)
                card.ability.extra.active = true
                ease_dollars(-G.GAME.dollars * card.ability.extra.percent)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.active = false
            end
            if context.after and context.main_eval and card.ability.extra.active then
                return {
                    func = function()
                        for _, pcard in ipairs(context.scoring_hand) do
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    pcard:set_ability('m_glass')
                                    pcard:set_edition('e_polychrome')
                                    pcard:set_seal("Red")


                                    return true
                                end)
                            }))
                        end
                    end
                }
            end
        end
    end,
})


-- Number 67: Pair-a-Dice Smasher
JoyousSpring.Joker({
    key = "67",
    atlas = 'Misc01',
    pos = { x = 0, y = 5 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            self.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.from, card.ability.extra.to, numerator, denominator, card.ability.extra.attach } }
    end,
    joy_glossary = { "attach", "xyz_material" },
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
                for _, jokerarea in ipairs(SMODS.get_card_areas('jokers', 'joy_no_side')) do
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

-- Number 85: Crazy Box
JoyousSpring.Joker({
    key = "85",
    atlas = 'Misc01',
    pos = { x = 1, y = 5 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.plus_h_size, card.ability.extra.minus_h_size, numerator, denominator, card.ability.extra.attach } }
    end,
    joy_glossary = { "attach", "xyz_material" },
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
                    JoyousSpring.destroy_cards(card)
                end
                return {
                    message = tostring(effect),
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
    joy_can_detach = function(self, card)
        return G.GAME.blind.in_blind
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
            end
        }
    end
})


-- Code Igniter
JoyousSpring.Joker({
    key = "igniter",
    atlas = 'Misc01',
    pos = { x = 7, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("RITUAL"), card.ability.extra.detach, card.ability.extra.adds } }
    end,
    joy_glossary = { "ritual" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Cyberse", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Cyberse", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            xmult = 0.5,
            detach = 1,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                for i = 1, card.ability.extra.adds do
                    JoyousSpring.add_monster_tag_pseudorandom(
                        { { summon_type = "RITUAL" } }, card.config.center.key)
                end
            end
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("RITUAL")
                }
            end
        end
    end,
    joy_can_detach = function(self, card)
        return true
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
                    card.ability.extra.xmult * JoyousSpring.get_summoned_count("RITUAL")
            end
        }
    end
})


-- Slacker Magician
JoyousSpring.Joker({
    key = "slacker",
    atlas = "Misc03",
    pos = { x = 4, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                }
            },
            detach = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                JoyousSpring.disable_all_active_blinds()
                G.GAME.joy_bankrupt = true
            end
        end
    end,
    joy_can_detach = function(self, card)
        return JoyousSpring.are_blinds_active()
    end,
})

-- Downerd Magician
JoyousSpring.Joker({
    key = "downerd",
    atlas = "Misc03",
    pos = { x = 2, y = 5 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * card.ability.extra.joyous_spring.xyz_materials } }
    end,
    joy_glossary = { 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Spellcaster", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { summon_type = "XYZ", rarity = 1 }
                        },
                        transfer_materials = true
                    },
                }
            },
            xmult = 0.2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * card.ability.extra.joyous_spring.xyz_materials
                }
            end
            if context.joy_tributed and context.joy_card.ability.set == "Tarot" then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
                return {
                    message = localize("k_joy_attach")
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if card.ability.extra.joyous_spring.xyz_materials > 0 then
                    JoyousSpring.ease_detach(card, 1)
                end
            end
        end
    end,
})

-- Alchemic Magician
JoyousSpring.Joker({
    key = "alchemic",
    atlas = "Misc03",
    pos = { x = 1, y = 5 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.count_set_tributed("Tarot") } }
    end,
    joy_glossary = { 'tribute', "enter" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Spellcaster", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                }
            },
            xmult = 0.3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.count_set_tributed("Tarot")
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if card.ability.extra.joyous_spring.xyz_materials > 0 then
                    JoyousSpring.ease_detach(card, 1)
                end
                if card.ability.extra.joyous_spring.xyz_materials <= 0 then
                    SMODS.destroy_cards(card)
                    local tarots = JoyousSpring.get_set_tributed("Tarot")

                    for _, key in ipairs(tarots) do
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card({
                                    key = key,
                                })
                                return true
                            end
                        }))
                    end
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.joy_tarot_showman = true
    end
})

-- Heretical Phobos Covos
JoyousSpring.Joker({
    key = "phoboscobos",
    atlas = "Misc03",
    pos = { x = 3, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach } }
    end,
    joy_glossary = { 'attach', 'material', 'summon' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                }
            },
            detach = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls +
                    JoyousSpring.count_materials_owned({ { monster_type = "Illusion" } })
                calculate_reroll_cost(true)
            end
            if context.joy_returned and card.ability.extra.active and context.joy_returned_card == card then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
                return {
                    message = localize("k_joy_attach")
                }
            end
        end
        JoyousSpring.calculate_illusion_banish(card, context)
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local materials = JoyousSpring.get_materials(card)
            for _, material in ipairs(materials) do
                if JoyousSpring.is_material_center(material, { monster_type = "Illusion" }) then
                    card.ability.extra.active = true
                    break
                end
            end
        end
    end,
    joy_can_detach = function(self, card)
        return true
    end,
})
