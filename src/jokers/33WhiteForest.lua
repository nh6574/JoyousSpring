--- WHITE FOREST
SMODS.Atlas({
    key = "wforest",
    path = "33WhiteForest.png",
    px = 71,
    py = 95
})

-- Astellar of the White Forest
JoyousSpring.Joker({
    key = "wforest_astellar",
    atlas = 'wforest',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { monster_type = "Spellcaster" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 5
        },
    },
})

-- Elzette of the White Forest
JoyousSpring.Joker({
    key = "wforest_elzette",
    atlas = 'wforest',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_set_tributed("Consumable") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 3
        },
    },
})

-- Silvy of the White Forest
JoyousSpring.Joker({
    key = "wforest_silvy",
    atlas = 'wforest',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 5,
            xmult = 1.5
        },
    },
})

-- Rucia of the White Forest
JoyousSpring.Joker({
    key = "wforest_rucia",
    atlas = 'wforest',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_flip, 0, card.ability.extra.mult_illusion, 0 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult_flip = 5,
            mult_illusion = 10,
        },
    },
})

-- Poplar of the White Forest
JoyousSpring.Joker({
    key = "wforest_poplar",
    atlas = 'wforest',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Illusion",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
        },
    },
})

-- Rciela, Sinister Soul of the White Forest
JoyousSpring.Joker({
    key = "wforest_rciela",
    atlas = 'wforest',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            xmult = 1
        },
    },
})

-- Silvera, Wolf Tamer of the White Forest
JoyousSpring.Joker({
    key = "wforest_silvera",
    atlas = 'wforest',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                summon_type = "SYNCHRO",
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            mult = 25
        },
    },
})

-- Diabell, Queen of the White Forest
JoyousSpring.Joker({
    key = "wforest_diabell",
    atlas = 'wforest',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                monster_type = "Illusion",
                attribute = "LIGHT",
                monster_archetypes = { ["WhiteForest"] = true }
            },
            xmult = 0.1
        },
    },
})

-- Witch of the White Forest
JoyousSpring.Joker({
    key = "wforest_witch",
    atlas = 'wforest',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "WhiteForest" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["WhiteForest"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "wforest" },
    label = "k_joy_archetype_wforest"
}
