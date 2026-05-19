--- HAZY FLAME
SMODS.Atlas({
    key = "hazy",
    path = "38HazyFlame.png",
    px = 71,
    py = 95
})

local hazy_can_be_used_as_material = function(self, card, properties, summon_type)
    return true
end

-- Hazy Flame Sphynx
JoyousSpring.Joker({
    key = "hazy_sphy",
    atlas = 'hazy',
    pos = { x = 0, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.excavate } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "excavate", "revive", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
            excavate = 2,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavate then
                if context.joy_other_context.setting_blind and not card.ability.extra.active then
                    if context.joy_number >= card.ability.extra.excavate then
                        card.ability.extra.active = nil
                    end

                    if context.joy_excavated:is_suit("Diamonds") then
                        card.ability.extra.active = context.joy_number < card.ability.extra.excavate
                        local choices = JoyousSpring.get_materials_owned({ { exclude_eternal = true } })
                        local choice = pseudorandom_element(choices, self.key)
                        if choice then
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    choice:add_sticker("eternal", true)
                                    return true
                                end
                            }))
                            return {
                                message = localize("k_joy_hit")
                            }
                        end
                    end
                end
            end
            if context.setting_blind then
                local revived = JoyousSpring.revive_pseudorandom({ { monster_attribute = "FIRE" } },
                    self.key .. "_revive")
                if revived then
                    revived:add_sticker("eternal", true)
                end
            end
        end
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind then return card.ability.extra.excavate end
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Cerbereus
JoyousSpring.Joker({
    key = "hazy_cerbe",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck_joker", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Beast",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                local created = JoyousSpring.create_summon({
                    key = self.key,
                    stickers = { "eternal" },
                    force_stickers = { "eternal" },
                    edition = 'e_negative'
                })
                SMODS.debuff_card(created, true, self.key)
                JoyousSpring.add_monster_tag_pseudorandom({ { is_extra_deck = true } }, self.key, nil, nil,
                    { stickers = { "eternal" }, force_stickers = { "eternal" }, })
            end
        end
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Griffin
JoyousSpring.Joker({
    key = "hazy_grif",
    atlas = 'hazy',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "WingedBeast",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
            mult = 20,
            xmult = 1.5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_attribute(context.other_joker, "FIRE") then
                return {
                    mult = card.ability.extra.mult,
                    xmult = SMODS.is_eternal(context.other_joker, card) and card.ability.extra.xmult or nil,
                    message_card = context.other_joker
                }
            end
        end
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Hydra
JoyousSpring.Joker({
    key = "hazy_hydra",
    atlas = 'hazy',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "extradeck", "xyz", "material", "xyz_material", "attach" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dinosaur",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and SMODS.is_eternal(card, card) then
                if not JoyousSpring.is_in_extra_deck("j_joy_hazy_basil") and
                    #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck("j_joy_hazy_basil")
                else
                    JoyousSpring.add_to_extra_deck_pseudorandom({ { summon_type = "XYZ" } }, self.key, true)
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval and G.GAME.blind.boss then
                other_card.ability.extra.joyous_spring.xyz_materials = other_card.ability.extra.joyous_spring
                    .xyz_materials + JoyousSpring.count_materials_owned({ { is_eternal } })
            end
        end
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Hyppogrif
JoyousSpring.Joker({
    key = "hazy_hyppo",
    atlas = 'hazy',
    pos = { x = 0, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Pyro",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
            money = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned({ { is_eternal = true } })
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 then
                JoyousSpring.tribute(card, context.joy_selection)

                local choices = JoyousSpring.get_materials_owned({ { exclude_eternal = true } })
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    choice:add_sticker("eternal", true)
                end

                card.ability.extra.active = true
                return {
                    dollars = card.ability.extra.money
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
    joy_can_activate = function(card)
        return not card.ability.extra.active and JoyousSpring.count_materials_owned({ { is_eternal = true } }) > 0
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Mantikor
JoyousSpring.Joker({
    key = "hazy_manti",
    atlas = 'hazy',
    pos = { x = 1, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "revive", "maindeck", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "WingedBeast",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned({ { is_eternal = true } })
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 then
                JoyousSpring.tribute(card, context.joy_selection)

                local revived = JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "HazyFlame" } } }, self.key)
                if not revived then
                    JoyousSpring.revive_pseudorandom({ { monster_attribute = "FIRE" } }, self.key)
                end

                card.ability.extra.active = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        return not card.ability.extra.active and JoyousSpring.count_materials_owned({ { is_eternal = true } }) > 0
            and JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "HazyFlame" } },
                { monster_attribute = "FIRE" } }) > 0
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Peryton
JoyousSpring.Joker({
    key = "hazy_pery",
    atlas = 'hazy',
    pos = { x = 2, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "maindeck", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Pyro",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned({ { is_eternal = true } })
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 then
                JoyousSpring.tribute(card, context.joy_selection)

                for i = 1, 2 do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "HazyFlame" }, is_main_deck = true } }, self.key)
                end

                card.ability.extra.active = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        return not card.ability.extra.active and JoyousSpring.count_materials_owned({ { is_eternal = true } }) > 0
    end,
    joy_can_be_used_as_material = hazy_can_be_used_as_material
})

-- Hazy Flame Basiltrice
JoyousSpring.Joker({
    key = "hazy_basil",
    atlas = 'hazy',
    pos = { x = 1, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.joyous_spring.xyz_materials * card.ability.extra.mult,
                card.ability.extra.xmult, 1 + (G.GAME.joy_tributed_cards_eternal or 0) * card.ability.extra.xmult }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "xyz_material", "attach", "material", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Pyro",
                attribute = "FIRE",
                monster_archetypes = { ["HazyFlame"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { min = 2, is_eternal = true, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                        restrictions = {
                            no_room = true
                        }
                    },
                }
            },
            mult = 1,
            xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.joyous_spring.xyz_materials * card.ability.extra.mult,
                    xmult = card.ability.extra.joyous_spring.xyz_materials >= 5 and
                        (1 + (G.GAME.joy_tributed_cards_eternal or 0) * card.ability.extra.xmult) or nil
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval and G.GAME.blind.boss then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials +
                    JoyousSpring.count_materials_owned({ { is_eternal } })
            end
        end
    end,
    joy_create_card_for_shop = function(self, card, other_card, area)
        if other_card and SMODS.is_eternal(other_card, card) and card.ability.extra.joyous_spring.xyz_materials >= 50 then
            other_card:set_edition("e_negative")
        end
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "hazy" },
    label = "k_joy_archetype_hazy"
}
