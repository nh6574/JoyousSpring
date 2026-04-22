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
        return {
            vars = {},
            key = (not card.area or card.area ~= G.jokers) and "j_joy_dracotail_arthalion_notsummoned" or nil
        }
    end,
    joy_effect_loc_vars = function(self, key)
        return self.joy_extra_config[key] or {}
    end,
    joy_desc_cards = {
        { extra = "j_joy_dracotail_arthalion",                        extra_values = { enhancements = { "m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky", "m_joy_hanafuda" }, editions = { "e_foil", "e_holo", "e_polychrome" }, seals = { "Red", "Blue", "Gold", "Purple", "joy_purr_memory" } }, name = "k_joy_arthalion_effects" },
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
    joy_extra_config = { -- magic numbers
        m_bonus = { 60 },
        m_mult = { 8 },
        m_wild = {},
        m_glass = { 4, 1 },
        m_steel = { 4, 1 },
        m_stone = { 150 },
        m_gold = { 6 },
        m_lucky = {},
        m_joy_hanafuda = { 1 },
        e_foil = { 100 },
        e_holo = { 20 },
        e_polychrome = { 2.25 },
        red_seal = { 1 },
        blue_seal = { 1 },
        gold_seal = { 6 },
        purple_seal = { 1 },
        joy_purr_memory_seal = { 1 }
    }
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dracotail" },
    label = "k_joy_archetype_dracotail"
}
