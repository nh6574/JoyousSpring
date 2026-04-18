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

-- Astellar of the White Forest
JoyousSpring.Joker({
    key = "wforest_astellar",
    atlas = 'wforest',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        local last_used_planet = JoyousSpring.get_last_used_consumable("Planet")
        local last_used_name = last_used_planet and
            localize { type = "name_text", set = "Planet", key = last_used_planet } or
            localize("k_none")
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { monster_type = "Spellcaster" } }), last_used_name } }
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
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = wforest_get_tributes {
                    exclude_traps = JoyousSpring.count_materials_owned({ { exclude_monster_archetypes = { "WhiteForest" } } }, nil, true) <= 0,
                    exclude_planets = not JoyousSpring.get_last_used_consumable("Planet")
                }
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes and not card.ability.extra.active then
                local tributed = context.joy_selection[1]
                local set = wforest_get_set(tributed)
                if set then
                    JoyousSpring.tribute(card, context.joy_selection)
                end
                card.ability.extra.active = true

                local effects = ({
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
                })
                if effects[set] then
                    effects[set]()
                    return {
                        message = localize("k_joy_activated_ex")
                    }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
            card.ability.extra.active_mult = nil
            card.ability.extra.active_material = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
        card.ability.extra.active_mult = nil
        card.ability.extra.active_material = nil
    end,
    joy_can_activate = function(card)
        return wforest_get_tributes {
            exclude_traps = JoyousSpring.count_materials_owned({ { exclude_monster_archetypes = { "WhiteForest" } } }, nil, true) <= 0,
            exclude_planets = not JoyousSpring.get_last_used_consumable("Planet")
        } >= 1
    end,
})

-- Elzette of the White Forest
JoyousSpring.Joker({
    key = "wforest_elzette",
    atlas = 'wforest',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_set_tributed("Consumable") } }
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
})

-- Silvy of the White Forest
JoyousSpring.Joker({
    key = "wforest_silvy",
    atlas = 'wforest',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.xmult } }
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
})

-- Rucia of the White Forest
JoyousSpring.Joker({
    key = "wforest_rucia",
    atlas = 'wforest',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_flip, 0, card.ability.extra.mult_illusion, 0 } }
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
})

-- Poplar of the White Forest
JoyousSpring.Joker({
    key = "wforest_poplar",
    atlas = 'wforest',
    pos = { x = 0, y = 2 },
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
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Illusion",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
        },
    },
})

-- Rciela, Sinister Soul of the White Forest
JoyousSpring.Joker({
    key = "wforest_rciela",
    atlas = 'wforest',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 } }
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
                monster_archetypes = { ["WhiteForest"] = true }
            },
            xmult = 1
        },
    },
})

-- Silvera, Wolf Tamer of the White Forest
JoyousSpring.Joker({
    key = "wforest_silvera",
    atlas = 'wforest',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
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
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 25
        },
    },
})

-- Diabell, Queen of the White Forest
JoyousSpring.Joker({
    key = "wforest_diabell",
    atlas = 'wforest',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 } }
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
                monster_archetypes = { ["WhiteForest"] = true }
            },
            xmult = 0.1
        },
    },
})

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
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "wforest" },
    label = "k_joy_archetype_wforest"
}
