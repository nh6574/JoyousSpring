--- HAZY FLAME
SMODS.Atlas({
    key = "hazy",
    path = "38HazyFlame.png",
    px = 71,
    py = 95
})

-- Hazy Flame Sphynx
JoyousSpring.Joker({
    key = "hazy_sphy",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Cerbereus
JoyousSpring.Joker({
    key = "hazy_cerbe",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Griffin
JoyousSpring.Joker({
    key = "hazy_grif",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Hydra
JoyousSpring.Joker({
    key = "hazy_hydra",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Hyppogrif
JoyousSpring.Joker({
    key = "hazy_hyppo",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Mantikor
JoyousSpring.Joker({
    key = "hazy_manti",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Peryton
JoyousSpring.Joker({
    key = "hazy_pery",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

-- Hazy Flame Basiltrice
JoyousSpring.Joker({
    key = "hazy_basil",
    atlas = 'hazy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "HazyFlame" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_archetypes = { ["HazyFlame"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "hazy" },
    label = "k_joy_archetype_hazy"
}
