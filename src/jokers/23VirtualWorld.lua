--- VIRTUAL WORLD
SMODS.Atlas({
    key = "vw",
    path = "23VirtualWorld.png",
    px = 71,
    py = 95
})

-- Virtual World Mai-Hime - Lulu
SMODS.Joker({
    key = "vw_lulu",
    atlas = 'vw',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})

-- Virtual World Hime - Nyannyan
SMODS.Joker({
    key = "vw_nyannyan",
    atlas = 'vw',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Xiezhi - Jiji
SMODS.Joker({
    key = "vw_jiji",
    atlas = 'vw',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Oto-Hime - Toutou
SMODS.Joker({
    key = "vw_toutou",
    atlas = 'vw',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Kirin - Lili
SMODS.Joker({
    key = "vw_lili",
    atlas = 'vw',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Roshi - Laolao
SMODS.Joker({
    key = "vw_laolao",
    atlas = 'vw',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Dragon - Longlong
SMODS.Joker({
    key = "vw_longlong",
    atlas = 'vw',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Shell - Jaja
SMODS.Joker({
    key = "vw_jaja",
    atlas = 'vw',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Phoenix - Fanfan
SMODS.Joker({
    key = "vw_fanfan",
    atlas = 'vw',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Tiger - Fufu
SMODS.Joker({
    key = "vw_fufu",
    atlas = 'vw',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Beast - Jiujiu
SMODS.Joker({
    key = "vw_jiujiu",
    atlas = 'vw',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})


-- Virtual World Kyubi - Shenshen
SMODS.Joker({
    key = "vw_shenshen",
    atlas = 'vw',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "vw" },
    label = "k_joy_archetype_vw"
}
