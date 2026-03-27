--- PURRELY
SMODS.Atlas({
    key = "purr",
    path = "28Purrely.png",
    px = 71,
    py = 95
})

local memory_suits = {
    Hearts = "j_joy_purr_ehappiness",
    Spades = "j_joy_purr_eplump",
    Clubs = "j_joy_purr_enoir",
    Diamonds = "j_joy_purr_ebeauty",
}

local suits_to_type = {
    Hearts = "happy",
    Clubs = "sleepy",
    Diamonds = "pretty",
    Spades = "delicious",
}

local count_suits_in_hand = function(hand)
    local suits = {}
    for _, pcard in ipairs(hand) do
        suits[#suits + 1] = {}
        local any_suit = SMODS.has_any_suit(pcard)
        for _, key in ipairs(SMODS.Suit.obj_buffer) do
            if any_suit or pcard:is_suit(key) then
                table.insert(suits[#suits], key)
            end
        end
    end

    table.sort(suits, function(a, b)
        return #a < #b
    end)

    local used = {}
    local count = 0

    for _, card_suits in ipairs(suits) do
        for _, suit_key in ipairs(card_suits) do
            if not used[suit_key] then
                used[suit_key] = true
                count = count + 1
                break
            end
        end
    end
    return count
end

local get_memory_seal = function(card)
    if card.seal == "joy_purr_memory" and not SMODS.has_no_suit(card) then
        return suits_to_type[card.base.suit]
    end
end

local count_seals_in_deck = function(memory_type, divisor)
    if not G.jokers then return 0 end
    local count = 0
    for _, card in ipairs(G.playing_cards) do
        if (not memory_type and get_memory_seal(card)) or (get_memory_seal(card) == memory_type) then
            count = count + 1
        end
    end
    return divisor and math.floor(count / divisor) or count
end

local purrely_can_activate = function()
    if #G.hand.highlighted ~= 1 then return end
    local card = G.hand.highlighted[1]
    if card.seal ~= "joy_purr_memory" then return end
    local suit = SMODS.has_no_suit(card) and "none" or card.base.suit

    return memory_suits[suit]
end

local purr_retrigger_count = function(memory_type, card)
    return (card.ability.extra.retriggers + count_seals_in_deck(memory_type, card.ability.extra.per)) *
        count_suits_in_hand(context.scoring_hand) * (next(SMODS.find_card("j_joy_purr_exnoir")) and 2 or 1)
end

-- Purrely
SMODS.Joker({
    key = "purr_purrely",
    atlas = 'purr',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.excavates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Purrely"] = true }
            },
            excavates = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                if not context.joy_excavated.seal then
                    context.joy_excavated:set_seal("joy_purr_memory")
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and purrely_can_activate() then
                    JoyousSpring.transform_card(card,
                        memory_suits[G.hand.highlighted[1].base.suit] or "j_joy_purr_ehappiness", false, "XYZ")
                    SMODS.destroy_cards(G.hand.highlighted[1], nil, true)
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return purrely_can_activate()
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind then
            return card.ability.extra.excavates
        end
    end
})

-- Purrelyly
SMODS.Joker({
    key = "purr_purrelyly",
    atlas = 'purr',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "DARK",
                monster_archetypes = { ["Purrely"] = true }
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                SMODS.add_card { key = "c_joy_purr_friend" }
                card:juice_up()
            end

            if context.joy_excavated and not card.ability.extra.activated and context.joy_other_context.setting_blind then
                if context.joy_excavated.seal == "joy_purr_memory" and not SMODS.has_no_suit(context.joy_excavated) and memory_suits[context.joy_excavated.base.suit] then
                    local pcard = context.joy_excavated
                    card.ability.extra.activated = true
                    return {
                        message = localize("k_joy_hit"),
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    JoyousSpring.transform_card(card,
                                        memory_suits[pcard.base.suit] or "j_joy_purr_ehappiness", false,
                                        "XYZ")
                                    G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                                    local card_copied = copy_card(pcard, nil, nil, G.playing_card)
                                    card_copied:add_to_deck()
                                    G.deck.config.card_limit = G.deck.config.card_limit + 1
                                    table.insert(G.playing_cards, card_copied)
                                    G.deck:emplace(card_copied)
                                    G.E_MANAGER:add_event(Event({
                                        func = function()
                                            SMODS.calculate_context({ playing_card_added = true, cards = { card_copied } })
                                            return true
                                        end
                                    }))
                                    return true
                                end
                            }))
                        end
                    }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = "c_joy_purr_friend" }
                    return true
                end
            }))
        end
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind then
            local count = 0
            local found
            for i = #G.deck.cards, 1, -1 do
                count = count + 1
                local pcard = G.deck.cards[i]
                if pcard.seal == "joy_purr_memory" and not SMODS.has_no_suit(pcard) and memory_suits[pcard.base.suit] then
                    found = true
                    break
                end
            end
            card.joy_count = found and count or 0
            return found and count or 0
        end
    end,
})

-- Epurrely Happiness
SMODS.Joker({
    key = "purr_ehappiness",
    atlas = 'purr',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers + count_seals_in_deck("happy", card.ability.extra.per), card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Purrely"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and (context.cardarea == G.play or G.GAME.joy_purr_memory_apply) and not context.end_of_round then
                if get_memory_seal(context.other_card) == "happy" then
                    return {
                        repetitions = purr_retrigger_count("happy", card)
                    }
                end
            end

            if context.ante_change and context.ante_end and card.ability.extra.joyous_spring.xyz_materials <= 0 then
                JoyousSpring.transform_card(card, "j_joy_purr_purrely")
            end

            if context.joy_detach and context.joy_detaching_card == card and not card.ability.extra.activated then
                JoyousSpring.ease_detach(card)

                JoyousSpring.create_pseudorandom({ { is_main_deck = true, monster_archetypes = { "Purrely" } } })

                card.ability.extra.activated = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = false
    end,
    joy_can_detach = function(self, card)
        return not card.ability.extra.activated
    end
})

-- Epurrely Noir
SMODS.Joker({
    key = "purr_enoir",
    atlas = 'purr',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers + count_seals_in_deck("sleepy", card.ability.extra.per), card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "DARK",
                monster_archetypes = { ["Purrely"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and (context.cardarea == G.play or G.GAME.joy_purr_memory_apply) and not context.end_of_round then
                if get_memory_seal(context.other_card) == "sleepy" then
                    return {
                        repetitions = purr_retrigger_count("sleepy", card)
                    }
                end
            end

            if context.ante_change and context.ante_end and card.ability.extra.joyous_spring.xyz_materials <= 0 then
                JoyousSpring.transform_card(card, "j_joy_purr_purrelyly")
            end

            if context.joy_excavated and card.ability.extra.activated and context.joy_number <= 1 and context.joy_other_context.joy_detach and context.joy_other_context.joy_detaching_card == card and #G.hand.highlighted == 1 then
                card.ability.extra.activated = false
                context.joy_excavated:juice_up()
                copy_card(G.hand.highlighted[1], context.joy_excavated)
            end
        end
    end,
    joy_can_detach = function(self, card)
        return #G.hand.highlighted == 1
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.joy_detach and context.joy_detaching_card == card and #G.hand.highlighted == 1 then
            JoyousSpring.ease_detach(card)

            card.ability.extra.activated = true
            return 1
        end
    end
})

-- Epurrely Beauty
SMODS.Joker({
    key = "purr_ebeauty",
    atlas = 'purr',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers + count_seals_in_deck("pretty", card.ability.extra.per), card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach, card.ability.extra.tributes, card.ability.extra.rerolls } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "WATER",
                monster_archetypes = { ["Purrely"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1,
            tributes = 1,
            rerolls = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and (context.cardarea == G.play or G.GAME.joy_purr_memory_apply) and not context.end_of_round then
                if get_memory_seal(context.other_card) == "pretty" then
                    return {
                        repetitions = purr_retrigger_count("pretty", card)
                    }
                end
            end

            if context.ante_change and context.ante_end and card.ability.extra.joyous_spring.xyz_materials <= 0 then
                JoyousSpring.transform_card(card, "j_joy_purr_purrely")
            end

            if context.joy_detach and context.joy_detaching_card == card then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end

            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.ease_detach(card)
                G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + card.ability.extra.rerolls
                calculate_reroll_cost(true)
            end
        end
    end,
    joy_can_detach = function(self, card)
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= card.ability.extra.tributes
    end
})

-- Epurrely Plump
SMODS.Joker({
    key = "purr_eplump",
    atlas = 'purr',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers + count_seals_in_deck("delicious", card.ability.extra.per), card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach, card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "EARTH",
                monster_archetypes = { ["Purrely"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1,
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and (context.cardarea == G.play or G.GAME.joy_purr_memory_apply) and not context.end_of_round then
                if get_memory_seal(context.other_card) == "delicious" then
                    return {
                        repetitions = purr_retrigger_count("delicious", card)
                    }
                end
            end

            if context.ante_change and context.ante_end and card.ability.extra.joyous_spring.xyz_materials <= 0 then
                JoyousSpring.transform_card(card, "j_joy_purr_purrely")
            end

            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                local choices = JoyousSpring.get_materials_owned({ { monster_archetypes = { "Purrely" } } })
                local to_banish = pseudorandom_element(choices, card.config.center.key)
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
        end
    end
})

-- Expurrely Happiness
SMODS.Joker({
    key = "purr_exhappiness",
    atlas = 'purr',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Purrely"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", summon_type = "XYZ" },
                        },
                        transfer_materials = true
                    },
                }
            },
            xmult = 1.5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and (context.cardarea == G.play or context.cardarea == G.hand) and not context.end_of_round
                and context.other_card.seal == "joy_purr_memory" then
                return {
                    xmult = card.ability.extra.xmult
                }
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                local creates = JoyousSpring.count_materials_owned({ { monster_archetypes = { "Purrely" } } }, true)
                for i = 1, creates do
                    SMODS.add_card { key = "c_joy_purr_friend", edition = 'e_negative' }
                end
                if card.ability.extra.joyous_spring.xyz_materials <= 0 then
                    JoyousSpring.transform_card(card, "j_joy_purr_purrely")
                end
            end

            if context.joy_detach and context.joy_detaching_card == card and not G.GAME.joy_purr_friend_apply then
                JoyousSpring.ease_detach(card, math.ceil(card.ability.extra.joyous_spring.xyz_materials / 2))

                G.GAME.joy_purr_friend_apply = true
            end
        end
    end,
    joy_can_detach = function(self, card)
        return not G.GAME.joy_purr_friend_apply
    end
})

-- Expurrely Noir
SMODS.Joker({
    key = "purr_exnoir",
    atlas = 'purr',
    pos = { x = 0, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "DARK",
                monster_archetypes = { ["Purrely"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_type = "Fairy", exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                    {
                        type = "XYZ",
                        materials = {
                            { monster_type = "Fairy", summon_type = "XYZ" },
                        },
                        transfer_materials = true
                    },
                }
            },
            xchips = 1.5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and (context.cardarea == G.play or context.cardarea == G.hand) and not context.end_of_round
                and context.other_card.seal == "joy_purr_memory" then
                return {
                    xchips = card.ability.extra.xchips
                }
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                if card.ability.extra.joyous_spring.xyz_materials <= 0 then
                    JoyousSpring.transform_card(card, "j_joy_purr_purrelyly")
                end
            end

            if context.joy_detach and context.joy_detaching_card == card and not G.GAME.joy_purr_memory_apply then
                JoyousSpring.ease_detach(card, math.ceil(card.ability.extra.joyous_spring.xyz_materials / 2))

                G.GAME.joy_purr_memory_apply = true
            end
        end
    end,
    joy_can_detach = function(self, card)
        return not G.GAME.joy_purr_memory_apply
    end
})

-- Stray Purrely Street
SMODS.Joker({
    key = "purr_street",
    atlas = 'purr',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attaches, card.ability.extra.requires } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Purrely"] = true }
            },
            attaches = 1,
            requires = 12
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = SMODS.merge_lists { SMODS.find_card("j_joy_purr_ehappiness"), SMODS.find_card("j_joy_purr_enoir") }
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == 1 then
                    local to_transform = context.joy_selection[1]
                    JoyousSpring.transform_card(to_transform,
                        to_transform.config.center.key == "j_joy_purr_ehappiness" and "j_joy_purr_exhappiness" or
                        "j_joy_purr_exnoir", true, "XYZ")
                    card.ability.extra.activated = true
                end
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
        return not card.ability.extra.activated and
            (next(SMODS.find_card("j_joy_purr_ehappiness")) or next(SMODS.find_card("j_joy_purr_enoir")))
            and count_seals_in_deck() >= 12
    end,
})

local mod_set_debuff_ref = SMODS.current_mod.set_debuff or function() end
SMODS.current_mod.set_debuff = function(card)
    if card.seal == "joy_purr_memory" then
        local has_street = false
        for _, joker in ipairs(SMODS.find_card("j_joy_purr_street")) do
            if JoyousSpring.can_use_abilities(joker) then
                has_street = true
                break
            end
        end
        return has_street and "prevent_debuff" or nil
    end
    return mod_set_debuff_ref(card)
end

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "purr" },
    label = "k_joy_archetype_purr"
}
