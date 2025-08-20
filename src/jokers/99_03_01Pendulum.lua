--- PENDULUM FREE AGENTS

-- Foucault's Cannon
SMODS.Joker({
    key = "foucault",
    atlas = 'Misc04',
    pos = { x = 2, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
        },
    },
    use = function(self, card, area, copier)
        local amount = G.consumeables.config.card_limit - #G.consumeables.cards
        for i = 1, amount do
            SMODS.add_card({
                key = 'c_earth'
            })
        end
    end,
    can_use = function(self, card)
        return #G.consumeables.cards < G.consumeables.config.card_limit
    end,
})

-- Hallohallo
SMODS.Joker({
    key = "hallo",
    atlas = 'Misc05',
    pos = { x = 0, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.from, card.ability.extra.to } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                is_pendulum = true,
                is_tuner = true,
                is_effect = false
            },
            from = 1,
            to = 6
        },
    },
    use = function(self, card, area, copier)
        for _, jokerarea in ipairs(SMODS.get_card_areas('jokers')) do
            for _, joker in ipairs(jokerarea.cards or {}) do
                if joker.ability.set == "Joker" and joker ~= card then
                    local amount = pseudorandom(card.config.center.key, 1, 6)
                    JoyousSpring.modify_probability_numerator(joker, amount)
                    SMODS.calculate_effect({ message = "+" .. amount, colour = G.C.GREEN }, joker)
                end
            end
        end
    end,
    can_use = function(self, card)
        return #G.jokers.cards > (card.area ~= G.jokers and 0 or 1)
    end,
})

-- Archfiend Eccentrick
SMODS.Joker({
    key = "eccentrick",
    atlas = 'Misc01',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.max, card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["Archfiend"] = true }
            },
            mult = 5,
            max = 2
        },
    },
    use = function(self, card, area, copier)
        local destroyed_cards = {}
        for i = #G.hand.highlighted, 1, -1 do
            destroyed_cards[#destroyed_cards + 1] = G.hand.highlighted[i]
        end
        JoyousSpring.pre_consumable_use(card, true)
        SMODS.destroy_cards(G.hand.highlighted)
        JoyousSpring.post_consumable_highlighted_use()
    end,
    can_use = function(self, card)
        return card.ability.extra.max >= #G.hand.highlighted and #G.hand.highlighted >= 1
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0)
                }
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
                card.joker_display_values.mult = card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0)
            end
        }
    end
})

-- PenduLuMoon
SMODS.Joker({
    key = "pendulumoon",
    atlas = 'Misc03',
    pos = { x = 3, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.mills } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                cannot_revive = true
            },
            revives = 1,
            mills = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { is_pendulum = true } },
                    card.config.center.key, card.ability.extra.mills)
                return { message = localize("k_joy_mill") }
            end
        end
    end,
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.revives do
            JoyousSpring.revive_pseudorandom({ { is_pendulum = true } },
                'j_joy_pendulumoon', false,
                "e_negative")
        end
    end,
    can_use = function(self, card)
        if card.area and card.area == G.jokers and not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        return JoyousSpring.count_materials_in_graveyard({ { is_pendulum = true } }, true) > 0
    end,
})

-- Pandora's Jewelry Box
SMODS.Joker({
    key = "pandora",
    atlas = 'Misc04',
    pos = { x = 7, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Wyrm",
            },
            hands = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval and #JoyousSpring.extra_deck_area.cards == 0 then
                ease_hands_played(card.ability.extra.hands)
            end
        end
    end,
    use = function(self, card, area, copier)
        local choices = JoyousSpring.get_materials_owned({ { is_pendulum = true } })
        local joker = pseudorandom_element(choices, 'j_joy_pandora')
        if joker then
            local edition = poll_edition('j_joy_pandora', nil, true, true)
            joker:set_edition(edition, true)
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.count_materials_owned({ { is_pendulum = true } }, true) >
            (card.area and card.area == G.jokers and 1 or 0)
    end,
})

-- Anchamoufrite
SMODS.Joker({
    key = "anchamoufrite",
    atlas = 'Misc04',
    pos = { x = 3, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.draws, card.ability.extra.h_size } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            draws = 5,
            h_size = 2,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not card.ability.extra.active and context.setting_blind and context.main_eval and #JoyousSpring.extra_deck_area.cards == 0 then
                card.ability.extra.active = true
                G.hand:change_size(card.ability.extra.h_size)
            end
            if card.ability.extra.active and context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.active = false
                G.hand:change_size(-card.ability.extra.h_size)
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.active then
            card.ability.extra.active = false
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.draws do
            draw_card(G.deck, G.hand, i * 100 / card.ability.extra.draws, 'up', false, nil, 0, nil, true)
        end
    end,
    can_use = function(self, card)
        return G.GAME.blind.in_blind
    end,
})

-- Zany Zebra
SMODS.Joker({
    key = "zany",
    atlas = 'Misc04',
    pos = { x = 3, y = 5 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.joker_amount, card.ability.extra.lose, card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Beast",
            },
            joker_amount = 4,
            lose = 1,
            xmult = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and #G.jokers.cards <= card.ability.extra.joker_amount then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    use = function(self, card, area, copier)
        G.jokers:change_size(-1)
        for _, joker in ipairs(G.jokers.cards) do
            joker:set_edition("e_polychrome")
        end
    end,
    can_use = function(self, card)
        return G.jokers.config.card_limit > 0 and #G.jokers.cards > (card.area and card.area == G.jokers and 1 or 0) and
            #G.jokers.cards <= card.ability.extra.joker_amount + (card.area and card.area == G.jokers and 1 or 0)
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
                card.joker_display_values.xmult = #G.jokers.cards <= card.ability.extra.joker_amount and
                    card.ability.extra.xmult or 1
            end
        }
    end
})

-- Pendulumucho
SMODS.Joker({
    key = "pendulumucho",
    atlas = 'Misc04',
    pos = { x = 0, y = 5 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revive_consume, card.ability.extra.revives } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "WingedBeast",
                cannot_revive = true,
            },
            revive_consume = 1,
            revives = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            local has_revived = false
            for i = 1, card.ability.extra.revives do
                local revived_card = JoyousSpring.revive_pseudorandom(
                    { { is_pendulum = true } },
                    'j_joy_pendulumucho',
                    true
                )
                has_revived = (revived_card and true) or has_revived
            end

            if has_revived then
                SMODS.calculate_effect({ message = localize("k_joy_revive") }, card)
            end
        end
    end,
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.revives do
            JoyousSpring.revive_pseudorandom({ { is_pendulum = true } },
                'j_joy_pendulumucho', true)
        end
    end,
    can_use = function(self, card)
        if not card.area or card.area ~= G.jokers or not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <=
                G.jokers.config.card_limit) then
            return false
        end
        return JoyousSpring.count_materials_in_graveyard({ { is_pendulum = true } }, true) > 0
    end,
})

-- Moissa Knight, the Comet General
SMODS.Joker({
    key = "moissa",
    atlas = 'Misc04',
    pos = { x = 6, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds, card.ability.extra.chips, card.ability.extra.current_chips } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Warrior",
            },
            adds = 2,
            chips = 50,
            current_chips = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips
                }
            end
            if context.buying_card and JoyousSpring.is_pendulum_monster(context.card) then
                card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
            end
        end
    end,
    use = function(self, card, area, copier)
        local choices = JoyousSpring.get_materials_in_collection({ { is_pendulum = true } }, nil, nil,
            card.config.center.key)
        for i = 1, card.ability.extra.adds do
            local key_to_add = pseudorandom_element(choices, 'j_joy_moissa')
            JoyousSpring.add_monster_tag(key_to_add or "j_joy_eccentrick")
        end
    end,
    can_use = function(self, card)
        return true
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "current_chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
        }
    end
})

-- P.M. Captor
SMODS.Joker({
    key = "pmcaptor",
    atlas = 'Misc04',
    pos = { x = 1, y = 5 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
            revives = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_monster_type(joker, "Zombie") and not JoyousSpring.is_perma_debuffed(joker) then
                    SMODS.debuff_card(joker, "prevent_debuff", "j_joy_pmcaptor")
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, "j_joy_pmcaptor")
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if JoyousSpring.is_monster_type(added_card, "Zombie") and not JoyousSpring.is_perma_debuffed(added_card) then
            SMODS.debuff_card(added_card, "prevent_debuff", "j_joy_pmcaptor")
        end
    end,
    joy_prevent_flip = function(card, other_card)
        return JoyousSpring.is_monster_type(other_card, "Zombie") and not JoyousSpring.is_trap_monster(other_card)
    end,
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.revives do
            JoyousSpring.revive_pseudorandom({ { is_pendulum = true }, exclude_keys = { "j_joy_pmcaptor" } },
                'j_joy_pmcaptor', true)
        end
    end,
    can_use = function(self, card)
        if card.area and card.area == G.jokers and not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <=
                G.jokers.config.card_limit) then
            return false
        end
        return JoyousSpring.count_materials_in_graveyard({ { is_pendulum = true, exclude_keys = { "j_joy_pmcaptor" } } },
            true) > 0
    end,
})

-- Metrognome
SMODS.Joker({
    key = "metrognome",
    atlas = 'Misc04',
    pos = { x = 5, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.mult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "Fairy",
            },
            creates = 1,
            mult = 25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_pendulum_monster(context.other_joker) then
                local rarities, _ = JoyousSpring.most_owned_rarity()
                if JoyousSpring.is_card_rarity_from_array(context.other_joker, rarities) then
                    return {
                        mult = card.ability.extra.mult,
                        message_card = context.other_joker
                    }
                end
            end
        end
    end,
    use = function(self, card, area, copier)
        local rarities, _ = JoyousSpring.most_owned_rarity()
        local choice = pseudorandom_element(rarities, 'j_joy_metrognome')
        if choice then
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { is_pendulum = true, rarity = choice } },
                    'j_joy_metrognome', true)
            end
        end
    end,
    can_use = function(self, card)
        if card.area and card.area == G.jokers and not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <=
                G.jokers.config.card_limit) then
            return false
        end
        return #G.jokers.cards > (card.area and card.area == G.jokers and 1 or 0)
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            mod_function = function(card, mod_joker)
                local is_pend = card.facing == "front" and JoyousSpring.is_pendulum_monster(card)
                local rarities, _ = JoyousSpring.most_owned_rarity()
                local is_most_owned = is_pend and JoyousSpring.is_card_rarity_from_array(card, rarities)
                return {
                    mult = is_most_owned and
                        mod_joker.ability.extra.mult * JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
})

-- Rain Bozu
SMODS.Joker({
    key = "bozu",
    atlas = 'Misc04',
    pos = { x = 2, y = 5 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.current_chips, card.ability.extra.current_mult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fairy",
            },
            chips = 25,
            mult = 1,
            current_chips = 0,
            current_mult = 0,
            transferring = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                card.ability.extra.current_chips = card.ability.extra.current_chips +
                    card.ability.extra.chips * #JoyousSpring.extra_deck_area.cards
                card.ability.extra.current_mult = card.ability.extra.current_mult +
                    card.ability.extra.mult *
                    math.max(0, JoyousSpring.extra_deck_area.config.card_limit - #JoyousSpring.extra_deck_area.cards)
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips,
                    mult = card.ability.extra.current_mult
                }
            end
        end
    end,
    use = function(self, card, area, copier)
        local choices = JoyousSpring.get_materials_owned({ { is_monster = true } })
        local joker = pseudorandom_element(choices, 'j_joy_bozu')
        if joker then
            card.ability.extra.transferring = true
            JoyousSpring.transfer_abilities(joker, card.config.center.key, card)
            SMODS.calculate_effect({ message = localize("k_joy_transferred") }, joker)
        end
    end,
    can_use = function(self, card)
        return ((card.ability.extra.current_chips > 0) or (card.ability.extra.current_mult > 0)) and #G.jokers.cards > 1
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return card and card.ability.extra.transferring or false
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if card then
            config.mult = (config.mult or 0) + card.ability.extra.current_mult
            config.chips = (config.chips or 0) + card.ability.extra.current_chips
        end
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    chips = config.chips,
                    mult = config.mult
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 0,
            chips = 0,
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.chips, config.mult } }
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+",                       colour = G.C.CHIPS },
                { ref_table = "card.ability.extra", ref_value = "current_chips", retrigger_type = "mult", colour = G.C.CHIPS },
                { text = " +",                      colour = G.C.MULT },
                { ref_table = "card.ability.extra", ref_value = "current_mult",  retrigger_type = "mult", colour = G.C.MULT }
            },
        }
    end
})

-- Disablaster the Negation Fortress
SMODS.Joker({
    key = "disablaster",
    atlas = 'Misc04',
    pos = { x = 4, y = 4 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.current_money, math.max(1, card.ability.extra.xmult - JoyousSpring.get_joker_column(card)), JoyousSpring.get_joker_column(card) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Machine",
            },
            money = 1,
            current_money = 0,
            xmult = 7
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and #context.full_hand < JoyousSpring.get_joker_column(card) then
                if math.max(1, card.ability.extra.xmult - JoyousSpring.get_joker_column(card)) > 1 then
                    card.ability.extra.current_money = card.ability.extra.current_money + card.ability.extra.money
                end
                return {
                    xmult = math.max(1, card.ability.extra.xmult - JoyousSpring.get_joker_column(card))
                }
            end
        end
    end,
    use = function(self, card, area, copier)
        ease_dollars(card.ability.extra.current_money)
    end,
    can_use = function(self, card)
        return card.ability.extra.current_money > 0
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
                local column = JoyousSpring.get_joker_column(card)
                card.joker_display_values.xmult = #JokerDisplay.current_hand < column and
                    math.max(1, card.ability.extra.xmult - column) or 1
            end
        }
    end
})
