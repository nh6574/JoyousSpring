--- MISCELLANEOUS
SMODS.Atlas({
    key = "joy_Misc03",
    path = "99Misc03.png",
    px = 71,
    py = 95
})

-- PenduLuMoon
SMODS.Joker({
    key = "pendulumoon",
    atlas = 'Misc03',
    pos = { x = 3, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = {}
            },
        },
    },
})

-- Patissciel Couverture
SMODS.Joker({
    key = "couverture",
    atlas = 'Misc03',
    pos = { x = 4, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Fairy",
                monster_archetypes = {}
            },
        },
    },
})

-- Firewall Saber Dragon
SMODS.Joker({
    key = "firewall_saber",
    atlas = 'Misc03',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = {}
            },
        },
    },
})

-- Divine Arsenal AA-ZEUS - Sky Thunder
SMODS.Joker({
    key = "zeus",
    atlas = 'Misc03',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 75 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Machine",
                monster_archetypes = {}
            },
        },
    },
})

-- Super Starslayer TY-PHON - Sky Crisis
SMODS.Joker({
    key = "typhon",
    atlas = 'Misc03',
    pos = { x = 2, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 50 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = {}
            },
        },
    },
})

-- Beyond the Pendulum
SMODS.Joker({
    key = "beyond",
    atlas = 'Misc03',
    pos = { x = 0, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 10, 0, 1, 4, 0 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = {}
            },
        },
    },
})

-- Linkuriboh
SMODS.Joker({
    key = "linkuriboh",
    atlas = 'Misc03',
    pos = { x = 1, y = 4 },
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
                monster_type = "Cyberse",
                monster_archetypes = {}
            },
        },
    },
})

-- Linguriboh
SMODS.Joker({
    key = "linguriboh",
    atlas = 'Misc03',
    pos = { x = 2, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 3 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = {}
            },
        },
    },
})

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
                monster_archetypes = {}
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
                monster_archetypes = {}
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
                monster_archetypes = {}
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
                monster_archetypes = {}
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
                monster_archetypes = {}
            },
        },
    },
})
