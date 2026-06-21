-- STATES

--#region Side Deck

JoyousSpring.State = {}
JoyousSpring.State.SideDeck = {}

G.FUNCS.joy_side_colour1 = function(e)
    if G.STATE == G.STATES.JOY_SIDE_DECK then
        e.config.colour = G.C.DYN_UI.MAIN
    else
        e.config.colour = G.C.CLEAR
    end
end

G.FUNCS.joy_side_colour2 = function(e)
    if G.STATE == G.STATES.JOY_SIDE_DECK then
        e.config.colour = G.C.DYN_UI.DARK
    else
        e.config.colour = G.C.CLEAR
    end
end

JoyousSpring.create_side_deck_uibox = function()
    local box = JoyousSpring.side_deck_area_ui or UIBox {
        definition =
        { n = G.UIT.ROOT, config = { colour = G.C.DYN_UI.MAIN, emboss = 0.05, align = 'cm', r = 0.1, padding = 0.1, func = "joy_side_colour1" }, nodes = {
            { n = G.UIT.R, config = { align = "cm", padding = 0.1, minw = 4.72, minh = 3.5, colour = G.C.DYN_UI.DARK, r = 0.1, func = "joy_side_colour2" }, nodes = {
                { n = G.UIT.R, config = { align = "cm" }, nodes = {
                    { n = G.UIT.O, config = { object = JoyousSpring.side_deck_area } }
                } },
            } },
        } },
        config = {
            align = "cm",
            offset = { x = 0, y = 0 },
            instance_type = "CARDAREA"
        }
    }
    return box
end

function JoyousSpring.State.SideDeck.update_side_deck(game, dt)
    if not G.STATE_COMPLETE then
        stop_use()
        ease_colour(G.C.DYN_UI.MAIN, G.C.JOY.EFFECT)
        if JoyousSpring.side_deck_open then
            JoyousSpring.open_side_deck(true)
        end
        local side_deck_exists = not not JoyousSpring.side_deck
        JoyousSpring.side_deck = JoyousSpring.side_deck or UIBox {
            definition = JoyousSpring.State.SideDeck.create_side_deck(true),
            config = { align = 'tmi', offset = { x = 0, y = G.ROOM.T.y + 11 }, major = G.hand, bond = 'Weak' }
        }
        JoyousSpring.side_deck_area_ui = JoyousSpring.create_side_deck_uibox()

        G.E_MANAGER:add_event(Event({
            func = function()
                JoyousSpring.side_deck.alignment.offset.y = -5.3
                JoyousSpring.side_deck.alignment.offset.x = 0
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.2,
                    blockable = false,
                    func = function()
                        if math.abs(JoyousSpring.side_deck.T.y - JoyousSpring.side_deck.VT.y) < 3 then
                            G.ROOM.jiggle = G.ROOM.jiggle + 3
                            play_sound('cardFan2')

                            G.CONTROLLER:snap_to({ node = JoyousSpring.side_deck:get_UIE_by_ID('next_round_button') })

                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    if not G.GAME.joy_enter_side then
                                        G.GAME.joy_enter_side = true
                                        JoyousSpring.INFO_MENU.open("side_deck", nil, true)
                                    end
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
    if JoyousSpring.side_deck and JoyousSpring.side_deck_area_ui then
        local column = JoyousSpring.side_deck:get_UIE_by_ID('joy_side_column')
        if column then
            JoyousSpring.side_deck_area_ui.VT.y = column.VT.y + 0.2
            JoyousSpring.side_deck_area_ui.VT.x = column.VT.x + column.VT.w / 2 -
                JoyousSpring.side_deck_area_ui.VT.w / 2
            JoyousSpring.side_deck_area_ui.T.y = column.T.y + 0.2
            JoyousSpring.side_deck_area_ui.T.x = column.T.x + column.T.w / 2 -
                JoyousSpring.side_deck_area_ui.T.w / 2
        end
    end
end

function JoyousSpring.State.SideDeck.create_side_deck(during_siding)
    JoyousSpring.side_deck_area.states.visible = true
    if during_siding then
        JoyousSpring.side_deck_area.states.collide.can = true
        G.jokers.states.collide.can = true
        JoyousSpring.extra_deck_area.states.collide.can = true
        JoyousSpring.field_spell_area.states.collide.can = true

        local side_deck_sign = DynaText({
            string = { localize("k_joy_side_deck") },
            colours = { G.C.JOY.NORMAL },
            bump = true,
            silent = true,
            pop_in = 0,
            pop_in_rate = 4,
            shadow = true,
            y_offset = 0,
            spacing = math.max(0, 0.8 * (17 - #localize("k_joy_side_deck"))),
            scale = (1 - 0.004 * #localize("k_joy_side_deck"))
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
                return true
            end)
        }))
    end

    local nodes = {}

    local button = {
        n = G.UIT.R,
        config = { align = "cm", padding = 0.05 },
        nodes = {
            {
                n = G.UIT.C,
                config = { align = "cm", padding = 0.1 },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { id = 'next_round_button', align = "cm", minw = 2.8, minh = 1.5, r = 0.15, colour = G.C.RED, one_press = true, button = 'joy_toggle_side_deck', hover = true, shadow = true, func = "joy_next_round_enable" },
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
        }
    }
    local space = { n = G.UIT.R, config = { align = "cm", minh = 0.2 }, nodes = {} }
    local side_area = {
        n = G.UIT.R,
        config = { align = "cm", padding = 0.1 },
        nodes = {
            {
                n = G.UIT.C,
                config = { id = 'joy_side_column', align = "cm", padding = 0.2, r = 0.2, colour = G.C.L_BLACK, emboss = 0.05, minw = 12, minh = 4.1 },
                nodes = {
                }
            },
        }
    }

    if during_siding then
        table.insert(nodes, button)
        table.insert(nodes, space)
    end
    table.insert(nodes, side_area)

    local t = {
        n = G.UIT.ROOT,
        config = { align = 'cl', colour = G.C.CLEAR },
        nodes = {
            UIBox_dyn_container({
                {
                    n = G.UIT.C,
                    config = { align = "cm", padding = 0.1, emboss = 0.05, r = 0.1, colour = G.C.DYN_UI.BOSS_MAIN },
                    nodes = nodes
                },
            }, false)
        }
    }
    return t
end

function JoyousSpring.open_side_deck(forced)
    if G.STATE ~= G.STATES.JOY_SIDE_DECK or forced then
        if not JoyousSpring.side_deck_open then
            JoyousSpring.side_deck_area_ui = JoyousSpring.create_side_deck_uibox()
            JoyousSpring.side_deck_open = true
            JoyousSpring.open_extra_deck(true, false)
            JoyousSpring.side_deck_area_ui.old_tx = JoyousSpring.side_deck_area_ui.T.x
            JoyousSpring.side_deck_area_ui.old_ty = JoyousSpring.side_deck_area_ui.T.y
            JoyousSpring.side_deck_area_ui.old_vtx = JoyousSpring.side_deck_area_ui.VT.x
            JoyousSpring.side_deck_area_ui.old_vty = JoyousSpring.side_deck_area_ui.VT.y
            JoyousSpring.side_deck_area_ui.VT.y = G.jokers.VT.y - 5
            JoyousSpring.side_deck_area_ui.VT.x = G.jokers.VT.x + 1.8
            JoyousSpring.side_deck_area_ui.T.y = G.jokers.T.y - 5
            JoyousSpring.side_deck_area_ui.T.x = G.jokers.T.x + 1.8
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.jokers.states.visible = false
                    G.consumeables.states.visible = false
                    return true
                end
            }))
            G.E_MANAGER:add_event(Event({
                trigger = "ease",
                delay = 0.5,
                ref_table = JoyousSpring.side_deck_area_ui.VT,
                ref_value = "y",
                ease_to = G.jokers.VT.y - 0.5,
            }))
            G.E_MANAGER:add_event(Event({
                trigger = "ease",
                delay = 0.5,
                ref_table = JoyousSpring.side_deck_area_ui.T,
                ref_value = "y",
                ease_to = G.jokers.T.y - 0.5,
            }))
            return true
        else
            JoyousSpring.side_deck_open = false
            G.E_MANAGER:add_event(Event({
                blockable = false,
                trigger = "after",
                delay = 0.15,
                func = function()
                    G.E_MANAGER:add_event(Event({
                        trigger = "ease",
                        delay = 0.5,
                        ref_table = JoyousSpring.side_deck_area_ui.VT,
                        ref_value = "y",
                        ease_to = G.jokers.VT.y - 5,
                    }))
                    G.E_MANAGER:add_event(Event({
                        trigger = "ease",
                        delay = 0.5,
                        ref_table = JoyousSpring.side_deck_area_ui.T,
                        ref_value = "y",
                        ease_to = G.jokers.T.y - 5,
                    }))
                    G.E_MANAGER:add_event(Event({
                        blockable = false,
                        trigger = "after",
                        delay = 0.5,
                        func = function()
                            if not JoyousSpring.extra_deck_open then
                                G.consumeables.states.visible = true
                                G.jokers.states.visible = true
                            end
                            JoyousSpring.side_deck_area_ui.VT.y = JoyousSpring.side_deck_area_ui.old_vty
                            JoyousSpring.side_deck_area_ui.VT.x = JoyousSpring.side_deck_area_ui.old_vtx
                            JoyousSpring.side_deck_area_ui.T.y = JoyousSpring.side_deck_area_ui.old_ty
                            JoyousSpring.side_deck_area_ui.T.x = JoyousSpring.side_deck_area_ui.old_tx
                            JoyousSpring.side_deck_area:unhighlight_all()
                            return true
                        end
                    }))
                    return true
                end
            }))
        end
    end
end

G.FUNCS.joy_open_side_deck = function(e)
    JoyousSpring.open_side_deck()
end

G.FUNCS.joy_show_side_deck = function(e)
    if G.GAME.joy_show_side_deck or (JoyousSpring.side_deck_area and next(JoyousSpring.side_deck_area.cards or {})) then
        G.GAME.joy_show_side_deck = true
    end
    if G.GAME.joy_show_side_deck then
        e.states.visible = true
    else
        e.states.visible = false
    end
end

G.FUNCS.joy_toggle_side_deck = function(e)
    stop_use()
    G.CONTROLLER.locks.joy_toggle_side_deck = true
    if JoyousSpring.side_deck then
        G.E_MANAGER:add_event(Event({
            trigger = 'immediate',
            func = function()
                JoyousSpring.side_deck.alignment.offset.y = G.ROOM.T.y + 29
                JoyousSpring.side_deck_sign.alignment.offset.y = -15
                return true
            end
        }))
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.5,
            func = function()
                JoyousSpring.side_deck:remove()
                JoyousSpring.side_deck = nil
                JoyousSpring.side_deck_sign:remove()
                JoyousSpring.side_deck_sign = nil
                G.jokers.states.collide.can = false
                JoyousSpring.extra_deck_area.states.collide.can = false
                JoyousSpring.field_spell_area.states.collide.can = false
                JoyousSpring.side_deck_area.states.collide.can = false
                G.GAME.joy_skip_side = nil
                G.STATE_COMPLETE = false
                G.STATE = G.STATES.BLIND_SELECT
                G.CONTROLLER.locks.joy_toggle_side_deck = nil
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.calculate_context({ joy_ending_side = true })
                        return true
                    end
                }))
                if not G.GAME.joy_blind_tutorial then
                    local blind_proto = G.P_BLINDS[G.GAME.round_resets.blind_choices.Boss]
                    if blind_proto and (blind_proto.original_mod or {}).id == "JoyousSpring" then
                        G.GAME.joy_blind_tutorial = true
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        JoyousSpring.INFO_MENU.open("blinds", nil, true)
                                        return true
                                    end
                                }))
                                return true
                            end
                        }))
                    end
                end
                return true
            end
        }))
    else
        G.CONTROLLER.locks.joy_toggle_side_deck = nil
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
        {
            card_limit = 5,
            type = 'joker',
            highlight_limit = 1,
            bg_colour = { G.C.JOY.LINK[1], G.C.JOY.LINK[2], G.C.JOY.LINK[3], 0.5 }
        })
    JoyousSpring.side_deck_area = G.joy_side_deck
    JoyousSpring.side_deck_area.states.visible = false
    G.E_MANAGER:add_event(Event({
        func = function()
            JoyousSpring.side_deck_area_ui = JoyousSpring.create_side_deck_uibox()
            JoyousSpring.side_deck_area_ui.T.y = JoyousSpring.side_deck_area_ui.T.y - 5
            JoyousSpring.side_deck_area_ui.VT.y = JoyousSpring.side_deck_area_ui.VT.y - 5
            G.E_MANAGER:add_event(Event({
                func = function()
                    JoyousSpring.side_deck_area.states.visible = true
                    JoyousSpring.side_deck_area_ui.states.collide.can = false
                    return true
                end
            }))
            return true
        end
    }))

    game_start_run_ref(self, args)
end

local game_delete_run = Game.delete_run
function Game:delete_run()
    if JoyousSpring.side_deck_area_ui then
        JoyousSpring.side_deck_area_ui:remove()
        JoyousSpring.side_deck_area_ui = nil
    end
    game_delete_run(self)
end

-- Inspired by Aikoyori's Shenanigans
local card_stop_drag_ref = Card.stop_drag
function Card:stop_drag()
    if G.STATE == G.STATES.JOY_SIDE_DECK and self.ability.set == "Joker" and self.area and
        (self.area == G.jokers or self.area == JoyousSpring.side_deck_area or self.area == JoyousSpring.extra_deck_area or
            self.area == JoyousSpring.field_spell_area) and not self.pinned and not JoyousSpring.prevent_drag(self) then
        local area = self.area
        for i, k in ipairs(G.CONTROLLER.collision_list) do
            if k == JoyousSpring.side_deck_area or k == G.jokers or k == JoyousSpring.extra_deck_area or
                k == JoyousSpring.field_spell_area then
                area = k
                break
            end
        end
        if area and area ~= self.area then
            local move = false
            if JoyousSpring.is_field_spell(self) then
                if area == JoyousSpring.side_deck_area or (area == JoyousSpring.field_spell_area
                        and area.config.card_limit + JoyousSpring.get_card_limit(self) > #area.cards) then
                    move = true
                end
            elseif JoyousSpring.is_extra_deck_monster(self) then
                if area == JoyousSpring.side_deck_area or (area.config.card_limit + JoyousSpring.get_card_limit(self) > #area.cards) then
                    if area == JoyousSpring.side_deck_area then
                        self.ability.joy_extra_values = self.ability.joy_extra_values or {}
                        self.ability.joy_extra_values.sidedeck_from_field = self.area == G.jokers
                        move = true
                    end
                    if self.area == JoyousSpring.side_deck_area then
                        if area == G.jokers and (self.ability.joy_extra_values or {}).sidedeck_from_field then
                            self.ability.joy_extra_values = self.ability.joy_extra_values or {}
                            self.ability.joy_extra_values.sidedeck_from_field = nil
                            move = true
                        end
                        if area == JoyousSpring.extra_deck_area and not (self.ability.joy_extra_values or {}).sidedeck_from_field then
                            move = true
                        end
                    end
                end
            elseif JoyousSpring.is_summon_type(self, "RITUAL") or JoyousSpring.does_tribute_in_shop(self) then
                if area == JoyousSpring.side_deck_area or (area.config.card_limit + JoyousSpring.get_card_limit(self) > #area.cards) then
                    if area == JoyousSpring.side_deck_area then
                        self.ability.joy_extra_values = self.ability.joy_extra_values or {}
                        self.ability.joy_extra_values.sidedeck_from_field = self.area == G.jokers
                        move = true
                    end
                    if self.area == JoyousSpring.side_deck_area then
                        if area == G.jokers and (self.ability.joy_extra_values or {}).sidedeck_from_field then
                            self.ability.joy_extra_values = self.ability.joy_extra_values or {}
                            self.ability.joy_extra_values.sidedeck_from_field = nil
                            move = true
                        end
                    end
                end
            elseif area ~= JoyousSpring.field_spell_area and area ~= JoyousSpring.extra_deck_area then
                if (area == JoyousSpring.side_deck_area or area.config.card_limit + JoyousSpring.get_card_limit(self) > #area.cards) then
                    move = true
                end
            end
            if move then
                self.area:remove_card(self)
                if area == JoyousSpring.side_deck_area then
                    self:remove_from_deck(true)
                elseif area ~= JoyousSpring.extra_deck_area then
                    self.ability.joy_extra_values = self.ability.joy_extra_values or {}
                    self:add_to_deck(not self.ability.joy_extra_values.added_to_side)
                    self.ability.joy_extra_values.added_to_side = nil
                else
                    self.ability.joy_extra_values = self.ability.joy_extra_values or {}
                    self.ability.joy_extra_values.added_to_side = nil
                end
                draw_card(self.area, area, 1, 'up', nil, self, 0)
                area:align_cards()
            end
        end
    end
    return card_stop_drag_ref(self)
end

local can_skip_side = function()
    if JoyousSpring.side_deck_area.config.card_limit >= #JoyousSpring.side_deck_area.cards or
        G.GAME.joy_skip_side then
        return true
    end
    local has_maiden = false
    for _, joker in ipairs(SMODS.find_card("j_joy_milleniummoon")) do
        if JoyousSpring.can_use_abilities(joker) then
            has_maiden = true
            break
        end
    end
    if has_maiden then
        local count = 0
        for _, joker in ipairs(JoyousSpring.side_deck_area.cards) do
            if not JoyousSpring.is_monster_type(joker, "Illusion") then
                count = count + 1
            end
        end
        return JoyousSpring.side_deck_area.config.card_limit >= count
    end
end

G.FUNCS.joy_next_round_enable = function(e)
    if can_skip_side() then
        e.config.colour = G.C.RED
        e.config.button = 'joy_toggle_side_deck'
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

local card_can_use_consumeable_ref = Card.can_use_consumeable
function Card:can_use_consumeable(any_state, skip_check)
    if G.STATE == G.STATES.JOY_SIDE_DECK then
        return false
    end
    return card_can_use_consumeable_ref(self, any_state, skip_check)
end

G.FUNCS.joy_can_side = function(e)
    local card = e.config.ref_table
    if not JoyousSpring.is_summon_type(card, "RITUAL") and not JoyousSpring.does_tribute_in_shop(card) and
        (card.cost > (G.GAME.dollars - G.GAME.bankrupt_at)) and (card.cost > 0) then
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    else
        e.config.colour = G.C.RED
        e.config.button = 'joy_to_side'
    end
    if JoyousSpring.prevent_buy(card) then
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.joy_to_side = function(e)
    local card = e.config.ref_table
    if card and card:is(Card) then
        if not (#JoyousSpring.side_deck_area.cards < JoyousSpring.side_deck_area.config.card_limit + card.ability.card_limit - card.ability.extra_slots_used) then
            alert_no_space(card, G.jokers)
            e.disable_button = nil
            return false
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
                card.from_area = card.area
                card.area:remove_card(card)
                if card.children.price then card.children.price:remove() end
                card.children.price = nil
                if card.children.buy_button then card.children.buy_button:remove() end
                card.children.buy_button = nil
                if card.children.joy_side_button then card.children.joy_side_button:remove() end
                card.children.joy_side_button = nil
                remove_nils(card.children)

                card.ability.joy_extra_values = card.ability.joy_extra_values or {}
                card.ability.joy_extra_values.added_to_side = true
                JoyousSpring.side_deck_area:emplace(card)
                JoyousSpring.open_extra_deck(false, false, 1.85)
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local eval, post = eval_card(card, { buying_card = true, buying_self = true, card = card })
                        SMODS.trigger_effects({ eval, post }, card)
                        return true
                    end
                }))
                --Tallies for unlocks
                G.GAME.round_scores.cards_purchased.amt = G.GAME.round_scores.cards_purchased.amt + 1
                G.GAME.current_round.jokers_purchased = G.GAME.current_round.jokers_purchased + 1

                SMODS.calculate_context({ buying_card = true, card = card })

                if G.GAME.modifiers.inflation then
                    G.GAME.inflation = G.GAME.inflation + 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            for k, v in pairs(G.I.CARD) do
                                if v.set_cost then v:set_cost() end
                            end
                            return true
                        end
                    }))
                end

                play_sound('card1')
                inc_career_stat('c_shop_dollars_spent', card.cost)
                if card.cost ~= 0 and not JoyousSpring.is_summon_type(card, "RITUAL") and not JoyousSpring.does_tribute_in_shop(card) then
                    ease_dollars(-card.cost)
                end
                G.CONTROLLER:save_cardarea_focus('jokers')
                G.CONTROLLER:recall_cardarea_focus('jokers')
                return true
            end
        }))
    end
end

G.FUNCS.joy_to_side_from_booster = function(e)
    local card = e.config.ref_table
    if card and card:is(Card) then
        if not (#JoyousSpring.side_deck_area.cards < JoyousSpring.side_deck_area.config.card_limit + card.ability.card_limit - card.ability.extra_slots_used) then
            alert_no_space(card, G.jokers)
            e.disable_button = nil
            return false
        end
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
                card.from_area = card.area
                card.area:remove_card(card)
                if card.children.price then card.children.price:remove() end
                card.children.price = nil
                if card.children.buy_button then card.children.buy_button:remove() end
                card.children.buy_button = nil
                if card.children.joy_side_button then card.children.joy_side_button:remove() end
                card.children.joy_side_button = nil
                remove_nils(card.children)

                card.ability.joy_extra_values = card.ability.joy_extra_values or {}
                card.ability.joy_extra_values.added_to_side = true
                JoyousSpring.side_deck_area:emplace(card)
                JoyousSpring.open_extra_deck(false, false, 1.85)

                if G.GAME.pack_choices and G.GAME.pack_choices > 1 then
                    if G.booster_pack.alignment.offset.py then
                        G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                        G.booster_pack.alignment.offset.py = nil
                    end
                    G.GAME.pack_choices = G.GAME.pack_choices - 1
                else
                    G.CONTROLLER.interrupt.focus = true
                    G.FUNCS.end_consumeable(nil, delay_fac)
                end
                return true
            end
        }))
    end
end

SMODS.DrawStep {
    key = 'side_deck_button',
    order = -30,
    func = function(self)
        if self.children.joy_side_button then
            if self.highlighted then
                self.children.joy_side_button.states.visible = true
                self.children.joy_side_button:draw()
            else
                self.children.joy_side_button.states.visible = false
            end
        end
    end,
}

--#endregion
