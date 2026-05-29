--- MOD CONFIG

SMODS.current_mod.description_loc_vars = function()
    return { background_colour = G.C.CLEAR, text_colour = G.C.WHITE, scale = 1.2 }
end

SMODS.current_mod.menu_cards = function()
    if not JoyousSpring.config.disable_main_menu then
        return {
            key = "j_joy_yokai_ash",
            no_edition = true,
            func = function()
                for _, card in ipairs(G.title_top.cards) do
                    if (((card.config or {}).center or {}).original_mod or {}).id == "JoyousSpring" then
                        card.click = function(self)
                            SMODS.LAST_SELECTED_MOD_TAB = nil
                            G.FUNCS.openModUI_JoyousSpring()
                        end
                    end
                end
            end
        }
    end
end

SMODS.current_mod.custom_ui = function(modNodes)
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
        JoyousSpring.set_back_sprite(G.P_CENTERS[key], card)
        G.joy_desc_area:emplace(card)
        if not JoyousSpring.modmenu_flip then
            card:flip()
            G.E_MANAGER:add_event(Event({
                blocking = false,
                trigger = "after",
                delay = 0.4 * i,
                func = function()
                    play_sound("card1")
                    card:flip()
                    JoyousSpring.modmenu_flip = true
                    return true
                end,
            }))
        end
    end

    modNodes[#modNodes + 1] = {
        n = G.UIT.R,
        config = { align = "cm", padding = 0.07, no_fill = true },
        nodes = {
            { n = G.UIT.O, config = { object = G.joy_desc_area } }
        }
    }

    local discordgit = {
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

    local make_mod_column = function(mod, colour)
        local mod_key = "joy_" .. mod
        return {
            n = G.UIT.C,
            config = {
                padding = 0.2,
                align = "cm",
            },
            nodes = {
                UIBox_button({
                    colour = colour,
                    minw = 2.6,
                    minh = 0.45,
                    scale = 0.35,
                    button = mod_key,
                    label = { localize('k_' .. mod_key) }
                })
            }
        }
    end

    local othermods1 = {
        make_mod_column("jokerdisplay", G.C.RED),
        make_mod_column("repertorium", HEX("1E7A0A")),
        make_mod_column("playlog", HEX("178BAC")),
    }

    local othermods2 = {
        make_mod_column("vanillaremade", G.C.BLUE),
        make_mod_column("hotpotato", HEX("ECB474")),
        make_mod_column("wormhole", darken(HEX("73fdff"), 0.3)),
    }

    modNodes[#modNodes + 1] = {
        n = G.UIT.R,
        config = {
            padding = 0.01,
            align = "cm",
        },
        nodes = {
            {
                n = G.UIT.R,
                config = { align = "cm", padding = 0.07, no_fill = true },
                nodes = discordgit
            },
            {
                n = G.UIT.R,
                config = { align = "cm", padding = 0.07, no_fill = true },
                nodes = {
                    {
                        n = G.UIT.T,
                        config = { text = localize("k_joy_othermods"), colour = G.C.UI.TEXT_LIGHT, scale = 0.35 },
                    },
                },
            },
            {
                n = G.UIT.R,
                config = { align = "cm", padding = 0.1, no_fill = true },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = -0.3, no_fill = true },
                        nodes = othermods1
                    },
                }
            },
            {
                n = G.UIT.R,
                config = { align = "cm", padding = 0.1, no_fill = true },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { align = "cm", padding = -0.3, no_fill = true },
                        nodes = othermods2
                    },
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

function G.FUNCS.joy_jokerdisplay(e)
    love.system.openURL("https://github.com/nh6574/JokerDisplay")
end

function G.FUNCS.joy_repertorium(e)
    love.system.openURL("https://github.com/nh6574/Repertorium")
end

function G.FUNCS.joy_playlog(e)
    love.system.openURL("https://github.com/nh6574/PlayLog")
end

function G.FUNCS.joy_vanillaremade(e)
    love.system.openURL("https://github.com/nh6574/VanillaRemade")
end

function G.FUNCS.joy_hotpotato(e)
    love.system.openURL("https://github.com/Balatro-Potato-Patch/Hot-Potato/")
end

function G.FUNCS.joy_wormhole(e)
    love.system.openURL("https://github.com/Balatro-Potato-Patch/Wormhole/")
end

function G.FUNCS.joy_aikoyori(e)
    love.system.openURL("https://github.com/Aikoyori/Balatro-Aikoyoris-Shenanigans/")
end

function G.FUNCS.joy_starrail(e)
    love.system.openURL("https://github.com/bepisfever/balatro-star-rail")
end

function G.FUNCS.joy_cartomancer(e)
    love.system.openURL("https://github.com/stupxd/Cartomancer")
end

function G.FUNCS.joy_cryptid(e)
    love.system.openURL("https://github.com/SpectralPack/Cryptid")
end

function G.FUNCS.joy_elle(e)
    love.system.openURL("https://github.com/ellestuff/ellejokers")
end

function G.FUNCS.joy_lobcorp(e)
    love.system.openURL("https://github.com/Mysthaps/LobotomyCorp")
end

function G.FUNCS.joy_maximus(e)
    love.system.openURL("https://github.com/the-Astra/Maximus")
end

function G.FUNCS.joy_ortalab(e)
    love.system.openURL("https://github.com/EremelMods/Ortalab")
end

function G.FUNCS.joy_ppu(e)
    love.system.openURL("https://github.com/Balatro-Potato-Patch/Potato-Patch-Utils")
end

function G.FUNCS.joy_open_config(e)
    G.FUNCS.openModUI_JoyousSpring({ config = { page = "config" } })
end

function G.FUNCS.joy_open_glossary(e)
    G.FUNCS.openModUI_JoyousSpring({ config = { page = "JoyousSpring_2" } })
end

function G.FUNCS.joy_open_tutorial(e)
    local key = e.config.ref_table.key
    if not key then return end
    JoyousSpring.INFO_MENU.open(key, true, nil, "joy_open_glossary")
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
        {
            label = localize("k_joy_glossary"),
            tab_definition_function = JoyousSpring.create_glossary_tab,
            tab_definition_function_args = { joy_glossary = true, tutorials = true }
        }
    }
end

SMODS.current_mod.ui_config = {
    colour = G.C.JOY.XYZ,
    bg_colour = { G.C.JOY.MOD[1], G.C.JOY.MOD[2], G.C.JOY.MOD[3], 0.6 },
    back_colour = darken(G.C.JOY.MOD, 0.3),
    tab_button_colour = darken(G.C.JOY.MOD, 0.2),
    collection_option_cycle_colour = darken(G.C.JOY.MOD, 0.2),
    author_colour = G.C.JOY.MOD
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
                                        label = localize('k_joy_disable_counters'),
                                        ref_table = JoyousSpring.config,
                                        ref_value = 'disable_counters'
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
    "j_joy_striker_raye",
    "j_joy_striker_hayate",
    "j_joy_striker_kagari",
    "j_joy_striker_shizuku",
    "j_joy_dm_dm",
    "j_joy_dm_dmg",
    "j_joy_apollousa",
    "j_joy_ipmasq",
    "j_joy_spknight",
    "j_joy_parasiteparacide",
}

G.FUNCS.joy_art_callback = function(e)
    if not e.cycle_config then return end
    local key = e.cycle_config.joy_card
    JoyousSpring.config.alt_art[key] = e.cycle_config.current_option
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

    local i = 1
    local total = 0
    for _, key in ipairs(JoyousSpring.alt_arts) do
        if G.P_CENTERS[key] then total = total + 1 end
    end
    for _, key in ipairs(JoyousSpring.alt_arts) do
        local center = G.P_CENTERS[key]
        if center then
            if i % math.ceil(total / 4) == 1 then
                columns[#columns + 1] = {
                    n = G.UIT.C,
                    config = { align = "tm" },
                    nodes = {
                    }
                }
            end
            local options = { center.pos }
            for _, pos in ipairs(center.joy_alt_pos) do
                options[#options + 1] = pos
            end
            local name_node = {}
            localize { type = 'name', set = "Joker", key = key, nodes = name_node, scale = 0.8, no_pop_in = true, no_bump = true }
            name_node = desc_from_rows(name_node, true)
            name_node.config.align = "cm"
            local config_card = Card(0, 0, G.CARD_W / 2, G.CARD_H / 2, G.P_CARDS.empty, G.P_CENTERS[key])
            config_card.joy_config = true
            columns[#columns].nodes[#columns[#columns].nodes + 1] = {
                n = G.UIT.R,
                config = { align = "tm" },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "tm", padding = -0.15 },
                        nodes = {
                            {
                                n = G.UIT.R,
                                config = { align = "tm" },
                                nodes = { name_node }
                            },
                            {
                                n = G.UIT.R,
                                config = { align = "tm" },
                                nodes = {
                                    create_option_cycle({
                                        options = options,
                                        w = 2,
                                        cycle_shoulders = true,
                                        opt_callback = 'joy_art_callback',
                                        current_option = JoyousSpring.config.alt_art[key],
                                        colour = darken(G.C.JOY.MOD, 0.2),
                                        no_pips = true,
                                        focus_args = { snap_to = true, nav = 'wide' },
                                        joy_card = key,
                                        mid = {
                                            n = G.UIT.R,
                                            config = { align = "cm" },
                                            nodes = {
                                                {
                                                    n = G.UIT.O,
                                                    config = {
                                                        object = config_card
                                                    }
                                                },
                                            }
                                        }
                                    })
                                }
                            },
                        }
                    },
                }
            }
            i = i + 1
        end
    end
    local scrollbox = SMODS.UIScrollBox({
        content = {
            definition = {
                n = G.UIT.ROOT,
                config = { r = 0.1, minw = 8, align = "tm", padding = 0.2, colour = G.C.BLACK },
                nodes = {
                    {
                        n = G.UIT.R,
                        config = { padding = 0.2 },
                        nodes = columns
                    },
                }
            },
            config = { align = "cm" },
        },
        overflow = {
            node_config = {
                maxh = 6,
                r = 0.1,
            },
        },
    })
    return {
        n = G.UIT.ROOT,
        config = { align = "cm", colour = G.C.JOY.XYZ, padding = 0.1, r = 0.1, },
        nodes = {
            {
                n = G.UIT.R,
                config = { padding = 0.1, align = "cm" },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cm" },
                        nodes = {
                            {
                                n = G.UIT.O,
                                config = {
                                    align = "cm",
                                    object = scrollbox,
                                },
                            },
                        },
                    },
                    {
                        n = G.UIT.C,
                        config = { align = "cm" },
                        nodes = {
                            SMODS.GUI.scrollbar({
                                h = 6,
                                w = 0.3,
                                max = 1,
                                min = 0,
                                colour = darken(G.C.JOY.MOD, 0.2),
                                bg_colour = { 0, 0, 0, 0.15 },
                                scroll_collision_obj = scrollbox,
                                knob_h = 0.6,
                                scroll_mult = 1.2,
                            }),
                        },
                    },
                },
            },
        },
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

-- Remove normal monsters from the tally
local modsCollectionTally_ref = modsCollectionTally
function modsCollectionTally(pool, set, ignore_discovered)
    if pool == G.P_CENTER_POOLS.Joker and G.ACTIVE_MOD_UI.id == "JoyousSpring" then
        local obj_tally = { tally = 0, of = 0 }

        for _, v in pairs(pool) do
            if v.mod and G.ACTIVE_MOD_UI.id == v.mod.id and not v.no_collection then
                local joyous_spring = (((v.config or {}).extra or {}).joyous_spring or {})
                if joyous_spring.is_effect or joyous_spring.is_field_spell or v.key == "j_joy_token" then
                    obj_tally.of = obj_tally.of + 1
                    if ignore_discovered or v.discovered then
                        obj_tally.tally = obj_tally.tally + 1
                    end
                end
            end
        end

        return obj_tally
    else
        return modsCollectionTally_ref(pool, set, ignore_discovered)
    end
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
    if (JoyousSpring.config.only_ygo_cards and not G.ACTIVE_MOD_UI) or G.ACTIVE_MOD_UI and G.ACTIVE_MOD_UI.id and G.ACTIVE_MOD_UI.id == "JoyousSpring" and #JoyousSpring.collection_pool > 0 then
        return JoyousSpring.card_collection_UIBox(G.P_CENTER_POOLS.Joker, { 5, 5, 5 }, {
            no_materialize = true,
            modify_card = function(card, center) card.sticker = get_joker_win_sticker(center) end,
            h_mod = 0.95,
        })
    end
    return create_UIBox_your_collection_jokers_ref()
end

local text_wrap = function(text, length)
    local ret = {}
    local line = ""
    local sanitized_line = ""
    local original = {}
    local sanitized = {}

    for word in text:gmatch("%S+") do
        original[#original + 1] = word
        sanitized[#sanitized + 1] = string.gsub(word, "{.-}", "")
    end

    for i, word in ipairs(original) do
        local new_line = sanitized_line .. " " .. sanitized[i]

        if #new_line > length then
            ret[#ret + 1] = line
            line = word
            sanitized_line = sanitized[i]
        else
            line = line .. " " .. word
            sanitized_line = new_line
        end
    end

    if ret[#ret] ~= line and line ~= "" then ret[#ret + 1] = line end
    return ret
end

local create_archetype_loc_ui = function(archetype_prefix, parent)
    local name = localize("k_joy_archetype_" .. archetype_prefix)
    local nodes = {
        {
            n = G.UIT.R,
            config = { align = "cm", minw = 1 },
            nodes = {
                {
                    n = G.UIT.B,
                    config = { w = 0.1, h = 0.1 }
                }
            }
        },
        {
            n = G.UIT.R,
            config = { align = "tm", minw = 1 },
            nodes = {
                {
                    n = G.UIT.O,
                    config = {
                        object = DynaText({
                            string = { name },
                            colours = { G.C.UI.TEXT_LIGHT },
                            silent = true,
                            bump = true,
                            pop_in = 0,
                            pop_in_rate = 4,
                            maxw = 5,
                            y_offset = -0.6,
                            spacing = math.max(0, 0.32 * (17 - #name)),
                            scale = (0.55 - 0.004 * #name) * 1.2
                        })
                    }
                }
            }
        },
        {
            n = G.UIT.R,
            config = { align = "cm", minw = 1 },
            nodes = {
                {
                    n = G.UIT.B,
                    config = { w = 0.1, h = 0.1 }
                }
            }
        }
    }

    local text_nodes = {}

    local loc = G.localization.JoyousSpring.Blurbs[archetype_prefix]
    if loc then
        local story = loc.story
        local gameplay = loc.gameplay

        for i, loctable in ipairs({ story or {}, gameplay or {} }) do
            if i == 1 and story or i == 2 and gameplay then
                local title = localize("k_joy_" .. (i == 1 and "story" or "gameplay"))
                text_nodes[#text_nodes + 1] = {
                    n = G.UIT.R,
                    config = { align = "cm", minw = 1 },
                    nodes = {
                        {
                            n = G.UIT.O,
                            config = {
                                object = DynaText({
                                    string = { title },
                                    colours = { G.C.UI.TEXT_LIGHT },
                                    maxw = 5,
                                    y_offset = -0.6,
                                    spacing = math.max(0, 0.32 * (17 - #title)),
                                    scale = (0.55 - 0.004 * #title) * 0.8
                                })
                            }
                        }
                    }
                }
            end
            for loc_i, line in ipairs(loctable) do
                local sublines = text_wrap(line, 40)
                for _, subline in ipairs(sublines) do
                    text_nodes[#text_nodes + 1] = {
                        n = G.UIT.R,
                        config = { align = "cm", minw = 1 },
                        nodes = SMODS.localize_box(loc_parse_string(subline), { text_colour = G.C.UI.TEXT_LIGHT })
                    }
                end
                if loc_i ~= #loctable then
                    text_nodes[#text_nodes + 1] = {
                        n = G.UIT.R,
                        config = { align = "cm", minw = 1 },
                        nodes = {
                            {
                                n = G.UIT.B,
                                config = { w = 0.1, h = 0.2 }
                            }
                        }
                    }
                end
            end
            if story and i == 1 and gameplay then
                text_nodes[#text_nodes + 1] = {
                    n = G.UIT.R,
                    config = { align = "cm", minw = 1 },
                    nodes = {
                        {
                            n = G.UIT.B,
                            config = { w = 0.1, h = 0.3 }
                        }
                    }
                }
            end
        end
    end

    local scrollbox = SMODS.UIScrollBox({
        content = {
            definition = {
                n = G.UIT.ROOT,
                config = { r = 0.1, align = "tm", minh = 8, padding = 0.2, colour = G.C.BLACK },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { padding = 0.1, align = "tm" },
                        nodes = text_nodes
                    },
                }
            },
            config = { align = "cm" },
        },
        overflow = {
            node_config = {
                maxh = 8,
                r = 0.1,
            },
        },
    })

    nodes[#nodes + 1] = {
        n = G.UIT.R,
        config = { padding = 0.1, align = "cm", minh = 5 },
        nodes = {
            {
                n = G.UIT.C,
                config = { align = "tm", minh = 8 },
                nodes = {
                    {
                        n = G.UIT.O,
                        config = {
                            align = "tm",
                            object = scrollbox,
                        },
                    },
                },
            },
            #text_nodes > 0 and {
                n = G.UIT.C,
                config = { align = "cm" },
                nodes = {
                    SMODS.GUI.scrollbar({
                        h = 6,
                        w = 0.2,
                        max = 1,
                        min = 0,
                        colour = darken(G.C.JOY.MOD, 0.2),
                        bg_colour = { 0, 0, 0, 0.15 },
                        scroll_collision_obj = scrollbox,
                        knob_h = 0.6,
                        scroll_mult = 1.2,
                    }),
                },
            } or nil,
        },
    }

    return UIBox {
        definition = {
            n = G.UIT.ROOT,
            config = { align = 'cm', colour = G.C.CLEAR, padding = 0.1 },
            nodes = nodes
        },
        config = {
            parent = parent
        }
    }
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
    local old_mod = G.ACTIVE_MOD_UI -- for vanilla collection
    G.ACTIVE_MOD_UI = SMODS.Mods.JoyousSpring
    local pool = SMODS.collection_pool(_pool)
    G.ACTIVE_MOD_UI = old_mod
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
    local options_lookup = {}
    local paginated_pool = {}
    local blurbs_prefix = {}

    for i, archetype_page in ipairs(archetype_pool) do
        for j = 1, #archetype_page do
            table.insert(paginated_pool, archetype_page[j])
            local option_name = (JoyousSpring.collection_pool[i].label and localize(JoyousSpring.collection_pool[i].label) or localize("k_joy_archetype_misc")) ..
                (j > 1 and ' (' .. j .. ")" or "")
            table.insert(options, option_name)
            options_lookup[option_name] = #paginated_pool
            blurbs_prefix[#blurbs_prefix + 1] = JoyousSpring.collection_pool[i].keys[1]
        end
    end

    G.FUNCS.SMODS_card_collection_page = function(e)
        if not e or not e.cycle_config then return end
        if e.to_val then
            local drop = G.OVERLAY_MENU:get_UIE_by_ID("joy_collection_dropdown")
            if drop.config.dropdown_obj then
                G.FUNCS.toggle_dropdown_menu(drop)
            end
            JoyousSpring.collection_dropdown = e.to_val
        end
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
        if G.OVERLAY_MENU then
            local blurb = G.OVERLAY_MENU:get_UIE_by_ID('joy_text_blurb')
            if blurb and blurb.config.object then
                local next_blurb = blurbs_prefix[e.cycle_config.current_option]
                if blurb.config.joy_blurb ~= next_blurb then
                    blurb.config.object:remove()
                    blurb.config.object = create_archetype_loc_ui(next_blurb, blurb)
                    blurb.config.joy_blurb = next_blurb
                    blurb.UIBox:recalculate()
                end
            end
        end
        INIT_COLLECTION_CARD_ALERTS()
    end

    G.FUNCS.joy_card_collection_dropdown = function(e)
        local value = e.config.value
        G.FUNCS.SMODS_card_collection_page { cycle_config = { current_option = options_lookup[value] or 1 } }
        local cycle = G.OVERLAY_MENU:get_UIE_by_ID("joy_collection_cycle").children[1]
        cycle.config.ref_table.current_option = options_lookup[value] or 1
        cycle.config.ref_table.current_option_val =
            cycle.config.ref_table.options[cycle.config.ref_table.current_option]
    end

    G.FUNCS.joy_card_collection_back = function(e)
        JoyousSpring.collection_dropdown = nil
        local func = (args and args.back_func) or G.ACTIVE_MOD_UI and "openModUI_" .. G.ACTIVE_MOD_UI.id or
            'your_collection'
        G.FUNCS[func](e)
    end

    G.FUNCS.SMODS_card_collection_page { cycle_config = { current_option = 1 } }

    local collection_ui = {
        { n = G.UIT.R, config = { align = "cm", r = 0.1, colour = G.C.BLACK, emboss = 0.05 }, nodes = deck_tables },
        {
            n = G.UIT.R,
            config = { align = "cm" },
            nodes = {
                create_option_cycle({
                    id = "joy_collection_cycle",
                    options = options,
                    w = 5,
                    cycle_shoulders = true,
                    opt_callback =
                    'SMODS_card_collection_page',
                    current_option = 1,
                    colour = darken(G.C.JOY.MOD, 0.2),
                    no_pips = true,
                    focus_args = { snap_to = true, nav = 'wide' },
                    mid = SMODS.GUI.dropdown_select({
                        id = "joy_collection_dropdown",
                        options = options,
                        ref_table = JoyousSpring,
                        ref_value = "collection_dropdown",
                        minw = 5,
                        scale = 0.5,
                        align = "cm",
                        option_align = "cm",
                        callback = "joy_card_collection_dropdown",
                        colour = darken(G.C.JOY.MOD, 0.2),
                        max_menu_h = 3,
                        border_colour = G.C.JOY.XYZ,
                        dropdown_bg_colour = darken(G.C.JOY.MOD, 0.2),
                        selected_colour = G.C.JOY.MOD,
                        close_on_select = true,
                    }),
                })
            }
        },
    }

    local t = create_UIBox_generic_options({
        bg_colour = { G.C.JOY.MOD[1], G.C.JOY.MOD[2], G.C.JOY.MOD[3], 0.6 } or nil,
        colour = G.C.JOY.XYZ or nil,
        back_colour = darken(G.C.JOY.MOD, 0.3) or nil,
        back_func = 'joy_card_collection_back',
        snap_back = args.snap_back,
        infotip = args.infotip,
        contents = {
            {
                n = G.UIT.C,
                config = {},
                nodes = collection_ui
            },
            {
                n = G.UIT.C,
                config = { align = "tm", minw = 7, r = 0.2, colour = G.C.BLACK },
                nodes = {
                    {
                        n = G.UIT.O,
                        config = {
                            id = "joy_text_blurb",
                            object = create_archetype_loc_ui("dmaid"),
                            joy_blurb = "dmaid"
                        }
                    }
                }
            },
        }
    })

    return t
end
