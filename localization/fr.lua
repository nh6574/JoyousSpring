local localization = {}
local localization_files = {}

local loc_src = NFS.getDirectoryItems(SMODS.find_mod("JoyousSpring")[1].path .. "localization/fr")
for _, file in ipairs(loc_src) do
	if NFS.getInfo(SMODS.find_mod("JoyousSpring")[1].path .. "localization/fr/" .. file).type ~= "directory" then
		localization_files[#localization_files + 1] = assert(SMODS.load_file("localization/fr/" .. file,
			"JoyousSpring"))()
	end
end

local loc_archetypes_src = NFS.getDirectoryItems(SMODS.find_mod("JoyousSpring")[1].path ..
	"localization/fr/archetypes")
for _, file in ipairs(loc_archetypes_src) do
	localization_files[#localization_files + 1] = assert(SMODS.load_file("localization/fr/archetypes/" .. file,
		"JoyousSpring"))()
end

for _, file in ipairs(localization_files) do
	for _, loc_type in ipairs({ "descriptions", "misc" }) do
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

return localization
