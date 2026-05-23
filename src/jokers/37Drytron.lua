--- DRYTRON
SMODS.Atlas({
    key = "dry",
    path = "37Drytron.png",
    px = 71,
    py = 95
})

-- Drytron Alpha Thuban
JoyousSpring.Joker({
    key = "dry_alpha",
    atlas = 'dry',
    pos = { x = 0, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "enter", "ritual", "sidedeck" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["Drytron"] = true },
                summon_from_shop = true,
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {}
                        }
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "RITUAL" } })
                for i = 1, context.joy_for_ritual and 2 or 1 do
                    local choice = pseudorandom_element(choices, self.key)
                    if choice then
                        SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                    end
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_set_cost = function(card)
        card.cost = 0
    end
})

-- Drytron Beta Rastaban
JoyousSpring.Joker({
    key = "dry_beta",
    atlas = 'dry',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.money, card.ability.extra.money * 2 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "enter", "ritual" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["Drytron"] = true },
                summon_from_shop = true,
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {}
                        }
                    }
                }
            },
            xmult = 2,
            money = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                return {
                    dollars = card.ability.extra.money * (context.joy_for_ritual and 2 or 1)
                }
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_set_cost = function(card)
        card.cost = 0
    end
})

-- Drytron Delta Altais
JoyousSpring.Joker({
    key = "dry_delta",
    atlas = 'dry',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.h_size, card.ability.extra.h_size * 2 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "enter", "ritual" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["Drytron"] = true },
                summon_from_shop = true,
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {}
                        }
                    }
                }
            },
            xmult = 2,
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                G.hand:change_size(card.ability.extra.h_size * (context.joy_for_ritual and 2 or 1))
                G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                    card.ability.extra.h_size * (context.joy_for_ritual and 2 or 1)
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_set_cost = function(card)
        card.cost = 0
    end
})

-- Drytron Gamma Eltanin
JoyousSpring.Joker({
    key = "dry_gamma",
    atlas = 'dry',
    pos = { x = 3, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "enter", "ritual", "revive" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["Drytron"] = true },
                summon_from_shop = true,
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {}
                        }
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                for i = 1, (context.joy_for_ritual and 2 or 1) do
                    JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Drytron" } } }, self.key, true)
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_set_cost = function(card)
        card.cost = 0
    end
})

-- Drytron Zeta Aldhibah
JoyousSpring.Joker({
    key = "dry_zeta",
    atlas = 'dry',
    pos = { x = 1, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "enter", "ritual" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["Drytron"] = true },
                summon_from_shop = true,
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {}
                        }
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                JoyousSpring.create_summon({ key = "j_joy_dry_fafnir" }, true)
                if context.joy_for_ritual and #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card { set = "Spectral" }
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_set_cost = function(card)
        card.cost = 0
    end
})

-- Drytron Nu II
JoyousSpring.Joker({
    key = "dry_nu",
    atlas = 'dry',
    pos = { x = 0, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "enter", "ritual", "maindeck" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["Drytron"] = true },
                summon_from_shop = true,
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {}
                        }
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                for i = 1, (context.joy_for_ritual and 2 or 1) do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "Drytron" }, exclude_summon_types = { "RITUAL" }, is_main_deck = true } },
                        self.key)
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_set_cost = function(card)
        card.cost = 0
    end
})

-- Drytron Mu Beta Fafnir
JoyousSpring.Joker({
    key = "dry_mubeta",
    atlas = 'dry',
    pos = { x = 2, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attaches, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "attach", "sidedeck", "ritual" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["Drytron"] = true },
                {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 2, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 2, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            attaches = 1,
            xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Drytron" } } })
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                end

                card.ability.extra.active = true
            end
            if context.joy_tributed then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_detach = function(self, card)
        return not card.ability.extra.active
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if not from_debuff and card then
            config.xmult = 1 + card.ability.extra.joyous_spring.xyz_materials * card.ability.extra.xmult
        end
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    xmult = config.xmult
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.xmult } }
    end
})

-- Drytron Meteonis Draconids
JoyousSpring.Joker({
    key = "dry_meteo",
    atlas = 'dry',
    pos = { x = 0, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Drytron" } } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "graveyard" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["Drytron"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT", min = 2 },
                        }
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
                    xmult = 1 +
                        card.ability.extra.xmult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Drytron" } } })
                }
            end
        end
    end,
})

-- Drytron Meteonis DA Draconids
JoyousSpring.Joker({
    key = "dry_dadraco",
    atlas = 'dry',
    pos = { x = 3, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.banish } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["Drytron"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT", min = 4 },
                        }
                    }
                }
            },
            banish = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = JoyousSpring.get_materials_owned({ { monster_attribute = "LIGHT" } })
                for _, joker in ipairs(choices) do
                    JoyousSpring.banish(joker, "blind_selected")
                end
                if #choices >= card.ability.extra.banish then
                    JoyousSpring.add_monster_tag_pseudorandom(
                        { { monster_archetypes = { "Drytron" }, summon_type = "RITUAL" } }, self.key)
                    JoyousSpring.add_monster_tag_pseudorandom(
                        { { monster_archetypes = { "Drytron" }, exclude_summon_types = { "RITUAL" } } }, self.key)
                end
            end
        end
    end,
})

-- Drytron Meteonis Quadrantids
JoyousSpring.Joker({
    key = "dry_qua",
    atlas = 'dry',
    pos = { x = 1, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "summon", "tribute", 'revive' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["Drytron"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT", min = 3 },
                        }
                    }
                }
            },
            xmult = 0.25,
            current_xmult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self and not card.ability.extra.active then
                local targets = JoyousSpring.get_materials_in_graveyard(
                    { { monster_archetypes = { "Drytron" }, exclude_summon_types = { "RITUAL" } } }, true, true)
                for _, key in ipairs(targets) do
                    JoyousSpring.revive(key)
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            card.ability.extra.active = true
            local count = 0
            local materials = JoyousSpring.get_materials(card)
            for _, key in ipairs(materials) do
                if JoyousSpring.is_material_center(key, { monster_archetypes = { "Drytron" } }) then
                    count = count + 1
                end
            end
            card.ability.extra.current_xmult = 1 + card.ability.extra.xmult * count
        end
    end
})

-- Drytron Fafnir
JoyousSpring.Joker({
    key = "dry_fafnir",
    atlas = 'dry',
    pos = { x = 2, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Drytron" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "facedown", "sidedeck", "summon", "ritual" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Drytron"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_summon and context.joy_summon_type == "RITUAL" and not card.ability.extra.active then
                card.ability.extra.active = true
                local any_added
                for _, joker in ipairs(context.joy_summon_materials) do
                    local key = type(joker) == "string" and joker or joker.config.center.key
                    if JoyousSpring.is_material_center(key, { monster_attribute = "LIGHT" }) then
                        any_added = true
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { key = key, area = JoyousSpring.side_deck_area }
                                return true
                            end
                        }))
                    end
                end
                if any_added then
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
    end,
    joy_prevent_flip = function(self, card, other_card)
        return other_card.facing == "front" and JoyousSpring.is_summon_type(other_card, "RITUAL")
    end,
})

local mod_set_debuff_ref = SMODS.current_mod.set_debuff or function() end
SMODS.current_mod.set_debuff = function(card)
    if JoyousSpring.is_summon_type(card, "RITUAL") then
        local has_fafnir = false
        for _, joker in ipairs(SMODS.find_card("j_joydry_fafnir")) do
            if JoyousSpring.can_use_abilities(joker) then
                has_fafnir = true
                break
            end
        end
        return has_fafnir and "prevent_debuff" or nil
    end
    return mod_set_debuff_ref(card)
end

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dry" },
    label = "k_joy_archetype_dry"
}
