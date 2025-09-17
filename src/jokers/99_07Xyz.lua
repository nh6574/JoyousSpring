--- XYZ FREE AGENTS

-- Divine Arsenal AA-ZEUS - Sky Thunder
SMODS.Joker({
    key = "zeus",
    atlas = 'Misc03',
    pos = { x = 1, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    update = JoyousSpring.update_counter,
    set_sprites = JoyousSpring.set_back_sprite,
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
SMODS.Joker({
    key = "typhon",
    atlas = 'Misc03',
    pos = { x = 2, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    update = JoyousSpring.update_counter,
    set_sprites = JoyousSpring.set_back_sprite,
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
SMODS.Joker({
    key = "67",
    atlas = 'Misc05',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            self.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.from, card.ability.extra.to, numerator, denominator, card.ability.extra.attach } }
    end,
    update = JoyousSpring.update_counter,
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
SMODS.Joker({
    key = "85",
    atlas = 'Misc05',
    pos = { x = 3, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.plus_h_size, card.ability.extra.minus_h_size, numerator, denominator, card.ability.extra.attach } }
    end,
    update = JoyousSpring.update_counter,
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
SMODS.Joker({
    key = "igniter",
    atlas = 'Misc03',
    pos = { x = 3, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("RITUAL"), card.ability.extra.detach, card.ability.extra.adds } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
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
                local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "RITUAL" } })
                for i = 1, card.ability.extra.adds do
                    key_to_add = pseudorandom_element(choices, card.config.center.key)
                    JoyousSpring.add_monster_tag(key_to_add or "j_joy_sauravis")
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
