--- MOD CONFIG

SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

SMODS.current_mod.description_loc_vars = function()
    return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2 }
end

SMODS.current_mod.custom_ui = function(modNodes)
    modNodes[1].nodes[1].config.colour = G.C.JOY.MOD

    G.joy_desc_area = CardArea(
        G.ROOM.T.x + 0.2 * G.ROOM.T.w / 2, G.ROOM.T.h,
        4.25 * G.CARD_W,
        0.95 * G.CARD_H,
        { card_limit = 5, type = 'title', highlight_limit = 0, collection = true }
    )
    G.joy_desc_area.joy_demo_area = true
    for i, key in ipairs({ "j_joy_yokai_ogre", "j_joy_yokai_reaper", "j_joy_yokai_belle", "j_joy_yokai_sister", "j_joy_yokai_mourner", "j_joy_yokai_ash" }) do
        local card = Card(G.joy_desc_area.T.x + G.joy_desc_area.T.w / 2, G.joy_desc_area.T.y,
            G.CARD_W, G.CARD_H, G.P_CARDS.empty,
            G.P_CENTERS[key])
        JoyousSpring.set_back_sprite(nil, card)
        G.joy_desc_area:emplace(card)
        card:flip()
        G.E_MANAGER:add_event(Event({
            blocking = false,
            trigger = "after",
            delay = 0.4 * i,
            func = function()
                play_sound("card1")
                card:flip()
                return true
            end,
        }))
    end

    modNodes[#modNodes + 1] = {
        n = G.UIT.R,
        config = { align = "cm", padding = 0.07, no_fill = true },
        nodes = {
            { n = G.UIT.O, config = { object = G.joy_desc_area } }
        }
    }

    modNodes[#modNodes + 1] = {
        n = G.UIT.R,
        config = {
            padding = 0.2,
            align = "cm",
        },
        nodes = {
            {
                n = G.UIT.C,
                config = {
                    padding = 0.2,
                    align = "cm",
                },
                nodes = {
                    UIBox_button({
                        colour = G.C.JOY.LINK,
                        minw = 3.85,
                        button = "joy_discord",
                        label = { localize('k_joy_discord') }
                    })
                }
            },
            {
                n = G.UIT.C,
                config = {
                    padding = 0.2,
                    align = "cm",
                },
                nodes = {
                    UIBox_button({
                        colour = G.C.JOY.TRAP,
                        minw = 3.85,
                        button = "joy_github",
                        label = { localize('k_joy_github') }
                    })
                }
            },
        }
    }
end

function G.FUNCS.joy_discord(e)
    love.system.openURL("https://discord.gg/Ac5FKpQCRV")
end

function G.FUNCS.joy_github(e)
    love.system.openURL("https://github.com/nh6574/JoyousSpring")
end

SMODS.current_mod.extra_tabs = function()
    return {
        {
            label = localize("k_joy_credits"),
            tab_definition_function = function()
                local modNodes = {}

                modNodes[#modNodes + 1] = {}
                local loc_vars = { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.4 }
                localize { type = 'descriptions', key = "joy_credits", set = 'Other', nodes = modNodes[#modNodes], vars = loc_vars.vars, scale = loc_vars.scale, text_colour = loc_vars.text_colour, shadow = loc_vars.shadow }
                modNodes[#modNodes] = desc_from_rows(modNodes[#modNodes])
                modNodes[#modNodes].config.colour = loc_vars.background_colour or modNodes[#modNodes].config.colour

                return {
                    n = G.UIT.ROOT,
                    config = {
                        emboss = 0.05,
                        minh = 6,
                        r = 0.1,
                        minw = 6,
                        align = "tm",
                        padding = 0.2,
                        colour = G.C.BLACK
                    },
                    nodes = modNodes
                }
            end
        },
        -- TODO: Remake these
        -- {
        --     label = localize("k_joy_glossary"),
        --     tab_definition_function = function()
        --         local modNodes = {}

        --         for _, key in ipairs({ "joy_glossary_monster", "joy_glossary_gy", "joy_glossary_revive", "joy_glossary_banish", "joy_glossary_transform", "joy_glossary_facedown", "joy_glossary_maindeck", "joy_glossary_pendulum", "joy_glossary_fieldspell" }) do
        --             modNodes[#modNodes + 1] = {}
        --             local loc_vars = { scale = 1.2 }
        --             localize { type = 'descriptions', key = key, set = 'Other', nodes = modNodes[#modNodes], vars = loc_vars.vars, scale = loc_vars.scale, text_colour = loc_vars.text_colour, shadow = loc_vars.shadow }
        --             modNodes[#modNodes] = desc_from_rows(modNodes[#modNodes])
        --             modNodes[#modNodes].config.colour = loc_vars.background_colour or modNodes[#modNodes].config.colour
        --         end

        --         return {
        --             n = G.UIT.ROOT,
        --             config = {
        --                 emboss = 0.05,
        --                 minh = 6,
        --                 r = 0.1,
        --                 minw = 6,
        --                 align = "tm",
        --                 padding = 0.2,
        --                 colour = G.C.BLACK
        --             },
        --             nodes = modNodes
        --         }
        --     end
        -- },
        -- {
        --     label = localize("k_joy_summon_glosary"),
        --     tab_definition_function = function()
        --         local modNodes = {}

        --         for _, key in ipairs({ "joy_glossary_extradeck", "joy_glossary_material", "joy_glossary_detach", "joy_glossary_ritual" }) do
        --             modNodes[#modNodes + 1] = {}
        --             local loc_vars = { scale = 1.2 }
        --             localize { type = 'descriptions', key = key, set = 'Other', nodes = modNodes[#modNodes], vars = loc_vars.vars, scale = loc_vars.scale, text_colour = loc_vars.text_colour, shadow = loc_vars.shadow }
        --             modNodes[#modNodes] = desc_from_rows(modNodes[#modNodes])
        --             modNodes[#modNodes].config.colour = loc_vars.background_colour or modNodes[#modNodes].config.colour
        --         end

        --         G.joy_glossary_area = CardArea(
        --             G.ROOM.T.x + 0.2 * G.ROOM.T.w / 2, G.ROOM.T.h,
        --             4.25 * G.CARD_W,
        --             0.95 * G.CARD_H,
        --             { card_limit = 5, type = 'title', highlight_limit = 0, collection = true }
        --         )

        --         for i, key in ipairs({ "j_joy_garura", "j_joy_psy_omega", "j_joy_spright_gigantic", "j_joy_apollousa", "j_joy_sauravis" }) do
        --             local card = Card(G.joy_desc_area.T.x + G.joy_desc_area.T.w / 2, G.joy_desc_area.T.y,
        --                 G.CARD_W, G.CARD_H, G.P_CARDS.empty,
        --                 G.P_CENTERS[key])

        --             G.joy_glossary_area:emplace(card)
        --         end
        --         modNodes[#modNodes + 1] = {
        --             n = G.UIT.R,
        --             config = { align = "cm", padding = 0.07, no_fill = true },
        --             nodes = {
        --                 { n = G.UIT.O, config = { object = G.joy_glossary_area } }
        --             }
        --         }
        --         return {
        --             n = G.UIT.ROOT,
        --             config = {
        --                 emboss = 0.05,
        --                 minh = 6,
        --                 r = 0.1,
        --                 minw = 6,
        --                 align = "tm",
        --                 padding = 0.2,
        --                 colour = G.C.BLACK
        --             },
        --             nodes = modNodes
        --         }
        --     end
        -- },
    }
end

SMODS.current_mod.ui_config = {
    colour = G.C.JOY.XYZ,
    bg_colour = { G.C.JOY.MOD[1], G.C.JOY.MOD[2], G.C.JOY.MOD[3], 0.6 },
    back_colour = darken(G.C.JOY.MOD, 0.3),
    tab_button_colour = darken(G.C.JOY.MOD, 0.2),
    collection_option_cycle_colour = darken(G.C.JOY.MOD, 0.2),
}

local main_tab = function()
    G.E_MANAGER:add_event(Event({
        blocking = false,
        blockable = false,
        func = function()
            if G.OVERLAY_MENU then
                G.OVERLAY_MENU:recalculate()
            end
            return true
        end
    }))

    return {
        n = G.UIT.ROOT,
        config = { r = 0.1, minw = 8, align = "tm", padding = 0.2, colour = G.C.BLACK },
        nodes = {
            {
                n = G.UIT.R,
                config = { padding = 0.2 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cr" },
                        nodes = {
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_only_ygo_cards'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'only_ygo_cards'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_extra_ygo_booster'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'extra_ygo_booster'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_disable_tooltips'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'disable_tooltips'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_disable_booster_tag'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'disable_booster_tag'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_instant_poker_hand'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'instant_poker_hand'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_disable_main_menu'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'disable_main_menu'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_disable_glow'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'disable_glow'
                                    })
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "cr", padding = 0.01 },
                                nodes = {
                                    create_toggle({
                                        label = localize('k_joy_disable_side_deck'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'disable_side_deck'
                                    })
                                }
                            },
                        }
                    },
                }
            },
        }
    }
end

JoyousSpring.alt_arts = {
    "j_joy_dmaid_house",
    "j_joy_etwin_kisikil",
    "j_joy_etwin_lilla",
    "j_joy_dogma_ecclesia",
    "j_joy_yokai_ash",
    "j_joy_yokai_belle",
    "j_joy_lab_lady",
    "j_joy_eld_eldlich",
    "j_joy_shaddoll_winda",
    "j_joy_shaddoll_elconstruct",
    "j_joy_invoked_aleister",
    "j_joy_invoked_mechaba",
    "j_joy_apollousa",
    "j_joy_ipmasq"
}

local art_callback = function()
    for _, card in pairs(G.I.CARD) do
        if card.config and card.config.center and card.config.center.joy_alt_pos then
            card:set_sprites(card.config.center)
        end
    end
end

local art_tab = function()
    G.E_MANAGER:add_event(Event({
        blocking = false,
        blockable = false,
        func = function()
            if G.OVERLAY_MENU then
                G.OVERLAY_MENU:recalculate()
            end
            return true
        end
    }))

    local columns = {}

    for i, key in ipairs(JoyousSpring.alt_arts) do
        if i % 6 == 1 then
            columns[#columns + 1] = {
                n = G.UIT.C,
                config = { align = "cr" },
                nodes = {
                }
            }
        end
        columns[#columns].nodes[#columns[#columns].nodes + 1] = {
            n = G.UIT.R,
            config = { align = "cr", padding = 0.01 },
            nodes = {
                create_toggle({
                    label = localize { type = "name_text", set = "Joker", key = key },
                    ref_table = JoyousSpring.config.alt_art,
                    ref_value = key,
                    callback = art_callback
                })
            }
        }
    end

    return {
        n = G.UIT.ROOT,
        config = { r = 0.1, minw = 8, align = "tm", padding = 0.2, colour = G.C.BLACK },
        nodes = {
            {
                n = G.UIT.R,
                config = { padding = 0.2, align = "cm" },
                nodes = {
                    {
                        n = G.UIT.T,
                        config = { text = localize("k_joy_enable_alts"), colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true },
                    },
                },
            },
            {
                n = G.UIT.R,
                config = { padding = 0.2 },
                nodes = columns
            },
        }
    }
end

SMODS.current_mod.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = { r = 0.1, minw = 8, align = "tm", padding = 0.2, colour = G.C.BLACK },
        nodes = {
            create_tabs({
                snap_to_nav = true,
                colour = darken(G.C.JOY.MOD, 0.2),
                scale = 0.8,
                tabs = {
                    {
                        label = localize("k_joy_main_config"),
                        chosen = true,
                        tab_definition_function = main_tab
                    },
                    {
                        label = localize("k_joy_art_config"),
                        chosen = false,
                        tab_definition_function = art_tab
                    },
                }
            }),
        }
    }
end

JoyousSpring.collection_pool = {}
JoyousSpring.token_pool = {}
JoyousSpring.card_order = {}

JoyousSpring.get_archetype_pool = function(pool)
    local archetype_pool = {}
    for i = 1, #JoyousSpring.collection_pool do
        archetype_pool[i] = {}
    end
    for _, center in ipairs(pool) do
        local found = false
        for archetype_index, archetype in ipairs(JoyousSpring.collection_pool) do
            for _, key in ipairs(archetype.keys) do
                if center.original_key ~= "token" and ((center.original_key:sub(1, #key + 1) == key .. "_") or (key == "misc" and not found)) then
                    table.insert(archetype_pool[archetype_index], center)
                    found = true
                    break
                end
            end
        end
        if center.original_key == "token" then
            for k, v in pairs(JoyousSpring.token_pool) do
                archetype_pool[#archetype_pool][v.order] = k
            end
        end
    end

    local paginated_archetype_pool = {}
    local pages = 0
    for _, archetype_table in ipairs(archetype_pool) do
        pages = pages + 1
        paginated_archetype_pool[#paginated_archetype_pool + 1] = { {} }
        local index = 1
        for _, center in ipairs(archetype_table) do
            local current_pool = paginated_archetype_pool[#paginated_archetype_pool]
            if #current_pool[index] == 15 then
                index = index + 1
                pages = pages + 1
                current_pool[index] = {}
            end
            table.insert(current_pool[index], center)
        end
    end

    return paginated_archetype_pool, pages
end

local create_UIBox_your_collection_jokers_ref = create_UIBox_your_collection_jokers
create_UIBox_your_collection_jokers = function()
    if G.ACTIVE_MOD_UI and G.ACTIVE_MOD_UI.id and G.ACTIVE_MOD_UI.id == "JoyousSpring" and #JoyousSpring.collection_pool > 0 then
        return JoyousSpring.card_collection_UIBox(G.P_CENTER_POOLS.Joker, { 5, 5, 5 }, {
            no_materialize = true,
            modify_card = function(card, center) card.sticker = get_joker_win_sticker(center) end,
            h_mod = 0.95,
        })
    end
    return create_UIBox_your_collection_jokers_ref()
end

---Modified from SMODS. Creates the UI for the Joker collection sorting by archetype in JoyousSpring.collection_pool
---@param _pool table
---@param rows table
---@param args table
---@return table
JoyousSpring.card_collection_UIBox = function(_pool, rows, args)
    args = args or {}
    args.w_mod = 1
    args.h_mod = 1
    args.card_scale = 1
    local deck_tables = {}
    local pool = SMODS.collection_pool(_pool)
    local archetype_pool, pages = JoyousSpring.get_archetype_pool(pool)

    G.your_collection = {}
    local cards_per_page = 0
    local row_totals = {}
    for j = 1, #rows do
        row_totals[j] = cards_per_page
        cards_per_page = cards_per_page + rows[j]
        G.your_collection[j] = CardArea(
            G.ROOM.T.x + 0.2 * G.ROOM.T.w / 2, G.ROOM.T.h,
            (args.w_mod * rows[j] + 0.25) * G.CARD_W,
            args.h_mod * G.CARD_H,
            { card_limit = rows[j], type = 'title', highlight_limit = 0, collection = true }
        )
        table.insert(deck_tables,
            {
                n = G.UIT.R,
                config = { align = "cm", padding = 0.07, no_fill = true },
                nodes = {
                    { n = G.UIT.O, config = { object = G.your_collection[j] } }
                }
            })
    end

    local options = {}
    local paginated_pool = {}

    for i, archetype_page in ipairs(archetype_pool) do
        for j = 1, #archetype_page do
            table.insert(paginated_pool, archetype_page[j])
            table.insert(options,
                (JoyousSpring.collection_pool[i].label and localize(JoyousSpring.collection_pool[i].label) or localize("k_joy_archetype_misc")) ..
                ' (' .. tostring(#paginated_pool) .. '/' .. pages .. ")")
        end
    end

    G.FUNCS.SMODS_card_collection_page = function(e)
        if not e or not e.cycle_config then return end
        for j = 1, #G.your_collection do
            for i = #G.your_collection[j].cards, 1, -1 do
                local c = G.your_collection[j]:remove_card(G.your_collection[j].cards[i])
                c:remove()
                c = nil
            end
        end
        for j = 1, #rows do
            for i = 1, rows[j] do
                local center = paginated_pool[e.cycle_config.current_option][i + row_totals[j]]
                if not center then break end
                local token_key
                if type(center) == "string" then
                    token_key = center
                    center = G.P_CENTERS["j_joy_token"]
                end
                local old_used_jokers
                if G.GAME and G.GAME.used_jokers then
                    old_used_jokers = G.GAME.used_jokers[center.key]
                end
                local card = Card(G.your_collection[j].T.x + G.your_collection[j].T.w / 2, G.your_collection[j].T.y,
                    G.CARD_W * args.card_scale, G.CARD_H * args.card_scale, G.P_CARDS.empty,
                    (args.center and G.P_CENTERS[args.center]) or center)
                if G.GAME and G.GAME.used_jokers then
                    G.GAME.used_jokers[center.key] = old_used_jokers
                end
                if token_key then
                    if JoyousSpring.token_pool[token_key].joyous_spring then
                        JoyousSpring.token_pool[token_key].joyous_spring.is_effect = false
                    end
                    card.ability.extra.joyous_spring = JoyousSpring.init_joy_table(JoyousSpring.token_pool[token_key]
                        .joyous_spring or {
                            attribute = "EARTH",
                            monster_type = "Beast",
                            is_effect = false
                        })
                    card.ability.extra.joyous_spring.token_name = JoyousSpring.token_pool[token_key].name
                    card.children.center.atlas = G.ASSET_ATLAS[JoyousSpring.token_pool[token_key].atlas]
                    card.children.center.sprite_pos = JoyousSpring.token_pool[token_key].sprite_pos
                    card.children.center:reset()
                end
                if args.modify_card then args.modify_card(card, center, i, j) end
                if not args.no_materialize then card:start_materialize(nil, i > 1 or j > 1) end
                G.your_collection[j]:emplace(card)
            end
        end
        INIT_COLLECTION_CARD_ALERTS()
    end

    G.FUNCS.SMODS_card_collection_page { cycle_config = { current_option = 1 } }

    local t = create_UIBox_generic_options({
        bg_colour = { G.C.JOY.MOD[1], G.C.JOY.MOD[2], G.C.JOY.MOD[3], 0.6 } or nil,
        colour = G.C.JOY.XYZ or nil,
        back_colour = darken(G.C.JOY.MOD, 0.3) or nil,
        back_func = (args and args.back_func) or G.ACTIVE_MOD_UI and "openModUI_" .. G.ACTIVE_MOD_UI.id or
            'your_collection',
        snap_back = args.snap_back,
        infotip = args.infotip,
        contents = {
            { n = G.UIT.R, config = { align = "cm", r = 0.1, colour = G.C.BLACK, emboss = 0.05 }, nodes = deck_tables },
            {
                n = G.UIT.R,
                config = { align = "cm" },
                nodes = {
                    create_option_cycle({
                        options = options,
                        w = 5,
                        cycle_shoulders = true,
                        opt_callback =
                        'SMODS_card_collection_page',
                        current_option = 1,
                        colour = darken(G.C.JOY.MOD, 0.2),
                        no_pips = true,
                        focus_args = { snap_to = true, nav = 'wide' }
                    })
                }
            },
        }
    })
    return t
end
