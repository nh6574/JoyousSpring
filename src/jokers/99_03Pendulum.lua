--- PENDULUM FREE AGENTS

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
    generate_ui = JoyousSpring.generate_info_ui,
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
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                for i = #G.hand.highlighted, 1, -1 do
                    local playing_card = G.hand.highlighted[i]
                    if SMODS.has_enhancement(playing_card, 'm_glass') then
                        playing_card:shatter()
                    else
                        playing_card:start_dissolve(nil, i == #G.hand.highlighted)
                    end
                end
                return true
            end
        }))
        JoyousSpring.post_consumable_highlighted_use()
        SMODS.calculate_context({ remove_playing_cards = true, removed = destroyed_cards })
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
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.mills } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = {}
            },
            revives = 1,
            mills = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                local choices = JoyousSpring.get_materials_in_collection({ { is_pendulum = true } })

                for i = 1, card.ability.extra.mills do
                    JoyousSpring.send_to_graveyard(pseudorandom_element(choices, pseudoseed("j_joy_pendulumoon")))
                end
                return { message = localize("k_joy_mill") }
            end
        end
    end,
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.revives do
            JoyousSpring.revive_pseudorandom({ { is_pendulum = true, exclude_keys = { "j_joy_pendulumoon" } } },
                pseudoseed("j_joy_pendulumoon"), false,
                "e_negative")
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.count_materials_in_graveyard(
            { { is_pendulum = true, exclude_keys = { "j_joy_pendulumoon" } } }, true) > 0
    end,
})

-- Patissciel Couverture
SMODS.Joker({
    key = "couverture",
    atlas = 'Misc03',
    pos = { x = 4, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Fairy",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { is_pendulum = true },
                            { is_pendulum = true },
                        }
                    }
                },
            },
            creates = 1,
            adds = 1
        },
    },
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.creates do
            JoyousSpring.create_pseudorandom({ { is_pendulum = true, rarity = 3 } }, pseudoseed("j_joy_couverture"), true)
        end
        if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
            JoyousSpring.add_to_extra_deck("j_joy_couverture")
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.is_summoned(card) and
            (#G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit + (card.edition and card.edition.negative and 0 or 1))
    end,
})
