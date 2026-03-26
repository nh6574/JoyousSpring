--- BEETROOPER
SMODS.Atlas({
    key = "bee",
    path = "29Beetrooper.png",
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

-- Beetrooper Scout Buggy
SMODS.Joker({
    key = "bee_scout",
    atlas = 'bee',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true }
            },
            mult = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Insect") then
                return {
                    mult = card.ability.extra.mult,
                    message_card = context.other_joker
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.joy_from_buggy then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local to_create = G.jokers.config.card_limit - #G.jokers.cards
                    for i = 1, to_create do
                        local added_card = SMODS.add_card { key = "j_joy_bee_scout" }
                        added_card.joy_from_buggy = true
                    end
                    return true
                end
            }))
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check
})

-- Beetrooper Scale Bomber
SMODS.Joker({
    key = "bee_bomber",
    atlas = 'bee',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Insect" } }), card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true }
            },
            mult = 2,
            xmult = 1.1,
            tributes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Insect" } })
                }
            end
            if context.other_joker and card.ability.extra.active and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Insect") then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
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
                    card.ability.extra.active = true
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
    joy_can_activate = function(card)
        return JoyousSpring.count_materials_owned({ { monster_type = "Insect" } }, nil, true) > 0
    end,
    joy_bypass_room_check = bee_bypass_room_check
})

-- Beetrooper Assault Roller
SMODS.Joker({
    key = "bee_roller",
    atlas = 'bee',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.money * count_owned_insects({ { monster_type = "Insect" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true }
            },
            money = 1
        },
    },
    calculate = function(self, card, context)
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Beetrooper" }, is_main_deck = true } },
                    self.key)
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        local ret = card.ability.extra.money * count_owned_insects({ { monster_type = "Insect" } })
        return ret > 0 and ret or nil
    end,
    joy_bypass_room_check = bee_bypass_room_check
})

-- Beetrooper Light Flapper
SMODS.Joker({
    key = "bee_flapper",
    atlas = 'bee',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if context.selling_self then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local editionless_jokers = JoyousSpring.get_materials_owned({ { monster_type = "Insect", exclude_edition = true } })

                    local eligible_card = pseudorandom_element(editionless_jokers, self.key)
                    if eligible_card then
                        local edition = SMODS.poll_edition { key = self.key .. "_edition", guaranteed = true, no_negative = true }
                        eligible_card:set_edition(edition, true)
                    end
                    return true
                end
            }))
        end
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                for i = 1, 2 do
                    JoyousSpring.revive_pseudorandom({ { monster_type = "Insect" } }, self.key .. "_create", true)
                end
            end
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check
})

-- Beetrooper Sting Lancer
SMODS.Joker({
    key = "bee_lancer",
    atlas = 'bee',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if not context.blueprint_card then
            if JoyousSpring.can_use_abilities(card) and context.joy_activate_effect and context.joy_activated_card == card then
                JoyousSpring.remove_from_graveyard(nil, nil, nil, { { monster_type = "Insect" } }, true)
                JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Beetrooper" } } },
                    self.key .. "_extra", true)
            end
            if context.joy_summon then
                if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                    JoyousSpring.send_to_graveyard_pseudorandom({ { monster_type = "Insect" } }, self.key, 5)
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return JoyousSpring.count_materials_in_graveyard({ { monster_type = "Insect" } }) >= 5
    end,
    joy_bypass_room_check = bee_bypass_room_check
})

-- Heavy Beetrooper Mighty Neptune
SMODS.Joker({
    key = "bee_neptune",
    atlas = 'bee',
    pos = { x = 1, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_in_graveyard({ { monster_type = "Insect" } }) >= 3 then
                    JoyousSpring.remove_from_graveyard(3, self.key .. "_remove", nil, { { monster_type = "Insect" } })
                    JoyousSpring.banish(card, "blind_selected")
                    local to_banish_count = #G.jokers.cards - G.jokers.config.card_limit
                    if to_banish_count > 0 then
                        local choices = JoyousSpring.get_materials_owned({ { monster_type = "Insect" } })
                        local nonnegatives = {}
                        for _, joker in ipairs(choices) do
                            local limit = JoyousSpring.get_card_limit(joker)
                            if limit == 0 then table.insert(nonnegatives, joker) end
                        end
                        for i = 1, to_banish_count do
                            local to_banish, index = pseudorandom_element(nonnegatives, self.key .. "banish")
                            if to_banish then
                                JoyousSpring.banish(to_banish, "blind_selected")
                                table.remove(nonnegatives, index)
                            end
                        end
                    end
                end
            end
        end
        if context.joy_summon then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                for i = 1, 2 do
                    JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Beetrooper" }, is_main_deck = true } },
                        self.key, true)
                end
            end
        end
    end,
    joy_bypass_room_check = bee_bypass_room_check
})

-- Beetrooper Armor Horn
SMODS.Joker({
    key = "bee_armor",
    atlas = 'bee',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "EARTH",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                        },
                        restrictions = {
                            no_room = true
                        }
                    },
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                JoyousSpring.send_to_graveyard_pseudorandom({ { monster_type = "Insect" } }, self.key .. "_blind", 3)
            end
        end
        if context.joy_summon then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Insect") then
                JoyousSpring.send_to_graveyard_pseudorandom({ { monster_type = "Insect" } }, self.key, 10)
            end
        end
    end,
})

-- Giant Beetrooper Invincible Atlas
SMODS.Joker({
    key = "bee_atlas",
    atlas = 'bee',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * count_owned_insects({ { monster_type = "Insect" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "EARTH",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            xmult = 0.1,
            tributes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * count_owned_insects({ { monster_type = "Insect" } })
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_materials_owned({ { monster_type = "Insect", is_effect = true } },
                        nil, true)
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection >= 1 then
                    JoyousSpring.tribute(card, context.joy_selection)
                    local creates = G.jokers.config.card_limit - #G.jokers.cards
                    for i = 1, creates do
                        JoyousSpring.summon_token("bee")
                    end
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return G.jokers.config.card_limit > #G.jokers.cards and
            JoyousSpring.count_materials_owned({ { monster_type = "Insect" } }, nil, true) > 0
    end,
})

-- Beetrooper Cruel Saturnas
SMODS.Joker({
    key = "bee_saturnas",
    atlas = 'bee',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_banished and JoyousSpring.is_monster_type(context.joy_banished_card, "Insect") then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        JoyousSpring.create_pseudorandom({ { is_main_deck = true, monster_type = "Insect" } }, self.key,
                            true)
                        return true
                    end
                }))
            end
        end
    end,
})

-- Ultra Beetrooper Absolute Hercules
SMODS.Joker({
    key = "bee_hercules",
    atlas = 'bee',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 20,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Beetrooper" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "EARTH",
                monster_type = "Insect",
                monster_archetypes = { ["Beetrooper"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                            { monster_type = "Insect" },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            xmult = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.ante_change and context.ante_end then
                local to_revive = JoyousSpring.get_materials_in_graveyard({ { monster_type = "Insect" } }, true, true)
                for _, key in ipairs(to_revive) do
                    JoyousSpring.revive(key)
                end
            end
        end
    end,
})

JoyousSpring.token_pool["bee"] = {
    order = 6,
    name = "j_joy_token_bee",
    atlas = "joy_bee",
    sprite_pos = { x = 0, y = 2 },
    joyous_spring = {
        attribute = "EARTH",
        monster_type = "Insect",
        monster_archetypes = { ["Beetrooper"] = true }
    }
}

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "bee" },
    label = "k_joy_archetype_bee"
}
