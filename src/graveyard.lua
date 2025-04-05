---GRAVEYARD

-- Revive

---Revives a card from the GY
---@param key string
---@param must_have_room boolean?
---@param edition any
---@return Card?
JoyousSpring.revive = function(key, must_have_room, edition, card_limit_modif, debuff_source)
    if JoyousSpring.graveyard[key] and JoyousSpring.graveyard[key].summonable > 0 then
        JoyousSpring.graveyard[key].count = JoyousSpring.graveyard[key].count - 1
        JoyousSpring.graveyard[key].summonable = JoyousSpring.graveyard[key].summonable - 1

        local added_card = SMODS.create_card({
            key = key,
            edition = edition
        })
        if debuff_source then
            SMODS.debuff_card(added_card, true, debuff_source)
        end
        JoyousSpring.create_summon(added_card, must_have_room, card_limit_modif)

        added_card.ability.extra.joyous_spring.summoned = JoyousSpring.is_extra_deck_monster(added_card) or false
        added_card.ability.extra.joyous_spring.revived = true
        added_card:set_cost()
        SMODS.calculate_context({ joy_revived = true, joy_revived_card = added_card })
        return added_card
    end
    return nil
end

---Revives a random card that fulfills **property_list**
---@param property_list material_properties[]
---@param seed number
---@param must_have_room boolean?
---@param edition any?
---@param card_limit_modif integer?
---@param different_names boolean?
---@return Card?
JoyousSpring.revive_pseudorandom = function(property_list, seed, must_have_room, edition, card_limit_modif,
                                            different_names)
    local choices = JoyousSpring.get_materials_in_graveyard(property_list, true, different_names)
    local key_to_add = pseudorandom_element(choices, seed)
    if key_to_add then
        return JoyousSpring.revive(key_to_add, must_have_room, edition, card_limit_modif)
    end

    return nil
end

JoyousSpring.send_to_graveyard = function(card)
    if JoyousSpring.graveyard and not JoyousSpring.delete_run then
        if type(card) == "string" then
            local not_summoned = JoyousSpring.is_material_center(card, { exclude_summon_types = { "NORMAL" } })
            local cannot_revive = G.P_CENTERS[card].config.extra.joyous_spring.cannot_revive or not_summoned
            SMODS.calculate_context({
                joy_sent_to_gy = true,
                joy_key = card,
                joy_from_field = false,
                joy_summoned =
                    not not_summoned
            })
            if not JoyousSpring.graveyard[card] then JoyousSpring.graveyard[card] = { count = 0, summonable = 0 } end
            JoyousSpring.graveyard[card].count = JoyousSpring.graveyard[card].count + 1
            JoyousSpring.graveyard[card].summonable = JoyousSpring.graveyard[card].summonable +
                (cannot_revive and 0 or 1)
        elseif type(card) == "table" then
            local not_summoned = not JoyousSpring.is_summon_type(card, "NORMAL") and not JoyousSpring.is_summoned(card)
            local cannot_revive = card.ability.extra.joyous_spring.cannot_revive or not_summoned
            SMODS.calculate_context({
                joy_sent_to_gy = true,
                joy_card = card,
                joy_key = card.config.center.key,
                joy_from_field = card.area and card.area == G.jokers or false,
                joy_summoned = not
                    not_summoned
            })
            if not JoyousSpring.graveyard[card.config.center_key] then JoyousSpring.graveyard[card.config.center_key] = { count = 0, summonable = 0 } end
            JoyousSpring.graveyard[card.config.center_key].count = JoyousSpring.graveyard[card.config.center_key].count +
                1
            JoyousSpring.graveyard[card.config.center_key].summonable = JoyousSpring.graveyard[card.config.center_key]
                .summonable + (cannot_revive and 0 or 1)
        end
    end
end

-- Prevent GY from doing stuff at the end of the run
local game_delete_run_ref = Game.delete_run
function Game:delete_run()
    JoyousSpring.delete_run = true
    game_delete_run_ref(self)
    JoyousSpring.delete_run = nil
end

JoyousSpring.create_graveyard_tab = function()
    local gy_count = 0
    for _, _ in pairs(JoyousSpring.graveyard) do
        gy_count = gy_count + 1
    end
    JoyousSpring.graveyard_area = {}
    local num_graveyard_areas = math.min(4, math.floor(gy_count / 25) + 1)
    for i = 1, num_graveyard_areas do
        JoyousSpring.graveyard_area[i] = CardArea(
            G.ROOM.T.x + 0.2 * G.ROOM.T.w / 2,
            G.ROOM.T.h,
            6.5 * G.CARD_W,
            0.6 * G.CARD_H,
            {
                card_limit = (num_graveyard_areas == i and gy_count - 25 * (i - 1)) or 25,
                type = 'title',
                highlight_limit = 0,
                card_w = G.CARD_W * 0.7,
                draw_layers = { 'card' },
            }
        )
        JoyousSpring.graveyard_area[i].monster_h_popup = true
    end

    local keys = {}
    for key, _ in pairs(JoyousSpring.graveyard) do
        table.insert(keys, key)
    end
    table.sort(keys, function(a, b) return JoyousSpring.card_order[a] < JoyousSpring.card_order[b] end)
    for i, key in ipairs(keys) do
        local t = JoyousSpring.graveyard[key]
        local count = t.count
        local summonable = t.summonable
        if count > 0 then
            local old_used_jokers = G.GAME.used_jokers[key]
            local added_card = SMODS.create_card({
                area = JoyousSpring.graveyard_area[math.min(4, math.floor(i / 25) + 1)],
                key = key,
                no_edition = true,
                skip_materialize = true,
            })
            -- I create the cards just before making the overlay_menu so I need to set user_jokers to what it was before because it updates
            G.GAME.used_jokers[key] = old_used_jokers
            JoyousSpring.graveyard_area[math.min(4, math.floor(i / 25) + 1)]:emplace(added_card)
            -- copied from Cartomancer
            if not added_card.children.stack_display and (count > 1 or
                    (JoyousSpring.is_extra_deck_monster(added_card)) and count ~= summonable) then
                added_card.children.stack_display = UIBox {
                    definition = {
                        n = G.UIT.ROOT,
                        config = {
                            minh = 0.6,
                            maxh = 1.2,
                            minw = 0.6,
                            maxw = 2,
                            r = 0.001,
                            padding = 0.1,
                            align = 'cm',
                            colour = adjust_alpha(darken(G.C.BLACK, 0.2), 0.8),
                            shadow = false,
                            ref_table = added_card
                        },
                        nodes = {
                            {
                                n = G.UIT.R, -- node type
                                config = {
                                    align = 'cm',
                                    colour = G.C.CLEAR
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T, -- node type
                                        config = {
                                            text = 'X',
                                            scale = 0.45,
                                            colour = G.C.JOY.TRAP
                                        },
                                    },
                                    {
                                        n = G.UIT.T, -- node type
                                        config = {
                                            text = count,
                                            scale = 0.45,
                                            colour = G.C.UI.TEXT_LIGHT
                                        }
                                    }
                                }
                            },
                            JoyousSpring.is_extra_deck_monster(added_card) and {
                                n = G.UIT.R, -- node type
                                config = {
                                    align = 'cm',
                                    colour = G.C.CLEAR
                                },
                                nodes = {
                                    {
                                        n = G.UIT.T, -- node type
                                        config = {
                                            text = 'X',
                                            scale = 0.45,
                                            colour = G.C.JOY.SPELL
                                        },
                                    },
                                    {
                                        n = G.UIT.T, -- node type
                                        config = {
                                            text = summonable,
                                            scale = 0.45,
                                            colour = G.C.UI.TEXT_LIGHT
                                        }
                                    }
                                }
                            } or nil,
                        }
                    },
                    config = {
                        align = "tli",
                        bond = 'Strong',
                        parent = added_card,
                    },
                    states = {
                        collide = { can = false },
                        drag = { can = true }
                    }
                }
            end
        end
    end

    local gy_nodes = {
        {
            n = G.UIT.C,
            config = { align = 'cm' },
            nodes = {
                {
                    n = G.UIT.R,
                    config = {
                        align = "cm",
                        padding = 0.2,
                        minw = 7
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = {
                                r = 0.1,
                                minw = 7,
                                minh = 5,
                                align = "cm",
                                padding = 1,
                                colour = G.C.BLACK
                            },
                            nodes = {
                                {
                                    n = G.UIT.C,
                                    config = {
                                        align = "cm",
                                        padding = 0.07,
                                        no_fill = true,
                                        scale = 1
                                    },
                                    nodes = {
                                        num_graveyard_areas > 0 and {
                                            n = G.UIT.R,
                                            config = {
                                                align = "cm",
                                                padding = 0.07,
                                                no_fill = true,
                                                scale = 1
                                            },
                                            nodes = {
                                                {
                                                    n = G.UIT.O,
                                                    config = {
                                                        object = JoyousSpring.graveyard_area[1]
                                                    }
                                                },
                                            }
                                        } or nil,
                                        num_graveyard_areas > 1 and {
                                            n = G.UIT.R,
                                            config = {
                                                align = "cm",
                                                padding = 0.07,
                                                no_fill = true,
                                                scale = 1
                                            },
                                            nodes = {
                                                {
                                                    n = G.UIT.O,
                                                    config = {
                                                        object = JoyousSpring.graveyard_area[2]
                                                    }
                                                },
                                            }
                                        } or nil,
                                        num_graveyard_areas > 2 and {
                                            n = G.UIT.R,
                                            config = {
                                                align = "cm",
                                                padding = 0.07,
                                                no_fill = true,
                                                scale = 1
                                            },
                                            nodes = {
                                                {
                                                    n = G.UIT.O,
                                                    config = {
                                                        object = JoyousSpring.graveyard_area[3]
                                                    }
                                                },
                                            }
                                        } or nil,
                                        num_graveyard_areas > 3 and {
                                            n = G.UIT.R,
                                            config = {
                                                align = "cm",
                                                padding = 0.07,
                                                no_fill = true,
                                                scale = 1
                                            },
                                            nodes = {
                                                {
                                                    n = G.UIT.O,
                                                    config = {
                                                        object = JoyousSpring.graveyard_area[4]
                                                    }
                                                },
                                            }
                                        } or nil,
                                    }
                                }
                            }
                        }
                    }
                }
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
        nodes = gy_nodes
    }
end

JoyousSpring.create_overlay_graveyard = function()
    G.FUNCS.overlay_menu({
        definition = create_UIBox_generic_options({
            back_colour = G.C.JOY.TRAP,
            contents = {
                {
                    n = G.UIT.R,
                    nodes = {
                        create_tabs({
                            snap_to_nav = true,
                            colour = G.C.JOY.TRAP,
                            tabs = {
                                {
                                    label = localize('k_joy_graveyard'),
                                    chosen = true,
                                    tab_definition_function = JoyousSpring.create_graveyard_tab
                                },
                                {
                                    label = localize('k_joy_banishment'),
                                    chosen = false,
                                    tab_definition_function = JoyousSpring.create_banishment_tab
                                },
                            }
                        }),
                    }
                },
            }
        })
    })
end

G.FUNCS.joy_open_graveyard = function(e)
    JoyousSpring.create_overlay_graveyard()
end

G.FUNCS.joy_show_graveyard = function(e)
    if (JoyousSpring.graveyard and next(JoyousSpring.graveyard)) or
        (JoyousSpring.banish_blind_selected_area and #JoyousSpring.banish_blind_selected_area.cards > 0) or
        (JoyousSpring.banish_end_of_round_area and #JoyousSpring.banish_end_of_round_area.cards > 0) or
        (JoyousSpring.banish_boss_selected_area and #JoyousSpring.banish_boss_selected_area.cards > 0) or
        (JoyousSpring.banish_end_of_ante_area and #JoyousSpring.banish_end_of_ante_area.cards > 0) then
        G.GAME.joy_show_graveyard = true
    end
    if G.GAME.joy_show_graveyard then
        e.states.visible = true
    else
        e.states.visible = false
    end
end

local card_remove_ref = Card.remove
function Card:remove()
    if (self.area == G.jokers or self.area == JoyousSpring.extra_deck_area or self.area == JoyousSpring.field_spell_area) and
        JoyousSpring.is_monster_card(self) and self.config.center.key ~= "j_joy_token" then
        JoyousSpring.send_to_graveyard(self)
    end
    card_remove_ref(self)
end

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    game_start_run_ref(self, args)

    G.GAME.joy_show_graveyard = false

    self.GAME.joy_graveyard = self.GAME.joy_graveyard or self.GAME.modifiers["joy_gy_start"] or {}
    JoyousSpring.graveyard = self.GAME.joy_graveyard
end
