--- PENDULUM

--#region Consumable functions

G.FUNCS.joy_can_use = function(e)
    local card = e.config.ref_table
    if JoyousSpring.can_use(card) then
        e.config.colour = G.C.JOY.PENDULUM
        e.config.button = 'joy_use_card'
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.joy_can_buy_and_use = function(e)
    local card = e.config.ref_table
    if (((to_big(card.cost) > to_big(G.GAME.dollars - G.GAME.bankrupt_at)) and (card.cost > 0)) or
            not JoyousSpring.can_use(card)) then
        e.UIBox.states.visible = false
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    else
        if card.highlighted then
            e.UIBox.states.visible = true
        end
        e.config.colour = G.C.JOY.PENDULUM
        e.config.button = 'joy_buy_and_use'
    end
end

G.FUNCS.joy_buy_and_use = function(e)
    local card = e.config.ref_table
    if card and card:is(Card) then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
                card.area:remove_card(card)
                card:add_to_deck()
                if card.children.price then card.children.price:remove() end
                card.children.price = nil
                if card.children.buy_button then card.children.buy_button:remove() end
                card.children.buy_button = nil
                if card.children.joy_side_button then card.children.joy_side_button:remove() end
                card.children.joy_side_button = nil
                remove_nils(card.children)

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
                if card.cost ~= 0 then
                    ease_dollars(-card.cost)
                end
                G.CONTROLLER:save_cardarea_focus('jokers')
                G.CONTROLLER:recall_cardarea_focus('jokers')

                G.FUNCS.joy_use_card(e)
                return true
            end
        }))
    end
end

G.FUNCS.joy_use_card = function(e)
    local card = e.config.ref_table
    local prev_state = G.STATE

    if card.config.center.use then
        G.TAROT_INTERRUPT = G.STATE
        G.STATE = (G.STATE == G.STATES.TAROT_PACK and G.STATES.TAROT_PACK) or
            (G.STATE == G.STATES.PLANET_PACK and G.STATES.PLANET_PACK) or
            (G.STATE == G.STATES.SPECTRAL_PACK and G.STATES.SPECTRAL_PACK) or
            (G.STATE == G.STATES.STANDARD_PACK and G.STATES.STANDARD_PACK) or
            (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and G.STATES.SMODS_BOOSTER_OPENED) or
            (G.STATE == G.STATES.BUFFOON_PACK and G.STATES.BUFFOON_PACK) or
            G.STATES.PLAY_TAROT

        G.CONTROLLER.locks.use = true
        if G.booster_pack and not G.booster_pack.alignment.offset.py then
            G.booster_pack.alignment.offset.py = G.booster_pack.alignment.offset.y
            G.booster_pack.alignment.offset.y = G.ROOM.T.y + 29
        end
        if G.shop and not G.shop.alignment.offset.py then
            G.shop.alignment.offset.py = G.shop.alignment.offset.y
            G.shop.alignment.offset.y = G.ROOM.T.y + 29
        end
        if G.blind_select and not G.blind_select.alignment.offset.py then
            G.blind_select.alignment.offset.py = G.blind_select.alignment.offset.y
            G.blind_select.alignment.offset.y = G.ROOM.T.y + 39
        end
        if G.round_eval and not G.round_eval.alignment.offset.py then
            G.round_eval.alignment.offset.py = G.round_eval.alignment.offset.y
            G.round_eval.alignment.offset.y = G.ROOM.T.y + 29
        end

        if card.children.use_button then
            card.children.use_button:remove()
            card.children.use_button = nil
        end
        if card.children.sell_button then
            card.children.sell_button:remove()
            card.children.sell_button = nil
        end
        if card.children.price then
            card.children.price:remove()
            card.children.price = nil
        end
        G.jokers:remove_card(card)
        draw_card(G.hand, G.play, 1, 'up', true, card, nil, false)
        delay(0.2)
        stop_use()
        set_consumeable_usage(card)
        card.config.center:use(card, G.jokers)
        SMODS.calculate_context({ using_consumeable = true, consumeable = card, area = G.jokers })

        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                JoyousSpring.send_to_graveyard(card)
                card.getting_sliced = true
                card:start_dissolve()
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        G.STATE = prev_state
                        G.TAROT_INTERRUPT = nil
                        G.CONTROLLER.locks.use = false

                        if (prev_state == G.STATES.TAROT_PACK or prev_state == G.STATES.PLANET_PACK or
                                prev_state == G.STATES.SPECTRAL_PACK or prev_state == G.STATES.STANDARD_PACK or
                                prev_state == G.STATES.SMODS_BOOSTER_OPENED or
                                prev_state == G.STATES.BUFFOON_PACK) and G.booster_pack then
                            G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                            G.booster_pack.alignment.offset.py = nil
                        else
                            if G.shop then
                                G.shop.alignment.offset.y = G.shop.alignment.offset.py
                                G.shop.alignment.offset.py = nil
                            end
                            if G.blind_select then
                                G.blind_select.alignment.offset.y = G.blind_select.alignment.offset.py
                                G.blind_select.alignment.offset.py = nil
                            end
                            if G.round_eval then
                                G.round_eval.alignment.offset.y = G.round_eval.alignment.offset.py
                                G.round_eval.alignment.offset.py = nil
                            end
                            if G.jokers and G.jokers.cards[1] then
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        G.E_MANAGER:add_event(Event({
                                            func = function()
                                                G.CONTROLLER.interrupt.focus = nil
                                                if G.jokers then
                                                    G.CONTROLLER:recall_cardarea_focus(G.jokers)
                                                end
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
                return true
            end
        }))
    end
end

--#endregion

--#region Consumable utils

JoyousSpring.pre_consumable_use = function(card, highlighted)
    if highlighted then
        update_hand_text({ immediate = true, nopulse = true, delay = 0 },
            { mult = 0, chips = 0, level = '', handname = '' })
    end

    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            play_sound('tarot1')
            card:juice_up(0.3, 0.5)
            return true
        end
    }))
end

JoyousSpring.post_consumable_highlighted_use = function()
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            G.hand:unhighlight_all()
            return true
        end
    }))
    delay(0.5)
end

JoyousSpring.pre_consumable_change_use = function()
    for i = 1, #G.hand.highlighted do
        local percent = 1.15 - (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.15,
            func = function()
                G.hand.highlighted[i]:flip()
                play_sound('card1', percent)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
                return true
            end
        }))
    end
    delay(0.2)
end

JoyousSpring.post_consumable_change_use = function()
    for i = 1, #G.hand.highlighted do
        local percent = 0.85 + (i - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.15,
            func = function()
                G.hand.highlighted[i]:flip()
                play_sound('tarot2', percent, 0.6)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
                return true
            end
        }))
    end
    JoyousSpring.post_consumable_highlighted_use()
end

--#endregion
