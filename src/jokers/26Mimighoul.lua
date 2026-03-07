--- MIMIGHOUL
SMODS.Atlas({
    key = "mimi",
    path = "26Mimighoul.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "mimi_opp",
    path = "26Mimighoul_opp.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
})

-- Mimighoul Archfiend
SMODS.Joker({
    key = "mimi_archfiend",
    atlas = 'mimi',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_archfiend",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fiend",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 20,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_archfiend",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 1 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_archfiend",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fiend",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 20,
            h_size = 1
        },
    },
}

-- Mimighoul Armor
SMODS.Joker({
    key = "mimi_armor",
    atlas = 'mimi',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_armor",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            chips = 50,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_armor",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 2 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_armor",                                         name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            chips = 50,
        },
    },
}

-- Mimighoul Cerberus
SMODS.Joker({
    key = "mimi_cerberus",
    atlas = 'mimi',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_cerberus",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            xmult = 4,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_cerberus",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 3 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_cerberus",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            xmult = 4,
        },
    },
}

-- Mimighoul Dragon
SMODS.Joker({
    key = "mimi_dragon",
    atlas = 'mimi',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_dragon",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Dragon",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
            creates = 2
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_dragon",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 4 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_dragon",                                        name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Dragon",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
        },
    },
}

-- Mimighoul Fairy
SMODS.Joker({
    key = "mimi_fairy",
    atlas = 'mimi',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_fairy",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_fairy",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 6 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_fairy",                                         name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            mult = 15,
        },
    },
}

-- Mimighoul Flower
SMODS.Joker({
    key = "mimi_flower",
    atlas = 'mimi',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_flower",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Plant",
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_flower",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 7 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_flower",                                        name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Plant",
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
}

-- Mimighoul Slime
SMODS.Joker({
    key = "mimi_slime",
    atlas = 'mimi',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_slime",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Aqua",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "mimi_slime",
    atlas = 'mimi_opp',
    pos = { x = 0, y = 9 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_mimi_slime",                                         name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Aqua",
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
}

-- Mimighoul Master
SMODS.Joker({
    key = "mimi_master",
    atlas = 'mimi',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Zombie",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            xmult = 1.25
        },
    },
})

-- Giant Mimighoul
SMODS.Joker({
    key = "mimi_giant",
    atlas = 'mimi',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attaches, card.ability.extra.detach, card.ability.extra.xmult, 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            attaches = 1,
            detach = 1,
            xmult = 2,
        },
    },
})

-- Mimighoul Throne
SMODS.Joker({
    key = "mimi_throne",
    atlas = 'mimi',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.creates, card.ability.extra.opp_size } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Mimighoul"] = true }
            },
            detach = 2,
            creates = 1,
            opp_size = 1
        },
    },
})

-- Mimighoul Dungeon
SMODS.Joker({
    key = "mimi_dungeon",
    atlas = 'mimi',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Mimighoul" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Mimighoul"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "mimi" },
    label = "k_joy_archetype_mimi"
}
