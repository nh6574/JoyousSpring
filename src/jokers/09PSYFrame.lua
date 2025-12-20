--- PSY-FRAME
SMODS.Atlas({
    key = "PSYFrame",
    path = "09PSYFrame.png",
    px = 71,
    py = 95
})

-- PSY-Frame Driver
SMODS.Joker({
    key = "psy_driver",
    atlas = 'PSYFrame',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 1,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
        end
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
        },
    },
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
})

-- PSY-Framegear Alpha
SMODS.Joker({
    key = "psy_alpha",
    atlas = 'PSYFrame',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
            cards_to_create = 1,
            xmult = 1.1,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_pre_setting_blind then
                local _, driver = next(SMODS.find_card("j_joy_psy_driver", true))
                if not driver then
                    _, driver = next(SMODS.find_card("j_joy_psy_multithreader", true))
                end
                if driver then
                    JoyousSpring.banish(driver, "end_of_round", nil, true)
                    card.ability.extra.active = true
                elseif next(SMODS.find_card("j_joy_psy_lambda")) then
                    card.ability.extra.active = true
                end
            end
            if card.ability.extra.active and context.individual and context.cardarea == G.hand then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.cards_to_create do
                JoyousSpring.create_summon({
                    key = "j_joy_psy_driver"
                }, true)
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
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                local playing_hand = next(G.play.cards)
                local count = 0
                if card.ability.extra.active then
                    for _, playing_card in ipairs(G.hand.cards) do
                        if playing_hand or not playing_card.highlighted then
                            if not (playing_card.facing == 'back') and not playing_card.debuff then
                                count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                            end
                        end
                    end
                end
                card.joker_display_values.x_mult = card.ability.extra.xmult ^ count
            end
        }
    end
})

-- PSY-Framegear Beta
SMODS.Joker({
    key = "psy_beta",
    atlas = 'PSYFrame',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
            cards_to_create = 1,
            xmult = 1.5,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_pre_setting_blind then
                local _, driver = next(SMODS.find_card("j_joy_psy_driver", true))
                if not driver then
                    _, driver = next(SMODS.find_card("j_joy_psy_multithreader", true))
                end
                if driver then
                    JoyousSpring.banish(driver, "end_of_round", nil, true)
                    card.ability.extra.active = true
                elseif next(SMODS.find_card("j_joy_psy_lambda")) then
                    card.ability.extra.active = true
                end
            end
            if card.ability.extra.active and context.individual and context.cardarea == G.play then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.cards_to_create do
                JoyousSpring.create_summon({
                    key = "j_joy_psy_driver"
                }, true)
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
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                local count = 0
                local text, _, scoring_hand = JokerDisplay.evaluate_hand()
                if card.ability.extra.active and text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if not scoring_card.debuff then
                            count = count + JokerDisplay.calculate_card_triggers(scoring_card, nil, true)
                        end
                    end
                end
                card.joker_display_values.x_mult = card.ability.extra.xmult ^ count
            end
        }
    end
})

-- PSY-Framegear Gamma
SMODS.Joker({
    key = "psy_gamma",
    atlas = 'PSYFrame',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
            cards_to_create = 1,
            xmult = 1.2,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_pre_setting_blind then
                local _, driver = next(SMODS.find_card("j_joy_psy_driver", true))
                if not driver then
                    _, driver = next(SMODS.find_card("j_joy_psy_multithreader", true))
                end
                if driver then
                    JoyousSpring.banish(driver, "end_of_round", nil, true)
                    card.ability.extra.active = true
                elseif next(SMODS.find_card("j_joy_psy_lambda")) then
                    card.ability.extra.active = true
                end
            end
            if card.ability.extra.active and context.other_joker then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.cards_to_create do
                JoyousSpring.create_summon({
                    key = "j_joy_psy_driver"
                }, true)
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                return {
                    x_mult = mod_joker.ability.extra.active and
                        mod_joker.ability.extra.xmult ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
})

-- PSY-Framegear Delta
SMODS.Joker({
    key = "psy_delta",
    atlas = 'PSYFrame',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
            cards_to_create = 1,
            xmult = 2,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_pre_setting_blind then
                local _, driver = next(SMODS.find_card("j_joy_psy_driver", true))
                if not driver then
                    _, driver = next(SMODS.find_card("j_joy_psy_multithreader", true))
                end
                if driver then
                    JoyousSpring.banish(driver, "end_of_round", nil, true)
                    card.ability.extra.active = true
                elseif next(SMODS.find_card("j_joy_psy_lambda")) then
                    card.ability.extra.active = true
                end
            end
            if card.ability.extra.active and context.other_consumeable and context.other_consumeable.ability.set == "Tarot" then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.cards_to_create do
                JoyousSpring.create_summon({
                    key = "j_joy_psy_driver"
                }, true)
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
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                local count = 0
                if card.ability.extra.active then
                    for _, consumable in pairs(G.consumeables.cards) do
                        if consumable.ability.set == "Tarot" then
                            count = count + 1
                        end
                    end
                end
                card.joker_display_values.x_mult = card.ability.extra.xmult ^ count
            end
        }
    end
})

-- PSY-Framegear Epsilon
SMODS.Joker({
    key = "psy_epsilon",
    atlas = 'PSYFrame',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
            cards_to_create = 1,
            xmult = 2,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_pre_setting_blind then
                local _, driver = next(SMODS.find_card("j_joy_psy_driver", true))
                if not driver then
                    _, driver = next(SMODS.find_card("j_joy_psy_multithreader", true))
                end
                if driver then
                    JoyousSpring.banish(driver, "end_of_round", nil, true)
                    card.ability.extra.active = true
                elseif next(SMODS.find_card("j_joy_psy_lambda")) then
                    card.ability.extra.active = true
                end
            end
            if card.ability.extra.active and context.other_consumeable and context.other_consumeable.ability.set == "Planet" then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.cards_to_create do
                JoyousSpring.create_summon({
                    key = "j_joy_psy_driver"
                }, true)
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
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                local count = 0
                if card.ability.extra.active then
                    for _, consumable in pairs(G.consumeables.cards) do
                        if consumable.ability.set == "Planet" then
                            count = count + 1
                        end
                    end
                end
                card.joker_display_values.x_mult = card.ability.extra.xmult ^ count
            end
        }
    end
})

-- PSY-Frame Multi-Threader
SMODS.Joker({
    key = "psy_multithreader",
    atlas = 'PSYFrame',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true }
            },
            cards_to_create = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_returned and context.joy_returned_card == card then
                for i = 1, card.ability.extra.cards_to_create do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "PSYFrame" }, is_main_deck = true, is_effect = true, exclude_keys = { "j_joy_psy_multithreader" } } },
                        'j_joy_psy_multithreader', true)
                end
            end
        end
    end,
})

-- PSY-Framelord Zeta
SMODS.Joker({
    key = "psy_zeta",
    atlas = 'PSYFrame',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1,      exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            banishes = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = {}
                for _, consumable in ipairs(G.consumeables.cards) do
                    table.insert(choices, consumable)
                end
                for i = 1, card.ability.extra.banishes do
                    if #choices > 0 then
                        local to_banish, pos = pseudorandom_element(choices, 'j_joy_psy_zeta')
                        if to_banish then
                            JoyousSpring.banish(to_banish, "blind_selected")
                        end
                        table.remove(choices, pos)
                    end
                end
            end
        end
    end,
})

-- PSY-Framelord Omega
SMODS.Joker({
    key = "psy_omega",
    atlas = 'PSYFrame',
    pos = { x = 0, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1,      exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card then
                        table.insert(choices, joker)
                    end
                end
                local to_banish = pseudorandom_element(choices, 'j_joy_psy_omega')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
        end
    end,
})

-- PSY-Framelord Lambda
SMODS.Joker({
    key = "psy_lambda",
    atlas = 'PSYFrame',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Psychic",
                monster_archetypes = { ["PSYFrame"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { exclude_tokens = true },
                            { exclude_tokens = true },
                        },
                    }
                }
            },
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_returned and JoyousSpring.is_monster_type(context.joy_returned_card, "Psychic") then
                local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "PSYFrame" }, is_extra_deck = true, exclude_keys = { "j_joy_psy_lambda" } } })

                for i = 1, card.ability.extra.cards_to_create do
                    local key_to_add, _ = pseudorandom_element(choices, 'j_joy_psy_lambda')
                    if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                        JoyousSpring.add_to_extra_deck(key_to_add)
                    end
                end
            end
        end
    end,
})

-- PSY-Frame Circuit
SMODS.Joker({
    key = "psy_circuit",
    atlas = 'PSYFrame',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "PSYFrame" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["PSYFrame"] = true },
            },
            money = 10,
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            return {
                dollars = card.ability.extra.money
            }
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff then
            if JoyousSpring.is_monster_type(added_card, "Psychic") and JoyousSpring.is_summon_type(added_card, "SYNCHRO") and JoyousSpring.is_summoned(added_card) then
                if not added_card.edition then
                    added_card:set_edition("e_negative")
                end
            end
        end
    end,
})


JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "psy" },
    label = "k_joy_archetype_psy"
}
