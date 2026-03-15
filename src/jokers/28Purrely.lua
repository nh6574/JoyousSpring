--- PURRELY
SMODS.Atlas({
    key = "purr",
    path = "28Purrely.png",
    px = 71,
    py = 95
})

SMODS.Consumable {
    key = "purr_delicious",
    atlas = 'purr',
    pos = { x = 2, y = 2 },
    set = "Spectral",
    discovered = true,
}

SMODS.Consumable {
    key = "purr_happy",
    atlas = 'purr',
    pos = { x = 3, y = 2 },
    set = "Spectral",
    discovered = true,
}

SMODS.Consumable {
    key = "purr_pretty",
    atlas = 'purr',
    pos = { x = 0, y = 3 },
    set = "Spectral",
    discovered = true,
}

SMODS.Consumable {
    key = "purr_sleepy",
    atlas = 'purr',
    pos = { x = 1, y = 3 },
    set = "Spectral",
    discovered = true,
}

-- Purrely
SMODS.Joker({
    key = "purr_purrely",
    atlas = 'purr',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.excavates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Purrely"] = true }
            },
            excavates = 3
        },
    },
})

-- Purrelyly
SMODS.Joker({
    key = "purr_purrelyly",
    atlas = 'purr',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "DARK",
                monster_archetypes = { ["Purrely"] = true }
            },
            creates = 1
        },
    },
})

-- Epurrely Plump
SMODS.Joker({
    key = "purr_eplump",
    atlas = 'purr',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers, card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach, card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "EARTH",
                monster_archetypes = { ["Purrely"] = true }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1,
            banishes = 1
        },
    },
})

-- Epurrely Beauty
SMODS.Joker({
    key = "purr_ebeauty",
    atlas = 'purr',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers, card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach, card.ability.extra.tributes, card.ability.extra.rerolls } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "WATER",
                monster_archetypes = { ["Purrely"] = true }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1,
            tributes = 1,
            rerolls = 1
        },
    },
})

-- Epurrely Happiness
SMODS.Joker({
    key = "purr_ehappiness",
    atlas = 'purr',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers, card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Purrely"] = true }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1,
            creates = 1
        },
    },
})

-- Epurrely Noir
SMODS.Joker({
    key = "purr_enoir",
    atlas = 'purr',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.retriggers, card.ability.extra.increases, card.ability.extra.per, card.ability.extra.detach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "DARK",
                monster_archetypes = { ["Purrely"] = true }
            },
            retriggers = 1,
            increases = 1,
            per = 5,
            detach = 1
        },
    },
})

-- Expurrely Happiness
SMODS.Joker({
    key = "purr_exhappiness",
    atlas = 'purr',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Purrely"] = true }
            },
            xmult = 1.5
        },
    },
})

-- Expurrely Noir
SMODS.Joker({
    key = "purr_exnoir",
    atlas = 'purr',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "DARK",
                monster_archetypes = { ["Purrely"] = true }
            },
            xchips = 1.5
        },
    },
})

-- Stray Purrely Street
SMODS.Joker({
    key = "purr_street",
    atlas = 'purr',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attaches, card.ability.extra.requires } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Purrely" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Purrely"] = true }
            },
            attaches = 1,
            requires = 12
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "purr" },
    label = "k_joy_archetype_purr"
}
