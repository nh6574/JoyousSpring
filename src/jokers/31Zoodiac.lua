--- ZOODIAC
SMODS.Atlas({
    key = "zoo",
    path = "31Zoodiac.png",
    px = 71,
    py = 95
})

local zoo_add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
        JoyousSpring.add_monster_tag_pseudorandom({ { monster_archetypes = { "Zoodiac" }, is_extra_deck = true } },
            self.key)
    end
end

local zoo_xyz_add_to_deck = function(self, card, from_debuff)
    if not from_debuff then
        G.GAME.joy_zoo_summoned = G.GAME.joy_zoo_summoned or {}
        G.GAME.joy_zoo_summoned[self.key] = true
    end
end

-- Zoodiac Thoroughblade
JoyousSpring.Joker({
    key = "zoo_horse",
    atlas = 'zoo',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true }
            },
        },
    },
    add_to_deck = zoo_add_to_deck,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.add_monster_tag_pseudorandom(
                    { { monster_archetypes = { "Zoodiac" } } },
                    self.key .. "_transfer")
            end
        end
    end,
})

-- Zoodiac Bunnyblast
JoyousSpring.Joker({
    key = "zoo_bunny",
    atlas = 'zoo',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true }
            },
        },
    },
    add_to_deck = zoo_add_to_deck,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card { set = "Tarot", edition = 'e_negative', key_append = self.key .. "_tarot" }
                        SMODS.add_card { set = "Planet", edition = 'e_negative', key_append = self.key .. "_planet" }
                        SMODS.add_card { set = "Planet", edition = 'e_negative', key_append = self.key .. "_planet" }
                        return true
                    end
                }))
            end
        end
    end,
})

-- Zoodiac Whiptail
JoyousSpring.Joker({
    key = "zoo_snake",
    atlas = 'zoo',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true }
            },
        },
    },
    add_to_deck = zoo_add_to_deck,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.banish(other_card, "blind_selected")
            end
        end
    end,
})

-- Zoodiac Kataroost
JoyousSpring.Joker({
    key = "zoo_rooster",
    atlas = 'zoo',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true }
            },
            money = 1
        },
    },
    add_to_deck = zoo_add_to_deck,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joy_detached then
                return {
                    dollars = config.money * context.joy_detach_value
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            money = 1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.money } }
    end
})

-- Zoodiac Ramram
JoyousSpring.Joker({
    key = "zoo_ram",
    atlas = 'zoo',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true }
            },
        },
    },
    add_to_deck = zoo_add_to_deck,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Zoodiac" } } }, self.key .. "_transfer")
            end
        end
    end,
})

-- Zoodiac Ratpier
JoyousSpring.Joker({
    key = "zoo_rat",
    atlas = 'zoo',
    pos = { x = 3, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true }
            },
        },
    },
    add_to_deck = zoo_add_to_deck,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joy_detached and not config.active then
                config.active = true
                JoyousSpring.create_summon({ key = "j_joy_zoo_rat" })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            config.active = nil
        end
    end,
    joy_transfer_remove_from_deck = function(self, other_card, config, from_debuff)
        config.active = nil
    end,
})

-- Zoodiac Broadbull
JoyousSpring.Joker({
    key = "zoo_bull",
    atlas = 'zoo',
    pos = { x = 3, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_archetypes = { "Zoodiac" } },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 2,
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Zoodiac" }, is_main_deck = true } },
                    self.key, true)
            end
        end
    end,
    add_to_deck = zoo_xyz_add_to_deck,
    joy_can_detach = function(self, card)
        return G.jokers.config.card_limit > #G.jokers.cards
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                local xmult = config.xmult *
                    JoyousSpring.count_materials_owned({ { monster_archetypes = { "Zoodiac" } } })
                if xmult > 0 then
                    return {
                        xmult = xmult
                    }
                end
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 2
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local xmult = config.xmult * JoyousSpring.count_materials_owned({ { monster_archetypes = { "Zoodiac" } } })
        return { vars = { config.xmult, xmult > 0 and xmult or 1 } }
    end
})

-- Zoodiac Chakanine
JoyousSpring.Joker({
    key = "zoo_dog",
    atlas = 'zoo',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { min = 2, rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_archetypes = { "Zoodiac" } },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 2,
            mult = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Zoodiac" }, is_main_deck = true } },
                    self.key, true)
            end
        end
    end,
    add_to_deck = zoo_xyz_add_to_deck,
    joy_can_detach = function(self, card)
        return G.jokers.config.card_limit > #G.jokers.cards
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.mult * (G.GAME.joy_joker_cards_revived or 0)
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 4

        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * (G.GAME.joy_joker_cards_revived or 0) } }
    end
})

-- Zoodiac Tigermortar
JoyousSpring.Joker({
    key = "zoo_tiger",
    atlas = 'zoo',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_archetypes = { "Zoodiac" } },
                        },
                        transfer_materials = true
                    },
                }
            },
            mult = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card, card.ability.extra.joyous_spring.xyz_materials)
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials +
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Zoodiac" } } })
                JoyousSpring.remove_from_graveyard(nil, nil, nil, { { monster_archetypes = { "Zoodiac" } } }, true)
            end
        end
    end,
    add_to_deck = zoo_xyz_add_to_deck,
    joy_can_detach = function(self, card)
        return JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Zoodiac" } } }) > 0
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.mult * other_card.ability.extra.joyous_spring.xyz_materials
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 4
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * other_card.ability.extra.joyous_spring.xyz_materials } }
    end
})

-- Zoodiac Hammerkong
JoyousSpring.Joker({
    key = "zoo_monkey",
    atlas = 'zoo',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { min = 3, rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_archetypes = { "Zoodiac" } },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Zoodiac" } } }, self.key, true)
            end
        end
    end,
    add_to_deck = zoo_xyz_add_to_deck,
    joy_can_detach = function(self, card)
        return JoyousSpring.extra_deck_area.config.card_limit > #JoyousSpring.extra_deck_area.cards
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        SMODS.debuff_card(other_card, "prevent_debuff", self.key)
    end,
    joy_transfer_remove_from_deck = function(self, other_card, config, from_debuff)
        SMODS.debuff_card(other_card, false, self.key)
    end,
    joy_transfer_prevent_flip = function(self, ability_card, config, other_card)
        return ability_card == other_card and other_card.facing == "front"
    end
})

-- Zoodiac Drident
JoyousSpring.Joker({
    key = "zoo_dragon",
    atlas = 'zoo',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local xmult = card.ability.extra.xmult * card.ability.extra.joyous_spring.xyz_materials
        return { vars = { card.ability.extra.detach, card.ability.extra.xmult, card.ability.extra.active and xmult > 0 and xmult or 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_archetypes = { "Zoodiac" } },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 1,
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and card.ability.extra.active then
                local xmult = card.ability.extra.xmult * card.ability.extra.joyous_spring.xyz_materials
                if xmult > 0 then
                    return {
                        xmult = xmult
                    }
                end
            end
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                local opp_cards = JoyousSpring.get_materials_owned({ { is_opponent = true } })
                if #opp_cards > 0 then
                    local to_destroy = pseudorandom_element(opp_cards, self.key)
                    JoyousSpring.destroy_cards({ to_destroy })
                else
                    local materials = {}
                    for _, joker in ipairs(JoyousSpring.get_materials_owned({ {} }, nil, true)) do
                        if joker ~= card then
                            table.insert(materials, joker)
                        end
                    end
                    local to_destroy = pseudorandom_element(materials, self.key)
                    JoyousSpring.destroy_cards({ to_destroy })
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
    add_to_deck = zoo_xyz_add_to_deck,
    joy_can_detach = function(self, card)
        if card.ability.extra.active then return false end
        if JoyousSpring.count_materials_owned({ { is_opponent = true } }) > 0 then return true end
        for _, joker in ipairs(JoyousSpring.get_materials_owned({ {} }, nil, true)) do
            if joker ~= card then
                return true
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joy_summon and not context.blueprint_card then
                if JoyousSpring.used_as_material(other_card, context) and JoyousSpring.is_monster_archetype(context.joy_card, "Zoodiac")
                    and not (G.GAME.joy_zoo_summoned or {})[context.joy_card.config.center_key] then
                    JoyousSpring.add_monster_tag_pseudorandom(
                        { { monster_archetypes = { "Zoodiac" } } },
                        self.key)
                end
            end
        end
    end,
})

-- Zoodiac Boarbow
JoyousSpring.Joker({
    key = "zoo_boar",
    atlas = 'zoo',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Zoodiac" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "BeastWarrior",
                attribute = "EARTH",
                monster_archetypes = { ["Zoodiac"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_archetypes = { "Zoodiac" } },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 12,
            mult = 4
        },
    },
    add_to_deck = zoo_xyz_add_to_deck,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                G.E_MANAGER:add_event(Event({
                    blocking = false,
                    func = function()
                        if not G.GAME.blind.in_blind then return true end
                        if G.STATE == G.STATES.SELECTING_HAND then
                            G.GAME.chips = G.GAME.blind.chips
                            G.STATE = G.STATES.HAND_PLAYED
                            G.STATE_COMPLETE = true
                            end_round()
                            return true
                        end
                    end
                }))
            end
        end
    end,
    joy_can_detach = function(self, card)
        return G.GAME.blind.in_blind
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "XYZ")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.mult * JoyousSpring.get_summoned_count("XYZ")
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 4
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * JoyousSpring.get_summoned_count("XYZ") } }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "zoo" },
    label = "k_joy_archetype_zoo"
}
