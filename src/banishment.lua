---BANISHMENT

---@alias banish_time
---| '"blind_selected"'
---| '"boss_selected"'
---| '"end_of_round"'
---| '"end_of_ante"'

---Banish a card until specified time
---@param card Card
---@param banish_until banish_time?
---@param func function?
---@param immediate boolean?
JoyousSpring.banish = function(card, banish_until, func, immediate)
    if not card or card.getting_sliced or card.destroyed then return end
    if immediate then
        if not card.area then return end
        card:juice_up()
        local time_to_banish = banish_until == "blind_selected" and JoyousSpring.banish_blind_selected_area or
            banish_until == "boss_selected" and JoyousSpring.banish_boss_selected_area or
            banish_until == "end_of_ante" and JoyousSpring.banish_end_of_ante_area or
            JoyousSpring.banish_end_of_round_area
        local area = card.area
        SMODS.calculate_context({
            joy_banished = true,
            joy_banished_card = card,
            joy_banished_area = area,
            joy_banish_until =
                banish_until
        })
        card.area:remove_card(card)
        time_to_banish:emplace(card)
        G.GAME.joy_cards_banished = G.GAME.joy_cards_banished and
            (G.GAME.joy_cards_banished + 1) or 1
        if func then
            func(card)
        end
    else
        card.getting_sliced = true
        card.destroyed = true
        G.E_MANAGER:add_event(Event({
            func = function()
                if card and card.area then
                    card:juice_up()
                end
                return true
            end,
        }))
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.3,
            func = function()
                if card and card.area then
                    card.getting_sliced = nil
                    card.destroyed = nil
                    local time_to_banish = banish_until == "blind_selected" and JoyousSpring.banish_blind_selected_area or
                        banish_until == "boss_selected" and JoyousSpring.banish_boss_selected_area or
                        banish_until == "end_of_ante" and JoyousSpring.banish_end_of_ante_area or
                        JoyousSpring.banish_end_of_round_area
                    local area = card.area
                    SMODS.calculate_context({
                        joy_banished = true,
                        joy_banished_card = card,
                        joy_banished_area = area,
                        joy_banish_until =
                            banish_until
                    })
                    card.area:remove_card(card)
                    time_to_banish:emplace(card)
                    G.GAME.joy_cards_banished = G.GAME.joy_cards_banished and
                        (G.GAME.joy_cards_banished + 1) or 1
                    if func then
                        func(card)
                    end
                end
                return true
            end,
        }))
    end
end

---Returns a card from banishment (doesn't need room)
---@param card Card
JoyousSpring.return_from_banish = function(card)
    local from = card.area
    local area
    from:remove_card(card)
    if card.ability.set == 'Joker' then
        G.jokers:emplace(card)
        area = G.jokers
    elseif JoyousSpring.is_playing_card(card) then
        G.hand:emplace(card)
        area = G.hand
    else
        G.consumeables:emplace(card)
        area = G.consumeables
    end

    SMODS.calculate_context({
        joy_returned = true,
        joy_returned_card = card,
        joy_returned_area = area,
        joy_returned_from =
            from
    })
end

JoyousSpring.is_banished = function(card)
    return type(card) == "table" and card.area and
        card.area == JoyousSpring.banish_blind_selected_area or
        card.area == JoyousSpring.banish_boss_selected_area or
        card.area == JoyousSpring.banish_end_of_ante_area or
        card.area == JoyousSpring.banish_end_of_round_area
end

JoyousSpring.get_banished_areas = function()
    local areas = {}
    if JoyousSpring.banish_blind_selected_area then areas[#areas + 1] = JoyousSpring.banish_blind_selected_area end
    if JoyousSpring.banish_boss_selected_area then areas[#areas + 1] = JoyousSpring.banish_boss_selected_area end
    if JoyousSpring.banish_end_of_ante_area then areas[#areas + 1] = JoyousSpring.banish_end_of_ante_area end
    if JoyousSpring.banish_end_of_round_area then areas[#areas + 1] = JoyousSpring.banish_end_of_round_area end
    return areas
end

JoyousSpring.create_banishment_area_tabs = function(area)
    if not JoyousSpring.banish_displays then
        JoyousSpring.banish_displays = {}
    end

    JoyousSpring.banish_displays[#JoyousSpring.banish_displays + 1] = CardArea(
        G.ROOM.T.x + 0.2 * G.ROOM.T.w / 2,
        G.ROOM.T.h,
        6.5 * G.CARD_W,
        0.6 * G.CARD_H,
        {
            card_limit = 10,
            type = 'title',
            highlight_limit = 0,
            card_w = G.CARD_W * 0.7,
            draw_layers = { 'card' },
        }
    )

    JoyousSpring.banish_displays[#JoyousSpring.banish_displays].monster_h_popup = true

    for _, card in ipairs(area.cards) do
        local added_card = copy_card(card)
        JoyousSpring.banish_displays[#JoyousSpring.banish_displays]:emplace(added_card)
    end

    return {
        n = G.UIT.ROOT,
        config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
        },
        nodes = {
            {
                n = G.UIT.R,
                config = {
                    align = "cm",
                    r = 0.1,
                    padding = 1,
                    minh = 5,
                    minw = 7,
                    colour = G.C.BLACK
                },
                nodes = {
                    {
                        n = G.UIT.O,
                        config = {
                            object = JoyousSpring.banish_displays[#JoyousSpring.banish_displays]
                        }
                    },
                }
            }
        }
    }
end

JoyousSpring.create_banishment_tab = function()
    local banish_nodes = {
        {
            n = G.UIT.C,
            config = { align = 'cm' },
            nodes = {
                create_tabs({
                    snap_to_nav = true,
                    colour = G.C.JOY.TRAP,
                    scale = 1.2,
                    tabs = {
                        {
                            label = localize('k_joy_banish_blind_selected') ..
                                " (" .. #JoyousSpring.banish_blind_selected_area.cards .. ")",
                            chosen = true,
                            tab_definition_function = function()
                                return JoyousSpring.create_banishment_area_tabs(JoyousSpring.banish_blind_selected_area)
                            end
                        },
                        {
                            label = localize('k_joy_banish_end_of_round') ..
                                " (" .. #JoyousSpring.banish_end_of_round_area.cards .. ")",
                            chosen = false,
                            tab_definition_function = function()
                                return JoyousSpring.create_banishment_area_tabs(JoyousSpring.banish_end_of_round_area)
                            end
                        },
                        {
                            label = localize('k_joy_banish_boss_selected') ..
                                " (" .. #JoyousSpring.banish_boss_selected_area.cards .. ")",
                            chosen = false,
                            tab_definition_function = function()
                                return JoyousSpring.create_banishment_area_tabs(JoyousSpring.banish_boss_selected_area)
                            end
                        },
                        {
                            label = localize('k_joy_banish_end_of_ante') ..
                                " (" .. #JoyousSpring.banish_end_of_ante_area.cards .. ")",
                            chosen = false,
                            tab_definition_function = function()
                                return JoyousSpring.create_banishment_area_tabs(JoyousSpring.banish_end_of_ante_area)
                            end
                        },
                    }
                }),
            }
        }
    }

    return {
        n = G.UIT.ROOT,
        config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
        },
        nodes = banish_nodes
    }
end

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    self.joy_banish_blind_selected_area = CardArea(
        0,
        0,
        self.CARD_W * 4.95,
        self.CARD_H * 0.95,
        {
            card_limit = 999,
            type = 'title',
            highlight_limit = 1,
        }
    )
    self.joy_banish_blind_selected_area.states.visible = false
    JoyousSpring.banish_blind_selected_area = G.joy_banish_blind_selected_area
    self.joy_banish_end_of_round_area = CardArea(
        0,
        0,
        self.CARD_W * 4.95,
        self.CARD_H * 0.95,
        {
            card_limit = 999,
            type = 'title',
            highlight_limit = 1,
        }
    )
    self.joy_banish_end_of_round_area.states.visible = false
    JoyousSpring.banish_end_of_round_area = G.joy_banish_end_of_round_area
    self.joy_banish_boss_selected_area = CardArea(
        0,
        0,
        self.CARD_W * 4.95,
        self.CARD_H * 0.95,
        {
            card_limit = 999,
            type = 'title',
            highlight_limit = 1,
        }
    )
    self.joy_banish_boss_selected_area.states.visible = false
    JoyousSpring.banish_boss_selected_area = G.joy_banish_boss_selected_area
    self.joy_banish_end_of_ante_area = CardArea(
        0,
        0,
        self.CARD_W * 4.95,
        self.CARD_H * 0.95,
        {
            card_limit = 999,
            type = 'title',
            highlight_limit = 1,
        }
    )
    self.joy_banish_end_of_ante_area.states.visible = false
    JoyousSpring.banish_end_of_ante_area = G.joy_banish_end_of_ante_area

    game_start_run_ref(self, args)
end
