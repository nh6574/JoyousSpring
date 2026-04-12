--- DARK MAGICIAN
SMODS.Atlas({
    key = "dm",
    path = "40DarkMagician.png",
    px = 71,
    py = 95
})

-- Dark Magician
JoyousSpring.Joker({
    key = "dm_dm",
    atlas = 'dm',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 1, y = 0 }, { x = 2, y = 0 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Dark Magician Girl
JoyousSpring.Joker({
    key = "dm_dmg",
    atlas = 'dm',
    pos = { x = 3, y = 0 },
    joy_alt_pos = { { x = 4, y = 0 }, { x = 5, y = 0 }, { x = 6, y = 0 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Apprentice Illusion Magician
JoyousSpring.Joker({
    key = "dm_apprentice",
    atlas = 'dm',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Chronicle Magician
JoyousSpring.Joker({
    key = "dm_chromagician",
    atlas = 'dm',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Chronicle Sorceress
JoyousSpring.Joker({
    key = "dm_sorceress",
    atlas = 'dm',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Dark Magician Knight
JoyousSpring.Joker({
    key = "dm_knight",
    atlas = 'dm',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "DARK",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Dark Magician of Chaos
JoyousSpring.Joker({
    key = "dm_chaos",
    atlas = 'dm',
    pos = { x = 4, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Magician of Dark Illusion
JoyousSpring.Joker({
    key = "dm_darkillusion",
    atlas = 'dm',
    pos = { x = 5, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Magician's Robe
JoyousSpring.Joker({
    key = "dm_robe",
    atlas = 'dm',
    pos = { x = 6, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Magician's Rod
JoyousSpring.Joker({
    key = "dm_rod",
    atlas = 'dm',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Magician's Valkyria
JoyousSpring.Joker({
    key = "dm_valkyria",
    atlas = 'dm',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
            },
        },
    },
})

-- Magicians' Souls
JoyousSpring.Joker({
    key = "dm_souls",
    atlas = 'dm',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Magikuriboh
JoyousSpring.Joker({
    key = "dm_kuri",
    atlas = 'dm',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "DARK",
            },
        },
    },
})

-- Dimension Conjurer
JoyousSpring.Joker({
    key = "dm_conjurer",
    atlas = 'dm',
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Palladium Oracle Mahad
JoyousSpring.Joker({
    key = "dm_mahad",
    atlas = 'dm',
    pos = { x = 4, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
            },
        },
    },
})

-- Palladium Oracle Mana
JoyousSpring.Joker({
    key = "dm_mana",
    atlas = 'dm',
    pos = { x = 5, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
            },
        },
    },
})

-- Timaeus the United Dragon
JoyousSpring.Joker({
    key = "dm_timaeus",
    atlas = 'dm',
    pos = { x = 6, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
            },
        },
    },
})

-- Dark Eradicator Warlock
JoyousSpring.Joker({
    key = "dm_warlock",
    atlas = 'dm',
    pos = { x = 1, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
            },
        },
    },
})

-- Magician of Black Chaos
JoyousSpring.Joker({
    key = "dm_blackchaos",
    atlas = 'dm',
    pos = { x = 4, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Magician of Black Chaos MAX
JoyousSpring.Joker({
    key = "dm_blackchaosmax",
    atlas = 'dm',
    pos = { x = 6, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Magician of Chaos
JoyousSpring.Joker({
    key = "dm_chaosritual",
    atlas = 'dm',
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Illusion of Chaos
JoyousSpring.Joker({
    key = "dm_illusion",
    atlas = 'dm',
    pos = { x = 3, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "RITUAL",
            },
        },
    },
})

-- Dark Cavalry
JoyousSpring.Joker({
    key = "dm_cavalry",
    atlas = 'dm',
    pos = { x = 2, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Dark Magician of Destruction
JoyousSpring.Joker({
    key = "dm_destruction",
    atlas = 'dm',
    pos = { x = 4, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Dark Magician the Dragon Knight
JoyousSpring.Joker({
    key = "dm_dragonknight",
    atlas = 'dm',
    pos = { x = 3, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Amulet Dragon
JoyousSpring.Joker({
    key = "dm_amulet",
    atlas = 'dm',
    pos = { x = 1, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Timaeus the United Magical Dragon
JoyousSpring.Joker({
    key = "dm_timaeusmagical",
    atlas = 'dm',
    pos = { x = 0, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
                summon_type = "FUSION",
            },
        },
    },
})

-- The Dark Magicians
JoyousSpring.Joker({
    key = "dm_magicians",
    atlas = 'dm',
    pos = { x = 6, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Red-Eyes Dark Dragoon
JoyousSpring.Joker({
    key = "dm_dragoon",
    atlas = 'dm',
    pos = { x = 5, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "FUSION",
            },
        },
    },
})

-- Dark Magician Girl the Dragon Knight
JoyousSpring.Joker({
    key = "dm_dmgknight",
    atlas = 'dm',
    pos = { x = 0, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                summon_type = "FUSION",
                monster_archetypes = { ["DarkMagician"] = true }
            },
        },
    },
})

-- Ebon Illusion Magician
JoyousSpring.Joker({
    key = "dm_ebonillusion",
    atlas = 'dm',
    pos = { x = 2, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "XYZ",
            },
        },
    },
})

-- Ebon High Magician
JoyousSpring.Joker({
    key = "dm_ebonhigh",
    atlas = 'dm',
    pos = { x = 1, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "DARK",
                summon_type = "XYZ",
            },
        },
    },
})

-- Magician's Salvation
JoyousSpring.Joker({
    key = "dm_salvation",
    atlas = 'dm',
    pos = { x = 2, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "DarkMagician" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dm" },
    label = "k_joy_archetype_dm"
}
