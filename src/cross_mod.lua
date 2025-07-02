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
                        if not next(SMODS.get_enhancements(pcard)) then
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
    TheFamily.create_tab_group({
        key = "joyous_spring",
        order = 1,
    })
    TheFamily.create_tab({
        key = "field_area",
        group_key = "joyous_spring",
        center = "j_joy_runick_fountain",
        type = "switch",
        keep = true,
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
        end,
    })
    TheFamily.create_tab({
        key = "extra_deck_area",
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
    })
    TheFamily.create_tab({
        key = "graveyard",
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
            card:highlight(false)
        end,
    })
    TheFamily.create_tab({
        key = "banishment",
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
            card:highlight(false)
        end,
    })
end
