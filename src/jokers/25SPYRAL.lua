--- SPYRAL
SMODS.Atlas({
    key = "spy",
    path = "25SPYRAL.png",
    px = 71,
    py = 95
})

-- SPYRAL GEAR - Drone
SMODS.Joker({
    key = "spy_drone",
    atlas = 'spy',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Machine",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL GEAR - Last Resort
SMODS.Joker({
    key = "spy_lastresort",
    atlas = 'spy',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Machine",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL Double Agent
SMODS.Joker({
    key = "spy_double",
    atlas = 'spy',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL Master Plan
SMODS.Joker({
    key = "spy_masterplan",
    atlas = 'spy',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL Quik-Fix
SMODS.Joker({
    key = "spy_quik",
    atlas = 'spy',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Machine",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL Sleeper
SMODS.Joker({
    key = "spy_sleeper",
    atlas = 'spy',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL Tough
SMODS.Joker({
    key = "spy_tough",
    atlas = 'spy',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Warrior",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL Super Agent
SMODS.Joker({
    key = "spy_super",
    atlas = 'spy',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYGAL Misty
SMODS.Joker({
    key = "spy_misty",
    atlas = 'spy',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- Charming Resort Staff
SMODS.Joker({
    key = "spy_staff",
    atlas = 'spy',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fairy",
            },
        },
    },
})

-- SPYRAL Double Helix
SMODS.Joker({
    key = "spy_helix",
    atlas = 'spy',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})

-- SPYRAL SPYRAL Resort
SMODS.Joker({
    key = "spy_resort",
    atlas = 'spy',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_spy_staff", "j_joy_spy_misty", properties = { { monster_archetypes = { "SPYRAL" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["SPYRAL"] = true }
            },
        },
    },
})



JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "spy" },
    label = "k_joy_archetype_spy"
}
