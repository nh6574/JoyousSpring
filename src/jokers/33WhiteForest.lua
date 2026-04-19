--- WHITE FOREST
SMODS.Atlas({
    key = "wforest",
    path = "33WhiteForest.png",
    px = 71,
    py = 95
})

local wforest_get_tributes = function(args)
    args = args or {}
    local consumables_sets = {}
    if not args.exclude_tarots then consumables_sets[#consumables_sets + 1] = "Tarot" end
    if not args.exclude_planets then consumables_sets[#consumables_sets + 1] = "Planet" end
    if not args.exclude_spectrals then consumables_sets[#consumables_sets + 1] = "Spectral" end
    local consumables = #consumables_sets > 0 and JoyousSpring.get_consumable_set(consumables_sets) or {}

    local joker_sets = {}
    if not args.exclude_field_spell then joker_sets[#joker_sets + 1] = { is_field_spell = true } end
    if not args.exclude_traps then joker_sets[#joker_sets + 1] = { is_trap = true } end
    local jokers = #joker_sets > 0 and JoyousSpring.get_materials_owned(joker_sets, nil, true, true) or {}
    return SMODS.merge_lists({ consumables, jokers })
end

local wforest_get_set = function(card)
    if not card then return end
    return JoyousSpring.is_field_spell(card) and "Field" or JoyousSpring.is_trap_monster(card) and "Trap" or
        card.ability.set
end

local wforest_calculate = function(self, card, context, effects, exceptions)
    if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
        if context.joy_activate_effect and context.joy_activated_card == card then
            local materials = wforest_get_tributes(exceptions)
            if #materials >= 1 then
                JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
            end
        end
        if context.joy_exit_effect_selection and context.joy_card == card and
            #context.joy_selection == 1 and not card.ability.extra.active then
            local tributed = context.joy_selection[1]
            local set = wforest_get_set(tributed)
            if set then
                effects = effects or {}
                if effects[set] then
                    effects[set]()
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true
                    return {
                        message = localize("k_joy_activated_ex")
                    }
                end
            end
        end
    end
    if context.end_of_round and context.game_over == false and context.main_eval then
        card.ability.extra.active = nil
    end
end

local wforest_can_activate = function(card, exceptions)
    return not card.ability.extra.active and #wforest_get_tributes(exceptions) >= 1
end

local wforest_find_diabell = function()
    return SMODS.merge_lists { SMODS.find_card("j_joy_wforest_diabell"), JoyousSpring.get_banished_cards("j_joy_wforest_diabell") }
end

local wforest_count_spellcasters = function()
    return G.jokers and wforest_find_diabell() and
        JoyousSpring.count_set_tributed("Tarot", true) > 50 and
        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } }) or 0
end

local wforest_count_illusion = function()
    return G.jokers and wforest_find_diabell() and
        JoyousSpring.count_set_tributed("Joker", true, { is_field_spell = true }) > 20 and
        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Illusion" } }) or 0
end

local wforest_count_all_spellcasters = function()
    return JoyousSpring.count_materials_owned({ { monster_type = "Spellcaster" } }) + wforest_count_spellcasters()
end

local wforest_count_all_illusions_banished = function()
    return ((G.GAME.current_round.joy_cards_banished_by_type or {})["Illusion"] or 0) + wforest_count_illusion()
end

local wforest_add_booster_to_shop = function(seed)
    local pack = get_pack(seed, "Spectral").key
    if G.STATE == G.STATES.SHOP then
        SMODS.add_booster_to_shop(pack)
    else
        G.GAME.joy_extra_packs = G.GAME.joy_extra_packs or {}
        G.GAME.joy_extra_packs[#G.GAME.joy_extra_packs + 1] = pack
    end
end

-- Astellar of the White Forest
JoyousSpring.Joker({
    key = "wforest_astellar",
    atlas = 'wforest',
    pos = { x = 0, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local last_used_planet = JoyousSpring.get_last_used_consumable("Planet")
        local last_used_name = last_used_planet and
            localize { type = "name_text", set = "Planet", key = last_used_planet } or
            localize("k_none")
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * wforest_count_all_spellcasters(), last_used_name } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 5
        },
    },
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.active_mult then
                return {
                    mult = card.ability.extra.mult * wforest_count_all_spellcasters()
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            if card.ability.extra.active_material then
                for i = 1, 2 do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "WhiteForest" }, is_main_deck = true } }, self.key .. "_field")
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active_mult = nil
            card.ability.extra.active_material = nil
        end
        return wforest_calculate(self, card, context,
            {
                Trap = function()
                    for _, joker in ipairs(G.jokers.cards) do
                        if joker.facing == "front" and not JoyousSpring.is_monster_archetype(joker, "WhiteForest") then
                            JoyousSpring.flip(joker, card)
                        end
                    end
                end,
                Tarot = function()
                    card.ability.extra.active_mult = true
                end,
                Planet = function()
                    local last_used = JoyousSpring.get_last_used_consumable("Planet")
                    if last_used then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { key = last_used }
                                return true
                            end
                        }))
                    end
                end,
                Spectral = function()
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "WhiteForest" }, is_main_deck = true } }, self.key .. "_spectral")
                end,
                Field = function()
                    card.ability.extra.active_material = true
                end
            },
            {
                exclude_traps = JoyousSpring.count_materials_owned(
                    { { exclude_monster_archetypes = { "WhiteForest" } } }) <= 0,
                exclude_planets = not JoyousSpring.get_last_used_consumable("Planet")
            }
        )
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_mult = nil
        card.ability.extra.active_material = nil
    end,
    joy_can_activate = function(card)
        return wforest_can_activate(card, {
            exclude_traps = JoyousSpring.count_materials_owned({ { exclude_monster_archetypes = { "WhiteForest" } } }) <=
                0,
            exclude_planets = not JoyousSpring.get_last_used_consumable("Planet")
        })
    end,
})

-- Elzette of the White Forest
JoyousSpring.Joker({
    key = "wforest_elzette",
    atlas = 'wforest',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local last_used_tarot = JoyousSpring.get_last_used_consumable("Tarot")
        local last_used_name = last_used_tarot and
            localize { type = "name_text", set = "Planet", key = last_used_tarot } or
            localize("k_none")
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_set_tributed("Consumable"), last_used_name } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 3
        },
    },
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.active_mult then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_set_tributed("Consumable")
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            if card.ability.extra.active_material then
                JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "WhiteForest" } } })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active_mult = nil
            card.ability.extra.active_material = nil
        end
        return wforest_calculate(self, card, context,
            {
                Trap = function()
                    JoyousSpring.flip_all_cards(card, 'front', { G.jokers })
                end,
                Tarot = function()
                    card.ability.extra.active_mult = true
                end,
                Planet = function()
                    local last_used = JoyousSpring.get_last_used_consumable("Tarot")
                    if last_used then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { key = last_used }
                                return true
                            end
                        }))
                    end
                end,
                Spectral = function()
                    JoyousSpring.add_monster_tag_pseudorandom(
                        { { monster_archetypes = { "WhiteForest" } } }, self.key .. "_spectral")
                end,
                Field = function()
                    card.ability.extra.active_material = true
                end
            },
            {
                exclude_traps = JoyousSpring.count_materials_owned({ { facedown = true } }) <= 0,
                exclude_planets = not JoyousSpring.get_last_used_consumable("Tarot")
            }
        )
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_mult = nil
        card.ability.extra.active_material = nil
    end,
    joy_can_activate = function(card)
        return wforest_can_activate(card, {
            exclude_traps = JoyousSpring.count_materials_owned({ { facedown = true } }) <= 0,
            exclude_planets = not JoyousSpring.get_last_used_consumable("Tarot")
        })
    end,
})

-- Silvy of the White Forest
JoyousSpring.Joker({
    key = "wforest_silvy",
    atlas = 'wforest',
    pos = { x = 0, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local last_tributed = JoyousSpring.get_set_tributed("Consumable", true, true)
        local last_tributed_name = last_tributed and
            localize { type = "name_text", set = G.P_CENTERS[last_tributed].set, key = last_tributed } or
            localize("k_none")
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.get_flipped_count("Trap"), card.ability.extra.xmult, last_tributed_name } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 5,
            xmult = 1.5
        },
    },
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                mult = card.ability.extra.active_mult and
                    card.ability.extra.mult * JoyousSpring.get_flipped_count("Trap") or nil,
                xmult = card.ability.extra.active_xmult and card.ability.extra.xmult ^ wforest_count_spellcasters() or
                    nil
            }
        end
        if context.other_joker and card.ability.extra.active_xmult and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Spellcaster") then
            return {
                xmult = card.ability.extra.xmult,
                message_card = context.other_joker
            }
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            if card.ability.extra.active_material then
                JoyousSpring.create_summon({ key = "j_joy_wforest_silvy", edition = 'e_negative' })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active_mult = nil
            card.ability.extra.active_material = nil
            card.ability.extra.active_xmult = nil
        end
        return wforest_calculate(self, card, context,
            {
                Trap = function()
                    card.ability.extra.active_mult = true
                end,
                Tarot = function()
                    card.ability.extra.active_xmult = true
                end,
                Planet = function()
                    local last_tributed = JoyousSpring.get_set_tributed("Consumable", true, true)
                    if last_tributed then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { key = last_tributed }
                                return true
                            end
                        }))
                    end
                end,
                Spectral = function()
                    JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "WhiteForest" } } }, self.key, true)
                end,
                Field = function()
                    card.ability.extra.active_material = true
                end
            },
            {
                exclude_planets = not JoyousSpring.get_set_tributed("Consumable", true, true),
                exclude_spectrals = JoyousSpring.count_materials_in_graveyard(
                    { { monster_archetypes = { "WhiteForest" } } }, true) <= 0
            }
        )
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_mult = nil
        card.ability.extra.active_xmult = nil
        card.ability.extra.active_material = nil
    end,
    joy_can_activate = function(card)
        return wforest_can_activate(card, {
            exclude_planets = not JoyousSpring.get_set_tributed("Consumable", true, true),
            exclude_spectrals = JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "WhiteForest" } } },
                true) <= 0
        })
    end,
})

-- Rucia of the White Forest
JoyousSpring.Joker({
    key = "wforest_rucia",
    atlas = 'wforest',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_flip, card.ability.extra.mult_flip * JoyousSpring.get_flipped_count("Flip"), card.ability.extra.mult_illusion, card.ability.extra.mult_illusion * wforest_count_all_illusions_banished() } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult_flip = 5,
            mult_illusion = 10,
        },
    },
    calculate = function(self, card, context)
        if context.joker_main then
            return SMODS.merge_effects {
                {
                    mult = card.ability.extra.active_mult_flip and card.ability.extra.mult_flip * JoyousSpring.get_flipped_count("Flip") or nil
                },
                {
                    mult = card.ability.extra.active_mult_illusion and card.ability.extra.mult_illusion * wforest_count_all_illusions_banished() or nil
                },
            }
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            if card.ability.extra.active_material then
                JoyousSpring.create_summon({ key = "j_joy_wforest_rucia", edition = 'e_negative' })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active_material = nil
            card.ability.extra.active_mult_flip = nil
            card.ability.extra.active_mult_illusion = nil
        end
        return wforest_calculate(self, card, context,
            {
                Trap = function()
                    card.ability.extra.active_mult_flip = true
                end,
                Tarot = function()
                    card.ability.extra.active_mult_illusion = true
                end,
                Planet = function()
                    wforest_add_booster_to_shop(self.key .. "_booster")
                end,
                Spectral = function()
                    JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "WhiteForest" } } },
                        self.key .. "_spectral")
                end,
                Field = function()
                    card.ability.extra.active_material = true
                end
            }
        )
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_mult_flip = nil
        card.ability.extra.active_mult_illusion = nil
        card.ability.extra.active_material = nil
    end,
    joy_can_activate = function(card)
        return wforest_can_activate(card)
    end,
})

-- Poplar of the White Forest
JoyousSpring.Joker({
    key = "wforest_poplar",
    atlas = 'wforest',
    pos = { x = 0, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Illusion",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            summon_conditions = {
                {
                    type = "SYNCHRO",
                    materials = {
                        { is_tuner = true, monster_type = "Spellcaster", exclude_summon_types = { "XYZ", "LINK" } },
                        { min = 1,         exclude_tuners = true,        exclude_summon_types = { "XYZ", "LINK" } },
                    },
                },
                {
                    type = "SYNCHRO",
                    materials = {
                        { is_tuner = true,              exclude_summon_types = { "XYZ", "LINK" } },
                        { monster_type = "Spellcaster", exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        { optional = true,              exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                    },
                }
            }
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { is_main_deck = true, monster_archetypes = { "WhiteForest" } } })
            for i = 1, 2 do
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                            return true
                        end
                    }))
                end
            end
        end
        JoyousSpring.calculate_illusion_banish(card, context)
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if not from_debuff then
            for _, material in ipairs(materials or {}) do
                if type(material) == "table" and material.ability.joy_tributed then
                    for _, tributed in ipairs(material.ability.joy_tributed) do
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                local added_card = SMODS.create_card { key = tributed, edition = 'e_negative' }
                                SMODS.debuff_card(added_card, true, self.key)
                                if JoyousSpring.is_field_spell(added_card) then
                                    JoyousSpring.field_spell_area:emplace(added_card)
                                elseif added_card.ability.set == "Joker" then
                                    G.jokers:emplace(added_card)
                                else
                                    G.consumeables:emplace(added_card)
                                end
                                added_card:add_to_deck()
                                return true
                            end
                        }))
                    end
                end
            end
        end
    end,
})

-- Rciela, Sinister Soul of the White Forest
JoyousSpring.Joker({
    key = "wforest_rciela",
    atlas = 'wforest',
    pos = { x = 1, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult *
            wforest_count_all_illusions_banished() }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, monster_type = "Spellcaster", exclude_summon_types = { "XYZ", "LINK" } },
                            { min = 1,         exclude_tuners = true,        exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,              exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                            { optional = true,              exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            xmult = 1
        },
    },
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.active_xmult then
            return {
                xmult = (1 + card.ability.extra.xmult * wforest_count_all_illusions_banished()) ^
                    wforest_count_spellcasters()
            }
        end
        if context.other_joker and card.ability.extra.active_xmult and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Spellcaster") then
            return {
                xmult = 1 + card.ability.extra.xmult * wforest_count_all_illusions_banished(),
                message_card = context.other_joker
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active_xmult = nil
        end
        return wforest_calculate(self, card, context,
            {
                Trap = function()
                    JoyousSpring.create_pseudorandom({ { is_flip = true } }, self.key .. "_trap", false, nil,
                        "e_negative")
                end,
                Tarot = function()
                    JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "WhiteForest" } } },
                        self.key .. "_tarot")
                end,
                Planet = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { set = "Spectral", key_append = self.key .. "_planet" }
                            return true
                        end
                    }))
                end,
                Spectral = function()
                    card.ability.extra.active_xmult = true
                end,
                Field = function()
                    local tributed = JoyousSpring.get_set_tributed("Consumable")
                    for _, key in ipairs(tributed) do
                        local added_card = SMODS.create_card { key = key, edition = 'e_negative' }
                        SMODS.debuff_card(added_card, true, self.key)
                        G.consumeables:emplace(added_card)
                        added_card:add_to_deck()
                    end
                end
            },
            {
                exclude_field_spell = not JoyousSpring.get_set_tributed("Consumable"),
            }
        )
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_xmult = nil
    end,
    joy_can_activate = function(card)
        return wforest_can_activate(card, {
            exclude_field_spell = not JoyousSpring.get_set_tributed("Consumable"),
        })
    end,
})

-- Silvera, Wolf Tamer of the White Forest
JoyousSpring.Joker({
    key = "wforest_silvera",
    atlas = 'wforest',
    pos = { x = 2, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult * wforest_count_all_illusions_banished() }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, monster_type = "Spellcaster", exclude_summon_types = { "XYZ", "LINK" } },
                            { min = 1,         exclude_tuners = true,        exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,              exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                            { optional = true,              exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            mult = 25
        },
    },
    calculate = function(self, card, context)
        if context.joker_main and card.ability.extra.active_xmult then
            return {
                mult = card.ability.extra.mult * wforest_count_all_illusions_banished() *
                    wforest_count_spellcasters()
            }
        end
        if context.other_joker and card.ability.extra.active_mult and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Spellcaster") then
            return {
                mult = card.ability.extra.mult * wforest_count_all_illusions_banished(),
                message_card = context.other_joker
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active_mult = nil
        end
        return wforest_calculate(self, card, context,
            {
                Trap = function()
                    JoyousSpring.create_pseudorandom({ { is_trap = true } }, self.key .. "_trap", false, nil,
                        "e_negative")
                end,
                Tarot = function()
                    JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "WhiteForest" } } }, self.key .. "_tarot",
                        true)
                end,
                Planet = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { set = "Spectral", key_append = self.key .. "_planet" }
                            return true
                        end
                    }))
                end,
                Spectral = function()
                    card.ability.extra.active_mult = true
                end,
                Field = function()
                    for i = 1, 2 do
                        JoyousSpring.create_summon { key = "j_joy_wforest_witch", edition = "e_negative" }
                    end
                end
            },
            {
                exclude_tarot = JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "WhiteForest" } } },
                    true) <= 0,
            }
        )
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_mult = nil
    end,
    joy_can_activate = function(card)
        return wforest_can_activate(card, {
            exclude_tarot = JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "WhiteForest" } } },
                true) <= 0,
        })
    end,
})

-- Diabell, Queen of the White Forest
local diabell = JoyousSpring.Joker({
    key = "wforest_diabell",
    atlas = 'wforest',
    pos = { x = 2, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        local trap_count = JoyousSpring.count_set_tributed("Joker", true, { is_trap = true })
        local tarot_count = JoyousSpring.count_set_tributed("Tarot", true)
        local planet_count = JoyousSpring.count_set_tributed("Planet", true)
        local spectral_count = JoyousSpring.count_set_tributed("Spectral", true)
        local field_count = JoyousSpring.count_set_tributed("Joker", true, { is_field_spell = true })
        return {
            vars = {
                trap_count,
                tarot_count,
                math.floor(planet_count / 5),
                planet_count,
                card.ability.extra.xmult,
                1 + card.ability.extra.xmult * spectral_count,
                field_count,
                colours = {
                    trap_count >= 20 and G.C.UI.TEXT_DARK or G.C.UI.TEXT_INACTIVE,
                    trap_count >= 20 and G.C.FILTER or G.C.UI.TEXT_INACTIVE,
                    trap_count >= 20 and G.C.JOY.TRAP or G.C.UI.TEXT_INACTIVE,
                    trap_count >= 20 and G.C.JOY.EFFECT or G.C.UI.TEXT_INACTIVE,
                    tarot_count >= 50 and G.C.UI.TEXT_DARK or G.C.UI.TEXT_INACTIVE,
                    tarot_count >= 50 and G.C.FILTER or G.C.UI.TEXT_INACTIVE,
                    tarot_count >= 50 and G.C.SECONDARY_SET.Tarot or G.C.UI.TEXT_INACTIVE,
                    tarot_count >= 50 and G.C.JOY.NORMAL or G.C.UI.TEXT_INACTIVE,
                    field_count >= 20 and G.C.UI.TEXT_DARK or G.C.UI.TEXT_INACTIVE,
                    field_count >= 20 and G.C.FILTER or G.C.UI.TEXT_INACTIVE,
                    field_count >= 20 and G.C.JOY.SPELL or G.C.UI.TEXT_INACTIVE,
                    field_count >= 20 and G.C.JOY.NORMAL or G.C.UI.TEXT_INACTIVE,
                }
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                monster_type = "Illusion",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, monster_type = "Spellcaster", summon_type = "SYNCHRO" },
                            { min = 1,         exclude_tuners = true,        exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,              exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Spellcaster", exclude_tuners = true,                   summon_type = "SYNCHRO" },
                            { optional = true,              exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
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
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.count_set_tributed("Spectral", true)
                }
            end
        end
        JoyousSpring.calculate_illusion_banish(card, context)
    end,
    joy_prevent_trap_flip = function(self, card, other_card)
        return other_card.facing == 'front' and JoyousSpring.count_set_tributed("Joker", true, { is_trap = true }) >= 20
    end,
    joy_flip_effect_active = function(self, card, other_card)
        return JoyousSpring.is_trap_monster(other_card) and
            JoyousSpring.count_set_tributed("Joker", true, { is_trap = true }) >= 20
    end,
})

JoyousSpring.calculate_effects[#JoyousSpring.calculate_effects + 1] = {
    key = "wforest_diabell",
    center = diabell,
    is_active = function(self, func)
        return not not next(wforest_find_diabell())
    end,
    calculate = function(self, context)
        if context.main_scoring then
            local ret = {}
            local xmult = 1 + self.center.config.extra.xmult * JoyousSpring.count_set_tributed("Spectral", true)
            for i = 1, #JoyousSpring.get_banished_cards("j_joy_wforest_diabell") do
                ret[#ret + 1] = {
                    xmult = xmult
                }
            end
            return SMODS.merge_effects(ret)
        end
    end,
    joy_prevent_trap_flip = function(self, other_card)
        return other_card.facing == 'front' and JoyousSpring.count_set_tributed("Joker", true, { is_trap = true }) >= 20
    end,
    joy_flip_effect_active = function(self, other_card)
        return JoyousSpring.is_trap_monster(other_card) and
            JoyousSpring.count_set_tributed("Joker", true, { is_trap = true }) >= 20
    end,
}

local level_up_hand_ref = level_up_hand
function level_up_hand(card, hand, instant, amount, statustext, ...)
    if card and card.ability.set == "Planet" and wforest_find_diabell() then
        amount = (amount or 1) +
            (math.floor(JoyousSpring.count_set_tributed("Planet", true) / 5) * #wforest_find_diabell())
    end
    return level_up_hand_ref(card, hand, instant, amount, statustext, ...)
end

-- Witch of the White Forest
JoyousSpring.Joker({
    key = "wforest_witch",
    atlas = 'wforest',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["WhiteForest"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned({ { monster_type = "Spellcaster" } }, nil, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes and not card.ability.extra.active then
                JoyousSpring.tribute(card, context.joy_selection)

                card.ability.extra.active = true
                JoyousSpring.create_pseudorandom({ { is_main_deck = true, monster_archetypes = { "WhiteForest" } } },
                    self.key, true)
            end
        end
        if context.joy_tributed_self then
            wforest_add_booster_to_shop(self.key .. "_booster")
            G.E_MANAGER:add_event(Event({
                func = function()
                    JoyousSpring.add_monster_tag("j_joy_wforest_witch")
                    return true
                end
            }))
        end
    end,
    joy_can_activate = function(card)
        return #G.jokers.cards < G.jokers.config.card_limit and
            JoyousSpring.count_materials_owned({ { monster_type = "Spellcaster" } }, nil, true) > 0
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "wforest" },
    label = "k_joy_archetype_wforest"
}
