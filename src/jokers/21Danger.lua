--- DANGER!
SMODS.Atlas({
    key = "danger",
    path = "21Danger.png",
    px = 71,
    py = 95
})

local danger_destroy = function(card, context)
    local destructable_jokers = {}
    for i = 1, #G.jokers.cards do
        if not SMODS.is_eternal(G.jokers.cards[i], card) and not G.jokers.cards[i].getting_sliced then
            destructable_jokers[#destructable_jokers + 1] = G.jokers.cards[i]
        end
    end
    local joker_to_destroy = #destructable_jokers > 0 and
        pseudorandom_element(destructable_jokers, card.config.center.key) or nil

    if joker_to_destroy and not (context.blueprint_card or card).getting_sliced then
        joker_to_destroy:start_dissolve()
        SMODS.calculate_context({ joy_danger = joker_to_destroy })
        joker_to_destroy.getting_sliced = true
    end
    return joker_to_destroy
end

local inc_danger_count = function()
    G.GAME.joy_danger_effect_count = (G.GAME.joy_danger_effect_count or 0) + 1
end

local get_danger_count = function()
    return G.GAME.joy_danger_effect_count or 0
end

-- Danger!? Jackalope?
SMODS.Joker({
    key = "danger_jack",
    atlas = 'danger',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dest_chips, card.ability.extra.chips, card.ability.extra.current_chips + (card.ability.extra.dest_chips * get_danger_count()), card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Beast",
                monster_archetypes = { ["Danger"] = true }
            },
            dest_chips = 10,
            chips = 100,
            current_chips = 0,
            creates = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips + (card.ability.extra.dest_chips * get_danger_count())
                }
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()

            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Danger" }, is_main_deck = true } },
                    'j_joy_danger_jack', true, nil,
                    next(SMODS.find_card("j_joy_danger_realm")) and "e_polychrome" or nil)
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.current_chips +
                    (card.ability.extra.dest_chips * get_danger_count())
            end
        }
    end
})

-- Danger!? Tsuchinoko?
SMODS.Joker({
    key = "danger_tsuch",
    atlas = 'danger',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dest_mult, card.ability.extra.mult, card.ability.extra.current_mult + (card.ability.extra.dest_mult * get_danger_count()), card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Reptile",
                monster_archetypes = { ["Danger"] = true }
            },
            dest_mult = 5,
            mult = 50,
            current_mult = 0,
            creates = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult + (card.ability.extra.dest_mult * get_danger_count())
                }
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Danger" }, is_main_deck = true } },
                    'j_joy_danger_tsuch', true, nil,
                    next(SMODS.find_card("j_joy_danger_realm")) and "e_polychrome" or nil)
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.current_mult +
                    (card.ability.extra.dest_mult * get_danger_count())
            end
        }
    end
})

-- Danger! Chupacabra!
SMODS.Joker({
    key = "danger_chup",
    atlas = 'danger',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.current_money, card.ability.extra.money, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Danger"] = true }
            },
            money = 2,
            current_money = 2,
            revives = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_money = card.ability.extra.current_money + card.ability.extra.money
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Danger" }, is_main_deck = true } },
                    'j_joy_danger_chup', true,
                    next(SMODS.find_card("j_joy_danger_realm")) and "e_polychrome" or nil)
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return JoyousSpring.can_use_abilities(card) and
            card.ability.extra.current_money or nil
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.ability.extra", ref_value = "current_money" },
            },
            text_config = { colour = G.C.GOLD },
            reminder_text = {
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
            },
            calc_function = function(card)
                card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
            end
        }
    end
})

-- Danger! Mothman!
SMODS.Joker({
    key = "danger_moth",
    atlas = 'danger',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.current_discards, card.ability.extra.discards, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Insect",
                monster_archetypes = { ["Danger"] = true }
            },
            discards = 1,
            current_discards = 0,
            revives = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_discards = card.ability.extra.current_discards +
                        card.ability.extra.discards
                    G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
                    ease_discard(card.ability.extra.discards)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Danger" }, is_main_deck = true } },
                    'j_joy_danger_moth', true,
                    next(SMODS.find_card("j_joy_danger_realm")) and "e_polychrome" or nil)
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.current_discards
            ease_discard(-card.ability.extra.current_discards)
        end
    end,
})

-- Danger! Dogman!
SMODS.Joker({
    key = "danger_dog",
    atlas = 'danger',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.current_percent * 100, card.ability.extra.percent * 100, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "BeastWarrior",
                monster_archetypes = { ["Danger"] = true }
            },
            percent = 0.005,
            current_percent = 0.02,
            adds = 2,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_percent = math.min(0.25,
                        card.ability.extra.current_percent + card.ability.extra.percent)
                    G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                        G.GAME.blind.chips * card.ability.extra.current_percent)
                    G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Danger" } } })
            for i = 1, card.ability.extra.adds do
                key_to_add = pseudorandom_element(choices, 'j_joy_danger_dog')
                JoyousSpring.add_monster_tag(key_to_add or "j_joy_danger_jack")
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and G.GAME.blind.in_blind then
            G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                G.GAME.blind.chips * card.ability.extra.current_percent)
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end,
})

-- Danger! Nessie!
SMODS.Joker({
    key = "danger_ness",
    atlas = 'danger',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.current_h_size, card.ability.extra.h_size, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Aqua",
                monster_archetypes = { ["Danger"] = true }
            },
            h_size = 1,
            current_h_size = 0,
            adds = 2,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_h_size = card.ability.extra.current_h_size +
                        card.ability.extra.h_size
                    G.hand:change_size(card.ability.extra.h_size)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Danger" } } })
            for i = 1, card.ability.extra.adds do
                key_to_add = pseudorandom_element(choices, 'j_joy_danger_ness')
                JoyousSpring.add_monster_tag(key_to_add or "j_joy_danger_jack")
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(-card.ability.extra.current_h_size)
        end
    end,
})

-- Danger! Bigfoot!
SMODS.Joker({
    key = "danger_big",
    atlas = 'danger',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dest_xmult, card.ability.extra.xmult, card.ability.extra.current_xmult + (card.ability.extra.dest_xmult * get_danger_count()) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Beast",
                monster_archetypes = { ["Danger"] = true }
            },
            dest_xmult = 0.2,
            xmult = 1,
            current_xmult = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult + (card.ability.extra.dest_xmult * get_danger_count())
                }
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            local count = 0
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] ~= card and not SMODS.is_eternal(G.jokers.cards[i], card) and not G.jokers.cards[i].getting_sliced then
                    G.jokers.cards[i]:start_dissolve()
                    SMODS.calculate_context({ joy_danger = G.jokers.cards[i] })
                    G.jokers.cards[i].getting_sliced = true
                    count = count + 1
                end
            end
            for i = 1, count do
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Danger" }, is_main_deck = true } },
                    'j_joy_danger_big', true, nil,
                    next(SMODS.find_card("j_joy_danger_realm")) and "e_polychrome" or nil)
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                card.joker_display_values.xmult = card.ability.extra.current_xmult +
                    (card.ability.extra.dest_xmult * get_danger_count())
            end
        }
    end
})

-- Danger! Ogopogo!
SMODS.Joker({
    key = "danger_ogo",
    atlas = 'danger',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Danger" } } }), card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "SeaSerpent",
                monster_archetypes = { ["Danger"] = true }
            },
            chips = 50,
            mills = 3,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                danger_destroy(card, context)
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Danger" } } })
                }
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Danger" } } },
                card.config.center.key, card.ability.extra.mills)
            return { message = localize("k_joy_mill") }
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Danger" } } })
            end
        }
    end
})

-- Danger! Thunderbird!
SMODS.Joker({
    key = "danger_thunder",
    atlas = 'danger',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.dest_xchips, card.ability.extra.xchips, card.ability.extra.current_xchips + (card.ability.extra.dest_xchips * get_danger_count()), card.ability.extra.destroys } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "WingedBeast",
                monster_archetypes = { ["Danger"] = true }
            },
            dest_xchips = 0.1,
            xchips = 1,
            current_xchips = 1,
            destroys = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                local joker_to_destroy = danger_destroy(card, context)
                if joker_to_destroy ~= card then
                    card.ability.extra.current_xchips = card.ability.extra.current_xchips + card.ability.extra.xchips
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if not card.getting_sliced then
                                SMODS.calculate_effect({ message = localize('k_upgrade_ex') }, card)
                            end
                            return true
                        end
                    }))
                end
            end
            if context.joker_main then
                return {
                    xchips = card.ability.extra.current_xchips + (card.ability.extra.dest_xchips * get_danger_count())
                }
            end
        end
        if context.joy_danger == card and not card.ability.extra.activated then
            card.ability.extra.activated = true
            inc_danger_count()
            for _ = 1, card.ability.extra.destroys do
                local destructable_jokers = {}
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] ~= card and not SMODS.is_eternal(G.jokers.cards[i], card) and not G.jokers.cards[i].getting_sliced then
                        destructable_jokers[#destructable_jokers + 1] = G.jokers.cards[i]
                    end
                end
                local joker_to_destroy = #destructable_jokers > 0 and
                    pseudorandom_element(destructable_jokers, card.config.center.key) or nil

                if joker_to_destroy and not (context.blueprint_card or card).getting_sliced then
                    joker_to_destroy:start_dissolve()
                    SMODS.calculate_context({ joy_danger = joker_to_destroy })
                    joker_to_destroy.getting_sliced = true
                end
            end
            local count = 0
            for i = 1, #G.consumeables.cards do
                if not SMODS.is_eternal(G.consumeables.cards[i], card) and not G.consumeables.cards[i].getting_sliced then
                    SMODS.destroy_cards(G.consumeables.cards[i], nil, true)
                    count = count + 1
                end
            end
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Danger" } } })
            for i = 1, count do
                key_to_add = pseudorandom_element(choices, 'j_joy_danger_thunder')
                JoyousSpring.add_monster_tag(key_to_add or "j_joy_danger_jack")
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xchips", retrigger_type = "exp" }
                    },
                    border_colour = G.C.CHIPS
                }
            },
            calc_function = function(card)
                card.joker_display_values.xchips = card.ability.extra.current_xchips +
                    (card.ability.extra.dest_xchips * get_danger_count())
            end
        }
    end
})

-- Realm of Danger!
SMODS.Joker({
    key = "danger_realm",
    atlas = 'danger',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Danger"] = true }
            },
            money = 8
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                danger_destroy(card, context)
                return {
                    dollars = card.ability.extra.money
                }
            end
        end
    end
})

-- Danger! Disturbance! Disorder!
SMODS.Joker({
    key = "danger_disorder",
    atlas = 'danger',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult, card.ability.extra.mult *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Danger" } } }),
                card.ability.extra.creates,
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Danger" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Danger"] = true }
            },
            creates = 1,
            mult = 10
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.setting_blind and context.main_eval then
                for i = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Danger" }, is_main_deck = true } },
                        'j_joy_danger_disorder', true)
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Danger" } } })
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            for i = 1, #G.jokers.cards do
                if not JoyousSpring.is_monster_archetype(G.jokers.cards[i], "Danger") then
                    SMODS.debuff_card(G.jokers.cards[i], true, 'j_joy_danger_disorder')
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for i = 1, #G.jokers.cards do
            SMODS.debuff_card(G.jokers.cards[i], false, 'j_joy_danger_disorder')
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff and not JoyousSpring.is_monster_archetype(added_card, "Danger") then
            SMODS.debuff_card(added_card, true, "j_joy_danger_disorder")
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Danger" } } })
            end
        }
    end
})
JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "danger" },
    label = "k_joy_archetype_danger"
}
