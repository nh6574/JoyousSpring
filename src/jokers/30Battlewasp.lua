--- BATTLEWASP
SMODS.Atlas({
    key = "wasp",
    path = "30Battlewasp.png",
    px = 71,
    py = 95
})

---@param properties material_properties[]
local count_owned_insects = function(properties)
    if next(SMODS.find_card("j_joy_bee_saturnas")) then
        return JoyousSpring.count_all_materials(properties)
    end
    return JoyousSpring.count_materials_owned(properties)
end

local bee_bypass_room_check = function(card, from_booster)
    return JoyousSpring.count_materials_owned({ { monster_type = "Insect" } }) > 0
end

-- Battlewasp - Pin the Bullseye
SMODS.Joker({
    key = "wasp_pin",
    atlas = 'wasp',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * count_owned_insects({ { monster_archetypes = { "Battlewasp" } } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true }
            },
            mult = 20
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * count_owned_insects({ { monster_archetypes = { "Battlewasp" } } }),
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.E_MANAGER:add_event(Event({
                func = function()
                    if not card.joy_from_pin then
                        local added_card = SMODS.add_card { key = "j_joy_wasp_pin" }
                        added_card.joy_from_pin = true
                    end
                    return true
                end
            }))
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Insect" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Battlewasp - Dart the Hunter
SMODS.Joker({
    key = "wasp_dart",
    atlas = 'wasp',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                is_all_materials = { SYNCHRO = true },
                monster_archetypes = { ["Battlewasp"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) then
                JoyousSpring.create_pseudorandom({ { monster_type = "Insect", is_main_deck = true } },
                    self.key)
            end
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Insect" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Battlewasp - Sting the Poison
SMODS.Joker({
    key = "wasp_sting",
    atlas = 'wasp',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_materials_owned({ { monster_type = "Insect" } }, nil, true)
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection >= 1 then
                    JoyousSpring.tribute(card, context.joy_selection)
                    G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
                    calculate_reroll_cost(true)
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return JoyousSpring.count_materials_owned({ { monster_type = "Insect" } }, nil, true) > 0
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.add_to_extra_deck_pseudorandom(
                { { monster_archetypes = { "Battlewasp" } } }, card.config.center.key, true)
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check,
})

-- Battlewasp - Twinbow the Attacker
SMODS.Joker({
    key = "wasp_twinbow",
    atlas = 'wasp',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                is_all_materials = { SYNCHRO = true },
                monster_archetypes = { ["Battlewasp"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                for i = 1, 2 do
                    JoyousSpring.add_monster_tag("j_joy_wasp_twinbow")
                end
            end
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check,
})

-- Battlewasp - Arbalest the Rapidfire
SMODS.Joker({
    key = "wasp_arbalest",
    atlas = 'wasp',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                is_all_materials = { SYNCHRO = true },
                monster_archetypes = { ["Battlewasp"] = true }
            },
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.revive_pseudorandom({ { monster_type = "Insect" } }, self.key, true)
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check,
})

-- Battlewasp - Rapier the Onslaught
SMODS.Joker({
    key = "wasp_rapier",
    atlas = 'wasp',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card,
            1 + count_owned_insects({ { monster_archetypes = { "Battlewasp" } } }), card.ability.extra.odds, self.key)
        return { vars = { numerator, denominator } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                is_all_materials = { SYNCHRO = true },
                monster_archetypes = { ["Battlewasp"] = true }
            },
            odds = 100
        },
    },
    joy_bypass_room_check = bee_bypass_room_check,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.repetition and context.cardarea == G.play and SMODS.pseudorandom_probability(other_card, self.key, 1 + count_owned_insects({ { monster_archetypes = { "Battlewasp" } } }), config.odds) then
                return { repetitions = 1 }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            odds = 100
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local numerator, denominator = SMODS.get_probability_vars(other_card,
            1 + count_owned_insects({ { monster_archetypes = { "Battlewasp" } } }), config.odds, self.key)
        return { vars = { numerator, denominator } }
    end
})

-- Battlewasp - Azusa the Ghost Bow
SMODS.Joker({
    key = "wasp_azusa",
    atlas = 'wasp',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent * 100, math.min(0.5, card.ability.extra.percent * count_owned_insects({ { monster_type = "Insect" } })) * 100 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,         exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Insect", exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    restrictions = {
                        no_room = true
                    }
                }
            },
            percent = 0.005,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                    G.GAME.blind.chips *
                    math.min(0.5, card.ability.extra.percent * count_owned_insects({ { monster_type = "Insect" } })))
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                return {
                    message = localize("k_active_ex")
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.banish(other_card, "blind_selected")
            end
        end
    end,
})

-- Battlewasp - Halberd the Charge
SMODS.Joker({
    key = "wasp_halberd",
    atlas = 'wasp',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       monster_type = "Insect",                 exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    restrictions = {
                        no_room = true
                    }
                }
            },
            xmult = 2,
            mult = 10
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Insect") and (JoyousSpring.is_extra_deck_monster(context.other_joker) or JoyousSpring.is_summon_type(context.other_joker, "RITUAL")) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return { mult = config.mult * count_owned_insects({ { monster_type = "Insect" } }) }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 10
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * count_owned_insects({ { monster_type = "Insect" } }) } }
    end
})

-- Battlewasp - Sachi the Ceremonial Bow
SMODS.Joker({
    key = "wasp_sachi",
    atlas = 'wasp',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.money_transfer } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       monster_type = "Insect",                 exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    restrictions = {
                        no_room = true
                    }
                }
            },
            money = 1,
            money_transfer = 1
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                return {
                    dollars = card.ability.extra.money * count_owned_insects({ { monster_type = "Insect" } })
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if context.ante_change and context.ante_end then
            config.end_of_ante = true
        end
    end,
    joy_transfer_calc_dollar_bonus = function(self, other_card, config)
        if config.end_of_ante then
            local amount = config.money * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Insect" } })
            config.end_of_ante = nil
            return amount > 0 and amount or nil
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            money = 1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.money, config.money * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Insect" } }) } }
    end
})

-- Battlewasp - Hama the Conquering Bow
SMODS.Joker({
    key = "wasp_hama",
    atlas = 'wasp',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.extra_mult,
                card.ability.extra.mult_transfer,
                colours = card.ability.extra.used_synchro and { G.C.MULT, G.C.UI.TEXT_DARK, G.C.JOY.SYNCHRO, G.C.FILTER }
                    or { G.C.UI.TEXT_INACTIVE, G.C.UI.TEXT_INACTIVE, G.C.UI.TEXT_INACTIVE, G.C.UI.TEXT_INACTIVE }
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,         monster_type = "Insect", exclude_summon_types = { "XYZ", "LINK" } },
                            { summon_type = "SYNCHRO", exclude_tuners = true },
                        },
                    },
                    restrictions = {
                        no_room = true
                    }
                }
            },
            mult = 25,
            extra_mult = 50,
            mult_transfer = 75
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult +
                        (card.ability.extra.used_synchro and card.ability.extra.extra_mult or 0)
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for _, key in ipairs(JoyousSpring.get_materials(card)) do
                if JoyousSpring.is_material_center(key, { summon_type = "SYNCHRO" }) then
                    card.ability.extra.used_synchro = true
                    break
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return { mult = config.mult }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 75
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult } }
    end
})

-- Battlewasp - Ballista the Armageddon
SMODS.Joker({
    key = "wasp_ballista",
    atlas = 'wasp',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,         monster_type = "Insect",                 exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true,   exclude_summon_types = { "XYZ", "LINK" } },
                            { summon_type = "SYNCHRO", exclude_tuners = true },
                        },
                    },
                    restrictions = {
                        no_room = true
                    }
                }
            },
            mult = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0)
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(JoyousSpring.get_materials_owned({ { monster_archetypes = { "Battlewasp" } } })) do
                    JoyousSpring.banish(joker, "blind_selected")
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return { mult = config.mult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0) }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 5
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0) } }
    end
})

-- Battlewasp - Grand Partisan the Revolution
SMODS.Joker({
    key = "wasp_partisan",
    atlas = 'wasp',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Battlewasp" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Battlewasp"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,         monster_type = "Insect", exclude_summon_types = { "XYZ", "LINK" } },
                            { summon_type = "SYNCHRO", exclude_tuners = true },
                            { min = 2,                 exclude_tuners = true,   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    restrictions = {
                        no_room = true
                    }
                }
            },
            xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0)
                }
            end
        end
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) then
                JoyousSpring.add_to_extra_deck("j_joy_wasp_azusa")
                JoyousSpring.add_to_extra_deck("j_joy_wasp_halberd")
                JoyousSpring.add_to_extra_deck("j_joy_wasp_sachi")
                JoyousSpring.add_to_extra_deck("j_joy_wasp_hama")
                JoyousSpring.add_to_extra_deck("j_joy_wasp_ballista")
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_monster_type(other_card, "Insect")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return { xmult = 1 + config.xmult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0) }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 0.1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.xmult, 1 + config.xmult * ((G.GAME.joy_cards_banished_by_type or {})["Insect"] or 0) } }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "wasp" },
    label = "k_joy_archetype_wasp"
}
