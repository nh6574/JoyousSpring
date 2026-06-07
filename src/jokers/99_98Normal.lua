--- NORMAL JOKER FREE AGENTS

SMODS.Atlas({
    key = "Normal",
    path = "99Normal00.png",
    px = 71,
    py = 95
})

---@type {key:string, atlas:string?, pos:{x:integer,y:integer}?,
---attribute:attribute, monster_type:monster_type, is_tuner:boolean?, monster_archetypes:table?}[]
local key_list = {
    { key = "leftlegoftheforbiddenone",           attribute = "DARK",  monster_type = "Spellcaster",  pos = { x = 2, y = 11 } },
    { key = "leftarmoftheforbiddenone",           attribute = "DARK",  monster_type = "Spellcaster",  pos = { x = 1, y = 11 } },
    { key = "flyingpenguin",                      attribute = "WATER", monster_type = "Aqua",         pos = { x = 0, y = 0 } },
    { key = "jellyfish",                          attribute = "WATER", monster_type = "Aqua",         pos = { x = 1, y = 0 } },
    { key = "slimetoad",                          attribute = "WATER", monster_type = "Aqua",         pos = { x = 2, y = 0 } },
    { key = "toadmaster",                         attribute = "WATER", monster_type = "Aqua",         pos = { x = 3, y = 0 } },
    { key = "twinlongrods1",                      attribute = "WATER", monster_type = "Aqua",         pos = { x = 4, y = 0 } },
    { key = "twinlongrods2",                      attribute = "WATER", monster_type = "Aqua",         pos = { x = 5, y = 0 } },
    { key = "ojamablack",                         attribute = "LIGHT", monster_type = "Beast",        pos = { x = 6, y = 0 } },
    { key = "ojamagreen",                         attribute = "LIGHT", monster_type = "Beast",        pos = { x = 7, y = 0 } },
    { key = "ojamayellow",                        attribute = "LIGHT", monster_type = "Beast",        pos = { x = 8, y = 0 } },
    { key = "alligatorssword",                    attribute = "EARTH", monster_type = "Beast",        pos = { x = 9, y = 0 } },
    { key = "archfiendmarmotofnefariousness",     attribute = "EARTH", monster_type = "Beast",        pos = { x = 10, y = 0 } },
    { key = "chuskethemousefighter",              attribute = "EARTH", monster_type = "Beast",        pos = { x = 11, y = 0 } },
    { key = "gazellethekingofmythicalbeasts",     attribute = "EARTH", monster_type = "Beast",        pos = { x = 12, y = 0 } },
    { key = "preventrat",                         attribute = "EARTH", monster_type = "Beast",        pos = { x = 0, y = 1 } },
    { key = "battleox",                           attribute = "EARTH", monster_type = "BeastWarrior", pos = { x = 1, y = 1 } },
    { key = "beaverwarrior",                      attribute = "EARTH", monster_type = "BeastWarrior", pos = { x = 2, y = 1 } },
    { key = "genewarpedwarwolf",                  attribute = "EARTH", monster_type = "BeastWarrior", pos = { x = 3, y = 1 } },
    { key = "hitotsumegiant",                     attribute = "EARTH", monster_type = "BeastWarrior", pos = { x = 4, y = 1 } },
    { key = "sengenjin",                          attribute = "EARTH", monster_type = "BeastWarrior", pos = { x = 5, y = 1 } },
    { key = "suppressioncollider",                attribute = "DARK",  monster_type = "Cyberse",      pos = { x = 6, y = 1 } },
    { key = "bitron",                             attribute = "EARTH", monster_type = "Cyberse",      pos = { x = 7, y = 1 } },
    { key = "digitron",                           attribute = "EARTH", monster_type = "Cyberse",      pos = { x = 8, y = 1 } },
    { key = "leotron",                            attribute = "EARTH", monster_type = "Cyberse",      pos = { x = 9, y = 1 } },
    { key = "protron",                            attribute = "EARTH", monster_type = "Cyberse",      pos = { x = 10, y = 1 } },
    { key = "frostosaurus",                       attribute = "WATER", monster_type = "Dinosaur",     pos = { x = 11, y = 1 } },
    { key = "kabazauls",                          attribute = "WATER", monster_type = "Dinosaur",     pos = { x = 12, y = 1 } },
    { key = "megalosmasherx",                     attribute = "WATER", monster_type = "Dinosaur",     pos = { x = 0, y = 2 } },
    { key = "littled",                            attribute = "EARTH", monster_type = "Dinosaur",     pos = { x = 1, y = 2 } },
    { key = "sabersaurus",                        attribute = "EARTH", monster_type = "Dinosaur",     pos = { x = 2, y = 2 } },
    { key = "uraby",                              attribute = "EARTH", monster_type = "Dinosaur",     pos = { x = 3, y = 2 } },
    { key = "alexandritedragon",                  attribute = "LIGHT", monster_type = "Dragon",       pos = { x = 4, y = 2 } },
    { key = "blueeyeswhitedragon",                attribute = "LIGHT", monster_type = "Dragon",       pos = { x = 5, y = 2 } },
    { key = "rabidragon",                         attribute = "LIGHT", monster_type = "Dragon",       pos = { x = 6, y = 2 } },
    { key = "seiyaryu",                           attribute = "LIGHT", monster_type = "Dragon",       pos = { x = 7, y = 2 } },
    { key = "wattaildragon",                      attribute = "LIGHT", monster_type = "Dragon",       pos = { x = 8, y = 2 } },
    { key = "labradoritedragon",                  attribute = "DARK",  monster_type = "Dragon",       pos = { x = 9, y = 2 },  is_tuner = true, },
    { key = "redeyesblackdragon",                 attribute = "DARK",  monster_type = "Dragon",       pos = { x = 10, y = 2 } },
    { key = "serpentnightdragon",                 attribute = "DARK",  monster_type = "Dragon",       pos = { x = 11, y = 2 } },
    { key = "guardragonjusticia",                 attribute = "WATER", monster_type = "Dragon",       pos = { x = 12, y = 2 }, is_tuner = true, },
    { key = "tyhone2",                            attribute = "FIRE",  monster_type = "Dragon",       pos = { x = 0, y = 3 } },
    { key = "babydragon",                         attribute = "WIND",  monster_type = "Dragon",       pos = { x = 1, y = 3 } },
    { key = "lesserdragon",                       attribute = "WIND",  monster_type = "Dragon",       pos = { x = 2, y = 3 } },
    { key = "lusterdragon",                       attribute = "WIND",  monster_type = "Dragon",       pos = { x = 3, y = 3 } },
    { key = "lusterdragon2",                      attribute = "WIND",  monster_type = "Dragon",       pos = { x = 4, y = 3 } },
    { key = "petitdragon",                        attribute = "WIND",  monster_type = "Dragon",       pos = { x = 5, y = 3 } },
    { key = "wingeddragonguardianofthefortress1", attribute = "WIND",  monster_type = "Dragon",       pos = { x = 6, y = 3 } },
    { key = "happylover",                         attribute = "LIGHT", monster_type = "Fairy",        pos = { x = 7, y = 3 } },
    { key = "keymace",                            attribute = "LIGHT", monster_type = "Fairy",        pos = { x = 8, y = 3 } },
    { key = "lunarqueenelzaim",                   attribute = "LIGHT", monster_type = "Fairy",        pos = { x = 9, y = 3 } },
    { key = "mokeymokey",                         attribute = "LIGHT", monster_type = "Fairy",        pos = { x = 10, y = 3 } },
    { key = "petitangel",                         attribute = "LIGHT", monster_type = "Fairy",        pos = { x = 11, y = 3 } },
    { key = "weathercontrol",                     attribute = "LIGHT", monster_type = "Fairy",        pos = { x = 12, y = 3 } },
    { key = "dancingelf",                         attribute = "WIND",  monster_type = "Fairy",        pos = { x = 0, y = 4 } },
    { key = "dipity",                             attribute = "LIGHT", monster_type = "Fiend",        pos = { x = 1, y = 4 } },
    { key = "beastoftalwar",                      attribute = "DARK",  monster_type = "Fiend",        pos = { x = 2, y = 4 } },
    { key = "feralimp",                           attribute = "DARK",  monster_type = "Fiend",        pos = { x = 3, y = 4 } },
    { key = "keymace2",                           attribute = "DARK",  monster_type = "Fiend",        pos = { x = 4, y = 4 } },
    { key = "morinphen",                          attribute = "DARK",  monster_type = "Fiend",        pos = { x = 5, y = 4 } },
    { key = "ryukishin",                          attribute = "DARK",  monster_type = "Fiend",        pos = { x = 6, y = 4 } },
    { key = "ryukishinpowered",                   attribute = "DARK",  monster_type = "Fiend",        pos = { x = 7, y = 4 } },
    { key = "theshadowwhocontrolsthedark",        attribute = "DARK",  monster_type = "Fiend",        pos = { x = 8, y = 4 } },
    { key = "wretchedghostoftheattic",            attribute = "DARK",  monster_type = "Fiend",        pos = { x = 9, y = 4 } },
    { key = "aireater",                           attribute = "WIND",  monster_type = "Fiend",        pos = { x = 10, y = 4 } },
    { key = "7coloredfish",                       attribute = "WATER", monster_type = "Fish",         pos = { x = 11, y = 4 } },
    { key = "bottomdweller",                      attribute = "WATER", monster_type = "Fish",         pos = { x = 12, y = 4 } },
    { key = "greatwhite",                         attribute = "WATER", monster_type = "Fish",         pos = { x = 0, y = 5 } },
    { key = "flyingfish",                         attribute = "WIND",  monster_type = "Fish",         pos = { x = 1, y = 5 } },
    { key = "jongleurghoulillusionist",           attribute = "DARK",  monster_type = "Illusion",     pos = { x = 2, y = 5 } },
    { key = "pesantathetitanoftroubadours",       attribute = "DARK",  monster_type = "Illusion",     pos = { x = 3, y = 5 } },
    { key = "basicinsect",                        attribute = "EARTH", monster_type = "Insect",       pos = { x = 4, y = 5 } },
    { key = "insectknight",                       attribute = "EARTH", monster_type = "Insect",       pos = { x = 5, y = 5 } },
    { key = "kuwagata",                           attribute = "EARTH", monster_type = "Insect",       pos = { x = 6, y = 5 } },
    { key = "metalarmoredbug",                    attribute = "EARTH", monster_type = "Insect",       pos = { x = 7, y = 5 } },
    { key = "petitmoth",                          attribute = "EARTH", monster_type = "Insect",       pos = { x = 8, y = 5 } },
    { key = "shinyblackcsquadder",                attribute = "EARTH", monster_type = "Insect",       pos = { x = 9, y = 5 } },
    { key = "mechanicalchaser",                   attribute = "DARK",  monster_type = "Machine",      pos = { x = 10, y = 5 } },
    { key = "launcherspider",                     attribute = "FIRE",  monster_type = "Machine",      pos = { x = 11, y = 5 } },
    { key = "acrobatmonkey",                      attribute = "EARTH", monster_type = "Machine",      pos = { x = 12, y = 5 } },
    { key = "inpachi",                            attribute = "EARTH", monster_type = "Machine",      pos = { x = 0, y = 6 } },
    { key = "robolady",                           attribute = "EARTH", monster_type = "Machine",      pos = { x = 1, y = 6 } },
    { key = "roboyarou",                          attribute = "EARTH", monster_type = "Machine",      pos = { x = 2, y = 6 } },
    { key = "steelogregrotto1",                   attribute = "EARTH", monster_type = "Machine",      pos = { x = 3, y = 6 } },
    { key = "steelogregrotto2",                   attribute = "EARTH", monster_type = "Machine",      pos = { x = 4, y = 6 } },
    { key = "bat",                                attribute = "WIND",  monster_type = "Machine",      pos = { x = 5, y = 6 } },
    { key = "angeltrumpeter",                     attribute = "EARTH", monster_type = "Plant",        pos = { x = 6, y = 6 },  is_tuner = true, },
    { key = "beansoldier",                        attribute = "EARTH", monster_type = "Plant",        pos = { x = 7, y = 6 } },
    { key = "jerrybeansman",                      attribute = "EARTH", monster_type = "Plant",        pos = { x = 8, y = 6 } },
    { key = "firegrass",                          attribute = "EARTH", monster_type = "Plant",        pos = { x = 9, y = 6 } },
    { key = "mushroomman",                        attribute = "EARTH", monster_type = "Plant",        pos = { x = 10, y = 6 } },
    { key = "chosenbytheworldchalice",            attribute = "FIRE",  monster_type = "Psychic",      pos = { x = 11, y = 6 } },
    { key = "stingertheelectricexpeller",         attribute = "WIND",  monster_type = "Psychic",      pos = { x = 12, y = 6 }, is_tuner = true, },
    { key = "blazinginpachi",                     attribute = "FIRE",  monster_type = "Pyro",         pos = { x = 0, y = 7 } },
    { key = "fireyarou",                          attribute = "FIRE",  monster_type = "Pyro",         pos = { x = 1, y = 7 } },
    { key = "flamecerebrus",                      attribute = "FIRE",  monster_type = "Pyro",         pos = { x = 2, y = 7 } },
    { key = "hinotamasoul",                       attribute = "FIRE",  monster_type = "Pyro",         pos = { x = 3, y = 7 } },
    { key = "gigobyte",                           attribute = "WATER", monster_type = "Reptile",      pos = { x = 4, y = 7 } },
    { key = "gagagigo",                           attribute = "WATER", monster_type = "Reptile",      pos = { x = 5, y = 7 } },
    { key = "gigagagagigo",                       attribute = "WATER", monster_type = "Reptile",      pos = { x = 6, y = 7 } },
    { key = "gogigagagagigo",                     attribute = "WATER", monster_type = "Reptile",      pos = { x = 7, y = 7 } },
    { key = "labyrinthwall",                      attribute = "EARTH", monster_type = "Rock",         pos = { x = 8, y = 7 } },
    { key = "millenniumgolem",                    attribute = "EARTH", monster_type = "Rock",         pos = { x = 9, y = 7 } },
    { key = "rockogregrotto1",                    attribute = "EARTH", monster_type = "Rock",         pos = { x = 10, y = 7 } },
    { key = "rockogregrotto2",                    attribute = "EARTH", monster_type = "Rock",         pos = { x = 11, y = 7 } },
    { key = "stoneogregrotto",                    attribute = "EARTH", monster_type = "Rock",         pos = { x = 12, y = 7 } },
    { key = "kairyushin",                         attribute = "WATER", monster_type = "SeaSerpent",   pos = { x = 0, y = 8 } },
    { key = "seaserpentwarriorofdarkness",        attribute = "WATER", monster_type = "SeaSerpent",   pos = { x = 1, y = 8 } },
    { key = "ladyoffaith",                        attribute = "LIGHT", monster_type = "Spellcaster",  pos = { x = 2, y = 8 } },
    { key = "lamoon",                             attribute = "LIGHT", monster_type = "Spellcaster",  pos = { x = 3, y = 8 } },
    { key = "mysticalelf",                        attribute = "LIGHT", monster_type = "Spellcaster",  pos = { x = 4, y = 8 } },
    { key = "cosmoqueen",                         attribute = "DARK",  monster_type = "Spellcaster",  pos = { x = 5, y = 8 } },
    { key = "illusionistfacelessmage",            attribute = "DARK",  monster_type = "Spellcaster",  pos = { x = 6, y = 8 } },
    { key = "thebewitchingphantomthief",          attribute = "DARK",  monster_type = "Spellcaster",  pos = { x = 7, y = 8 } },
    { key = "aquamadoor",                         attribute = "WATER", monster_type = "Spellcaster",  pos = { x = 8, y = 8 } },
    { key = "neoaquamadoor",                      attribute = "WATER", monster_type = "Spellcaster",  pos = { x = 9, y = 8 } },
    { key = "crownedbytheworldchalice",           attribute = "WATER", monster_type = "Spellcaster",  pos = { x = 10, y = 8 } },
    { key = "flamemanipulator",                   attribute = "FIRE",  monster_type = "Spellcaster",  pos = { x = 11, y = 8 } },
    { key = "doriado",                            attribute = "EARTH", monster_type = "Spellcaster",  pos = { x = 12, y = 8 } },
    { key = "geminielf",                          attribute = "EARTH", monster_type = "Spellcaster",  pos = { x = 0, y = 9 } },
    { key = "taothechanter",                      attribute = "EARTH", monster_type = "Spellcaster",  pos = { x = 1, y = 9 } },
    { key = "wattkid",                            attribute = "LIGHT", monster_type = "Thunder",      pos = { x = 2, y = 9 } },
    { key = "tripwirebeast",                      attribute = "EARTH", monster_type = "Thunder",      pos = { x = 3, y = 9 } },
    { key = "thunderkid",                         attribute = "WIND",  monster_type = "Thunder",      pos = { x = 4, y = 9 } },
    { key = "axeraider",                          attribute = "EARTH", monster_type = "Warrior",      pos = { x = 5, y = 9 } },
    { key = "beckonedbytheworldchalice",          attribute = "EARTH", monster_type = "Warrior",      pos = { x = 6, y = 9 } },
    { key = "celticguardian",                     attribute = "EARTH", monster_type = "Warrior",      pos = { x = 7, y = 9 } },
    { key = "mwarrior1",                          attribute = "EARTH", monster_type = "Warrior",      pos = { x = 8, y = 9 } },
    { key = "mwarrior2",                          attribute = "EARTH", monster_type = "Warrior",      pos = { x = 9, y = 9 } },
    { key = "millenniumshield",                   attribute = "EARTH", monster_type = "Warrior",      pos = { x = 10, y = 9 } },
    { key = "oscillohero",                        attribute = "EARTH", monster_type = "Warrior",      pos = { x = 11, y = 9 } },
    { key = "sonicmaid",                          attribute = "EARTH", monster_type = "Warrior",      pos = { x = 12, y = 9 } },
    { key = "swordsmanoflandstar",                attribute = "EARTH", monster_type = "Warrior",      pos = { x = 0, y = 10 } },
    { key = "fiendreflection2",                   attribute = "LIGHT", monster_type = "WingedBeast",  pos = { x = 1, y = 10 } },
    { key = "fiendreflection1",                   attribute = "WIND",  monster_type = "WingedBeast",  pos = { x = 2, y = 10 } },
    { key = "harpielady",                         attribute = "WIND",  monster_type = "WingedBeast",  pos = { x = 3, y = 10 } },
    { key = "skyscout",                           attribute = "WIND",  monster_type = "WingedBeast",  pos = { x = 4, y = 10 } },
    { key = "tyhone",                             attribute = "WIND",  monster_type = "WingedBeast",  pos = { x = 5, y = 10 } },
    { key = "wingeddragonguardianofthefortress2", attribute = "WIND",  monster_type = "WingedBeast",  pos = { x = 6, y = 10 } },
    { key = "mysteryshelldragon",                 attribute = "DARK",  monster_type = "Wyrm",         pos = { x = 7, y = 10 } },
    { key = "phantasmspiraldragon",               attribute = "WATER", monster_type = "Wyrm",         pos = { x = 8, y = 10 } },
    { key = "darkassailant",                      attribute = "DARK",  monster_type = "Zombie",       pos = { x = 9, y = 10 } },
    { key = "pharaohsservant",                    attribute = "DARK",  monster_type = "Zombie",       pos = { x = 10, y = 10 } },
    { key = "skullservant",                       attribute = "DARK",  monster_type = "Zombie",       pos = { x = 11, y = 10 } },
}

local other_pieces = {
    { key = "rightarmoftheforbiddenone", attribute = "DARK", monster_type = "Spellcaster", pos = { x = 12, y = 10 } },
    { key = "rightlegoftheforbiddenone", attribute = "DARK", monster_type = "Spellcaster", pos = { x = 0, y = 11 } },
}

local function make_normal_joker(list)
    for _, data in ipairs(list) do
        JoyousSpring.Joker({
            key = "normal_" .. data.key,
            atlas = data.atlas or 'Normal',
            pos = data.pos or { x = 0, y = 0 },
            rarity = 1,
            blueprint_compat = false,
            eternal_compat = true,
            discovered = false,
            cost = 1,
            joy_no_shop = true,
            loc_vars = function(self, info_queue, card)
                return { vars = { "#" } } -- funny
            end,
            config = {
                extra = {
                    joyous_spring = JoyousSpring.init_joy_table {
                        is_effect = false,
                        is_tuner = data.is_tuner,
                        attribute = data.attribute,
                        monster_type = data.monster_type,
                        monster_archetypes = data.monster_archetypes
                    },
                },
            },
            calculate = data.monster_type == "Illusion" and function(self, card, context)
                JoyousSpring.calculate_illusion_banish(card, context)
            end or nil,
            in_pool = function(self, args)
                return args and args.from_joyous
            end,
        })
    end
end

make_normal_joker(other_pieces)
-- Exodia the Forbidden One
JoyousSpring.Joker({
    key = "normal_exodia",
    atlas = 'Normal',
    pos = { x = 3, y = 11 },
    rarity = 4,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 50,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not G.GAME.won and next(SMODS.find_card("j_joy_normal_rightarmoftheforbiddenone")) and
            next(SMODS.find_card("j_joy_normal_rightlegoftheforbiddenone")) and
            next(SMODS.find_card("j_joy_normal_leftarmoftheforbiddenone")) and
            next(SMODS.find_card("j_joy_normal_leftlegoftheforbiddenone")) then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            win_game()
                            G.GAME.won = true
                            return true
                        end
                    }))
                    return true
                end
            }))
        end
    end,
    in_pool = function(self, args)
        if not G.GAME.won and (args and args.source == "sho" and
                next(SMODS.find_card("j_joy_normal_rightarmoftheforbiddenone")) and
                next(SMODS.find_card("j_joy_normal_rightlegoftheforbiddenone")) and
                next(SMODS.find_card("j_joy_normal_leftarmoftheforbiddenone")) and
                next(SMODS.find_card("j_joy_normal_leftlegoftheforbiddenone"))) then
            return not (G.GAME.used_jokers[self.key] and not SMODS.showman(self.key)),
                { override_base_checks = true }
        end
    end,
    get_weight = function(self, original_weight, args)
        if G.GAME.won or not (next(SMODS.find_card("j_joy_normal_rightarmoftheforbiddenone")) and
                next(SMODS.find_card("j_joy_normal_rightlegoftheforbiddenone")) and
                next(SMODS.find_card("j_joy_normal_leftarmoftheforbiddenone")) and
                next(SMODS.find_card("j_joy_normal_leftlegoftheforbiddenone"))) then
            return 0
        end
        return args.append == "sou" and 10 or 1
    end
})
make_normal_joker(key_list)


JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "normal" },
    label = "k_joy_archetype_normal"
}
