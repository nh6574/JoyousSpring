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
        loc_txt = {
            name = "Hanafuda Sleeve",
            text = { "Does nothing" }
        },
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
                        pcard:set_ability("m_joy_hanafuda")
                        if self.get_current_deck_key() == "b_joy_hanafuda" then
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
