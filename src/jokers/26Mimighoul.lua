--- MIMIGHOUL
SMODS.Atlas({
    key = "mimi",
    path = "26Mimighoul.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "mimi_opp",
    path = "26Mimighoul_opp.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
})

local mimi_should_flip = function(card, context)
    if (context.end_of_round and context.game_over == false and context.main_eval) or
        (context.setting_blind and card.facing == "back" and
            (card.ability.set == "Joker" and next(SMODS.find_card("j_joy_mimi_slime")) or
                card.ability.set == "joy_Opponent" and next(SMODS.find_card("opp_joy_mimi_slime")))) then
        return true
    end
end

-- Mimighoul Archfiend
SMODS.Joker({
    key = "mimi_archfiend",
    atlas = 'mimi',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult *
                JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }),
                card.ability.extra.creates,
            }
        }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_archfiend",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fiend",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 20,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            JoyousSpring.create_pseudorandom(
                { { monster_archetypes = { "Mimighoul" }, rarity = 1, is_main_deck = true } },
                card.config.center.key, true)
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_archfiend", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end,
})

JoyousSpring.OpponentCard {
    key = "mimi_archfiend",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 1 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_archfiend",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fiend",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 20,
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            if card.joy_flipped_at_end then
                JoyousSpring.temporary_handsize = (JoyousSpring.temporary_handsize or 0) + card.ability.extra.h_size
                card.joy_flipped_at_end = nil
            else
                G.hand:change_size(card.ability.extra.h_size)
                G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                    card.ability.extra.h_size
            end
            JoyousSpring.create_summon({ key = "j_joy_mimi_archfiend" }, true)
        end
        if mimi_should_flip(card, context) then
            if context.end_of_round then
                card.joy_flipped_at_end = true
            end
            JoyousSpring.flip(card)
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end
}

-- Mimighoul Armor
SMODS.Joker({
    key = "mimi_armor",
    atlas = 'mimi',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_armor",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            chips = 50,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            JoyousSpring.create_pseudorandom(
                { { monster_archetypes = { "Mimighoul" }, rarity = 2, is_main_deck = true } },
                card.config.center.key, true)
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_armor", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end,
})

JoyousSpring.OpponentCard {
    key = "mimi_armor",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 2 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_armor",                                         name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            chips = 50,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)

            G.GAME.joy_mimi_armor_banish = true

            JoyousSpring.create_summon({ key = "j_joy_mimi_armor" }, true)
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end
}

-- Mimighoul Cerberus
SMODS.Joker({
    key = "mimi_cerberus",
    atlas = 'mimi',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_cerberus",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            xmult = 4,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_field_spell then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            JoyousSpring.create_pseudorandom(
                { { monster_archetypes = { "Mimighoul" }, rarity = 2, is_main_deck = true } },
                card.config.center.key, true)
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_cerberus", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end,
})

JoyousSpring.OpponentCard {
    key = "mimi_cerberus",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 3 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_cerberus",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            xmult = 4,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_field_spell then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)

            JoyousSpring.create_pseudorandom({ { is_field_spell = true } }, card.config.center.key, true)

            JoyousSpring.create_summon({ key = "j_joy_mimi_cerberus" }, true)
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end
}

-- Mimighoul Dragon
SMODS.Joker({
    key = "mimi_dragon",
    atlas = 'mimi',
    pos = { x = 3, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_dragon",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Dragon",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
            creates = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = (G.GAME.joy_mimi_dragon_destroy or 0) * card.ability.extra.mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            G.GAME.joy_mimi_dragon_destroy = (G.GAME.joy_mimi_dragon_destroy or 0) + 1
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { is_opponent = true, is_blind_card = true } },
                    card.config.center.key, nil, nil, next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil)
            end
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_dragon", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end,
})

JoyousSpring.OpponentCard {
    key = "mimi_dragon",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 4 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_dragon",                                        name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Dragon",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = (G.GAME.joy_mimi_dragon_destroy or 0) * card.ability.extra.mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            G.GAME.joy_mimi_dragon_destroy = (G.GAME.joy_mimi_dragon_destroy or 0) + 1

            local choices = JoyousSpring.get_materials_owned({ { is_opponent = true, exclude_monster_archetypes = { "Mimighoul" } } })
            local choice = pseudorandom_element(choices, card.config.center.key)
            if choice then
                SMODS.destroy_cards(choice, nil, true)
                G.GAME.joy_mimi_dragon_destroy = (G.GAME.joy_mimi_dragon_destroy or 0) + 1
            end

            JoyousSpring.create_summon({ key = "j_joy_mimi_dragon" }, true)
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end
}

-- Mimighoul Fairy
SMODS.Joker({
    key = "mimi_fairy",
    atlas = 'mimi',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_fairy",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 40,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * #JoyousSpring.opponent_area.cards
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            JoyousSpring.create_pseudorandom(
                { { monster_archetypes = { "Mimighoul" }, rarity = 1, is_main_deck = true } },
                card.config.center.key, true)
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_fairy", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end
})

JoyousSpring.OpponentCard {
    key = "mimi_fairy",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 6 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_fairy",                                         name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * #JoyousSpring.opponent_area.cards
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)

            G.GAME.joy_mimi_fairy_reroll = true

            JoyousSpring.create_summon({ key = "j_joy_mimi_fairy" }, true)
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end
}

-- Mimighoul Flower
SMODS.Joker({
    key = "mimi_flower",
    atlas = 'mimi',
    pos = { x = 1, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_flower",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Plant",
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)

            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_flower", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end,
    add_to_deck = function(self, card, from_debuff)
        JoyousSpring.opponent_area:change_size(JoyousSpring.opponent_area.config.card_limit)
    end,
    remove_from_deck = function(self, card, from_debuff)
        JoyousSpring.opponent_area:change_size(math.floor(JoyousSpring.opponent_area.config.card_limit / 2))
    end
})

JoyousSpring.OpponentCard {
    key = "mimi_flower",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 7 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_flower",                                        name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Plant",
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)

            JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Mimighoul" }, is_main_deck = true } },
                card.config.center.key, true)
            JoyousSpring.create_summon({ key = "j_joy_mimi_flower" }, true)
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        JoyousSpring.opponent_area:change_size(JoyousSpring.opponent_area.config.card_limit)
    end,
    remove_from_deck = function(self, card, from_debuff)
        JoyousSpring.opponent_area:change_size(math.floor(JoyousSpring.opponent_area.config.card_limit / 2))
    end
}

-- Mimighoul Slime
SMODS.Joker({
    key = "mimi_slime",
    atlas = 'mimi',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_slime",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Aqua",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)
            JoyousSpring.create_pseudorandom(
                { { monster_archetypes = { "Mimighoul" }, rarity = 1, is_main_deck = true },
                    { monster_archetypes = { "Mimighoul" }, rarity = 2, is_main_deck = true } },
                card.config.center.key, true)
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "opp_joy_mimi_slime", area = JoyousSpring.opponent_area,
                        edition = next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil }
                    return true
                end
            }))
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
    end
})

JoyousSpring.OpponentCard {
    key = "mimi_slime",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 9 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_slime",                                         name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Aqua",
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            SMODS.destroy_cards(card, nil, true)

            JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Mimighoul" } } },
                card.config.center.key, true)

            JoyousSpring.create_summon({ key = "j_joy_mimi_slime" }, true)
        end
        if mimi_should_flip(card, context) then JoyousSpring.flip(card) end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Mimighoul" } }, { facedown = true } }) <= 0 then
                SMODS.destroy_cards(card, nil, true)
            end
        end
    end,
}

-- Mimighoul Master
SMODS.Joker({
    key = "mimi_master",
    atlas = 'mimi',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Zombie",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            xmult = 1.25,
            flips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_opponent_joker then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if not context.blueprint_card then
                if not (card.ability.extra.activated_opponent and card.ability.extra.activated_joker) and context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = {}
                    JoyousSpring.get_materials_owned({ { facedown = true }, { can_flip = true } })
                    if not card.ability.extra.activated_opponent and not card.ability.extra.activated_joker then
                        materials = JoyousSpring.get_materials_owned({ { facedown = true, allow_opponent = true },
                            { can_flip = true, allow_opponent = true } })
                    elseif not card.ability.extra.activated_opponent then
                        materials = JoyousSpring.get_materials_owned({ { facedown = true, is_opponent = true },
                            { can_flip = true, is_opponent = true } })
                    else
                        materials = JoyousSpring.get_materials_owned({ { facedown = true },
                            { can_flip = true } })
                    end
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.flips,
                            card.ability.extra.flips, localize("k_joy_select"))
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.flips then
                    for _, selected_card in ipairs(context.joy_selection) do
                        JoyousSpring.flip(selected_card, card)
                        if selected_card.ability.set == "Joker" then
                            card.ability.extra.activated_joker = true
                        else
                            card.ability.extra.activated_opponent = true
                        end
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated_joker = false
            card.ability.extra.activated_opponent = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        JoyousSpring.opponent_area:change_size(JoyousSpring.opponent_area.config.card_limit)
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated_joker = false
        card.ability.extra.activated_opponent = false
        JoyousSpring.opponent_area:change_size(math.floor(JoyousSpring.opponent_area.config.card_limit / 2))
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated_opponent and card.ability.extra.activated_joker then
            return false
        end
        if not card.ability.extra.activated_opponent and not card.ability.extra.activated_joker then
            return JoyousSpring.count_materials_owned({ { facedown = true, allow_opponent = true },
                { can_flip = true, allow_opponent = true } }) > 0
        elseif not card.ability.extra.activated_opponent then
            return JoyousSpring.count_materials_owned({ { facedown = true, is_opponent = true },
                { can_flip = true, is_opponent = true } }) > 0
        end
        return JoyousSpring.count_materials_owned({ { facedown = true },
            { can_flip = true } }) > 0
    end,
})

-- Giant Mimighoul
SMODS.Joker({
    key = "mimi_giant",
    atlas = 'mimi',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attaches, card.ability.extra.detach, card.ability.extra.xmult, 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Mimighoul"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { is_flip = true, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { is_flip = true, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            attaches = 1,
            detach = 1,
            xmult = 2,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and card.ability.extra.active then
                return {
                    xmult = card.ability.extra.xmult *
                        JoyousSpring.count_materials_owned({ { is_opponent = true, exclude_monster_archetypes = { "Mimighoul" } } })
                }
            end
            if context.joy_card_flipped and context.joy_card_flipped.facing == "front" and
                context.joy_card_flipped.ability.set == "joy_Opponent" then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
            end
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                for i = 1, JoyousSpring.count_materials_owned({ { is_opponent = true, monster_archetypes = { "Mimighoul" } } }) do
                    JoyousSpring.create_pseudorandom({ { is_opponent = true, is_blind_card = true } },
                        card.config.center.key, nil, nil,
                        next(SMODS.find_card("j_joy_mimi_dungeon")) and "e_negative" or nil)
                end

                card.ability.extra.active = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = false
    end,
    joy_can_detach = function(self, card)
        return JoyousSpring.count_materials_owned({ { is_opponent = true, monster_archetypes = { "Mimighoul" } } }) > 0
    end
})

-- Mimighoul Throne
SMODS.Joker({
    key = "mimi_throne",
    atlas = 'mimi',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.creates, card.ability.extra.opp_size } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Mimighoul"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { is_flip = true, monster_archetypes = { "Mimighoul" }, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { is_flip = true, monster_archetypes = { "Mimighoul" }, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            detach = 2,
            creates = 1,
            opp_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_banished and context.joy_banished_card == card then
                JoyousSpring.opponent_area:change_size(1)
            end
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                JoyousSpring.create_summon({ key = "j_joy_mimi_master", edition = 'e_negative' })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
})

-- Mimighoul Dungeon
SMODS.Joker({
    key = "mimi_dungeon",
    atlas = 'mimi',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not (card.ability.extra.activated_faceup and card.ability.extra.activated_facedown) and context.joy_activate_effect and context.joy_activated_card == card then
                    if G.jokers.cards[1].facing == "front" then
                        card.ability.extra.activated_faceup = true
                    else
                        card.ability.extra.activated_facedown = true
                    end
                    JoyousSpring.flip_all_cards(card, G.jokers.cards[1].facing == "front" and "back" or "front",
                        { G.jokers })
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated_faceup = false
            card.ability.extra.activated_facedown = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated_faceup = false
        card.ability.extra.activated_facedown = false
    end,
    joy_can_activate = function(card)
        if #G.jokers.cards <= 0 or (card.ability.extra.activated_faceup and card.ability.extra.activated_facedown) then
            return false
        end
        local facing = G.jokers.cards[1].facing
        if card.ability.extra.activated_faceup and facing == "front" or card.ability.extra.activated_facedown and facing == "back" then
            return false
        end
        for _, joker in ipairs(G.jokers.cards) do
            if joker.facing ~= facing then
                return false
            end
        end
        return true
    end,
})

local mod_calculate_ref = SMODS.current_mod.calculate or function() end
SMODS.current_mod.calculate = function(self, context)
    local ret = mod_calculate_ref(self, context)
    if context.joy_post_round_eval and G.GAME.joy_mimi_armor_banish then
        for i, joker in ipairs(G.jokers.cards) do
            if JoyousSpring.is_monster_archetype(joker, "Mimighoul") or joker.facing == "back" then
                JoyousSpring.banish(joker, "blind_selected")
            end
        end
        G.GAME.joy_mimi_armor_banish = nil
    end

    if context.ending_shop and G.GAME.joy_mimi_fairy_reroll then
        G.E_MANAGER:add_event(Event({
            func = function()
                G.from_boss_tag = true
                G.FUNCS.reroll_boss()
                return true
            end
        }))
    end
    return ret
end

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "mimi" },
    label = "k_joy_archetype_mimi"
}
