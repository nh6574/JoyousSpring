-- Please don't copy this localization structure unless you know what you're doing
-- Look at other mods instead

function joy_load_localization(lang)
    local localization = {}
    local localization_files = assert(SMODS.load_folder("localization/" .. lang, nil,
        "JoyousSpring"))()

    local function handle_file(file)
        for _, loc_type in ipairs({ "descriptions", "misc", "JoyousSpring" }) do
            if file[loc_type] then
                if not localization[loc_type] then
                    localization[loc_type] = {}
                end
                for desc_key, desc_type_table in pairs(file[loc_type]) do
                    if not localization[loc_type][desc_key] then
                        localization[loc_type][desc_key] = {}
                    end
                    for obj_key, obj_desc in pairs(desc_type_table) do
                        localization[loc_type][desc_key][obj_key] = obj_desc
                    end
                end
            end
        end
    end

    local function iter_loc(files)
        for _, result in pairs(files) do
            if result[1] then
                handle_file(result[1])
            else
                iter_loc(result)
            end
        end
    end

    iter_loc(localization_files)

    return localization
end
