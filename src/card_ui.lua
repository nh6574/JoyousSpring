---CARD UI

SMODS.Font {
    key = "font",
    path = "DoHyeon-Regular.ttf",
    FONTSCALE = 0.1
}

---Creates UI for a monsters type information
---@param card Card
---@return table
JoyousSpring.get_type_ui = function(card)
    local joyous_spring_table = card and card.ability and card.ability.extra.joyous_spring or {}

    if joyous_spring_table.is_field_spell then
        return {
            {
                n = G.UIT.O,
                config = {
                    object = DynaText({
                        string = { localize("k_joy_fieldspell") },
                        colours = { G.C.JOY.SPELL },
                        bump = true,
                        silent = true,
                        pop_in = 0,
                        pop_in_rate = 4,
                        maxw = 5,
                        shadow = true,
                        y_offset = 0,
                        spacing = math.max(0, 0.32 * (17 - #localize("k_joy_fieldspell"))),
                        scale = (0.4 - 0.004 * #localize("k_joy_fieldspell"))
                    })
                }
            }
        }
    end

    local attribute_text = localize("k_joy_" .. (joyous_spring_table.attribute or "LIGHT"))
    local type_text = localize("k_joy_" .. (joyous_spring_table.monster_type or "Beast"))
    local summon_type_text = joyous_spring_table.summon_type and joyous_spring_table.summon_type ~= "NORMAL" and
        localize("k_joy_" .. joyous_spring_table.summon_type) or nil
    local pendulum_text = joyous_spring_table.is_pendulum and localize("k_joy_pendulum") or nil
    local flip_text = joyous_spring_table.is_flip and localize("k_joy_flip") or nil
    local tuner_text = joyous_spring_table.is_tuner and localize("k_joy_tuner") or nil
    local effect_text = joyous_spring_table.is_effect and localize("k_joy_effect") or localize("k_joy_normal")
    local trap_text = joyous_spring_table.is_trap and localize("k_joy_trap") or nil
    local full_text = attribute_text ..
        "/" .. type_text .. "/" .. (summon_type_text or "") .. (summon_type_text and "/" or "") ..
        (pendulum_text or "") .. (pendulum_text and "/" or "") ..
        (flip_text or "") .. (flip_text and "/" or "") ..
        (tuner_text or "") .. (tuner_text and "/" or "") ..
        effect_text .. (trap_text and "/" or "") ..
        (trap_text or "")

    local attribute = {
        n = G.UIT.O,
        config = {
            object = DynaText({
                string = { attribute_text },
                colours = { G.C.JOY[joyous_spring_table.attribute or "LIGHT"] },
                bump = true,
                silent = true,
                pop_in = 0,
                pop_in_rate = 4,
                maxw = 5,
                shadow = true,
                y_offset = 0,
                spacing = math.max(0, 0.32 * (17 - #full_text)),
                scale = (0.4 - 0.004 * #full_text)
            })
        }
    }
    local type = {
        n = G.UIT.O,
        config = {
            object = DynaText({
                string = { type_text },
                colours = { G.C.JOY.NORMAL },
                bump = true,
                silent = true,
                pop_in = 0,
                pop_in_rate = 4,
                maxw = 5,
                shadow = true,
                y_offset = 0,
                spacing = math.max(0, 0.32 * (17 - #full_text)),
                scale = (0.4 - 0.004 * #full_text)
            })
        }
    }
    local summon_type
    if summon_type_text then
        summon_type = {
            n = G.UIT.O,
            config = {
                object = DynaText({
                    string = { summon_type_text },
                    colours = { G.C.JOY[joyous_spring_table.summon_type] or G.C.JOY.FUSION },
                    bump = true,
                    silent = true,
                    pop_in = 0,
                    pop_in_rate = 4,
                    maxw = 5,
                    shadow = true,
                    y_offset = 0,
                    spacing = math.max(0, 0.32 * (17 - #full_text)),
                    scale = (0.4 - 0.004 * #full_text)
                })
            }
        }
    end
    local pendulum
    if joyous_spring_table.is_pendulum then
        pendulum = {
            n = G.UIT.O,
            config = {
                object = DynaText({
                    string = { pendulum_text },
                    colours = { G.C.JOY.SPELL },
                    bump = true,
                    silent = true,
                    pop_in = 0,
                    pop_in_rate = 4,
                    maxw = 5,
                    shadow = true,
                    y_offset = 0,
                    spacing = math.max(0, 0.32 * (17 - #full_text)),
                    scale = (0.4 - 0.004 * #full_text)
                })
            }
        }
    end
    local tuner
    if tuner_text then
        tuner = {
            n = G.UIT.O,
            config = {
                object = DynaText({
                    string = { tuner_text },
                    colours = { G.C.JOY.SYNCHRO },
                    bump = true,
                    silent = true,
                    pop_in = 0,
                    pop_in_rate = 4,
                    maxw = 5,
                    shadow = true,
                    y_offset = 0,
                    spacing = math.max(0, 0.32 * (17 - #full_text)),
                    scale = (0.4 - 0.004 * #full_text)
                })
            }
        }
    end
    local effect = {
        n = G.UIT.O,
        config = {
            object = DynaText({
                string = { effect_text },
                colours = { joyous_spring_table.is_effect and G.C.JOY.EFFECT or G.C.JOY.NORMAL },
                bump = true,
                silent = true,
                pop_in = 0,
                pop_in_rate = 4,
                maxw = 5,
                shadow = true,
                y_offset = 0,
                spacing = math.max(0, 0.32 * (17 - #full_text)),
                scale = (0.4 - 0.004 * #full_text)
            })
        }
    }
    local flip
    if flip_text then
        flip = {
            n = G.UIT.O,
            config = {
                object = DynaText({
                    string = { flip_text },
                    colours = { G.C.JOY.EFFECT },
                    bump = true,
                    silent = true,
                    pop_in = 0,
                    pop_in_rate = 4,
                    maxw = 5,
                    shadow = true,
                    y_offset = 0,
                    spacing = math.max(0, 0.32 * (17 - #full_text)),
                    scale = (0.4 - 0.004 * #full_text)
                })
            }
        }
    end
    local trap
    if trap_text then
        trap = {
            n = G.UIT.O,
            config = {
                object = DynaText({
                    string = { trap_text },
                    colours = { G.C.JOY.TRAP },
                    bump = true,
                    silent = true,
                    pop_in = 0,
                    pop_in_rate = 4,
                    maxw = 5,
                    shadow = true,
                    y_offset = 0,
                    spacing = math.max(0, 0.32 * (17 - #full_text)),
                    scale = (0.4 - 0.004 * #full_text)
                })
            }
        }
    end
    local separator = {
        n = G.UIT.T,
        config = {
            text = "/",
            colour = G.C.UI.TEXT_LIGHT,
            scale = (0.4 - 0.004 * #full_text)
        }
    }
    return {
        attribute,
        separator,
        type,
        separator,
        summon_type,
        summon_type and separator or nil,
        pendulum,
        pendulum and separator or nil,
        flip,
        flip and separator or nil,
        tuner,
        tuner and separator or nil,
        effect,
        trap and separator or nil,
        trap
    }
end

---Generates Joker's description UI. This is done to:
---* Add type information under names
---* Add summoning conditions to info_queue automatically
---* Remove color codes from info_queue tooltip names
---@param self table
---@param info_queue table
---@param card Card
---@param desc_nodes table
---@param specific_vars table
---@param full_UI_table table
JoyousSpring.generate_info_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    SMODS.Center.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)

    if desc_nodes ~= full_UI_table.main then
        -- Remove color codes from info_queue tooltip names
        if string.len(desc_nodes.name) > 2 and string.sub(desc_nodes.name, string.len(desc_nodes.name) - 1, string.len(desc_nodes.name)) == "{}" then
            desc_nodes.name = string.sub(desc_nodes.name, 1, string.len(desc_nodes.name) - 2)
        end
        if string.sub(desc_nodes.name, 1, 3) == "{C:" then
            local _, _, _, real_name = string.find(desc_nodes.name, "{C:(.*)}(.*)")
            desc_nodes.name = real_name
        end
    else
        -- Add type information under names
        -- full_UI_table.name = {
        --     {
        --         n = G.UIT.C,
        --         config = { align = "cm", padding = 0.05 },
        --         nodes = {
        --             {
        --                 n = G.UIT.R,
        --                 config = { align = "cm" },
        --                 nodes = full_UI_table.name
        --             },
        --             {
        --                 n = G.UIT.R,
        --                 config = { align = "cm" },
        --                 nodes = JoyousSpring.get_type_ui(card)
        --             },
        --         }
        --     }
        -- }

        -- Pendulum ability
        if card and not card.debuff and G.localization.descriptions[self.set][self.key].joy_consumable then
            full_UI_table.joy_consumable = {}
            full_UI_table.joy_consumable.background_colour = lighten(G.C.JOY.SPELL, 0.7)
            local loc_vars = {}
            if self.loc_vars and type(self.loc_vars) == 'function' then
                loc_vars = self:loc_vars({}, card) or {}
            end
            localize { type = "joy_consumable", set = self.set, key = self.key, nodes = full_UI_table.joy_consumable, vars = loc_vars.vars or {} }
            if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
                table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_pendulum_joker" })
            end
        end

        -- Transferred ability
        if card and not card.debuff and card.joy_transfer_text and card.ability.extra.joyous_spring.material_effects and next(card.ability.extra.joyous_spring.material_effects) then
            full_UI_table.main = {}
            full_UI_table.main[#full_UI_table.main + 1] = {
                {
                    n = G.UIT.R,
                    config = { align = "cm" },
                    nodes = {
                        {
                            n = G.UIT.T,
                            config = {
                                text = localize("k_joy_transferred_abilities"),
                                scale = 0.3,
                                colour = G.C.UI.TEXT_INACTIVE,
                            },
                        },
                    }
                },
            }
            for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
                local joy_loc_string = localize { type = 'name_text', set = "Joker", key = material_key } or ''
                full_UI_table.main[#full_UI_table.main + 1] = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm" },
                        nodes = {
                            {
                                n = G.UIT.T,
                                config = {
                                    text = joy_loc_string,
                                    scale = 0.27,
                                    colour = JoyousSpring.get_name_color(material_key) or G.C.JOY.EFFECT,
                                },
                            }
                        }
                    },
                }

                local material_center = G.P_CENTERS[material_key]
                if material_center and G.localization.descriptions["Joker"][material_key].joy_transfer_ability then
                    localize { type = "joy_transfer_ability", set = "Joker", key = material_key, nodes = full_UI_table.main, vars = material_center.joy_transfer_loc_vars and material_center:joy_transfer_loc_vars(info_queue, card, config).vars or {}, scale = 0.9 }
                end
            end
        end

        -- Add summoning conditions to info_queue automatically
        if G.localization.descriptions[self.set][self.key].joy_summon_conditions then
            full_UI_table.info[#full_UI_table.info + 1] = {}
            local summon_desc_nodes = full_UI_table.info[#full_UI_table.info]
            summon_desc_nodes.name = localize('k_joy_summon_conditions')
            localize { type = "joy_summon_conditions", set = self.set, key = self.key, nodes = summon_desc_nodes }
        end

        -- Add tooltip if it's a flip
        if JoyousSpring.is_flip_monster(card) then
            if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
                table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_flip" })
            end
        end
        -- Add tooltip if it's a trap
        if JoyousSpring.is_trap_monster(card) then
            if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
                table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_trap" })
            end
        end
        -- Add tooltip if it's face-down
        if card.facing == 'back' then
            if not card.fake_card then
                table.insert(info_queue, 1, { set = "Other", key = "joy_face_down" })
            end
        end
        if card and not card.debuff and card.ability.extra.joyous_spring.material_effects and next(card.ability.extra.joyous_spring.material_effects) then
            table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_transferred" })
        end
        -- Add tooltip if it has a related cards menu
        if self.joy_desc_cards and not card.fake_card then
            table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_related" })
        end
    end
end

local localize_ref = localize
function localize(args, misc_cat)
    if args and not (type(args) == 'table') then
        return localize_ref(args, misc_cat)
    end

    local loc_target = nil
    if args.type == 'joy_summon_conditions' or args.type == 'joy_transfer_ability' or args.type == 'joy_consumable' then
        loc_target = G.localization.descriptions[(args.set or args.node.config.center.set)]
            [args.key or args.node.config.center.key]

        if loc_target then
            for _, lines in ipairs(loc_target[args.type .. "_parsed"]) do
                local final_line = {}
                for _, part in ipairs(lines) do
                    local assembled_string = ''
                    for _, subpart in ipairs(part.strings) do
                        assembled_string = assembled_string ..
                            (type(subpart) == 'string' and subpart or format_ui_value(args.vars[tonumber(subpart[1])]) or 'ERROR')
                    end
                    local desc_scale = G.LANG.font.DESCSCALE
                    if G.F_MOBILE_UI then desc_scale = desc_scale * 1.5 end
                    if part.control.E then
                        local _float, _silent, _pop_in, _bump, _spacing = nil, true, nil, nil, nil
                        if part.control.E == '1' then
                            _float = true; _silent = true; _pop_in = 0
                        elseif part.control.E == '2' then
                            _bump = true; _spacing = 1
                        end
                        final_line[#final_line + 1] = {
                            n = G.UIT.O,
                            config = {
                                object = DynaText({
                                    string = { assembled_string },
                                    colours = { part.control.V and args.vars.colours[tonumber(part.control.V)] or loc_colour(part.control.C or nil) },
                                    float = _float,
                                    silent = _silent,
                                    pop_in = _pop_in,
                                    bump = _bump,
                                    spacing = _spacing,
                                    scale = 0.32 * (part.control.s and tonumber(part.control.s) or args.scale or 1) *
                                        desc_scale
                                })
                            }
                        }
                    elseif part.control.X then
                        final_line[#final_line + 1] = {
                            n = G.UIT.C,
                            config = { align = "m", colour = loc_colour(part.control.X), r = 0.05, padding = 0.03, res = 0.15 },
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = assembled_string,
                                        colour = loc_colour(part.control.C or nil),
                                        scale = 0.32 * (part.control.s and tonumber(part.control.s) or args.scale or 1) *
                                            desc_scale
                                    }
                                },
                            }
                        }
                    else
                        final_line[#final_line + 1] = {
                            n = G.UIT.T,
                            config = {
                                detailed_tooltip = part.control.T and
                                    (G.P_CENTERS[part.control.T] or G.P_TAGS[part.control.T]) or nil,
                                text = assembled_string,
                                shadow = args.shadow,
                                colour = part.control.V and args.vars.colours[tonumber(part.control.V)] or
                                    not part.control.C and args.text_colour or
                                    loc_colour(part.control.C or nil, args.default_col),
                                scale = 0.32 * (part.control.s and tonumber(part.control.s) or args.scale or 1) *
                                    desc_scale
                            },
                        }
                    end
                end
                args.nodes[#args.nodes + 1] = final_line
            end
        end
    end
    return localize_ref(args, misc_cat)
end

local init_localization_ref = init_localization
function init_localization()
    init_localization_ref()

    for _, center in pairs(G.localization.descriptions.Joker) do
        if center.joy_summon_conditions then
            center.joy_summon_conditions_parsed = {}
            for _, line in ipairs(center.joy_summon_conditions) do
                center.joy_summon_conditions_parsed[#center.joy_summon_conditions_parsed + 1] = loc_parse_string(line)
            end
        end
        if center.joy_transfer_ability then
            center.joy_transfer_ability_parsed = {}
            for _, line in ipairs(center.joy_transfer_ability) do
                center.joy_transfer_ability_parsed[#center.joy_transfer_ability_parsed + 1] = loc_parse_string(line)
            end
        end
        if center.joy_consumable then
            center.joy_consumable_parsed = {}
            for _, line in ipairs(center.joy_consumable) do
                center.joy_consumable_parsed[#center.joy_consumable_parsed + 1] = loc_parse_string(line)
            end
        end
    end
end

---Adds YGO's back to cards
---@param self table|SMODS.Center
---@param card Card
---@param front table
JoyousSpring.set_back_sprite = function(self, card, front)
    if card.children.back then card.children.back:remove() end
    card.children.back = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS["joy_Back"], { x = 0, y = 0 })
    card.children.back.states.hover = card.states.hover
    card.children.back.states.click = card.states.click
    card.children.back.states.drag = card.states.drag
    card.children.back.states.collide.can = false
    card.children.back:set_role({ major = card, role_type = 'Glued', draw_major = card })
end

JoyousSpring.update_counter = function(self, card, dt)
    if card.area and (card.area == G.jokers or card.area.config.type == "summon_materials") then
        if not card.children.xyz_materials and card.ability.extra.joyous_spring.xyz_materials then
            card.children.xyz_materials = JoyousSpring.create_UIBox_xyz_materials(card)
        end
    end
end

---Creates counter UI for Xyz materials
---@param card Card
---@return UIBox
JoyousSpring.create_UIBox_xyz_materials = function(card)
    return UIBox {
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
                ref_table = card
            },
            nodes = {
                {
                    n = G.UIT.R,
                    config = {
                        align = 'cm',
                        colour = G.C.CLEAR
                    },
                    nodes = {
                        {
                            n = G.UIT.T,
                            config = {
                                text = 'X',
                                scale = 0.45,
                                colour = G.C.JOY.TRAP
                            },
                        },
                        {
                            n = G.UIT.T,
                            config = {
                                ref_table = card.ability.extra.joyous_spring,
                                ref_value = "xyz_materials",
                                scale = 0.45,
                                colour = G.C.UI.TEXT_LIGHT
                            }
                        }
                    }
                },
            }
        },
        config = {
            align = "tri",
            bond = 'Strong',
            parent = card,
        },
        states = {
            collide = { can = false },
            drag = { can = true }
        }
    }
end

SMODS.Keybind({
    key_pressed = "d",
    action = function(self)
        local selected = G and G.CONTROLLER and
            (G.CONTROLLER.focused.target or G.CONTROLLER.hovering.target)

        if not selected or not JoyousSpring.is_monster_card(selected) then
            return
        end

        JoyousSpring.create_overlay_see_related(selected)
    end
})

SMODS.Keybind({
    key_pressed = "t",
    action = function(self)
        local selected = G and G.CONTROLLER and
            (G.CONTROLLER.focused.target or G.CONTROLLER.hovering.target)

        if not selected or not JoyousSpring.is_monster_card(selected) or selected.debuff or not selected.ability.extra.joyous_spring.material_effects or not next(selected.ability.extra.joyous_spring.material_effects) then
            return
        end

        selected.joy_transfer_text = not selected.joy_transfer_text
        selected:stop_hover()
        selected:hover()
    end
})

---Creates overlay to see cards mentioned in the text
---@param card table|Card|string
JoyousSpring.create_overlay_see_related = function(card)
    if not card then return end
    local card_center
    if type(card) == "string" then
        card_center = G.P_CENTERS[card]
    else
        card_center = card.config.center
    end

    if not card_center or not card_center.joy_desc_cards or not type(card_center.joy_desc_cards) == "table" then return end

    JoyousSpring.related_area = {}
    local tabs = {}

    for i, area_cards in ipairs(card_center.joy_desc_cards) do
        local area_tab = {
            label = localize(area_cards.name) ~= "ERROR" and localize(area_cards.name) or localize("k_joy_related"),
            chosen = i == 1,
            tab_definition_function = function(t)
                t.area_table[#t.area_table + 1] = CardArea(
                    0,
                    0,
                    G.CARD_W * 8.95,
                    G.CARD_H,
                    {
                        card_limit = 10,
                        type = 'title',
                        highlight_limit = 0,
                    }
                )

                local keys = {}

                for _, key in ipairs(t.area_cards) do
                    table.insert(keys, key)
                end
                if t.area_cards.properties then
                    local keys_to_add = JoyousSpring.get_materials_in_collection(t.area_cards.properties)
                    for _, key in ipairs(keys_to_add) do
                        table.insert(keys, key)
                    end
                end
                table.sort(keys, function(a, b) return JoyousSpring.card_order[a] < JoyousSpring.card_order[b] end)
                for j, key in ipairs(keys) do
                    local old_used_jokers = G.GAME.used_jokers[key]
                    local added_card = SMODS.create_card({
                        key = key,
                        no_edition = true,
                        area = t.area_table[#t.area_table]
                    })
                    G.GAME.used_jokers[key] = old_used_jokers
                    t.area_table[#t.area_table]:emplace(added_card)
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
                                        object = t.area_table[#t.area_table]
                                    }
                                },
                            }
                        }
                    }
                }
            end,
            tab_definition_function_args = { area_table = JoyousSpring.related_area, area_cards = area_cards }
        }
        table.insert(tabs, area_tab)
    end

    if #tabs > 0 then
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
                                tabs = tabs
                            }),
                        }
                    },
                }
            })
        })
    end
end

local card_hover_ref = Card.hover
function Card:hover()
    card_hover_ref(self)
    if self.facing == 'back' and (not self.states.drag.is or G.CONTROLLER.HID.touch) and not self.no_ui and JoyousSpring.is_monster_card(self) then
        if self.children.alert and not self.config.center.alerted then
            self.config.center.alerted = true
            G:save_progress()
        elseif self.children.alert and self.seal and not G.P_SEALS[self.seal].alerted then
            G.P_SEALS[self.seal].alerted = true
            G:save_progress()
        end
        self.ability_UIBox_table = self:generate_UIBox_ability_table()
        self.config.h_popup = G.UIDEF.card_h_popup(self)
        self.config.h_popup_config = self:align_h_popup()

        Node.hover(self)
    end
end
