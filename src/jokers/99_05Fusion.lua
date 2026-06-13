--- FUSION FREE AGENTS

-- Mudragon of the Swamp

JoyousSpring.Joker({
    key = "mudragon",
    atlas = 'Misc01',
    pos = { x = 2, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    joy_glossary = { "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                is_all_attributes = true,
                is_all_materials = { FUSION = true },
                attribute = "WATER",
                monster_type = "Wyrm",
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            {},
                            {},
                        },
                        restrictions = {
                            different_rarities = true
                        }
                    }
                },
            },
        },
    },
})

-- Garura, Wings of Resonant Life

JoyousSpring.Joker({
    key = "garura",
    atlas = 'Misc01',
    pos = { x = 3, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, card.ability.extra.h_size_gain } }
    end,
    joy_glossary = { "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "WingedBeast",
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            {},
                            {},
                        },
                        restrictions = {
                            same_rarity = true,
                            different_names = true
                        }
                    }
                }
            },
            h_size = 2,
            h_size_gain = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            G.hand:change_size(card.ability.extra.h_size_gain)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(card.ability.extra.h_size)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
})

-- Quintet Magician
JoyousSpring.Joker({
    key = "quintet",
    atlas = "Misc03",
    pos = { x = 0, y = 4 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.rounds } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "FUSION",
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Spellcaster" },
                            { monster_type = "Spellcaster" },
                            { monster_type = "Spellcaster" },
                            { monster_type = "Spellcaster" },
                        },
                    }
                }
            },
            rounds = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.modify_final_cashout then
                card.ability.extra.rounds = card.ability.extra.rounds - 1
                if card.ability.extra.rounds <= 0 then
                    SMODS.destroy_cards(card)
                end
                return {
                    modify = context.amount
                }
            end
            if context.joy_selecting_hand and card.ability.extra.active then
                G.GAME.chips = G.GAME.blind.chips
                G.STATE = G.STATES.HAND_PLAYED
                G.STATE_COMPLETE = true
                end_round()
                return {
                    message = localize("k_joy_defeated")
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local materials = JoyousSpring.get_materials(card)
            local hash = {}
            local different_names = true
            for _, material in ipairs(materials) do
                if hash[material] then
                    different_names = false
                    break
                end
                hash[material] = true
            end
            if different_names then
                card.ability.extra.active = true
            end
        end
        if not card.debuff and G.STATE == G.STATES.SELECTING_HAND then
            G.GAME.chips = G.GAME.blind.chips
            G.STATE = G.STATES.HAND_PLAYED
            G.STATE_COMPLETE = true
            end_round()
        end
    end,
})
