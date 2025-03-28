--- SHADDOLL
SMODS.Atlas({
    key = "shaddoll",
    path = "18Shaddoll.png",
    px = 71,
    py = 95
})

-- Shaddoll Beast
SMODS.Joker({
    key = "shaddoll_beast",
    atlas = 'shaddoll',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1, 1, 3 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fairy",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Dragon
SMODS.Joker({
    key = "shaddoll_dragon",
    atlas = 'shaddoll',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1, 1, 3 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Falco
SMODS.Joker({
    key = "shaddoll_falco",
    atlas = 'shaddoll',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1, 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Hedgehog
SMODS.Joker({
    key = "shaddoll_hedgehog",
    atlas = 'shaddoll',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1, 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Hound
SMODS.Joker({
    key = "shaddoll_hound",
    atlas = 'shaddoll',
    pos = { x = 4, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 5, 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Squamata
SMODS.Joker({
    key = "shaddoll_squamata",
    atlas = 'shaddoll',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1, 1, 3 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Core
SMODS.Joker({
    key = "shaddoll_core",
    atlas = 'shaddoll',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 2, 1, 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Naelshaddoll Ariel
SMODS.Joker({
    key = "shaddoll_ariel",
    atlas = 'shaddoll',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Psychic",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Nehshaddoll Genius
SMODS.Joker({
    key = "shaddoll_genius",
    atlas = 'shaddoll',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Machine",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Qadshaddoll Keios
SMODS.Joker({
    key = "shaddoll_keios",
    atlas = 'shaddoll',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 5 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Reeshaddoll Wendi
SMODS.Joker({
    key = "shaddoll_wendi",
    atlas = 'shaddoll',
    pos = { x = 4, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Helshaddoll Hollow
SMODS.Joker({
    key = "shaddoll_hollow",
    atlas = 'shaddoll',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 3, 3 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Fiend",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Anoyatyllis
SMODS.Joker({
    key = "shaddoll_anoya",
    atlas = 'shaddoll',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 20, 0, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fiend",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Apkallone
SMODS.Joker({
    key = "shaddoll_apka",
    atlas = 'shaddoll',
    pos = { x = 4, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Winda
SMODS.Joker({
    key = "shaddoll_winda",
    atlas = 'shaddoll',
    pos = { x = 4, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 2, 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Construct
SMODS.Joker({
    key = "shaddoll_elconstruct",
    atlas = 'shaddoll',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 10, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Grysta
SMODS.Joker({
    key = "shaddoll_grysta",
    atlas = 'shaddoll',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1.05, 1, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Rock",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Shekhinaga
SMODS.Joker({
    key = "shaddoll_shekh",
    atlas = 'shaddoll',
    pos = { x = 2, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Machine",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- El Shaddoll Wendigo
SMODS.Joker({
    key = "shaddoll_wendigo",
    atlas = 'shaddoll',
    pos = { x = 3, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Shaddoll Construct
SMODS.Joker({
    key = "shaddoll_construct",
    atlas = 'shaddoll',
    pos = { x = 0, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
        },
    },
})

-- Curse of the Shadow Prison
SMODS.Joker({
    key = "shaddoll_prison",
    atlas = 'shaddoll',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 5, 10, 1 } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Solfachord" } } }, name = "Archetype" },
    },
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
JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "shaddoll" },
    label = "k_joy_archetype_shaddoll"
}
