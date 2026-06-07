--- DARK MAGICIAN
SMODS.Atlas({
    key = "dm",
    path = "40DarkMagician.png",
    px = 71,
    py = 95
})

local dm_family = {
    "j_joy_dm_apprentice",
    "j_joy_dm_chromagician",
    "j_joy_dm_sorceress",
    "j_joy_dm_darkillusion",
    "j_joy_dm_robe",
    "j_joy_dm_rod",
    "j_joy_dm_souls",
    "j_joy_dm_valkyria",
    "j_joy_dm_kuri",
    "j_joy_dm_conjurer",
    "j_joy_dm_mahad",
    "j_joy_dm_mana",
    "j_joy_dm_timaeus",
    "j_joy_dm_warlock",
    "j_joy_dm_blackchaos",
    "j_joy_dm_blackchaosmax",
    "j_joy_dm_chaosritual",
    "j_joy_dm_illusion",
    "j_joy_dm_amulet",
    "j_joy_dm_timaeusmagical",
    "j_joy_dm_cavalry",
    "j_joy_dm_dragoon",
    "j_joy_dm_ebonillusion",
    "j_joy_dm_ebonhigh",
    "j_joy_dm_salvation",
    properties = { { monster_archetypes = { "DarkMagician" } }, },
    name = "k_joy_archetype"
}

local dm_fusions = {
    "j_joy_dm_amulet",
    "j_joy_dm_timaeusmagical",
    "j_joy_dm_cavalry",
    "j_joy_dm_dragoon",
    "j_joy_dm_dragonknight",
    "j_joy_dm_dmgknight",
    "j_joy_dm_destruction",
    "j_joy_dm_magicians",
}

local dm_bypass_room_check = function(card, from_booster)
    return JoyousSpring.any_materials_owned({ { is_normal = true } })
end

-- Dark Magician
JoyousSpring.Joker({
    key = "dm_dm",
    atlas = 'dm',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 1, y = 0 }, { x = 2, y = 0 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
    in_pool = function(self, args)
        return args and args.from_joyous
    end,
})

-- Dark Magician Girl
JoyousSpring.Joker({
    key = "dm_dmg",
    atlas = 'dm',
    pos = { x = 3, y = 0 },
    joy_alt_pos = { { x = 4, y = 0 }, { x = 5, y = 0 }, { x = 6, y = 0 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.increases,
                (card.ability.extra.mult + card.ability.extra.increases * #SMODS.find_card("j_joy_dm_dm")) *
                JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } }) }
        }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["DarkMagician"] = true }
            },
            mult = 1,
            increases = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = (card.ability.extra.mult + card.ability.extra.increases * #SMODS.find_card("j_joy_dm_dm")) *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } })
                }
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Apprentice Illusion Magician
JoyousSpring.Joker({
    key = "dm_apprentice",
    atlas = 'dm',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            mult = 15
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Spellcaster") then
                return {
                    mult = card.ability.extra.mult,
                    message_card = context.other_joker
                }
            end
            if context.setting_blind and G.GAME.blind.boss then
                local amount = JoyousSpring.count_materials_owned({ { is_effect = true, monster_attribute = "DARK", monster_type = "Spellcaster" } })
                for i = 1, amount do
                    JoyousSpring.revive_pseudorandom({ { is_normal = true } }, self.key)
                end
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Magician's Valkyria
JoyousSpring.Joker({
    key = "dm_valkyria",
    atlas = 'dm',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed and context.joy_card.ability.consumeable
                and not card.ability.extra.active then
                card.ability.extra.active = true
                JoyousSpring.create_pseudorandom({ { is_normal = true } }, self.key)
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
        return other_card.facing == "front" and
            JoyousSpring.is_monster_type(other_card, "Spellcaster")
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

local mod_set_debuff_ref = SMODS.current_mod.set_debuff or function() end
SMODS.current_mod.set_debuff = function(card)
    if JoyousSpring.is_monster_type(card, "Spellcaster") then
        local has_valkyria = false
        for _, joker in ipairs(SMODS.find_card("j_joy_dm_valkyria")) do
            if JoyousSpring.can_use_abilities(joker) then
                has_valkyria = true
                break
            end
        end
        return has_valkyria and "prevent_debuff" or nil
    end
    return mod_set_debuff_ref(card)
end

-- Dark Magician of Chaos
JoyousSpring.Joker({
    key = "dm_chaos",
    atlas = 'dm',
    pos = { x = 4, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.tributes } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                monster_archetypes = { ["DarkMagician"] = true }
            },
            tributes = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context, card.ability.extra.tributes) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                local choices = JoyousSpring.get_materials_in_graveyard({ { is_field_spell = true } })
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    JoyousSpring.create_summon({ key = choice })
                end
            end
            if context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")

                local choices = JoyousSpring.get_materials_owned({ { monster_type = "Spellcaster", is_effect = true } })
                local to_banish = pseudorandom_element(choices, self.key .. "banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = true
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        local spells = JoyousSpring.any_materials_in_graveyard({ { is_field_spell = true } })
        return materials >= card.ability.extra.tributes and spells
    end,
    joy_bypass_room_check = dm_bypass_room_check,
})

-- Magician of Dark Illusion
JoyousSpring.Joker({
    key = "dm_darkillusion",
    atlas = 'dm',
    pos = { x = 5, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.tarots, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            count = 0,
            tarots = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context, card.ability.extra.tributes) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                JoyousSpring.revive_pseudorandom({ { is_normal = true } }, self.key, nil, "e_negative")
            end
            if context.joy_tributed and context.joy_card.ability.set == "Tarot" then
                card.ability.extra.count = card.ability.extra.count + 1

                if card.ability.extra.count >= card.ability.extra.tarots then
                    local spells = JoyousSpring.get_materials_owned(
                        { { is_field_spell = true, exclude_edition = true } }, nil, nil, true)
                    local choice = pseudorandom_element(spells, self.key)
                    if choice then
                        choice:set_edition("e_negative")
                        card.ability.extra.count = card.ability.extra.count - card.ability.extra.tarots
                    end
                end
            end
            if context.card_added and JoyousSpring.is_field_spell(context.card) and not context.card.edition then
                if card.ability.extra.count >= card.ability.extra.tarots then
                    context.card:set_edition("e_negative")
                    card.ability.extra.count = card.ability.extra.count - card.ability.extra.tarots
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = true
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= 1
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Magician's Robe
JoyousSpring.Joker({
    key = "dm_robe",
    atlas = 'dm',
    pos = { x = 6, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            money = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                JoyousSpring.create_pseudorandom({ { is_normal = true } }, self.key)
                return {
                    dollars = card.ability.extra.money
                }
            end
        end
        if context.selling_self and next(SMODS.find_card("j_joy_dm_dm")) then
            JoyousSpring.create_summon({ key = "j_joy_dm_salvation" })
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = true
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= 1
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Magician's Rod
JoyousSpring.Joker({
    key = "dm_rod",
    atlas = 'dm',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            money = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_materials_owned({ { monster_type = "Spellcaster" } }, nil, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                JoyousSpring.create_pseudorandom({ { is_normal = true } }, self.key)
                return {
                    dollars = card.ability.extra.money
                }
            end
        end
        if context.selling_self and next(SMODS.find_card("j_joy_dm_dm")) then
            JoyousSpring.create_summon({ key = "j_joy_dm_salvation" })
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = true
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        return JoyousSpring.any_materials_owned({ { monster_type = "Spellcaster" } }, nil, true)
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Magicians' Souls
JoyousSpring.Joker({
    key = "dm_souls",
    atlas = 'dm',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, card.ability.extra.normals, card.ability.extra.h_size * math.floor(JoyousSpring.count_materials_owned({ { is_normal = true, exclude_tokens = true } }) / card.ability.extra.normals) } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            h_size = 1,
            normals = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                local amount = card.ability.extra.h_size *
                    math.floor(JoyousSpring.count_materials_owned({ { is_normal = true, exclude_tokens = true } }) /
                        card.ability.extra.normals)
                G.hand:change_size(amount)
                G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + amount
            end
        end
        if context.selling_self and next(SMODS.find_card("j_joy_dm_dm")) then
            JoyousSpring.create_summon({ key = "j_joy_dm_salvation" })
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Dark Magician Knight
JoyousSpring.Joker({
    key = "dm_knight",
    atlas = 'dm',
    pos = { x = 3, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 + JoyousSpring.count_materials_owned({ { is_normal = true, exclude_tokens = true } }) } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "DARK",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and context.other_card:get_id() == 13 then
                return {
                    repetitions = 1 + JoyousSpring.count_materials_owned({ { is_normal = true, exclude_tokens = true } })
                }
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Dark Eradicator Warlock
JoyousSpring.Joker({
    key = "dm_warlock",
    atlas = 'dm',
    pos = { x = 1, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent * 100, card.ability.extra.percent * 200 } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            percent = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_materials_owned({ { is_normal = true }, { is_field_spell = true } },
                    nil, true, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                local is_dm = context.joy_selection[1].config.center_key == "j_joy_dm_dm"
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                return {
                    score = G.GAME.blind.chips * card.ability.extra.percent * (is_dm and 2 or 1),
                    func = function()
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                if (G.GAME.chips >= G.GAME.blind.chips) then
                                    G.STATE = G.STATES.HAND_PLAYED
                                    G.STATE_COMPLETE = true
                                    end_round()
                                end
                                return true
                            end
                        }))
                    end
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = true
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated or not G.GAME.blind.in_blind then return false end
        return JoyousSpring.any_materials_owned({ { is_normal = true }, { is_field_spell = true } }, nil, true, true)
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Chronicle Magician
JoyousSpring.Joker({
    key = "dm_chromagician",
    atlas = 'dm',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.sends } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            xmult = 1.5,
            sends = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_normal_monster(context.other_joker) and context.other_joker.config.center_key ~= "j_joy_token" then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
            if context.setting_blind then
                JoyousSpring.send_to_graveyard_pseudorandom({ { is_normal = true } }, self.key, 3)
            end
            if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
                JoyousSpring.revive_pseudorandom({ { is_normal = true } }, self.key .. "_revive")
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Chronicle Sorceress
JoyousSpring.Joker({
    key = "dm_sorceress",
    atlas = 'dm',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { is_normal = true } }), card.ability.extra.sends } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
            chips = 20,
            sends = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { is_normal = true } })
                }
            end
            if context.setting_blind then
                JoyousSpring.send_to_graveyard("j_joy_dm_dm", card.ability.extra.sends)
            end
        end
        if context.selling_self then
            local choices = {}
            for _, joker in ipairs(G.jokers.cards) do
                if joker ~= card then
                    choices[#choices + 1] = joker
                end
            end
            local properties = JoyousSpring.get_type_attribute_allowlist(choices)
            for _, property in ipairs(JoyousSpring.get_type_attribute_allowlist(choices)) do
                property.is_normal = true
            end
            JoyousSpring.revive_pseudorandom(properties, self.key, true)
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Palladium Oracle Mahad
JoyousSpring.Joker({
    key = "dm_mahad",
    atlas = 'dm',
    pos = { x = 4, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and context.other_joker.config.center_key == "j_joy_dm_dm" then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
            if context.ante_change and context.ante_end then
                JoyousSpring.create_summon({ key = "j_joy_dm_dm" })
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Palladium Oracle Mana
JoyousSpring.Joker({
    key = "dm_mana",
    atlas = 'dm',
    pos = { x = 5, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.tarots, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
            },
            xchips = 2,
            tarots = 10,
            count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and context.other_joker.config.center_key == "j_joy_dm_dmg" then
                return {
                    xchips = card.ability.extra.xchips,
                    message_card = context.other_joker
                }
            end
            if context.joy_tributed and context.joy_card.ability.set == "Tarot" then
                card.ability.extra.count = card.ability.extra.count + 1
                if card.ability.extra.count >= card.ability.extra.tarots then
                    while card.ability.extra.count >= card.ability.extra.tarots do
                        JoyousSpring.create_summon({ key = "j_joy_dm_dmg" })
                        card.ability.extra.count = card.ability.extra.count - card.ability.extra.tarots
                    end
                end
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Magikuriboh
JoyousSpring.Joker({
    key = "dm_kuri",
    atlas = 'dm',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "DARK",
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over and not G.GAME.joy_magikuriboh then
                if next(SMODS.find_card("j_joy_dm_dm")) and
                    next(SMODS.find_card("j_joy_dm_dmg")) then
                    G.GAME.joy_magikuriboh = true
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.hand_text_area.blind_chips:juice_up()
                            G.hand_text_area.game_chips:juice_up()
                            play_sound('tarot1')
                            SMODS.destroy_cards(card, nil, true)
                            return true
                        end
                    }))
                    return {
                        message = localize('k_saved_ex'),
                        saved = 'ph_magikuriboh',
                        colour = G.C.RED
                    }
                end
            end
        end
        if context.selling_self and G.GAME.joy_magikuriboh then
            local choice = pseudorandom_element(dm_fusions, self.key)
            if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Dimension Conjurer
JoyousSpring.Joker({
    key = "dm_conjurer",
    atlas = 'dm',
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
    calculate = function(self, card, context)
        if context.selling_self and next(G.hand.cards) then
            local count = 0
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_monster_type(joker, "Spellcaster") and joker ~= card then
                    count = count + 1
                end
            end
            SMODS.draw_cards(count)
        end
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Timaeus the United Dragon
JoyousSpring.Joker({
    key = "dm_timaeus",
    atlas = 'dm',
    pos = { x = 6, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
            },
            mult = 15
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local choice = pseudorandom_element(dm_fusions, self.key)
            if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if not from_debuff then
            local count = 0
            local summmaterials = JoyousSpring.get_materials(other_card)
            for _, material in ipairs(summmaterials) do
                if JoyousSpring.is_material_center(material, { is_normal = true }) then
                    count = count + 1
                end
            end
            config.current_mult = config.mult * count
        end
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.current_mult
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 15,
            current_mult = 0
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.current_mult } }
    end,
    joy_bypass_room_check = dm_bypass_room_check
})

-- Magician of Black Chaos
JoyousSpring.Joker({
    key = "dm_blackchaos",
    atlas = 'dm',
    pos = { x = 4, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Magician of Black Chaos MAX
JoyousSpring.Joker({
    key = "dm_blackchaosmax",
    atlas = 'dm',
    pos = { x = 6, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Magician of Chaos
JoyousSpring.Joker({
    key = "dm_chaosritual",
    atlas = 'dm',
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Illusion of Chaos
JoyousSpring.Joker({
    key = "dm_illusion",
    atlas = 'dm',
    pos = { x = 3, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Amulet Dragon
JoyousSpring.Joker({
    key = "dm_amulet",
    atlas = 'dm',
    pos = { x = 1, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Timaeus the United Magical Dragon
JoyousSpring.Joker({
    key = "dm_timaeusmagical",
    atlas = 'dm',
    pos = { x = 0, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
                summon_type = "FUSION",
            },
        },
    },
})

-- Dark Cavalry
JoyousSpring.Joker({
    key = "dm_cavalry",
    atlas = 'dm',
    pos = { x = 2, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Dark Magician the Dragon Knight
JoyousSpring.Joker({
    key = "dm_dragonknight",
    atlas = 'dm',
    pos = { x = 3, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Dark Magician Girl the Dragon Knight
JoyousSpring.Joker({
    key = "dm_dmgknight",
    atlas = 'dm',
    pos = { x = 0, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                summon_type = "FUSION",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Dark Magician of Destruction
JoyousSpring.Joker({
    key = "dm_destruction",
    atlas = 'dm',
    pos = { x = 4, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Red-Eyes Dark Dragoon
JoyousSpring.Joker({
    key = "dm_dragoon",
    atlas = 'dm',
    pos = { x = 5, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- The Dark Magicians
JoyousSpring.Joker({
    key = "dm_magicians",
    atlas = 'dm',
    pos = { x = 6, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Ebon Illusion Magician
JoyousSpring.Joker({
    key = "dm_ebonillusion",
    atlas = 'dm',
    pos = { x = 2, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "XYZ",
            },
        },
    },
})

-- Ebon High Magician
JoyousSpring.Joker({
    key = "dm_ebonhigh",
    atlas = 'dm',
    pos = { x = 1, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "XYZ",
            },
        },
    },
})

-- Magician's Salvation
JoyousSpring.Joker({
    key = "dm_salvation",
    atlas = 'dm',
    pos = { x = 2, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        copy_table(dm_family)
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dm" },
    label = "k_joy_archetype_dm"
}
