--- CENTUR-ION
SMODS.Atlas({
    key = "centur",
    path = "32CenturIon.png",
    px = 71,
    py = 95
})

-- Centur-Ion Primera
JoyousSpring.Joker({
    key = "centur_primera",
    atlas = 'centur',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["CenturIon"] = true }
            },
            mult = 20
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local legatias = SMODS.find_card("j_joy_centur_legatia")
                return {
                    mult = card.ability.extra.mult,
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "j_joy_centur_primera", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                    return true
                end
            }))

            JoyousSpring.add_monster_tag_pseudorandom({ { is_extra_deck = true, monster_archetypes = { "CenturIon" } } },
                self.key)
        end
    end,
    joy_prevent_flip = function(self, card, other_card)
        return other_card.facing == "front" and card.area and card.area == JoyousSpring.side_deck_area and
            JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "joy_prevent_flip" or
            (calc_func == "calculate" and next(SMODS.find_card("j_joy_centur_legatia")))
    end
})

local mod_set_debuff_ref = SMODS.current_mod.set_debuff or function() end
SMODS.current_mod.set_debuff = function(card)
    if JoyousSpring.is_summon_type(card, "SYNCHRO") then
        local has_primera = false
        for _, joker in ipairs(JoyousSpring.side_deck_area.cards) do
            if joker.config.center.key == "j_joy_centur_primera" and JoyousSpring.can_use_abilities(joker) then
                has_primera = true
                break
            end
        end
        return has_primera and "prevent_debuff" or nil
    end
    return mod_set_debuff_ref(card)
end

-- Centur-Ion Atrii
JoyousSpring.Joker({
    key = "centur_atrii",
    atlas = 'centur',
    pos = { x = 0, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                is_all_materials = { SYNCHRO = true },
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            chips = 80,
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips,
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "j_joy_centur_atrii", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                    return true
                end
            }))
            G.hand:change_size(card.ability.extra.h_size)
            G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                card.ability.extra.h_size
        end
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "calculate" and next(SMODS.find_card("j_joy_centur_legatia"))
    end
})

-- Centur-Ion Chimerea
JoyousSpring.Joker({
    key = "centur_chimerea",
    atlas = 'centur',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Pyro",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            money = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    dollars = card.ability.extra.money,
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "j_joy_centur_chimerea", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                    return true
                end
            }))
            JoyousSpring.add_monster_tag_pseudorandom({ { is_main_deck = true, monster_archetypes = { "CenturIon" } } },
                self.key)
        end
    end,
    joy_modify_cost = function(self, card, other_card)
        if card.area == JoyousSpring.side_deck_area and JoyousSpring.is_summon_type(other_card, "SYNCHRO") then
            other_card.cost = 0
        end
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "joy_modify_cost" or
            (calc_func == "calculate" and next(SMODS.find_card("j_joy_centur_legatia")))
    end
})

-- Centur-Ion Trudea
JoyousSpring.Joker({
    key = "centur_trudea",
    atlas = 'centur',
    pos = { x = 1, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Pyro",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "j_joy_centur_trudea", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                    return true
                end
            }))
            JoyousSpring.add_monster_tag("j_joy_centur_standup")
        end
    end,
    joy_prevent_flip = function(self, card, other_card)
        return other_card.facing == "front" and card.area and card.area == JoyousSpring.side_deck_area and
            JoyousSpring.is_monster_archetype(other_card, "CenturIon")
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "joy_prevent_flip" or
            (calc_func == "calculate" and next(SMODS.find_card("j_joy_centur_legatia")))
    end
})

-- Centur-Ion Gargoyle II
JoyousSpring.Joker({
    key = "centur_gargoyle",
    atlas = 'centur',
    pos = { x = 3, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            xchips = 2,
            xmult = 1.2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "j_joy_centur_gargoyle", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                    return true
                end
            }))
            JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "CenturIon" } } }, self.key, true)
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and context.other_joker.ability.perishable then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
            if card.area == JoyousSpring.side_deck_area and not next(SMODS.find_card("j_joy_centur_legatia")) then return end
            if context.joker_main then
                return {
                    xchips = card.ability.extra.xchips,
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "calculate"
    end
})

-- Centur-Ion Emeth VI
JoyousSpring.Joker({
    key = "centur_emeth",
    atlas = 'centur',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["CenturIon"] = true }
            },
            mult = 6
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "j_joy_centur_emeth", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                    return true
                end
            }))
            JoyousSpring.send_to_graveyard_pseudorandom({ { monster_archetypes = { "CenturIon" } } }, self.key, 2)
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and
                JoyousSpring.is_summon_type(context.other_joker, "SYNCHRO") then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "CenturIon" } } }),
                    message_card = context.other_joker
                }
            end
            if card.area == JoyousSpring.side_deck_area and not next(SMODS.find_card("j_joy_centur_legatia")) then return end
            if context.repetition and context.cardarea == G.play and context.other_card == context.scoring_hand[1] then
                return {
                    repetitions = 2,
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "calculate"
    end
})

-- Centur-Ion Primera Primus
JoyousSpring.Joker({
    key = "centur_primus",
    atlas = 'centur',
    pos = { x = 0, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("SYNCHRO") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["CenturIon"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                }
            },
            xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("SYNCHRO"),
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { summon_type = "SYNCHRO" } }, false, true)
                local index
                for i, material in ipairs(materials) do
                    if material == card then
                        index = i
                        break
                    end
                end
                if not index then return end
                table.remove(materials, index)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 and not card.ability.eternal then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.tribute(card, { card })
                for i = 1, 2 do
                    JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "CenturIon" } } }, self.key,
                        nil, nil, { stickers = { "perishable" } })
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.eternal then return false end
        local materials = JoyousSpring.get_materials_owned(
            { { summon_type = "SYNCHRO" } }, false, true)
        return #materials >= 2
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "calculate" and next(SMODS.find_card("j_joy_centur_legatia"))
    end
})

-- Centur-Ion Auxila
JoyousSpring.Joker({
    key = "centur_auxila",
    atlas = 'centur',
    pos = { x = 1, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * (JoyousSpring.side_deck_area and #JoyousSpring.side_deck_area.cards or 0) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    },
                }
            },
            xmult = 0.25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 +
                        card.ability.extra.xmult *
                        (JoyousSpring.side_deck_area and #JoyousSpring.side_deck_area.cards or 0),
                    message_card = card.area == JoyousSpring.side_deck_area and
                        SMODS.find_card("j_joy_centur_legatia")[1] or nil
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "CenturIon" }, is_main_deck = true } })
            local choice, _ = pseudorandom_element(choices, self.key .. "_create")
            if choice then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                        return true
                    end
                }))
            end
            JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "CenturIon" } } }, self.key)
        end
    end,
    joy_can_calculate_in_side = function(self, card, calc_func)
        return calc_func == "calculate" and next(SMODS.find_card("j_joy_centur_legatia"))
    end
})

-- Centur-Ion Legatia
JoyousSpring.Joker({
    key = "centur_legatia",
    atlas = 'centur',
    pos = { x = 3, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["CenturIon"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       summon_type = "SYNCHRO" },
                            { exclude_tuners = true, summon_type = "SYNCHRO" },
                        },
                    },
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.return_to_extra_deck(card)
                G.GAME.joy_skip_side = true
            end
        end
    end,
})

-- Stand Up Centur-Ion!
JoyousSpring.Joker({
    key = "centur_standup",
    atlas = 'centur',
    pos = { x = 2, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["CenturIon"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_summon and not card.ability.extra.active then
                card.ability.extra.active = true
                for _, joker in ipairs(context.joy_summon_materials) do
                    local key = type(joker) == "string" and joker or joker.config.center.key
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = key, area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                            return true
                        end
                    }))
                end
                return {
                    message = localize("k_joy_add")
                }
            end
            if context.joy_perish then
                local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "CenturIon" }, is_main_deck = true } })
                local choice, _ = pseudorandom_element(choices, self.key .. "_create")
                if choice then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
                            return true
                        end
                    }))
                    return {
                        message = localize("k_joy_add")
                    }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "centur" },
    label = "k_joy_archetype_centur"
}
