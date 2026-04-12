--- TIME THIEF
SMODS.Atlas({
    key = "thief",
    path = "39TimeThief.png",
    px = 71,
    py = 95
})

-- Time Thief Adjuster
JoyousSpring.Joker({
    key = "thief_adjuster",
    atlas = 'thief',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Winder
JoyousSpring.Joker({
    key = "thief_winder",
    atlas = 'thief',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Regulator
JoyousSpring.Joker({
    key = "thief_regulator",
    atlas = 'thief',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Bezel Ship
JoyousSpring.Joker({
    key = "thief_bezel",
    atlas = 'thief',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Temporwhal
JoyousSpring.Joker({
    key = "thief_whal",
    atlas = 'thief',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Chronocorder
JoyousSpring.Joker({
    key = "thief_corder",
    atlas = 'thief',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Perpetua
JoyousSpring.Joker({
    key = "thief_perpetua",
    atlas = 'thief',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Redoer
JoyousSpring.Joker({
    key = "thief_redoer",
    atlas = 'thief',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

-- Time Thief Double Barrel
JoyousSpring.Joker({
    key = "thief_double",
    atlas = 'thief',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "thief" },
    label = "k_joy_archetype_thief"
}
