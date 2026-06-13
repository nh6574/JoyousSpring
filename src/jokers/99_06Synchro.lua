--- SYNCHRO FREE AGENTS

-- Firewall Saber Dragon
JoyousSpring.Joker({
    key = "firewall_saber",
    atlas = 'Misc01',
    pos = { x = 4, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revives, card.ability.extra.creates } }
    end,
    joy_glossary = { "revive", "enter", "material", "link" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = { ["Firewall"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { monster_type = "Cyberse", is_tuner = true,                         exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true,    exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            revives = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "LINK") then
            for i = 1, card.ability.extra.creates do
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card({
                            set = "Spectral",
                            edition = "e_negative",
                            key_append = self.key .. "_spectral"
                        })
                        return true
                    end
                }))
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { is_extra_deck = true, monster_type = "Cyberse" } },
                    "j_joy_firewall_saber", false, "e_negative")
            end
        end
    end
})

-- Phantasmal Lord Ultimitl Bishbaalkin
JoyousSpring.Joker({
    key = "bishbaalkin",
    atlas = 'Misc02',
    pos = { x = 6, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { exclude_debuffed = true } }) } }
    end,
    joy_glossary = { "token" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "DARK",
                monster_type = "Dragon",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, rarity = 3,                              exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            mult = 100
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_materials_owned({ { exclude_debuffed = true } })
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                local count = 0
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and not SMODS.is_eternal(joker, card) and not joker.getting_sliced and not joker.debuff and joker.config.center.key ~= "j_joy_token" then
                        JoyousSpring.destroy_cards(joker, nil, true)
                        count = count + 1
                    end
                end
                for i = 1, count do
                    JoyousSpring.summon_token("utchatzimime", "e_negative")
                end
            end
        end
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
                    JoyousSpring.count_materials_owned({ { exclude_debuffed = true } })
            end
        }
    end
})

JoyousSpring.token_pool["utchatzimime"] = {
    order = 9,
    name = "j_joy_token_utchatzimime",
    atlas = "joy_Misc02",
    sprite_pos = { x = 1, y = 4 },
    joyous_spring = {
        attribute = "DARK",
        monster_type = "Fiend"
    }
}

-- Fish Lamp
JoyousSpring.Joker({
    key = "fishlamp",
    atlas = 'Misc02',
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds, card.ability.extra.creates } }
    end,
    joy_glossary = { "extradeck", "material", "token" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                is_all_materials = { SYNCHRO = true },
                summon_type = "SYNCHRO",
                attribute = "FIRE",
                monster_type = "Fish",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            adds = 1,
            creates = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            for _ = 1, card.ability.extra.adds do
                JoyousSpring.add_to_extra_deck_pseudorandom(
                    { { monster_type = "Fish" } }, card.config.center.key, true)
            end
            for i = 1, card.ability.extra.creates do
                JoyousSpring.summon_token("lamp")
            end
        end
    end,
})

JoyousSpring.token_pool["lamp"] = {
    order = 10,
    name = "j_joy_token_lamp",
    atlas = "joy_Misc02",
    sprite_pos = { x = 7, y = 3 },
    joyous_spring = {
        attribute = "FIRE",
        monster_type = "Fish",
        is_all_materials = { SYNCHRO = true },
    }
}

-- Ancient Fairy Dragon
JoyousSpring.Joker({
    key = "afd",
    atlas = 'Misc02',
    pos = { x = 4, y = 3 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.destroys_and_creates, card.ability.extra.money } }
    end,
    joy_glossary = { "tuner", "enter", "fieldspell" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "LIGHT",
                monster_type = "Dragon",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            creates = 1,
            destroys_and_creates = 1,
            money = 10,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                local choices = {}
                for _, field in ipairs(JoyousSpring.field_spell_area.cards) do
                    if not SMODS.is_eternal(field, card) then
                        table.insert(choices, field)
                    end
                end
                if #choices > 0 then
                    local destroyed = 0
                    for i = 1, card.ability.extra.destroys_and_creates do
                        local chosen, index = pseudorandom_element(choices, 'j_joy_afd')
                        if chosen then
                            JoyousSpring.destroy_cards(chosen, nil, true)
                            destroyed = destroyed + 1
                            table.remove(choices, index)

                            JoyousSpring.create_pseudorandom({ { is_field_spell = true } }, card.config.center.key, true)
                        end
                    end
                    return {
                        dollars = destroyed * card.ability.extra.money
                    }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { is_tuner = true } }, 'j_joy_afd', true)
            end
        end
    end
})

-- Sea Dragon Lord Gishilnodon
JoyousSpring.Joker({
    key = "gishilnodon",
    atlas = 'Misc03',
    pos = { x = 0, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 11,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.current_chips } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "SeaSerpent",
                summon_type = "SYNCHRO",
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
            chips = 30,
            current_chips = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips
                }
            end
            if context.joy_summon then
                local count = 0
                for _, material in ipairs(context.joy_summon_materials) do
                    if type(material) == "string" then
                        if G.P_CENTERS[material] and G.P_CENTERS[material].rarity == 1 then
                            count = count + 1
                        end
                    elseif material:is_rarity(1) then
                        count = count + 1
                    end
                end
                card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips * count
            end
        end
    end,
})

-- Giganticastle
JoyousSpring.Joker({
    key = "giganticastle",
    atlas = 'Misc03',
    pos = { x = 6, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { min = 1,         exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            mult = 20,
            current_mult = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local count = 0
            local materials = JoyousSpring.get_materials(card)
            for _, material in ipairs(materials) do
                if JoyousSpring.is_material_center(material, { exclude_tuners = true }) then
                    count = count + 1
                end
            end
            card.ability.extra.current_mult = card.ability.extra.mult * count
        end
    end
})
