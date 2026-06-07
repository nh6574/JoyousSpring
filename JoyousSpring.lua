JoyousSpring = {}

JoyousSpring.config = SMODS.current_mod.config

assert(SMODS.current_mod.lovely,
    "Lovely modules were not loaded.\nMake sure your JoyousSpring folder is not nested (there should be a bunch of files in the JoyousSpring folder and not just another folder).")

local debug = SMODS.load_file("debug.lua")
if debug then
    debug()
end

SMODS.current_mod.optional_features = {
    object_weights = true
}

local filelist = {
    "utils",
    "globals",
    "mod_info",
    "sidedeck",
    "general_ui",
    "card_ui",
    "zones",
    "extra_deck",
    "graveyard",
    "banishment",
    "pendulum",
    "summon",
    "monsters",
    "material_functions",
    "effects",
    "opponent",
    "blind_everywhere_system",
    "custom_pool",
    "cross_mod",
    "tutorials"
}

for _, file in ipairs(filelist) do
    assert(SMODS.load_file("src/" .. file .. ".lua"))()
end

-- Jokers
local joker_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(joker_src) do
    local number = tonumber(file:sub(1, 2))
    if JoyousSpring.dev_content or (number <= 41) or (number == 99) then
        sendInfoMessage("Loading " .. file, "JoyousSpring")
        assert(SMODS.load_file("src/jokers/" .. file))()
    end
end

-- Others
local others_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/others")
for _, file in ipairs(others_src) do
    sendInfoMessage("Loading " .. file, "JoyousSpring")
    assert(SMODS.load_file("src/others/" .. file))()
end
