JoyousSpring = {}

JoyousSpring.config = SMODS.current_mod.config

assert(SMODS.current_mod.lovely,
    "Lovely modules were not loaded.\nMake sure your JoyousSpring folder is not nested (there should be a bunch of files in the JoyousSpring folder and not just another folder).")

local debug = SMODS.load_file("debug.lua")
if debug then
    debug()
end

local filelist = {
    "utils.lua",
    "globals.lua",
    "mod_info.lua",
    "states.lua",
    "general_ui.lua",
    "card_ui.lua",
    "zones.lua",
    "extra_deck.lua",
    "graveyard.lua",
    "banishment.lua",
    "pendulum.lua",
    "summon.lua",
    "monsters.lua",
    "material_functions.lua",
    "effects.lua",
    "opponent.lua",
    "blind_everywhere_system.lua",
    "custom_pool.lua",
    "cross_mod.lua",
}

for _, file in ipairs(filelist) do
    assert(SMODS.load_file("src/" .. file))()
end

-- Jokers
local joker_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(joker_src) do
    if JoyousSpring.dev_content or (tonumber(file:sub(1, 2)) <= 25) or (tonumber(file:sub(1, 2)) == 99) then
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
