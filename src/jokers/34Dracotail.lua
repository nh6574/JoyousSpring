--- DRACOTAIL
SMODS.Atlas({
    key = "dracotail",
    path = "34Dracotail.png",
    px = 71,
    py = 95
})

-- Dracotail Lukias
JoyousSpring.Joker({
    key = "dracotail_lukias",
    atlas = 'dracotail',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "EARTH",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Phryxul
JoyousSpring.Joker({
    key = "dracotail_phry",
    atlas = 'dracotail',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Faimena
JoyousSpring.Joker({
    key = "dracotail_faimena",
    atlas = 'dracotail',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "WATER",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Mululu
JoyousSpring.Joker({
    key = "dracotail_mululu",
    atlas = 'dracotail',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Urgula
JoyousSpring.Joker({
    key = "dracotail_urgula",
    atlas = 'dracotail',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "FIRE",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Pan
JoyousSpring.Joker({
    key = "dracotail_pan",
    atlas = 'dracotail',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "WIND",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Shaulas
JoyousSpring.Joker({
    key = "dracotail_shaulas",
    atlas = 'dracotail',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                monster_type = "Dragon",
                attribute = "LIGHT",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Gulamel
JoyousSpring.Joker({
    key = "dracotail_gulamel",
    atlas = 'dracotail',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                monster_type = "Spellcaster",
                attribute = "WATER",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

-- Dracotail Arthalion
JoyousSpring.Joker({
    key = "dracotail_arthalion",
    atlas = 'dracotail',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                monster_type = "Dragon",
                attribute = "EARTH",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dracotail" },
    label = "k_joy_archetype_dracotail"
}
