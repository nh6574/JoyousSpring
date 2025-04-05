--- MISCELLANEOUS

--- 0.7.0

-- Exceed the Pendulum
SMODS.Joker({
    key = "exceed",
    atlas = 'Misc04',
    pos = { x = 6, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Pandora's Jewelry Box
SMODS.Joker({
    key = "pandora",
    atlas = 'Misc04',
    pos = { x = 7, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Wyrm",
            },
        },
    },
})

-- Anchamoufrite
SMODS.Joker({
    key = "anchamoufrite",
    atlas = 'Misc04',
    pos = { x = 3, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Zany Zebra
SMODS.Joker({
    key = "zany",
    atlas = 'Misc04',
    pos = { x = 3, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Beast",
            },
        },
    },
})

-- Pendulumucho
SMODS.Joker({
    key = "pendulumucho",
    atlas = 'Misc04',
    pos = { x = 0, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "WingedBeast",
            },
        },
    },
})

-- Moissa Knight, the Comet General
SMODS.Joker({
    key = "moissa",
    atlas = 'Misc04',
    pos = { x = 6, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Warrior",
            },
        },
    },
})

-- Foucault's Cannon
SMODS.Joker({
    key = "foucault",
    atlas = 'Misc04',
    pos = { x = 2, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- P.M. Captor
SMODS.Joker({
    key = "pmcaptor",
    atlas = 'Misc04',
    pos = { x = 1, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
        },
    },
})

-- Metrognome
SMODS.Joker({
    key = "metrognome",
    atlas = 'Misc04',
    pos = { x = 5, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "Fairy",
            },
        },
    },
})

-- Nirvana High Paladin
SMODS.Joker({
    key = "nirvana",
    atlas = 'Misc04',
    pos = { x = 4, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                summon_type = "SYNCHRO",
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Daidaratant the Ooze Giant
SMODS.Joker({
    key = "ooze",
    atlas = 'Misc04',
    pos = { x = 5, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                summon_type = "XYZ",
                attribute = "WATER",
                monster_type = "Zombie",
            },
        },
    },
})

-- Rain Bozu
SMODS.Joker({
    key = "bozu",
    atlas = 'Misc04',
    pos = { x = 2, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fairy",
            },
        },
    },
})

-- Formud Skipper
SMODS.Joker({
    key = "formud",
    atlas = 'Misc04',
    pos = { x = 7, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
        },
    },
})

-- I:P Masquerena
SMODS.Joker({
    key = "ipmasq",
    atlas = 'Misc04',
    pos = { x = 7, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Cyberse",
            },
        },
    },
})

-- S:P Little Knight
SMODS.Joker({
    key = "spknight",
    atlas = 'Misc04',
    pos = { x = 0, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Warrior",
            },
        },
    },
})

-- Progleo
SMODS.Joker({
    key = "progleo",
    atlas = 'Misc04',
    pos = { x = 1, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
        },
    },
})

-- Rasterliger
SMODS.Joker({
    key = "raster",
    atlas = 'Misc04',
    pos = { x = 2, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
        },
    },
})

-- Angraecum Umbrella
SMODS.Joker({
    key = "angraecum",
    atlas = 'Misc04',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Phantasmal Lord Ultimitl Bishbaalkin
SMODS.Joker({
    key = "bishbaalkin",
    atlas = 'Misc04',
    pos = { x = 6, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "DARK",
                monster_type = "Dragon",
            },
        },
    },
})

-- Eater of Millions
SMODS.Joker({
    key = "eater",
    atlas = 'Misc04',
    pos = { x = 6, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
            },
        },
    },
})

-- Chicken Game
SMODS.Joker({
    key = "chickengame",
    atlas = 'Misc04',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Magical Mid-Breaker Field
SMODS.Joker({
    key = "midbreaker",
    atlas = 'Misc04',
    pos = { x = 7, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Fusion Gate
SMODS.Joker({
    key = "fusiongate",
    atlas = 'Misc04',
    pos = { x = 5, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Future Visions
SMODS.Joker({
    key = "futurevisions",
    atlas = 'Misc04',
    pos = { x = 6, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Xyz Territory
SMODS.Joker({
    key = "xyzterritory",
    atlas = 'Misc04',
    pos = { x = 2, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Xyz Override
SMODS.Joker({
    key = "xyzoverride",
    atlas = 'Misc04',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Summon Breaker
SMODS.Joker({
    key = "summonbreaker",
    atlas = 'Misc04',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Extra Net
SMODS.Joker({
    key = "extranet",
    atlas = 'Misc04',
    pos = { x = 4, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Ancient Fairy Dragon
SMODS.Joker({
    key = "afd",
    atlas = 'Misc04',
    pos = { x = 4, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "LIGHT",
                monster_type = "Dragon",
            },
        },
    },
})

-- Heavenly Zephyr - Miradora
SMODS.Joker({
    key = "miradora",
    atlas = 'Misc04',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Dragon",
            },
        },
    },
})

-- Lycanthrope
SMODS.Joker({
    key = "lycanthrope",
    atlas = 'Misc04',
    pos = { x = 3, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "EARTH",
                monster_type = "BeastWarrior",
            },
        },
    },
})

-- Fish Lamp
SMODS.Joker({
    key = "fishlamp",
    atlas = 'Misc04',
    pos = { x = 5, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "FIRE",
                monster_type = "Fish",
            },
        },
    },
})

-- Lifeless Leaffish
SMODS.Joker({
    key = "leaffish",
    atlas = 'Misc04',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
            },
        },
    },
})

-- Beautunaful Princess
SMODS.Joker({
    key = "beautunaful",
    atlas = 'Misc04',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
            },
        },
    },
})

-- Ringowurm, the Dragon Guarding the Hundred Apples
SMODS.Joker({
    key = "ringowurm",
    atlas = 'Misc04',
    pos = { x = 7, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Dragon",
            },
        },
    },
})

-- Disablaster the Negation Fortress
SMODS.Joker({
    key = "disablaster",
    atlas = 'Misc04',
    pos = { x = 4, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Machine",
            },
        },
    },
})

-- Ghost Bird of Bewitchment
SMODS.Joker({
    key = "ghostbird",
    atlas = 'Misc04',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "WingedBeast",
            },
        },
    },
})

-- Iron Dragon Tiamaton
SMODS.Joker({
    key = "tiamaton",
    atlas = 'Misc04',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Dragon",
            },
        },
    },
})

-- Storm Shooter
SMODS.Joker({
    key = "stormshooter",
    atlas = 'Misc04',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "WingedBeast",
            },
        },
    },
})

-- Procession of the Tea Jar
SMODS.Joker({
    key = "procession",
    atlas = 'Misc04',
    pos = { x = 6, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
        },
    },
})

-- Dark Cat with White Tail
SMODS.Joker({
    key = "darkcat",
    atlas = 'Misc04',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
            },
        },
    },
})

-- Dekoichi the Battlechanted Locomotive
SMODS.Joker({
    key = "dekoichi",
    atlas = 'Misc04',
    pos = { x = 4, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Machine",
            },
        },
    },
})

-- Bokoichi the Freightening Car
SMODS.Joker({
    key = "bokoichi",
    atlas = 'Misc04',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "DARK",
                monster_type = "Machine",
            },
        },
    },
})

-- Desertapir
SMODS.Joker({
    key = "desertapir",
    atlas = 'Misc04',
    pos = { x = 5, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
            },
        },
    },
})

-- Searchlightman
SMODS.Joker({
    key = "searchlight",
    atlas = 'Misc04',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Machine",
            },
        },
    },
})

-- The Stern Mystic
SMODS.Joker({
    key = "sternmystic",
    atlas = 'Misc04',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Magician of Faith
SMODS.Joker({
    key = "mof",
    atlas = 'Misc04',
    pos = { x = 4, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Mask of Darkness
SMODS.Joker({
    key = "mask",
    atlas = 'Misc04',
    pos = { x = 5, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Fiend",
            },
        },
    },
})

JoyousSpring.token_pool["utchatzimime"] = {
    order = 6,
    name = "j_joy_token_utchatzimime",
    atlas = "joy_Misc04",
    sprite_pos = { x = 1, y = 4 },
    joyous_spring = {
        attribute = "DARK",
        monster_type = "Fiend"
    }
}

JoyousSpring.token_pool["lamp"] = {
    order = 7,
    name = "j_joy_token_lamp",
    atlas = "joy_Misc04",
    sprite_pos = { x = 7, y = 3 },
    joyous_spring = {
        attribute = "FIRE",
        monster_type = "Fish",
        is_all_materials = { SYNCHRO = true },
    }
}

JoyousSpring.token_pool["ringo"] = {
    order = 8,
    name = "j_joy_token_ringo",
    atlas = "joy_Misc04",
    sprite_pos = { x = 0, y = 4 },
    joyous_spring = {
        attribute = "LIGHT",
        monster_type = "Wyrm",
        is_tuner = true
    }
}

--- 0.8.0
SMODS.Joker({
    key = "zenoguitar",
    atlas = 'Misc02',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
        },
    },
})
SMODS.Joker({
    key = "revgolem",
    atlas = 'Misc02',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
        },
    },
})
SMODS.Joker({
    key = "tackcrusader",
    atlas = 'Misc02',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
        },
    },
})
SMODS.Joker({
    key = "doki",
    atlas = 'Misc02',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
        },
    },
})
SMODS.Joker({
    key = "blockdragon",
    atlas = 'Misc02',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
        },
    },
})
