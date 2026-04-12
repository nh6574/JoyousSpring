--- SKY STRIKER
SMODS.Atlas({
    key = "striker",
    path = "35SkyStriker.png",
    px = 71,
    py = 95
})

-- Sky Striker Ace - Raye
JoyousSpring.Joker({
    key = "striker_raye",
    atlas = 'striker',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 1, y = 0 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Roze
JoyousSpring.Joker({
    key = "striker_roze",
    atlas = 'striker',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Surgical Striker - H.A.M.P.
JoyousSpring.Joker({
    key = "striker_hamp",
    atlas = 'striker',
    pos = { x = 3, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Aileron
JoyousSpring.Joker({
    key = "striker_aileron",
    atlas = 'striker',
    pos = { x = 4, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "WIND",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Pillar of the Future - Cyanos
JoyousSpring.Joker({
    key = "striker_cyanos",
    atlas = 'striker',
    pos = { x = 5, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Sage of Benevolence - Ciela
JoyousSpring.Joker({
    key = "striker_ciela",
    atlas = 'striker',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "WATER",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Sage of Strength - Akash
JoyousSpring.Joker({
    key = "striker_akash",
    atlas = 'striker',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "FIRE",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Sage of Wisdom - Himmel
JoyousSpring.Joker({
    key = "striker_himmel",
    atlas = 'striker',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Hayate
JoyousSpring.Joker({
    key = "striker_hayate",
    atlas = 'striker',
    pos = { x = 4, y = 2 },
    joy_alt_pos = { { x = 5, y = 2 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "WIND",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Kagari
JoyousSpring.Joker({
    key = "striker_kagari",
    atlas = 'striker',
    pos = { x = 0, y = 3 },
    joy_alt_pos = { { x = 1, y = 3 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "FIRE",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Shizuku
JoyousSpring.Joker({
    key = "striker_shizuku",
    atlas = 'striker',
    pos = { x = 3, y = 3 },
    joy_alt_pos = { { x = 4, y = 3 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "WATER",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Kaina
JoyousSpring.Joker({
    key = "striker_kaina",
    atlas = 'striker',
    pos = { x = 2, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Prototype Sky Striker Ace - Amatsu
JoyousSpring.Joker({
    key = "striker_amatsu",
    atlas = 'striker',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Zeke
JoyousSpring.Joker({
    key = "striker_zeke",
    atlas = 'striker',
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Azalea
JoyousSpring.Joker({
    key = "striker_azalea",
    atlas = 'striker',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Azalea Temperance
JoyousSpring.Joker({
    key = "striker_azaleatemp",
    atlas = 'striker',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace - Camellia
JoyousSpring.Joker({
    key = "striker_camellia",
    atlas = 'striker',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Sky Striker Ace = Zero
JoyousSpring.Joker({
    key = "striker_zero",
    atlas = 'striker',
    pos = { x = 0, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Combined Maneuver - Engage Zero!
JoyousSpring.Joker({
    key = "striker_combined",
    atlas = 'striker',
    pos = { x = 5, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
        },
    },
})

-- Surgical Striker - S.P.E.C.T.R.A
JoyousSpring.Joker({
    key = "striker_spectra",
    atlas = 'striker',
    pos = { x = 1, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

-- Sky Striker Airspace - Area Zero
JoyousSpring.Joker({
    key = "striker_areazero",
    atlas = 'striker',
    pos = { x = 3, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "striker" },
    label = "k_joy_archetype_striker"
}
