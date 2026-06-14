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
    pos = { x = 2, y = 4 },
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

-- Mysterion the Dragon Crown
JoyousSpring.Joker({
    key = "mysterion",
    atlas = 'Misc03',
    pos = { x = 4, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult_minus,
                math.max(0,
                    card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0) -
                    card.ability.extra.mult_minus * (G.GAME.joy_cards_banished or 0)) }
        }
    end,
    joy_glossary = { 'banish' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Dragon" },
                        },
                    }
                }
            },
            mult = 10,
            mult_minus = 20,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = math.max(0,
                        card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0) -
                        card.ability.extra.mult_minus * (G.GAME.joy_cards_banished or 0))
                }
            end

            if not card.ability.extra.activated and JoyousSpring.is_activated_context(card, context) then
                local targets = JoyousSpring.get_materials_owned({ { monster_type = "Dragon" }, { monster_type = "Spellcaster" } })
                if next(targets) then
                    JoyousSpring.create_overlay_effect_selection(card, targets, 1, 1, localize("k_joy_select"))
                end
            end
            if not card.ability.extra.activated and JoyousSpring.is_exit_selection_context(card, context) then
                for _, selected_card in ipairs(context.joy_selection) do
                    JoyousSpring.banish(selected_card, "blind_selected")
                end
                card.ability.extra.activated = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = nil
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        return JoyousSpring.any_materials_owned({ { monster_type = "Dragon" }, { monster_type = "Spellcaster" } })
    end,
})

-- Secreterion Dragon
JoyousSpring.Joker({
    key = "secreterion",
    atlas = 'Misc03',
    pos = { x = 5, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult_minus,
                math.max(0,
                    card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0) -
                    card.ability.extra.mult_minus * (G.GAME.joy_joker_cards_revived or 0)) }
        }
    end,
    joy_glossary = { 'revive' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Dragon",
                summon_type = "FUSION",
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Dragon" },
                        },
                    }
                }
            },
            mult = 10,
            mult_minus = 20,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = math.max(0,
                        card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0) -
                        card.ability.extra.mult_minus * (G.GAME.joy_joker_cards_revived or 0))
                }
            end

            if not card.ability.extra.activated and JoyousSpring.is_activated_context(card, context) then
                JoyousSpring.revive_pseudorandom({ { monster_type = "Dragon" }, { monster_type = "Spellcaster" } },
                    self.key, true)
                card.ability.extra.activated = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = nil
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        return #G.jokers.cards < G.jokers.config.card_limit and
            JoyousSpring.any_materials_in_graveyard({ { monster_type = "Dragon" }, { monster_type = "Spellcaster" } },
                true)
    end,
})

-- Ace★Spades Speculation
JoyousSpring.Joker({
    key = "acespades",
    atlas = 'Misc03',
    pos = { x = 3, y = 4 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult_gain_less, card.ability.extra.current_mult } }
    end,
    joy_glossary = { 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Warrior",
                summon_type = "FUSION",
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { rarity = 3 },
                            { rarity = 1, facedown = true },
                        },
                    }
                }
            },
            mult_gain = 5,
            mult_gain_less = 1,
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
            if context.individual and context.cardarea == G.play then
                local pcard = context.other_card
                local id = pcard:get_id()
                local is_hearts = pcard:is_suit("Hearts")
                local is_clubs = pcard:is_suit("Clubs")
                local is_spades = pcard:is_suit("Spades")
                local is_diamonds = pcard:is_suit("Diamonds")
                if is_hearts and (id == 2 or id == 10 or id == 11) then
                    card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult_gain
                end
                if (is_spades and (id == 2 or id == 10 or id == 11 or id == 14)) or (is_diamonds and id == 6) then
                    card.ability.extra.current_mult = card.ability.extra.current_mult +
                        card.ability.extra.mult_gain_less
                end
                if is_clubs and (id == 2 or id == 10 or id == 11) then
                    card.ability.extra.current_mult = math.max(0,
                        card.ability.extra.current_mult - card.ability.extra.mult_gain)
                end
            end
            if JoyousSpring.is_activated_context(card, context) then
                card.ability.extra.current_mult = card.ability.extra.current_mult * 2 * #G.hand.highlighted

                JoyousSpring.tribute(card, G.hand.highlighted)
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.active or #G.hand.highlighted <= 0 or card.ability.extra.current_mult <= 0 then
            return false
        end
        for _, pcard in ipairs(G.hand.highlighted) do
            if not (pcard:get_id() == 14 and pcard:is_suit("Spades")) then
                return false
            end
        end
        return true
    end,
})
