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
