--- VOICELESS VOICE
SMODS.Atlas({
    key = "voice",
    path = "36VoicelessVoice.png",
    px = 71,
    py = 95
})

-- Lo, the Prayers of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_lo",
    atlas = 'voice',
    pos = { x = 0, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "ritual", "tribute", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
                calculate_reroll_cost(true)
                for i = 1, card.ability.extra.adds do
                    JoyousSpring.add_monster_tag_pseudorandom(
                        { { monster_attribute = "LIGHT", summon_type = "RITUAL" } }, self.key)
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "RITUAL")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.create_pseudorandom(
                    { { monster_archetypes = { "VoicelessVoice" }, exclude_summon_types = { "RITUAL" } } },
                    self.key .. "_create", true)
            end
        end
    end,
})

-- Saffira, Dragon Queen of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_saffira",
    atlas = 'voice',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "ritual", "tribute", "material", "sidedeck" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
            money = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "RITUAL", monster_attribute = "LIGHT" } })
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "RITUAL")
    end,
    joy_transfer_calc_dollar_bonus = function(self, other_card, config)
        local amount = config.money * (G.GAME.current_round.joy_tributed_cards_LIGHT or 0)
        return amount > 0 and amount or nil
    end,
    joy_transfer_config = function(self, other_card)
        return {
            money = 5
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.money, config.money * (G.GAME.current_round.joy_tributed_cards_LIGHT or 0) } }
    end
})

-- Sauravis, Dragon Sage of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_sauravis",
    atlas = 'voice',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "ritual", "tribute", "material", "revive" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
                is_all_materials = { RITUAL = true },
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
            chips = 10,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                JoyousSpring.revive_pseudorandom({ { summon_type = "RITUAL", monster_attribute = "LIGHT" } }, self.key,
                    nil, "e_negative")
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "RITUAL")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    chips = config.chips * (G.GAME.current_round.joy_tributed_cards_LIGHT or 0)
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            chips = 10
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.chips, config.chips * (G.GAME.current_round.joy_tributed_cards_LIGHT or 0) } }
    end
})

-- Saffira, Divine Dragon of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_divine",
    atlas = 'voice',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_secret_pack_joy_ritual
        return { vars = { card.ability.extra.h_size, card.ability.extra.h_size * JoyousSpring.count_materials_in_graveyard({ { key = "j_joy_voice_lo" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "graveyard", "enter" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Dragon",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT" },
                            { monster_attribute = "LIGHT" },
                        }
                    }
                }
            },
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.add_secret_tag("p_secret_pack_joy_ritual")
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local lo_count = JoyousSpring.count_materials_in_graveyard({ { key = "j_joy_voice_lo" } })
            G.hand:change_size(card.ability.extra.h_size * lo_count)
            G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                card.ability.extra.h_size * lo_count
        end
    end
})

-- Skull Guardian, Protector of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_skull",
    atlas = 'voice',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult *
            (G.GAME.current_round.joy_tributed_cards_LIGHT or 0), card.ability.extra.xchips, 1 +
            card.ability.extra.xchips *
            JoyousSpring.count_materials_in_graveyard({ { key = "j_joy_voice_lo" } }) }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "graveyard" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT" },
                            { monster_attribute = "LIGHT" },
                        }
                    }
                }
            },
            mult = 10,
            xchips = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.current_round.joy_tributed_cards_LIGHT or 0),
                    xchips = 1 + card.ability.extra.xchips *
                        JoyousSpring.count_materials_in_graveyard({ { key = "j_joy_voice_lo" } })
                }
            end
        end
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "voice" },
    label = "k_joy_archetype_voice"
}
