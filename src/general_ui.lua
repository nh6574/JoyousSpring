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
                    config = { ref_table = card, align = "cr", padding = 0.1, r = 0.08, minw = 1.25, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'sell_card', func = 'can_sell_card', handy_insta_action = "sell" },
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
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = args.can_summon and G.C.JOY[args.summon_type] or G.C.UI.BACKGROUND_INACTIVE, button = args.can_summon and 'joy_perform_summon' or nil, handy_insta_action = "use" },
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
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = G.C.JOY.XYZ or G.C.UI.BACKGROUND_INACTIVE, func = 'joy_can_detach', button = 'joy_detach_material', handy_insta_action = "use" },
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
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = G.C.JOY.PENDULUM or G.C.UI.BACKGROUND_INACTIVE, one_press = true, func = 'joy_can_use', button = 'joy_use_card', handy_insta_action = "use" },
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
                    config = { ref_table = card, align = "cr", maxw = 1.25, padding = 0.1, r = 0.08, minw = 1.25, minh = 0, hover = true, shadow = true, colour = G.C.JOY.EFFECT or G.C.UI.BACKGROUND_INACTIVE, one_press = true, func = 'joy_can_activate', button = 'joy_activate_effect', handy_insta_action = "use" },
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

    if not JoyousSpring.config.disable_side_deck and card.ability.set == "Joker" then
        local side = {
            n = G.UIT.ROOT,
            config = { id = 'joy_side_button', ref_table = card, minh = 1.1, padding = 0.1, align = 'cl', colour = G.C.RED, shadow = true, r = 0.08, minw = 1.1, func = 'joy_can_side', one_press = true, button = 'joy_to_side', hover = true, focus_args = { type = 'none' } },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { align = 'cm' },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = 'cm', maxw = 1 },
                            nodes = {
                                { n = G.UIT.T, config = { text = localize('b_joy_buy_to_side_1'), colour = G.C.WHITE, scale = 0.5 } }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = { align = 'cm', maxw = 1 },
                            nodes = {
                                { n = G.UIT.T, config = { text = localize('b_joy_buy_to_side_2'), colour = G.C.WHITE, scale = 0.3 } }
                            }
                        },
                    }
                },
                { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
            }
        }
        card.children.joy_side_button = UIBox {
            definition = side,
            config = {
                align = "cl",
                offset = { x = 0.3, y = 0 },
                major = card,
                bond = 'Weak',
                parent = card
            }
        }
    end
end

local card_highlight_ref = Card.highlight
function Card:highlight(is_highlighted)
    if self.area and (self.area == JoyousSpring.field_spell_area or self.area == JoyousSpring.extra_deck_area) then
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
    elseif self.area and self.area == JoyousSpring.side_deck_area then
        self.highlighted = is_highlighted
        if self.highlighted then
            self.children.use_button = UIBox {
                definition = JoyousSpring.create_sell_and_use_buttons(self, {
                    sell = true,
                    summon = not (self.ability.joy_extra_values or {}).sidedeck_from_field and JoyousSpring.is_summon_type(self, "RITUAL"),
                    can_summon = not (self.ability.joy_extra_values or {}).sidedeck_from_field and JoyousSpring.can_summon(self),
                    summon_type = not (self.ability.joy_extra_values or {}).sidedeck_from_field and JoyousSpring.is_summon_type(self, "RITUAL") and "RITUAL" or nil
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
        if self.area and (JoyousSpring.is_extra_deck_monster(self)) and
            (self.area == G.shop_jokers and G.shop_jokers or self.area == G.pack_cards and G.pack_cards) then
            JoyousSpring.open_extra_deck(false, is_highlighted)
        end
    end

    if not JoyousSpring.config.disable_side_deck and self.ability.set == "Joker" and self.area and self.area == G.pack_cards then
        local side = {
            n = G.UIT.ROOT,
            config = { id = 'joy_side_button', ref_table = self, minh = 1.1, padding = 0.1, align = 'cl', colour = G.C.RED, shadow = true, r = 0.08, minw = 1.1, one_press = true, button = 'joy_to_side_from_booster', hover = true, focus_args = { type = 'none' } },
            nodes = {
                {
                    n = G.UIT.C,
                    config = { align = 'cm' },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { align = 'cm', maxw = 1 },
                            nodes = {
                                { n = G.UIT.T, config = { text = localize('b_joy_buy_to_side_1'), colour = G.C.WHITE, scale = 0.5 } }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = { align = 'cm', maxw = 1 },
                            nodes = {
                                { n = G.UIT.T, config = { text = localize('b_joy_buy_to_side_2'), colour = G.C.WHITE, scale = 0.3 } }
                            }
                        },
                    }
                },
                { n = G.UIT.B, config = { w = 0.1, h = 0.6 } },
            }
        }
        self.children.joy_side_button = UIBox {
            definition = side,
            config = {
                align = "cl",
                offset = { x = 0.3, y = 0 },
                major = self,
                bond = 'Weak',
                parent = self
            }
        }
    end
end

G.FUNCS.joy_sort_hanafuda_hand_month = function()
    local months = {
        january = 1,
        february = 2,
        march = 3,
        april = 4,
        may = 5,
        june = 6,
        july = 7,
        august = 8,
        september = 9,
        october = 10,
        november = 11,
        december = 12
    }

    local types = {
        light = 1,
        animal = 2,
        ribbon = 3,
        chaff = 4
    }

    table.sort(G.hand.cards, function(a, b)
        local ma = JoyousSpring.get_hanafuda(a) and months[JoyousSpring.get_hanafuda(a).month] or 13
        local mb = JoyousSpring.get_hanafuda(b) and months[JoyousSpring.get_hanafuda(b).month] or 13
        if ma ~= mb then return ma < mb end

        local ta = JoyousSpring.get_hanafuda(a) and types[JoyousSpring.get_hanafuda(a).type] or 5
        local tb = JoyousSpring.get_hanafuda(b) and types[JoyousSpring.get_hanafuda(b).type] or 5
        if ta ~= tb then return ta < tb end

        return a:get_nominal() > b:get_nominal()
    end)
end

G.FUNCS.joy_sort_hanafuda_hand_type = function()
    local months = {
        january = 1,
        february = 2,
        march = 3,
        april = 4,
        may = 5,
        june = 6,
        july = 7,
        august = 8,
        september = 9,
        october = 10,
        november = 11,
        december = 12
    }

    local types = {
        light = 1,
        animal = 2,
        ribbon = 3,
        chaff = 4
    }

    table.sort(G.hand.cards, function(a, b)
        local ta = JoyousSpring.get_hanafuda(a) and types[JoyousSpring.get_hanafuda(a).type] or 5
        local tb = JoyousSpring.get_hanafuda(b) and types[JoyousSpring.get_hanafuda(b).type] or 5
        if ta ~= tb then return ta < tb end

        local ma = JoyousSpring.get_hanafuda(a) and months[JoyousSpring.get_hanafuda(a).month] or 13
        local mb = JoyousSpring.get_hanafuda(b) and months[JoyousSpring.get_hanafuda(b).month] or 13
        if ma ~= mb then return ma < mb end

        return a:get_nominal() > b:get_nominal()
    end)
end

JoyousSpring.create_hanafuda_month_sort_UIBox = function()
    return G.GAME.joy_show_hanafuda_sort and {
        n = G.UIT.C,
        config = { align = "cm", minh = 0.7, minw = 0.9, padding = 0.1, r = 0.1, hover = true, colour = G.C.JOY.LINK, button = "joy_sort_hanafuda_hand_month", shadow = true },
        nodes = {
            { n = G.UIT.T, config = { text = localize("k_joy_hanafuda_month"), scale = 0.45 * 0.7, colour = G.C.UI.TEXT_LIGHT } }
        }
    } or nil
end

JoyousSpring.create_hanafuda_type_sort_UIBox = function()
    return G.GAME.joy_show_hanafuda_sort and {
        n = G.UIT.C,
        config = { align = "cm", minh = 0.7, minw = 0.9, padding = 0.1, r = 0.1, hover = true, colour = G.C.JOY.LINK, button = "joy_sort_hanafuda_hand_type", shadow = true },
        nodes = {
            { n = G.UIT.T, config = { text = localize("k_joy_hanafuda_type"), scale = 0.45 * 0.7, colour = G.C.UI.TEXT_LIGHT } }
        }
    } or nil
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

-- I'm so sorry
local game_update_ref = Game.update
function Game:update(dt)
    game_update_ref(self, dt)
    if G.GAME and G.GAME.blind and G.GAME.blind.in_blind and G.buttons then
        local prev_value = G.GAME.joy_show_hanafuda_sort
        G.GAME.joy_show_hanafuda_sort = nil
        for _, playing_card in ipairs(G.hand.cards or {}) do
            if playing_card.config.center.key == 'm_joy_hanafuda' then
                G.GAME.joy_show_hanafuda_sort = true
                break
            end
        end

        if prev_value ~= G.GAME.joy_show_hanafuda_sort then
            G.buttons:remove()
            G.buttons = UIBox {
                definition = create_UIBox_buttons(),
                config = { align = "bm", offset = { x = 0, y = 0.3 }, major = G.hand, bond = 'Weak' }
            }
        end
    end
end

local cardarea_can_highlight_ref = CardArea.can_highlight
function CardArea:can_highlight(card)
    return (self == JoyousSpring.field_spell_area or self == JoyousSpring.extra_deck_area) or
        self.config.type == 'summon_materials' or
        cardarea_can_highlight_ref(self, card)
end

local cardarea_add_to_highlighted_ref = CardArea.add_to_highlighted
function CardArea:add_to_highlighted(card, silent)
    --if self.config.highlighted_limit <= #self.highlighted then return end
    if (self == JoyousSpring.field_spell_area or self == JoyousSpring.extra_deck_area) or self.config.type == 'summon_materials' then
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

local g_funcs_show_infotip_ref = G.FUNCS.show_infotip
G.FUNCS.show_infotip = function(e)
    if e.config.ref_table and e.config.ref_table[1].config.card and
        JoyousSpring.is_monster_card(e.config.ref_table[1].config.card) and e.config.ref_table[1].config.card.area and
        e.config.ref_table[1].config.card.area == G.shop_jokers then
        e.children.info = UIBox {
            definition = { n = G.UIT.ROOT, config = { align = 'tm', colour = G.C.CLEAR, padding = 0.02 }, nodes = e.config.ref_table },
            config = { offset = { x = 0, y = -0.1 }, align = 'bm', parent = e }
        }
        e.children.info:align_to_major()
        e.config.ref_table = nil
    else
        g_funcs_show_infotip_ref(e)
    end
end

local cardarea_draw_ref = CardArea.draw
function CardArea:draw()
    cardarea_draw_ref(self)

    if self.states.visible and self.config.type == 'summon_materials' then
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
    if self.config.type == 'summon_materials' then
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
    if JoyousSpring.hide_ui then self.joy_extra_buttons.states.visible = false end
    self.HUD:recalculate()
end

-- Main menu (Stolen from Cryptid)
local game_main_menu_ref = Game.main_menu
function Game:main_menu(change_context)
    local ret = game_main_menu_ref(self, change_context)

    if not JoyousSpring.config.disable_main_menu then
        local newcard = SMODS.create_card { key = "j_joy_yokai_ash", area = G.title_top, no_edition = true }

        self.title_top.T.w = self.title_top.T.w * 1.7675
        self.title_top.T.x = self.title_top.T.x - 0.8

        newcard.T.w = newcard.T.w * 1.1 * 1.2
        newcard.T.h = newcard.T.h * 1.1 * 1.2
        newcard.no_ui = true
        newcard.states.visible = false
        self.title_top:emplace(newcard)
        self.title_top:align_cards()
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
                delay = 0,
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

-- CONTROLLER UI

G.FUNCS.joy_focus_summon = function(e)
    local card = e.config.ref_table
    local summon_type = card.ability.extra.joyous_spring.summon_type
    e.config.colour = G.C.JOY[summon_type] or G.C.UI.BACKGROUND_INACTIVE
end

JoyousSpring.card_focus_ui = function(card, base_background)
    local base_attach = base_background:get_UIE_by_ID('ATTACH_TO_ME')
    local card_width = card.T.w
    if not card.area then return base_background end
    if not JoyousSpring.is_summon_type(card, "RITUAL") and card.area == G.shop_jokers then
        local buy_and_use = nil
        if JoyousSpring.is_pendulum_monster(card) then
            base_attach.children.buy_and_use = G.UIDEF.card_focus_button {
                card = card, parent = base_attach, type = 'buy_and_use',
                func = 'joy_can_buy_and_use', button = 'joy_buy_and_use', card_width = card_width
            }
            buy_and_use = true
        end
        base_attach.children.buy = G.UIDEF.card_focus_button {
            card = card, parent = base_attach, type = 'buy',
            func = 'can_buy', button = 'buy_from_shop', card_width = card_width, buy_and_use = buy_and_use
        }
    end
    if JoyousSpring.is_pendulum_monster(card) and card.area == G.jokers and not card.facing ~= 'back' then
        base_attach.children.use = G.UIDEF.card_focus_button {
            card = card, parent = base_attach, type = 'use',
            func = 'joy_can_use', button = 'joy_use_card', card_width = card_width
        }
    end
    if JoyousSpring.is_summon_type(card, "RITUAL") and (card.area == G.pack_cards or card.area == G.shop_jokers) and JoyousSpring.can_summon(card) then
        base_attach.children.use = G.UIDEF.card_focus_button {
            card = card, parent = base_attach, type = 'select', func = "joy_focus_summon", button = 'joy_perform_summon', card_width = card_width
        }
    end
    if not JoyousSpring.is_summon_type(card, "RITUAL") and card.area == G.pack_cards then
        base_attach.children.use = G.UIDEF.card_focus_button {
            card = card, parent = base_attach, type = 'select',
            func = 'can_select_card', button = 'use_card', card_width = card_width
        }
    end
    if card.area == JoyousSpring.extra_deck_area and JoyousSpring.can_summon(card) then
        base_attach.children.use = G.UIDEF.card_focus_button {
            card = card, parent = base_attach, type = 'select', func = "joy_focus_summon", button = 'joy_perform_summon', card_width = card_width
        }
    end
    if (card.area == G.jokers or card.area == G.consumeables or card.area == JoyousSpring.extra_deck_area or card.area == JoyousSpring.field_spell_area) and G.STATE ~= G.STATES.TUTORIAL then
        base_attach.children.sell = G.UIDEF.card_focus_button {
            card = card, parent = base_attach, type = 'sell',
            func = 'can_sell_card', button = 'sell_card', card_width = card_width
        }
        if JoyousSpring.has_activated_effect(card) then
            base_attach.children.use = G.UIDEF.card_focus_button {
                card = card, parent = base_attach, type = 'select', func = "joy_can_activate", button = 'joy_activate_effect', card_width = card_width
            }
        end
        if JoyousSpring.is_summon_type(card, "XYZ") and JoyousSpring.get_xyz_materials(card) > 0 then
            base_attach.children.redeem = G.UIDEF.card_focus_button {
                card = card, parent = base_attach, type = 'redeem', func = "joy_focus_summon", button = 'joy_detach_material', card_width = card_width
            }
        end
    end

    return base_background
end

local controller_button_press_update_ref = Controller.button_press_update
function Controller:button_press_update(button, dt)
    controller_button_press_update_ref(self, button, dt)
    if self.focused.target and JoyousSpring.is_monster_card(self.focused.target) and self.focused.target.area and self.focused.target.area == JoyousSpring.summon_effect_area then
        if button == "a" then
            self.focused.target:highlight(not self.focused.target.highlighted)
        end
    end
end
