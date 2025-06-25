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
