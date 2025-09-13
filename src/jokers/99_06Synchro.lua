--- SYNCHRO FREE AGENTS

-- Firewall Saber Dragon
SMODS.Joker({
    key = "firewall_saber",
    atlas = 'Misc03',
    pos = { x = 0, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.creates } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
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
                SMODS.add_card({
                    set = "Spectral",
                    edition = "e_negative"
                })
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
SMODS.Joker({
    key = "bishbaalkin",
    atlas = 'Misc04',
    pos = { x = 6, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { exclude_debuffed = true } }) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
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
                        SMODS.destroy_cards(joker, nil, true)
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
    order = 6,
    name = "j_joy_token_utchatzimime",
    atlas = "joy_Misc04",
    sprite_pos = { x = 1, y = 4 },
    joyous_spring = {
        attribute = "DARK",
        monster_type = "Fiend"
    }
}

-- Fish Lamp
SMODS.Joker({
    key = "fishlamp",
    atlas = 'Misc04',
    pos = { x = 5, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds, card.ability.extra.creates } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
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
            local choices = JoyousSpring.get_materials_in_collection({ { monster_type = "Fish", is_extra_deck = true } },
                nil, nil, card.config.center.key)
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_fishlamp')
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
            for i = 1, card.ability.extra.creates do
                JoyousSpring.summon_token("lamp")
            end
        end
    end,
})

JoyousSpring.token_pool["lamp"] = {
    order = 7,
    name = "j_joy_token_lamp",
    atlas = "joy_Misc04",
    sprite_pos = { x = 7, y = 3 },
    joyous_spring = {
        attribute = "FIRE",
        monster_type = "Fish",
        is_all_materials = { SYNCHRO = true },
    }
}

-- Ancient Fairy Dragon
SMODS.Joker({
    key = "afd",
    atlas = 'Misc04',
    pos = { x = 4, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.destroys_and_creates, card.ability.extra.money } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
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
                            SMODS.destroy_cards(chosen, nil, true)
                            destroyed = destroyed + 1
                            table.remove(choices, index)

                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                                        local choices_field = JoyousSpring.get_materials_in_collection(
                                            { { is_field_spell = true } },
                                            nil, nil, card.config.center.key)

                                        local spell = pseudorandom_element(choices_field, pseudorandom("j_joy_afd"))
                                        if spell then
                                            JoyousSpring.add_to_extra_deck(spell)
                                        end
                                    end
                                    return true
                                end)
                            }))
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
