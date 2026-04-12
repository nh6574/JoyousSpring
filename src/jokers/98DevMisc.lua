--- MISCELLANEOUS
SMODS.Atlas({
    key = "Misc06",
    path = "99Misc06.png",
    px = 71,
    py = 95
})

-- Dogmatika Lawbringer
JoyousSpring.Joker({
    key = "dogma_law",
    atlas = "Dogmatika",
    pos = { x = 3, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
        },
    },
})

-- Solfachord Primoa
JoyousSpring.Joker({
    key = "solfa_primoa",
    atlas = "solfa",
    pos = { x = 1, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
        },
    },
})

-- Solfachord Solfegia
JoyousSpring.Joker({
    key = "solfa_solfegia",
    atlas = "solfa",
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Solfachord"] = true }
            },
        },
    },
})

-- Dimension Shifter
JoyousSpring.Joker({
    key = "dimensionshifter",
    atlas = "Misc06",
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster"
            },
        },
    },
})

-- Droll & Lock Bird
JoyousSpring.Joker({
    key = "droll",
    atlas = "Misc06",
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster"
            },
        },
    },
})

-- Kurikara Divincarnate
JoyousSpring.Joker({
    key = "kurikara",
    atlas = "Misc06",
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Fairy"
            },
        },
    },
})

-- Nibiru, the Primal Being
JoyousSpring.Joker({
    key = "nibiru",
    atlas = "Misc06",
    pos = { x = 3, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Rock"
            },
        },
    },
})

-- Theia, the Primal Being
JoyousSpring.Joker({
    key = "theia",
    atlas = "Misc06",
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Rock"
            },
        },
    },
})

-- Parasite Paracide
JoyousSpring.Joker({
    key = "parasiteparacide",
    atlas = "Misc06",
    pos = { x = 4, y = 0 },
    joy_alt_pos = { { x = 5, y = 0 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Insect",
                is_flip = true
            },
        },
    },
})

-- Parasite Paranoid
JoyousSpring.Joker({
    key = "parasiteparanoid",
    atlas = "Misc06",
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Insect"
            },
        },
    },
})

-- Dark Ruler Ha Des
JoyousSpring.Joker({
    key = "hades",
    atlas = "Misc06",
    pos = { x = 2, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend"
            },
        },
    },
})

-- Helios - The Primordial Sun
JoyousSpring.Joker({
    key = "helios",
    atlas = "Misc06",
    pos = { x = 3, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Pyro"
            },
        },
    },
})

-- Helios Duo Megistus
JoyousSpring.Joker({
    key = "heliosduo",
    atlas = "Misc06",
    pos = { x = 4, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Pyro"
            },
        },
    },
})

-- Helios Trice Megistus
JoyousSpring.Joker({
    key = "heliostrice",
    atlas = "Misc06",
    pos = { x = 5, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Pyro"
            },
        },
    },
})

-- Magical Undertaker
JoyousSpring.Joker({
    key = "magicalundertaker",
    atlas = "Misc06",
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster"
            },
        },
    },
})

-- Maiden of the Millennium Moon
JoyousSpring.Joker({
    key = "milleniummoon",
    atlas = "Misc06",
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Illusion"
            },
        },
    },
})

-- Master Tao the Chanter
JoyousSpring.Joker({
    key = "mastertao",
    atlas = "Misc06",
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Illusion"
            },
        },
    },
})

-- Maxx "C"
JoyousSpring.Joker({
    key = "maxxc",
    atlas = "Misc06",
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Insect"
            },
        },
    },
})

-- Nightmare Apprentice
JoyousSpring.Joker({
    key = "nightapprentice",
    atlas = "Misc06",
    pos = { x = 4, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion"
            },
        },
    },
})

-- Nightmare Magician
JoyousSpring.Joker({
    key = "nightmagician",
    atlas = "Misc06",
    pos = { x = 5, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion"
            },
        },
    },
})

-- Talons of Shurilane
JoyousSpring.Joker({
    key = "shurilane",
    atlas = "Misc06",
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Illusion"
            },
        },
    },
})

-- Tao Tao the Chanter
JoyousSpring.Joker({
    key = "taotao",
    atlas = "Misc06",
    pos = { x = 1, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "EARTH",
                monster_type = "Illusion"
            },
        },
    },
})

-- Necrovalley
JoyousSpring.Joker({
    key = "necrovalley",
    atlas = "Misc06",
    pos = { x = 2, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true
            },
        },
    },
})

-- Secret Village of the Spellcasters
JoyousSpring.Joker({
    key = "secretvillage",
    atlas = "Misc06",
    pos = { x = 3, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Skull Guardian
JoyousSpring.Joker({
    key = "skullguardian",
    atlas = "Misc06",
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Warrior",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Saffira, Queen of Dragons
JoyousSpring.Joker({
    key = "saffira",
    atlas = "Misc06",
    pos = { x = 4, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Dragon",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Quintet Magician
JoyousSpring.Joker({
    key = "quintet",
    atlas = "Misc06",
    pos = { x = 0, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "FUSION",
            },
        },
    },
})

-- Slacker Magician
JoyousSpring.Joker({
    key = "slacker",
    atlas = "Misc06",
    pos = { x = 4, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
            },
        },
    },
})

-- Downerd Magician
JoyousSpring.Joker({
    key = "downerd",
    atlas = "Misc06",
    pos = { x = 2, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
            },
        },
    },
})

-- Alchemic Magician
JoyousSpring.Joker({
    key = "alchemic",
    atlas = "Misc06",
    pos = { x = 1, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
            },
        },
    },
})

-- Heretical Phobos Covos
JoyousSpring.Joker({
    key = "phoboscobos",
    atlas = "Misc06",
    pos = { x = 3, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion",
                summon_type = "XYZ",
            },
        },
    },
})

-- Miracle Raven
JoyousSpring.Joker({
    key = "miracleraven",
    atlas = "Misc06",
    pos = { x = 0, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                is_pendulum = true,
                summon_type = "RITUAL",
            },
        },
    },
})

-- Relinquished Anima
JoyousSpring.Joker({
    key = "relinq_anima",
    atlas = "Misc06",
    pos = { x = 1, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "LINK",
            },
        },
    },
})

-- W:P Fancy Ball
JoyousSpring.Joker({
    key = "wp",
    atlas = "Misc06",
    pos = { x = 2, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                summon_type = "LINK",
            },
        },
    },
})
