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
    local joyous_spring_table = card and card.ability and
        type(card.ability.extra) == "table"
        and card.ability.extra.joyous_spring or {}
    local extra_values = JoyousSpring.get_extra_values(card) or {}

    if extra_values.is_field_spell or joyous_spring_table.is_field_spell then
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

    local attribute_text = localize("k_joy_" .. (extra_values.attribute or joyous_spring_table.attribute or "LIGHT"))
    local type_text = localize("k_joy_" .. (extra_values.monster_type or joyous_spring_table.monster_type or "Beast"))
    local summon_type_text = joyous_spring_table.summon_type and joyous_spring_table.summon_type ~= "NORMAL" and
        localize("k_joy_" .. joyous_spring_table.summon_type) or nil
    local pendulum_text = joyous_spring_table.is_pendulum and localize("k_joy_pendulum") or nil
    local flip_text = joyous_spring_table.is_flip and localize("k_joy_flip") or nil
    local tuner_text = (extra_values.is_tuner or joyous_spring_table.is_tuner) and localize("k_joy_tuner") or nil
    local effect_text = (extra_values.is_effect or joyous_spring_table.is_effect) and localize("k_joy_effect") or
        localize("k_joy_normal")
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
                colours = { G.C.JOY[extra_values.attribute or joyous_spring_table.attribute or "LIGHT"] },
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
    local monster_type = {
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
        monster_type,
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

---Generates Joker's description UI. This is done to add:
---* Type information under names
---* Some tooltips to info_queue automatically
---* Transferred ability descriptions
---@param self table
---@param info_queue table
---@param card Card
---@param desc_nodes table
---@param specific_vars table
---@param full_UI_table table
JoyousSpring.generate_info_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    --SMODS.Center.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)

    if desc_nodes == full_UI_table.main and self.set == "Joker" then
        -- Add type information under names
        full_UI_table.name = {
            {
                n = G.UIT.C,
                config = { align = "cm", padding = 0.05 },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm" },
                        nodes = full_UI_table.name
                    },
                    {
                        n = G.UIT.R,
                        config = { align = "cm" },
                        nodes = JoyousSpring.get_type_ui(card)
                    },
                }
            }
        }

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

        local is_monster = type(card.ability.extra) == "table" and card.ability.extra.joyous_spring

        -- Transferred ability
        if card and not card.debuff and is_monster and card.joy_transfer_text and card.ability.extra.joyous_spring.material_effects and next(card.ability.extra.joyous_spring.material_effects) then
            full_UI_table.multi_box = {}
            local initial = true
            for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
                local name_node = {}
                local node = {}

                local material_center = G.P_CENTERS[material_key]
                if material_center and G.localization.descriptions["Joker"][material_key].joy_transfer_ability then
                    localize { type = 'name', set = "Joker", key = material_key, nodes = name_node, vars = material_center.joy_transfer_loc_vars and material_center:joy_transfer_loc_vars(info_queue, card, config).vars or {}, scale = 0.7 }
                    localize { type = "joy_transfer_ability", set = "Joker", key = material_key, nodes = node, vars = material_center.joy_transfer_loc_vars and material_center:joy_transfer_loc_vars(info_queue, card, config).vars or {}, scale = 0.9 }
                end
                if initial then
                    full_UI_table.main = name_node
                    full_UI_table.main.main_box_flag = true
                    full_UI_table.main.joy_box_minh = 0
                    full_UI_table.box_colours[1] = G.C.CLEAR
                else
                    full_UI_table.multi_box[#full_UI_table.multi_box + 1] = name_node
                    full_UI_table.multi_box[#full_UI_table.multi_box].joy_box_minh = 0
                    full_UI_table.box_colours[#full_UI_table.multi_box + 1] = G.C.CLEAR
                end
                full_UI_table.multi_box[#full_UI_table.multi_box + 1] = node
                initial = false
            end
        end

        -- Add summoning conditions to info_queue automatically
        if G.localization.descriptions[self.set][self.key].joy_summon_conditions then
            full_UI_table.info[#full_UI_table.info + 1] = {}
            local summon_desc_nodes = full_UI_table.info[#full_UI_table.info]
            summon_desc_nodes.name = localize('k_joy_summon_conditions')
            localize { type = "joy_summon_conditions", set = self.set, key = self.key, nodes = summon_desc_nodes }
        end

        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            -- Add tooltip if it's a flip
            if JoyousSpring.is_flip_monster(card) then
                table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_flip" })
            end
            -- Add tooltip if it's a trap
            if JoyousSpring.is_trap_monster(card) then
                table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_trap" })
            end
            -- Add tooltip if it's a field spell
            if JoyousSpring.is_field_spell(card) then
                table.insert(info_queue, 1,
                    { set = "Other", key = "joy_tooltip_field_spell_joker", vars = { scale = 0.5 } })
            end
            -- Add Special Joker tooltips
            for _, type in ipairs({ "RITUAL", "FUSION", "SYNCHRO", "XYZ", "LINK" }) do
                if JoyousSpring.is_summon_type(card, type) then
                    table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_" .. type:lower() .. "_joker" })
                    break
                end
            end
        end

        -- Add tooltip if it's face-down
        if card.facing == 'back' and JoyousSpring.is_from_joyousspring(card) then
            if not card.fake_card then
                table.insert(info_queue, 1, { set = "Other", key = "joy_face_down" })
            end
        end
        -- Add tooltip if it has alt arts
        if self.joy_alt_pos and not card.fake_card then
            table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_alt_art" })
        end
    end

    if desc_nodes == full_UI_table.main then
        -- Add tooltip if it has a related cards menu
        if self.joy_desc_cards and not card.fake_card then
            table.insert(info_queue, 1, { set = "Other", key = "joy_tooltip_related" })
        end
    end
end

local center_generate_ui = SMODS.Center.generate_ui or function() end -- so vscode doesnt complain
SMODS.Center.generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    if desc_nodes == full_UI_table.main and JoyousSpring.is_from_joyousspring(card) then
        JoyousSpring.main_card_ui = true
    end
    center_generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    JoyousSpring.main_card_ui = nil
end

local desc_from_rows_ref = desc_from_rows
function desc_from_rows(desc_nodes, empty, maxw)
    local ret = desc_from_rows_ref(desc_nodes, empty, maxw)

    if desc_nodes.joy_box_minh then
        ret = {}
        local t = {}
        for _, v in ipairs(desc_nodes) do
            t[#t + 1] = { n = G.UIT.R, config = { align = "cm", maxw = maxw }, nodes = v }
        end
        ret = {
            n = G.UIT.R,
            config = { align = "cm", colour = desc_nodes.background_colour or empty and G.C.CLEAR or G.C.UI.BACKGROUND_WHITE, r = 0.1, padding = -0.03, minw = 2, minh = desc_nodes.joy_box_minh, emboss = not empty and 0.05 or nil, filler = true, main_box_flag = desc_nodes.main_box_flag and true or nil },
            nodes = {
                { n = G.UIT.R, config = { align = "cm", padding = -0.03 }, nodes = t }
            }
        }
    end

    return ret
end

local localize_ref = localize
function localize(args, misc_cat)
    if args and not (type(args) == 'table') then
        return localize_ref(args, misc_cat)
    end

    local loc_target = nil
    if args and (args.type == 'joy_summon_conditions' or args.type == 'joy_transfer_ability' or args.type == 'joy_consumable') then
        loc_target = G.localization.descriptions[(args.set or args.node.config.center.set)]
            [args.key or args.node.config.center.key]

        if loc_target then
            for _, line in ipairs(loc_target[args.type .. "_parsed"]) do
                args.nodes[#args.nodes + 1] = SMODS.localize_box(line, args)
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
---@param self table|SMODS.Center?
---@param card Card
---@param front table?
JoyousSpring.set_back_sprite = function(self, card, front)
    local self = self or card.config.center
    if self.joy_alt_pos then
        if not card.ability or not card.ability.extra or card.ability.extra.joyous_spring.alt_art == nil then
            if JoyousSpring.config.alt_art[self.key] then
                card.children.center:set_sprite_pos(self.joy_alt_pos[1])
            else
                card.children.center:set_sprite_pos(self.pos)
            end
        elseif card.ability.extra.joyous_spring.alt_art == false then
            card.children.center:set_sprite_pos(self.pos)
        else
            card.children.center:set_sprite_pos(self.joy_alt_pos[1])
        end
    end


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

        if not selected or type(selected) ~= "table" or not ((selected.config or {}).center or {}).joy_desc_cards then
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

        if not selected or not JoyousSpring.is_monster_card(selected) or not JoyousSpring.has_joyous_table(selected) or selected.debuff or not selected.ability.extra.joyous_spring.material_effects or not next(selected.ability.extra.joyous_spring.material_effects) then
            return
        end

        selected.joy_transfer_text = not selected.joy_transfer_text
        selected:stop_hover()
        selected:hover()
    end
})

SMODS.Keybind({
    key_pressed = "a",
    action = function(self)
        local selected = G and G.CONTROLLER and
            (G.CONTROLLER.focused.target or G.CONTROLLER.hovering.target)

        if not selected or not JoyousSpring.is_monster_card(selected) or not JoyousSpring.has_joyous_table(selected) or not selected.config.center.joy_alt_pos then
            return
        end

        if selected.ability.extra.joyous_spring.alt_art ~= nil then
            selected.ability.extra.joyous_spring.alt_art = not selected.ability.extra.joyous_spring.alt_art
        else
            selected.ability.extra.joyous_spring.alt_art = not JoyousSpring.config.alt_art[selected.config.center.key]
        end
        selected:set_sprites(selected.config.center)
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

    if JoyousSpring.related_area then
        for _, area in ipairs(JoyousSpring.related_area) do
            area:remove()
        end
    end

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
                local count = 0
                for j, key in ipairs(keys) do
                    if count > 20 then
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
                        count = 0
                    end
                    local old_used_jokers = G.GAME.used_jokers[key]
                    local added_card = SMODS.create_card({
                        key = key,
                        no_edition = true,
                        area = t.area_table[#t.area_table]
                    })
                    G.GAME.used_jokers[key] = old_used_jokers
                    t.area_table[#t.area_table]:emplace(added_card)
                    count = count + 1
                end

                local nodes = {}

                for _, area in ipairs(t.area_table) do
                    nodes[#nodes + 1] =
                    {
                        n = G.UIT.R,
                        nodes = { {
                            n = G.UIT.O,
                            config = {
                                object = area
                            }
                        } }
                    }
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
                            n = G.UIT.C,
                            config = {
                                align = "cm",
                                r = 0.1,
                                padding = 0.1,
                                minh = 5,
                                minw = 7,
                                colour = G.C.BLACK
                            },
                            nodes = nodes
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
