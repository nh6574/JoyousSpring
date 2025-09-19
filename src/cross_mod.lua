-- CROSS MOD COMPATIBILITY

--- JokerDisplay

if JokerDisplay then
    local jd_get_display_areas_ref = JokerDisplay.get_display_areas
    function JokerDisplay.get_display_areas()
        local ret = jd_get_display_areas_ref()
        if JoyousSpring.field_spell_area then
            table.insert(ret, JoyousSpring.field_spell_area)
        end
        return ret
    end
end

-- CardSleeves

if CardSleeves then
    SMODS.Atlas {
        key = "sleeves",
        path = "sleeves.png",
        px = 73,
        py = 95
    }

    CardSleeves.Sleeve {
        key = "hanafuda",
        atlas = "sleeves",
        pos = { x = 0, y = 0 },
        loc_vars = function(self)
            if self.get_current_deck_key() == "b_joy_hanafuda" then
                return { key = "sleeve_joy_hanafuda_alt" }
            end
        end,
        apply = function(self, sleeve)
            G.E_MANAGER:add_event(Event({
                blockable = false,
                func = (function()
                    for i, pcard in ipairs(G.playing_cards) do
                        if not next(SMODS.get_enhancements(pcard) or {}) then
                            pcard:set_ability("m_joy_hanafuda")
                        end
                        if SMODS.has_enhancement(pcard, "m_joy_hanafuda") and self.get_current_deck_key() == "b_joy_hanafuda" then
                            pcard.ability.extra.hanafuda = JoyousSpring.hanafuda_pool[i] or "Chrysanthemum with Sake"
                            pcard:set_sprites()
                        end
                    end
                    return true
                end)
            }))
        end
    }
end

-- TheFamily

if TheFamily then
    JoyousSpring.hide_ui = true
    JoyousSpring.first_run_family = true
    TheFamily.create_tab_group({
        key = "joyous_spring",
        order = 1,
    })
    TheFamily.create_tab({
        key = "joy_field_area",
        group_key = "joyous_spring",
        center = "j_joy_runick_fountain",
        type = "switch",
        keep = true,
        force_highlight = function(definition, card)
            if JoyousSpring.first_run_family then
                JoyousSpring.first_run_family = nil
                JoyousSpring.field_spell_area.states.visible = true
                return true
            end
            return false
        end,
        front_label = function(definition, card)
            return {
                text = "Field Spell Area",
            }
        end,
        popup = function(definition, card)
            return {
                name = {
                    {
                        n = G.UIT.T,
                        config = {
                            text = "Field Spell Area",
                            colour = G.C.WHITE,
                            scale = 0.4,
                        },
                    },
                },
                description = {
                    {
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Open ",
                                scale = 0.4,
                                colour = G.C.BLACK,
                            },
                        },
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Field Spell Area",
                                scale = 0.4,
                                colour = G.C.JOY.SPELL,
                            },
                        },
                    },
                },
            }
        end,
        can_highlight = function(definition, card)
            return true
        end,
        highlight = function(definition, card)
            JoyousSpring.field_spell_area.states.visible = true
        end,
        unhighlight = function(definition, card)
            JoyousSpring.field_spell_area.states.visible = false
        end
    })
    TheFamily.create_tab({
        key = "joy_extra_deck_area",
        group_key = "joyous_spring",
        center = "j_joy_garura",
        type = "switch",
        keep = true,
        front_label = function(definition, card)
            return {
                text = "Extra Deck Area",
            }
        end,
        popup = function(definition, card)
            return {
                name = {
                    {
                        n = G.UIT.T,
                        config = {
                            text = "Extra Deck Area",
                            colour = G.C.WHITE,
                            scale = 0.4,
                        },
                    },
                },
                description = {
                    {
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Open ",
                                scale = 0.4,
                                colour = G.C.BLACK,
                            },
                        },
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Extra Deck Area",
                                scale = 0.4,
                                colour = G.C.JOY.SPELL,
                            },
                        },
                    },
                },
            }
        end,
        can_highlight = function(definition, card)
            return true
        end,
        highlight = function(definition, card)
            JoyousSpring.open_extra_deck(true, not G.joy_extra_deck.states.visible)
        end,
        unhighlight = function(definition, card)
            JoyousSpring.open_extra_deck(true, not G.joy_extra_deck.states.visible)
        end,
        update = function(definition, card, dt)
            if not JoyousSpring.extra_deck_open then
                definition:close()
            end
        end
    })
    TheFamily.create_tab({
        key = "joy_graveyard",
        group_key = "joyous_spring",
        center = "j_joy_ba_dante",
        type = "overlay",
        keep = true,
        front_label = function(definition, card)
            return {
                text = "Graveyard",
            }
        end,
        popup = function(definition, card)
            return {
                name = {
                    {
                        n = G.UIT.T,
                        config = {
                            text = "Graveyard",
                            colour = G.C.WHITE,
                            scale = 0.4,
                        },
                    },
                },
                description = {
                    {
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Open ",
                                scale = 0.4,
                                colour = G.C.BLACK,
                            },
                        },
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Graveyard",
                                scale = 0.4,
                                colour = G.C.JOY.TRAP,
                            },
                        },
                    },
                },
            }
        end,
        can_highlight = function(definition, card)
            return true
        end,
        highlight = function(definition, card)
            JoyousSpring.create_overlay_graveyard()
        end,
        unhighlight = function(definition, card)
            if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
        end,
        alert = function(definition, card)
            return {
                definition_function = function()
                    local info = TheFamily.UI.get_ui_values()
                    return TheFamily.UI.PARTS.create_dark_alert(card, {
                        {
                            n = G.UIT.O,
                            config = {
                                object = DynaText({
                                    string = {
                                        {
                                            ref_table = JoyousSpring,
                                            ref_value = "GY_count",
                                        },
                                    },
                                    colours = { G.C.WHITE },
                                    scale = 0.45 * info.scale,
                                }),
                            },
                        },
                    })
                end,
            }
        end,
        update = function(definition, card, dt)
            JoyousSpring.GY_count = JoyousSpring.get_graveyard_count()
            if not G.OVERLAY_MENU then
                definition:close()
            end
        end
    })
    TheFamily.create_tab({
        key = "joy_banishment",
        group_key = "joyous_spring",
        center = "j_joy_fish_deepbeyond",
        type = "overlay",
        keep = true,
        front_label = function(definition, card)
            return {
                text = "Banishment",
            }
        end,
        popup = function(definition, card)
            return {
                name = {
                    {
                        n = G.UIT.T,
                        config = {
                            text = "Banishment",
                            colour = G.C.WHITE,
                            scale = 0.4,
                        },
                    },
                },
                description = {
                    {
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Open ",
                                scale = 0.4,
                                colour = G.C.BLACK,
                            },
                        },
                        {
                            n = G.UIT.T,
                            config = {
                                text = "Banishment",
                                scale = 0.4,
                                colour = G.C.JOY.TRAP,
                            },
                        },
                    },
                },
            }
        end,
        can_highlight = function(definition, card)
            return true
        end,
        highlight = function(definition, card)
            JoyousSpring.create_overlay_graveyard(true)
        end,
        unhighlight = function(definition, card)
            if G.OVERLAY_MENU then G.FUNCS.exit_overlay_menu() end
        end,
        update = function(definition, card, dt)
            if not G.OVERLAY_MENU then
                definition:close()
            end
        end
    })

    local game_start_run_ref = Game.start_run
    function Game:start_run(args)
        game_start_run_ref(self, args)

        JoyousSpring.first_run_family = true
    end
end

-- TooManyJokers

if TMJ then
    TMJ.SEARCH_FIELD_FUNCS[#TMJ.SEARCH_FIELD_FUNCS + 1] = function(center)
        if center.config then
            if center.config.extra and type(center.config.extra) == "table" and center.config.extra.joyous_spring then
                local joyous_spring = center.config.extra.joyous_spring
                return {
                    joyous_spring.attribute,
                    joyous_spring.monster_type,
                    joyous_spring.summon_type
                }
            end
            if center.config.joy_extra_values then
                local extra = center.config.joy_extra_values
                local ret = {}
                if extra.attribute then
                    ret[#ret + 1] = extra.attribute
                end
                if extra.monster_type then
                    ret[#ret + 1] = extra.monster_type
                end
                return ret
            end
        end
        --nil returns are fine
    end
end

-- Joker Loadouts

if next(SMODS.find_mod("jokerloadouts")) then
    function G.FUNCS.jkrldts_save()
        if G.GAME.current_loadout then
            JKRLDTS.save_loadout(G.GAME.current_loadout or 0)
        end
    end
end
