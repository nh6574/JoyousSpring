JoyousSpring.create_sell_and_use_buttons = function(card, args)
    local args = args or {}
    local sell = nil
    local summon = nil
    local detach = nil
    local use = nil
    local activate = nil

    if args.sell then
        sell = {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", padding = 0.1, r = 0.08, minw = 1.25, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'sell_card', func = 'can_sell_card' },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        {
                            n = G.UIT.C,
                            config = { align = "tm" },
                            nodes = {
                                {
                                    n = G.UIT.R,
                                    config = { align = "cm", maxw = 1.25 },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize('b_sell'), colour = G.C.UI.TEXT_LIGHT, scale = 0.4, shadow = true } }
                                    }
                                },
                                {
                                    n = G.UIT.R,
                                    config = { align = "cm" },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize('$'), colour = G.C.WHITE, scale = 0.4, shadow = true } },
                                        { n = G.UIT.T, config = { ref_table = card, ref_value = 'sell_cost_label', colour = G.C.WHITE, scale = 0.55, shadow = true } }
                                    }
                                }
                            }
                        }
                    }
                },
            }
        }
    end
    if args.summon then
        summon = {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {

                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = args.can_summon and G.C.JOY[args.summon_type] or G.C.UI.BACKGROUND_INACTIVE, button = args.can_summon and 'joy_perform_summon' or nil },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        { n = G.UIT.T, config = { text = localize('k_joy_summon'), colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true } }
                    }
                }
            }
        }
    end
    if args.detach and card.facing ~= 'back' then
        detach = {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = G.C.JOY.XYZ or G.C.UI.BACKGROUND_INACTIVE, button = 'joy_detach_material' },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        { n = G.UIT.T, config = { text = localize('k_joy_detach'), colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true } }
                    }
                }
            }
        }
    end
    if args.use and card.facing ~= 'back' then
        use = {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {

                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = G.C.JOY.PENDULUM or G.C.UI.BACKGROUND_INACTIVE, one_press = true, func = 'joy_can_use', button = 'joy_use_card' },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        { n = G.UIT.T, config = { text = localize('b_use'), colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true } }
                    }
                }
            }
        }
    end
    if args.activate and card.facing ~= 'back' then
        activate = {
            n = G.UIT.C,
            config = { align = "cr" },
            nodes = {

                {
                    n = G.UIT.C,
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = G.C.JOY.EFFECT or G.C.UI.BACKGROUND_INACTIVE, one_press = true, func = 'joy_can_activate', button = 'joy_activate_effect' },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        { n = G.UIT.T, config = { text = localize('k_joy_activate'), colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true } }
                    }
                }
            }
        }
    end

    return {
        n = G.UIT.ROOT,
        config = {
            align = "cr",
            padding = 0,
            colour = G.C.CLEAR
        },
        nodes = {
            {
                n = G.UIT.C,
                config = { padding = 0.15, align = 'cl' },
                nodes = {
                    sell and {
                        n = G.UIT.R,
                        config = { align = 'cl' },
                        nodes = { sell }
                    } or nil,
                    summon and {
                        n = G.UIT.R,
                        config = { align = 'cl' },
                        nodes = { summon }
                    } or nil,
                    detach and {
                        n = G.UIT.R,
                        config = { align = 'cl' },
                        nodes = { detach }
                    } or nil,
                    use and {
                        n = G.UIT.R,
                        config = { align = 'cl' },
                        nodes = { use }
                    } or nil,
                    activate and {
                        n = G.UIT.R,
                        config = { align = 'cl' },
                        nodes = { activate }
                    } or nil,
                }
            }
        }
    }
end

local create_shop_card_ui_ref = create_shop_card_ui
function create_shop_card_ui(card, type, area)
    if JoyousSpring.is_pendulum_monster(card) then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.43,
            blocking = false,
            blockable = false,
            func = (function()
                if card.opening then return true end
                local t1 = {
                    n = G.UIT.ROOT,
                    config = { minw = 0.6, align = 'tm', colour = darken(G.C.BLACK, 0.2), shadow = true, r = 0.05, padding = 0.05, minh = 1 },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = "cm", colour = lighten(G.C.BLACK, 0.1), r = 0.1, minw = 1, minh = 0.55, emboss = 0.05, padding = 0.03 },
                            nodes = {
                                { n = G.UIT.O, config = { object = DynaText({ string = { { prefix = localize('$'), ref_table = card, ref_value = 'cost' } }, colours = { G.C.MONEY }, shadow = true, silent = true, bump = true, pop_in = 0, scale = 0.5 }) } },
                            }
                        }
                    }
                }
                local t2 = {
                    n = G.UIT.ROOT,
                    config = { ref_table = card, minw = 1.1, maxw = 1.3, padding = 0.1, align = 'bm', colour = G.C.GOLD, shadow = true, r = 0.08, minh = 0.94, func = 'can_buy', one_press = true, button = 'buy_from_shop', hover = true },
                    nodes = {
                        { n = G.UIT.T, config = { text = localize('b_buy'), colour = G.C.WHITE, scale = 0.5 } }
                    }
                }
                local t3 = {
                    n = G.UIT.ROOT,
                    config = { id = 'buy_and_use', ref_table = card, minh = 1.1, padding = 0.1, align = 'cr', colour = G.C.RED, shadow = true, r = 0.08, minw = 1.1, func = 'joy_can_buy_and_use', one_press = true, button = 'joy_buy_and_use', hover = true, focus_args = { type = 'none' } },
                    nodes = {
                        { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
                        {
                            n = G.UIT.C,
                            config = { align = 'cm' },
                            nodes = {
                                {
                                    n = G.UIT.R,
                                    config = { align = 'cm', maxw = 1 },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize('b_buy'), colour = G.C.WHITE, scale = 0.5 } }
                                    }
                                },
                                {
                                    n = G.UIT.R,
                                    config = { align = 'cm', maxw = 1 },
                                    nodes = {
                                        { n = G.UIT.T, config = { text = localize('b_and_use'), colour = G.C.WHITE, scale = 0.3 } }
                                    }
                                },
                            }
                        }
                    }
                }


                card.children.price = UIBox {
                    definition = t1,
                    config = {
                        align = "tm",
                        offset = { x = 0, y = 1.5 },
                        major = card,
                        bond = 'Weak',
                        parent = card
                    }
                }

                card.children.buy_button = UIBox {
                    definition = t2,
                    config = {
                        align = "bm",
                        offset = { x = 0, y = -0.3 },
                        major = card,
                        bond = 'Weak',
                        parent = card
                    }
                }

                card.children.buy_and_use_button = UIBox {
                    definition = t3,
                    config = {
                        align = "cr",
                        offset = { x = -0.3, y = 0 },
                        major = card,
                        bond = 'Weak',
                        parent = card
                    }
                }

                card.children.price.alignment.offset.y = 0.38

                return true
            end)
        }))
    elseif JoyousSpring.is_summon_type(card, "RITUAL") then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.43,
            blocking = false,
            blockable = false,
            func = (function()
                if card.opening then return true end
                local t2 = {
                    n = G.UIT.ROOT,
                    config = { ref_table = card, minw = 1.1, maxw = 1.3, padding = 0.1, align = 'bm', colour = G.C.JOY.RITUAL, shadow = true, r = 0.08, minh = 0.94, button = 'joy_perform_summon', hover = true },
                    nodes = {
                        { n = G.UIT.T, config = { text = localize('k_joy_summon'), colour = G.C.WHITE, scale = 0.5 } }
                    }
                }

                card.children.buy_button = UIBox {
                    definition = t2,
                    config = {
                        align = "bm",
                        offset = { x = 0, y = -0.3 },
                        major = card,
                        bond = 'Weak',
                        parent = card
                    }
                }

                return true
            end)
        }))
    else
        create_shop_card_ui_ref(card, type, area)
    end
end

local card_align_h_popup = Card.align_h_popup
function Card:align_h_popup()
    local ret = card_align_h_popup(self)
    local focused_ui = self.children.focused_ui and true or false
    if self.area and (self.area.config.type == "summon_materials" or
            (self.area.config.type == "title" and self.area.monster_h_popup and JoyousSpring.is_monster_card(self))) then
        ret.offset.x = 0
        ret.offset.y = focused_ui and 0.12 or 0.1
        ret.type = 'bm'
    end
    if (self.T.y < G.CARD_H * 1.2) and self.area and (self.area.config.type == "title" and JoyousSpring.is_monster_card(self)) then
        ret.offset.x = 0
        ret.offset.y = focused_ui and 0.12 or 0.1
        ret.type = 'bm'
    end
    return ret
end

local card_highlight_ref = Card.highlight
function Card:highlight(is_highlighted)
    if self.area and self.area.config.type == "extra_deck" then
        self.highlighted = is_highlighted
        if self.highlighted then
            if JoyousSpring.is_field_spell(self) then
                self.children.use_button = UIBox {
                    definition = JoyousSpring.create_sell_and_use_buttons(self, { sell = true, activate = JoyousSpring.has_activated_effect(self) }),
                    config = {
                        align = "cr",
                        offset = { x = -0.4, y = 0 },
                        parent = self
                    }
                }
            else
                local can_summon = JoyousSpring.can_summon(self)
                local summon_type = self.ability.extra.joyous_spring.summon_type or "Fusion"

                self.children.use_button = UIBox {
                    definition = JoyousSpring.create_sell_and_use_buttons(self, { sell = true, summon = true, can_summon = can_summon, summon_type = summon_type }),
                    config = {
                        align = "cr",
                        offset = { x = -0.4, y = 0 },
                        parent = self
                    }
                }
            end
        elseif self.children.use_button then
            self.children.use_button:remove()
            self.children.use_button = nil
        end
    elseif self.area and self.area.config.type == "summon_materials" then
        self.highlighted = is_highlighted
    elseif JoyousSpring.is_monster_card(self) and self.area and self.area == G.jokers then
        self.highlighted = is_highlighted
        if self.highlighted then
            self.children.use_button = UIBox {
                definition = JoyousSpring.create_sell_and_use_buttons(self, {
                    sell = true,
                    detach = (JoyousSpring.is_summon_type(self, "XYZ") and JoyousSpring.get_xyz_materials(self) > 0),
                    use = JoyousSpring.is_pendulum_monster(self),
                    activate = JoyousSpring.has_activated_effect(self)
                }),
                config = {
                    align = "cr",
                    offset = { x = -0.4, y = 0 },
                    parent = self
                }
            }
        elseif self.children.use_button then
            self.children.use_button:remove()
            self.children.use_button = nil
        end
    elseif JoyousSpring.is_summon_type(self, "RITUAL") and self.area and self.area == G.pack_cards then
        self.highlighted = is_highlighted
        local can_summon = JoyousSpring.can_summon(self)
        if self.highlighted then
            self.children.use_button = UIBox {
                definition = {
                    n = G.UIT.ROOT,
                    config = { padding = 0, colour = G.C.CLEAR },
                    nodes = {
                        {
                            n = G.UIT.R, config = { ref_table = self, r = 0.08, padding = 0.1, align = "bm", minw = 0.5 * self.T.w - 0.15, maxw = 0.9 * self.T.w - 0.15, minh = 0.3 * self.T.h, hover = true, shadow = true, colour = can_summon and G.C.JOY.RITUAL or G.C.UI.BACKGROUND_INACTIVE, button = can_summon and 'joy_perform_summon' or nil }, nodes = {
                            { n = G.UIT.T, config = { text = localize('k_joy_summon'), colour = G.C.UI.TEXT_LIGHT, scale = 0.45, shadow = true } }
                        }
                        },
                    }
                },
                config = {
                    align = "bmi",
                    offset = { x = 0, y = 0.65 },
                    parent = self
                }
            }
        elseif self.children.use_button then
            self.children.use_button:remove()
            self.children.use_button = nil
        end
    else
        card_highlight_ref(self, is_highlighted)
        if self.area and (JoyousSpring.is_extra_deck_monster(self) or JoyousSpring.is_field_spell(self)) and
            (self.area == G.shop_jokers and G.shop_jokers or self.area == G.pack_cards and G.pack_cards) then
            JoyousSpring.open_extra_deck(false, is_highlighted)
        end
    end
end

local cardarea_can_highlight_ref = CardArea.can_highlight
function CardArea:can_highlight(card)
    return self.config.type == 'extra_deck' or self.config.type == 'summon_materials' or
        cardarea_can_highlight_ref(self, card)
end

local cardarea_add_to_highlighted_ref = CardArea.add_to_highlighted
function CardArea:add_to_highlighted(card, silent)
    --if self.config.highlighted_limit <= #self.highlighted then return end
    if self.config.type == 'extra_deck' or self.config.type == 'summon_materials' then
        if #self.highlighted >= self.config.highlighted_limit then
            self:remove_from_highlighted(self.highlighted[1])
        end
        self.highlighted[#self.highlighted + 1] = card
        card:highlight(true)
        if not silent then play_sound('cardSlide1') end
    else
        cardarea_add_to_highlighted_ref(self, card, silent)
    end
end

local cardarea_draw_ref = CardArea.draw
function CardArea:draw()
    cardarea_draw_ref(self)

    if self.config.type == 'extra_deck' or self.config.type == 'summon_materials' then
        for k, v in ipairs(self.ARGS.draw_layers) do
            for i = 1, #self.cards do
                if self.cards[i] ~= G.CONTROLLER.focused.target then
                    if not self.cards[i].highlighted then
                        if G.CONTROLLER.dragging.target ~= self.cards[i] then self.cards[i]:draw(v) end
                    end
                end
            end
            for i = 1, #self.cards do
                if self.cards[i] ~= G.CONTROLLER.focused.target then
                    if self.cards[i].highlighted then
                        if G.CONTROLLER.dragging.target ~= self.cards[i] then self.cards[i]:draw(v) end
                    end
                end
            end
        end
    end
end

local cardarea_align_cards_ref = CardArea.align_cards
function CardArea:align_cards()
    if self.config.type == 'extra_deck' or self.config.type == 'summon_materials' then
        for k, card in ipairs(self.cards) do
            if not card.states.drag.is then
                card.T.r = 0.1 * (- #self.cards / 2 - 0.5 + k) / (#self.cards) +
                    (G.SETTINGS.reduced_motion and 0 or 1) * 0.02 * math.sin(2 * G.TIMERS.REAL + card.T.x)
                local max_cards = math.max(#self.cards, self.config.temp_limit)
                card.T.x = self.T.x +
                    (self.T.w - self.card_w) *
                    ((k - 1) / math.max(max_cards - 1, 1) - 0.5 * (#self.cards - max_cards) / math.max(max_cards - 1, 1)) +
                    0.5 * (self.card_w - card.T.w)
                if #self.cards > 2 or (#self.cards > 1 and self.config.spread) then
                    card.T.x = self.T.x + (self.T.w - self.card_w) * ((k - 1) / (#self.cards - 1)) +
                        0.5 * (self.card_w - card.T.w)
                elseif #self.cards > 1 then
                    card.T.x = self.T.x + (self.T.w - self.card_w) * ((k - 0.5) / (#self.cards)) +
                        0.5 * (self.card_w - card.T.w)
                else
                    card.T.x = self.T.x + self.T.w / 2 - self.card_w / 2 + 0.5 * (self.card_w - card.T.w)
                end
                local highlight_height = G.HIGHLIGHT_H / 2
                if not card.highlighted then highlight_height = 0 end
                card.T.y = self.T.y + self.T.h / 2 - card.T.h / 2 - highlight_height +
                    (G.SETTINGS.reduced_motion and 0 or 1) * 0.03 * math.sin(0.666 * G.TIMERS.REAL + card.T.x)
                card.T.x = card.T.x + card.shadow_parrallax.x / 30
            end
        end
        table.sort(self.cards,
            function(a, b)
                return a.T.x + a.T.w / 2 - 100 * ((a.pinned and not a.ignore_pinned) and a.sort_id or 0) <
                    b.T.x + b.T.w / 2 - 100 * ((b.pinned and not b.ignore_pinned) and b.sort_id or 0)
            end)
    end
    cardarea_align_cards_ref(self)
    if self.config.type == 'joker' then --or self.joy_demo_area
        for k, card in ipairs(self.cards) do
            if not card.states.drag.is and JoyousSpring.is_monster_card(card) and not JoyousSpring.is_trap_monster(card) and card.facing == 'back' then
                card.T.r = card.T.r + math.pi / 2
            end
        end
    end
end

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    game_start_run_ref(self, args)

    self.joy_extra_buttons = UIBox {
        definition = {
            n = G.UIT.ROOT,
            config = {
                align = "cm",
                minw = 1,
                minh = 0.3,
                padding = 0.15,
                r = 0.1,
                colour = G.C.CLEAR
            },
            nodes = {
                {
                    n = G.UIT.C,
                    config = {
                        align = "tm",
                        minw = 2,
                        padding = 0.1,
                        r = 0.1,
                        hover = true,
                        colour = G.C.JOY.TRAP,
                        shadow = true,
                        button = "joy_open_graveyard",
                        func = "joy_show_graveyard"
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = "bcm", padding = 0 },
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = localize('k_joy_graveyard'),
                                        scale = 0.35,
                                        colour = G.C.UI.TEXT_LIGHT
                                    }
                                }
                            }
                        },
                    }
                },
                {
                    n = G.UIT.C,
                    config = {
                        align = "tm",
                        minw = 2,
                        padding = 0.1,
                        r = 0.1,
                        hover = true,
                        colour = G.C.JOY.SPELL,
                        shadow = true,
                        button = "joy_open_extra_deck",
                        func = "joy_show_extra_deck"
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = "bcm", padding = 0 },
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = localize('k_joy_extra_deck'),
                                        scale = 0.35,
                                        colour = G.C.UI.TEXT_LIGHT
                                    }
                                }
                            }
                        },
                    }
                },
            }
        },
        config = {
            align = "tr",
            offset = { x = -4, y = 0 },
            major = G.ROOM_ATTACH,
            bond = 'Weak'
        }
    }
    self.HUD:recalculate()
end

-- Main menu (Stolen from Cryptid)
local game_main_menu_ref = Game.main_menu
function Game:main_menu(change_context)
    local ret = game_main_menu_ref(self, change_context)

    if not JoyousSpring.config.disable_main_menu then
        local newcard = SMODS.create_card { key = "j_joy_yokai_ash", area = G.title_top, no_edition = true }

        G.title_top.T.w = G.title_top.T.w * 1.7675
        G.title_top.T.x = G.title_top.T.x - 0.8
        G.title_top:emplace(newcard)

        newcard.T.w = newcard.T.w * 1.1 * 1.2
        newcard.T.h = newcard.T.h * 1.1 * 1.2
        newcard.no_ui = true
        newcard.states.visible = false

        G.SPLASH_BACK:define_draw_steps({
            {
                shader = "splash",
                send = {
                    { name = "time",       ref_table = G.TIMERS, ref_value = "REAL_SHADER" },
                    { name = "vort_speed", val = 0.4 },
                    { name = "colour_1",   ref_table = G.C.JOY,  ref_value = "EFFECT" },
                    { name = "colour_2",   ref_table = G.C,      ref_value = "BLACK" },
                },
            },
        })
        if change_context == "splash" then
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0,
                blockable = false,
                blocking = false,
                func = function()
                    newcard.states.visible = true
                    newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, true, 2.5)
                    return true
                end,
            }))
        else
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 1.2,
                blockable = false,
                blocking = false,
                func = function()
                    newcard.states.visible = true
                    newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, nil, 1.2)
                    return true
                end,
            }))
        end
    end

    return ret
end
