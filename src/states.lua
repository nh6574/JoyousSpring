function JoyousSpring.update_side_deck(game, dt)
    if not G.STATE_COMPLETE then
        stop_use()
        ease_colour(G.C.DYN_UI.MAIN, G.C.JOY.EFFECT)
        local side_deck_exists = not not JoyousSpring.side_deck
        JoyousSpring.side_deck = JoyousSpring.side_deck or UIBox {
            definition = JoyousSpring.create_side_deck(),
            config = { align = 'tmi', offset = { x = 0, y = G.ROOM.T.y + 11 }, major = G.hand, bond = 'Weak' }
        }
        JoyousSpring.side_deck_area = JoyousSpring.side_deck_area or UIBox {
            definition =
            { n = G.UIT.ROOT, config = { colour = G.C.DYN_UI.MAIN, emboss = 0.05, align = 'cm', r = 0.1, padding = 0.1 }, nodes = {
                { n = G.UIT.R, config = { align = "cm", padding = 0.1, minw = 4.72, minh = 3.1, colour = G.C.DYN_UI.DARK, r = 0.1 }, nodes = {
                    { n = G.UIT.R, config = { align = "cm" }, nodes = {
                        { n = G.UIT.O, config = { object = G.joy_side_deck } }
                    } },
                } },
            } },
            config = {
                align = "cm",
                offset = { x = 0, y = 0 },
            }
        }
        G.E_MANAGER:add_event(Event({
            func = function()
                JoyousSpring.side_deck.alignment.offset.y = -5.3
                JoyousSpring.side_deck.alignment.offset.x = 0
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    blockable = false,
                    func = function()
                        local column = JoyousSpring.side_deck:get_UIE_by_ID('joy_side_column')
                        JoyousSpring.side_deck_area.T.y = column.T.y
                        if math.abs(JoyousSpring.side_deck.T.y - JoyousSpring.side_deck.VT.y) < 3 then
                            G.ROOM.jiggle = G.ROOM.jiggle + 3
                            play_sound('cardFan2')

                            G.CONTROLLER:snap_to({ node = JoyousSpring.side_deck:get_UIE_by_ID('next_round_button') })

                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    save_run(); return true
                                end
                            }))
                            return true
                        end
                    end
                }))
                return true
            end
        }))
        G.STATE_COMPLETE = true
    end
    if game.buttons then
        game.buttons:remove(); game.buttons = nil
    end
end

function JoyousSpring.create_side_deck()
    G.joy_side_deck.states.collide.can = true
    G.joy_side_deck.states.visible = true
    G.joy_temp_side_deck = CardArea(
        G.hand.T.x + 0,
        G.hand.T.y + G.ROOM.T.y + 9,
        math.min(2 * 1.02 * G.CARD_W, 4.08 * G.CARD_W),
        1.05 * G.CARD_H,
        { card_limit = 2, type = 'joker', highlight_limit = 0 })
    G.joy_temp_side_deck.states.collide.can = true
    G.jokers.states.collide.can = true

    local side_deck_sign = DynaText({
        string = { "Side Deck" },
        colours = { G.C.JOY.NORMAL },
        bump = true,
        silent = true,
        pop_in = 0,
        pop_in_rate = 4,
        shadow = true,
        y_offset = 0,
        spacing = math.max(0, 0.8 * (17 - #"Side Deck")),
        scale = (1 - 0.004 * #"Side Deck")
    })
    JoyousSpring.side_deck_sign = UIBox {
        definition =
        { n = G.UIT.ROOT, config = { colour = G.C.DYN_UI.MAIN, emboss = 0.05, align = 'cm', r = 0.1, padding = 0.1 }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0.1, minw = 4.72, minh = 3.1, colour = G.C.DYN_UI.DARK, r = 0.1 }, nodes = {
                { n = G.UIT.R, config = { align = "cm" }, nodes = {
                    { n = G.UIT.O, config = { object = side_deck_sign } }
                } },
            } },
        } },
        config = {
            align = "cm",
            offset = { x = 0, y = -15 },
            major = G.HUD:get_UIE_by_ID('row_blind'),
            bond = 'Weak'
        }
    }
    G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = (function()
            JoyousSpring.side_deck_sign.alignment.offset.y = 0
            G.joy_side_deck.alignment.offset.y = 0
            return true
        end)
    }))
    local t = {
        n = G.UIT.ROOT,
        config = { align = 'cl', colour = G.C.CLEAR },
        nodes = {
            UIBox_dyn_container({
                {
                    n = G.UIT.C,
                    config = { align = "cm", padding = 0.1, emboss = 0.05, r = 0.1, colour = G.C.DYN_UI.BOSS_MAIN },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = "cm", padding = 0.05 },
                            nodes = {
                                {
                                    n = G.UIT.C,
                                    config = { align = "cm", padding = 0.1 },
                                    nodes = {
                                        {
                                            n = G.UIT.R,
                                            config = { id = 'next_round_button', align = "cm", minw = 2.8, minh = 1.5, r = 0.15, colour = G.C.RED, one_press = true, button = 'joy_toggle_side_deck', hover = true, shadow = true },
                                            nodes = {
                                                {
                                                    n = G.UIT.R,
                                                    config = { align = "cm", padding = 0.07, focus_args = { button = 'y', orientation = 'cr' }, func = 'set_button_pip' },
                                                    nodes = {
                                                        {
                                                            n = G.UIT.R,
                                                            config = { align = "cm", maxw = 1.3 },
                                                            nodes = {
                                                                { n = G.UIT.T, config = { text = localize('b_next_round_1'), scale = 0.4, colour = G.C.WHITE, shadow = true } }
                                                            }
                                                        },
                                                        {
                                                            n = G.UIT.R,
                                                            config = { align = "cm", maxw = 1.3 },
                                                            nodes = {
                                                                { n = G.UIT.T, config = { text = localize('b_next_round_2'), scale = 0.4, colour = G.C.WHITE, shadow = true } }
                                                            }
                                                        }
                                                    }
                                                },
                                            }
                                        },
                                    }
                                },
                                {
                                    n = G.UIT.C,
                                    config = { align = "cm", padding = 0.2, r = 0.2, colour = G.C.L_BLACK, emboss = 0.05, minw = 8.2 },
                                    nodes = {
                                        { n = G.UIT.O, config = { object = G.joy_temp_side_deck } },
                                    }
                                },
                            }
                        },
                        { n = G.UIT.R, config = { align = "cm", minh = 0.2 }, nodes = {} },
                        {
                            n = G.UIT.R,
                            config = { align = "cm", padding = 0.1 },
                            nodes = {
                                {
                                    n = G.UIT.C,
                                    config = { id = 'joy_side_column', align = "cm", padding = 0.2, r = 0.2, colour = G.C.L_BLACK, emboss = 0.05, minw = 12, minh = 1.3 * G.CARD_H },
                                    nodes = {
                                        -- { n = G.UIT.O, config = { object = G.joy_side_deck } },
                                    }
                                },
                            }
                        }
                    }
                },

            }, false)
        }
    }
    return t
end

G.FUNCS.joy_toggle_side_deck = function(e)
    stop_use()
    G.CONTROLLER.locks.joy_toggle_side_deck = true
    if JoyousSpring.side_deck then
        G.E_MANAGER:add_event(Event({
            trigger = 'immediate',
            func = function()
                JoyousSpring.side_deck.alignment.offset.y = G.ROOM.T.y + 29
                G.joy_side_deck.alignment.offset.y = G.ROOM.T.y + 29
                JoyousSpring.side_deck_sign.alignment.offset.y = -15
                return true
            end
        }))
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.5,
            func = function()
                JoyousSpring.side_deck_area.config.major = nil
                JoyousSpring.side_deck_area:recalculate()
                JoyousSpring.side_deck:remove()
                JoyousSpring.side_deck = nil
                JoyousSpring.side_deck_sign:remove()
                JoyousSpring.side_deck_sign = nil
                G.jokers.states.collide.can = false
                G.joy_side_deck.states.visible = false
                G.joy_side_deck.states.collide.can = false
                G.STATE_COMPLETE = false
                G.STATE = G.STATES.BLIND_SELECT
                G.CONTROLLER.locks.joy_toggle_side_deck = nil
                return true
            end
        }))
    end
end

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    if JoyousSpring.side_deck then
        JoyousSpring.side_deck:remove()
        JoyousSpring.side_deck = nil
    end

    G.joy_side_deck = CardArea(
        0,
        0,
        5 * 1.02 * G.CARD_W,
        1.05 * G.CARD_H,
        { card_limit = 5, type = 'joker', highlight_limit = 0 })
    G.joy_side_deck.states.visible = false

    game_start_run_ref(self, args)
    G.joy_side_deck.T.x = G.hand.T.x + 1
    G.joy_side_deck.T.y = G.hand.T.y - 0.8
end

-- Inspired by Aikoyori's Shenanigans
local card_stop_drag_ref = Card.stop_drag
function Card:stop_drag()
    if G.STATE == G.STATES.JOY_SIDE_DECK and self.ability.set == "Joker" and self.area and (self.area == G.jokers or self.area == G.joy_side_deck or self.area == G.joy_temp_side_deck) then
        local area = self.area
        for i, k in ipairs(G.CONTROLLER.collision_list) do
            if k == G.joy_side_deck or k == G.jokers or k == G.joy_temp_side_deck then
                area = k
                break
            end
        end
        if area and area ~= self.area then
            if area.config.card_limit > #area.cards then
                self.area:remove_card(self)
                draw_card(self.area, area, 1, 'up', nil, self, 0)
                area:align_cards()
            end
        end
    end
    return card_stop_drag_ref(self)
end
