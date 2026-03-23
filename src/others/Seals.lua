-- SEALS

--#region Purrely
local suits_to_type = {
    Hearts = "happy",
    Clubs = "sleepy",
    Diamonds = "pretty",
    Spades = "delicious",
}

SMODS.Seal {
    key = 'purr_memory',
    atlas = "purr",
    pos = { x = 2, y = 3 },
    config = {
        extra = {
            odds_joker = 10,
            odds_planet = 10,
            mult = 5,
            chips = 50,
            money = 1
        }
    },
    badge_colour = G.C.JOY.MOD,
    discovered = true,
    draw = function(self, card, layer)
        if not G.shared_seals.joy_purr_memory_happy then
            G.shared_seals.joy_purr_memory_happy = SMODS.create_sprite(0, 0, G.CARD_W, G.CARD_H,
                SMODS.get_atlas(self.atlas), { x = 1, y = 4 })
            G.shared_seals.joy_purr_memory_sleepy = SMODS.create_sprite(0, 0, G.CARD_W, G.CARD_H,
                SMODS.get_atlas(self.atlas), { x = 2, y = 4 })
            G.shared_seals.joy_purr_memory_pretty = SMODS.create_sprite(0, 0, G.CARD_W, G.CARD_H,
                SMODS.get_atlas(self.atlas), { x = 0, y = 4 })
            G.shared_seals.joy_purr_memory_delicious = SMODS.create_sprite(0, 0, G.CARD_W, G.CARD_H,
                SMODS.get_atlas(self.atlas), { x = 3, y = 4 })
        end
        local memory_type = "inactive"
        if card.base and card.base.suit then
            if SMODS.has_no_suit(card) or not suits_to_type[card.base.suit] then
                memory_type = "inactive"
            else
                memory_type = suits_to_type[card.base.suit]
            end
        end
        local seal_to_draw = "joy_purr_memory" .. (memory_type == "inactive" and "" or ("_" .. memory_type))
        G.shared_seals[seal_to_draw].role.draw_major = card
        G.shared_seals[seal_to_draw]:draw_shader('dissolve', nil, nil, nil, card.children.center)
    end,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.seal.extra.odds_joker,
            self.key .. "_joker")

        local memory_type

        if not card.fake_card and card.base and card.base.suit then
            if SMODS.has_no_suit(card) or not suits_to_type[card.base.suit] then
                memory_type = "inactive"
            else
                memory_type = suits_to_type[card.base.suit]
            end
        end

        local numerator_planet, denominator_planet = 1, card.ability.seal.extra.odds_planet
        if memory_type == "delicious" then
            numerator_planet, denominator_planet = SMODS.get_probability_vars(card, 1,
                card.ability.seal.extra.odds_planet,
                self.key .. "_planet")
        end

        local vars = { numerator, denominator, card.ability.seal.extra.mult, card.ability.seal.extra.chips, card.ability
            .seal.extra.money, numerator_planet, denominator_planet }

        if not memory_type then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_purr_memory_seal_happy", vars = vars }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_purr_memory_seal_sleepy", vars = vars }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_purr_memory_seal_pretty", vars = vars }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_purr_memory_seal_delicious", vars = vars }
        end

        return {
            vars = vars,
            key = memory_type and "joy_purr_memory_seal_" .. memory_type or nil
        }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and (context.cardarea == G.play or G.GAME.joy_purr_memory_apply) then
            local memory_type
            if SMODS.has_no_suit(card) or not suits_to_type[card.base.suit] then
                return
            else
                memory_type = suits_to_type[card.base.suit]
            end
            if not memory_type then return end
            if SMODS.pseudorandom_probability(card, self.key .. "_joker", 1, card.ability.seal.extra.odds_joker) then
                JoyousSpring.create_summon(
                    { key = memory_type == "sleepy" and "j_joy_purr_purrelyly" or "j_joy_purr_purrely" }, true)
            end

            local suits = {}
            for _, pcard in ipairs(context.scoring_hand) do
                if pcard ~= card then
                    suits[#suits + 1] = {}
                    local any_suit = SMODS.has_any_suit(pcard)
                    for _, key in ipairs(SMODS.Suit.obj_buffer) do
                        if key ~= card.base.suit and (any_suit or pcard:is_suit(key)) then
                            table.insert(suits[#suits], key)
                        end
                    end
                end
            end

            table.sort(suits, function(a, b)
                return #a < #b
            end)

            local used = {}
            local count = 1

            for _, card_suits in ipairs(suits) do
                for _, suit_key in ipairs(card_suits) do
                    if not used[suit_key] then
                        used[suit_key] = true
                        count = count + 1
                        break
                    end
                end
            end

            if memory_type == "sleepy" then
                return {
                    chips = card.ability.seal.extra.chips * count
                }
            elseif memory_type == "pretty" then
                return {
                    dollars = card.ability.seal.extra.money * count
                }
            elseif memory_type == "delicious" then
                if SMODS.pseudorandom_probability(card, self.key .. "_planet", math.max(1, count), card.ability.seal.extra.odds_planet) then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "c_joy_purr_friend" }
                            card:juice_up()
                            return true
                        end
                    }))
                    return nil, true
                end
            else
                return {
                    mult = card.ability.seal.extra.mult * count
                }
            end
        end
    end,
}

local purr_can_use = function(self, card, suit)
    local all_same = #G.hand.highlighted > 0 and #G.hand.highlighted <= 5
    if #G.hand.highlighted <= 5 then
        for _, pcard in ipairs(G.hand.highlighted) do
            if SMODS.has_no_suit(pcard) or pcard.base.suit ~= suit then
                all_same = false
                break
            end
        end
    end
    return all_same or (#G.hand.highlighted <= 0 and (#G.jokers.cards < G.jokers.config.card_limit or
        JoyousSpring.count_materials_owned({ { summon_type = "XYZ" } })))
end

local purr_use = function(self, card, add_purrelyly)
    if #G.hand.highlighted > 0 then
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.15,
                func = function()
                    play_sound('tarot1', percent)
                    G.hand.highlighted[i]:juice_up(0.3, 0.5)
                    return true
                end
            }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.hand.highlighted[i]:set_seal("joy_purr_memory", nil, true)
                    return true
                end
            }))
        end
        delay(0.5)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end
    if #G.jokers.cards < G.jokers.config.card_limit then
        JoyousSpring.create_summon({ key = add_purrelyly and "j_joy_purr_purrelyly" or "j_joy_purr_purrely" }, true)
    end
    local xyzs = JoyousSpring.get_materials_owned({ { summon_type = "XYZ" } })
    if #xyzs > 0 then
        local choice = pseudorandom_element(xyzs, self.key)
        card.ability.extra.transferring = true
        JoyousSpring.transfer_abilities(choice, self.key, card)
    end
end

SMODS.Consumable {
    key = "purr_happy",
    atlas = 'purr',
    pos = { x = 3, y = 2 },
    set = "Spectral",
    discovered = true,
    config = { extra = {} },
    use = function(self, card, area, copier)
        purr_use(self, card)
    end,
    can_use = function(self, card)
        return purr_can_use(self, card, "Hearts")
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return card and card.ability.extra.transferring and JoyousSpring.is_summon_type(other_card, "XYZ") or false
    end,
    joy_transfer_config = function(self, other_card)
        return {
            set = "Spectral"
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.repetition and context.cardarea == G.play and other_card.ability.extra.joyous_spring.xyz_materials > 0 then
                return {
                    repetitions = other_card.ability.extra.joyous_spring.xyz_materials
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            JoyousSpring.ease_detach(other_card, 1, true)
        end
    end,
}

SMODS.Consumable {
    key = "purr_sleepy",
    atlas = 'purr',
    pos = { x = 1, y = 3 },
    set = "Spectral",
    discovered = true,
    config = { extra = {} },
    use = function(self, card, area, copier)
        purr_use(self, card, true)
    end,
    can_use = function(self, card)
        return purr_can_use(self, card, "Clubs")
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return card and card.ability.extra.transferring and JoyousSpring.is_summon_type(other_card, "XYZ") or false
    end,
    joy_transfer_config = function(self, other_card)
        return {
            set = "Spectral"
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.setting_blind and other_card.ability.extra.joyous_spring.xyz_materials > 0 then
                G.hand:change_size(other_card.ability.extra.joyous_spring.xyz_materials)
                G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                    other_card.ability.extra.joyous_spring.xyz_materials
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            JoyousSpring.ease_detach(other_card, 1, true)
        end
    end,
}

SMODS.Consumable {
    key = "purr_pretty",
    atlas = 'purr',
    pos = { x = 0, y = 3 },
    set = "Spectral",
    discovered = true,
    config = { extra = {} },
    use = function(self, card, area, copier)
        purr_use(self, card)
    end,
    can_use = function(self, card)
        return purr_can_use(self, card, "Diamonds")
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return card and card.ability.extra.transferring and JoyousSpring.is_summon_type(other_card, "XYZ") or false
    end,
    joy_transfer_config = function(self, other_card)
        return {
            set = "Spectral"
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joy_tributed then
                other_card.ability.extra.joyous_spring.xyz_materials =
                    other_card.ability.extra.joyous_spring.xyz_materials + 1
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            JoyousSpring.ease_detach(other_card, 1, true)
        end
    end,
}

SMODS.Consumable {
    key = "purr_delicious",
    atlas = 'purr',
    pos = { x = 2, y = 2 },
    set = "Spectral",
    discovered = true,
    config = { extra = { mult = 5 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    use = function(self, card, area, copier)
        purr_use(self, card)
    end,
    can_use = function(self, card)
        return purr_can_use(self, card, "Spades")
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return card and card.ability.extra.transferring and JoyousSpring.is_summon_type(other_card, "XYZ") or false
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main and other_card.ability.extra.joyous_spring.xyz_materials > 0 then
                return {
                    mult = config.mult * other_card.ability.extra.joyous_spring.xyz_materials
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            JoyousSpring.ease_detach(other_card, 1, true)
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 5,
            set = "Spectral"
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult } }
    end,
}
--#endregion
