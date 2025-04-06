--- MISCELLANEOUS

--- 0.7.0

-- Exceed the Pendulum
SMODS.Joker({
    key = "exceed",
    atlas = 'Misc04',
    pos = { x = 6, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_pendulum_count(), card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            xmult = 0.05,
            creates = 1,
        },
    },
})

-- Pandora's Jewelry Box
SMODS.Joker({
    key = "pandora",
    atlas = 'Misc04',
    pos = { x = 7, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Wyrm",
            },
            hands = 2
        },
    },
})

-- Anchamoufrite
SMODS.Joker({
    key = "anchamoufrite",
    atlas = 'Misc04',
    pos = { x = 3, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.draws, card.ability.extra.h_size } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            draws = 5,
            h_size = 2
        },
    },
})

-- Zany Zebra
SMODS.Joker({
    key = "zany",
    atlas = 'Misc04',
    pos = { x = 3, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.joker_amount, card.ability.extra.lose, card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Beast",
            },
            joker_amount = 4,
            lose = 1,
            xmult = 4
        },
    },
})

-- Pendulumucho
SMODS.Joker({
    key = "pendulumucho",
    atlas = 'Misc04',
    pos = { x = 0, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revive_consume, card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "WingedBeast",
            },
            revive_consume = 1,
            revives = 1
        },
    },
})

-- Moissa Knight, the Comet General
SMODS.Joker({
    key = "moissa",
    atlas = 'Misc04',
    pos = { x = 6, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds, card.ability.extra.chips, card.ability.extra.current_chips } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Warrior",
            },
            adds = 2,
            chips = 50,
            current_chips = 0
        },
    },
})

-- Foucault's Cannon
SMODS.Joker({
    key = "foucault",
    atlas = 'Misc04',
    pos = { x = 2, y = 4 },
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
                is_effect = false,
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
        },
    },
})

-- P.M. Captor
SMODS.Joker({
    key = "pmcaptor",
    atlas = 'Misc04',
    pos = { x = 1, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
            revives = 1
        },
    },
})

-- Metrognome
SMODS.Joker({
    key = "metrognome",
    atlas = 'Misc04',
    pos = { x = 5, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "EARTH",
                monster_type = "Fairy",
            },
            creates = 1,
            mult = 25
        },
    },
})

-- Nirvana High Paladin
SMODS.Joker({
    key = "nirvana",
    atlas = 'Misc04',
    pos = { x = 4, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                summon_type = "SYNCHRO",
                attribute = "DARK",
                monster_type = "Spellcaster",
            },
            xmult = 2
        },
    },
})

-- Daidaratant the Ooze Giant
SMODS.Joker({
    key = "ooze",
    atlas = 'Misc04',
    pos = { x = 5, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attach, card.ability.extra.detach, card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                summon_type = "XYZ",
                attribute = "WATER",
                monster_type = "Zombie",
            },
            attach = 2,
            detach = 2,
            revives = 1
        },
    },
})

-- Rain Bozu
SMODS.Joker({
    key = "bozu",
    atlas = 'Misc04',
    pos = { x = 2, y = 5 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.current_chips, card.ability.extra.current_mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fairy",
            },
            chips = 50,
            mult = 10,
            current_chips = 0,
            current_mult = 0,
        },
    },
})

-- Formud Skipper
SMODS.Joker({
    key = "formud",
    atlas = 'Misc04',
    pos = { x = 7, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            creates = 1
        },
    },
})

-- I:P Masquerena
SMODS.Joker({
    key = "ipmasq",
    atlas = 'Misc04',
    pos = { x = 7, y = 5 },
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
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Cyberse",
            },
        },
    },
})

-- S:P Little Knight
SMODS.Joker({
    key = "spknight",
    atlas = 'Misc04',
    pos = { x = 0, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Warrior",
            },
            banishes = 1
        },
    },
})

-- Progleo
SMODS.Joker({
    key = "progleo",
    atlas = 'Misc04',
    pos = { x = 1, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            banishes = 1
        },
    },
})

-- Rasterliger
SMODS.Joker({
    key = "raster",
    atlas = 'Misc04',
    pos = { x = 2, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { summon_type = "LINK" } }), card.ability.extra.percent * 100 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            mult = 50,
            percent = 0.1
        },
    },
})

-- Angraecum Umbrella
SMODS.Joker({
    key = "angraecum",
    atlas = 'Misc04',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revives, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Spellcaster",
            },
            revives = 1,
            adds = 1,
        },
    },
})

-- Phantasmal Lord Ultimitl Bishbaalkin
SMODS.Joker({
    key = "bishbaalkin",
    atlas = 'Misc04',
    pos = { x = 6, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { exclude_debuffed = true } }) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "DARK",
                monster_type = "Dragon",
            },
            mult = 100
        },
    },
})

-- Eater of Millions
SMODS.Joker({
    key = "eater",
    atlas = 'Misc04',
    pos = { x = 6, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
            },
            xmult = 0.1,
            current_xmult = 1,
            banishes = 1
        },
    },
})

-- Chicken Game
SMODS.Joker({
    key = "chickengame",
    atlas = 'Misc04',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent * 100, card.ability.extra.hands, card.ability.extra.discards } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            percent = 0.25,
            hands = 1,
            discards = 1
        },
    },
})

-- Magical Mid-Breaker Field
SMODS.Joker({
    key = "midbreaker",
    atlas = 'Misc04',
    pos = { x = 7, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            xmult = 1.5
        },
    },
})

-- Fusion Gate
SMODS.Joker({
    key = "fusiongate",
    atlas = 'Misc04',
    pos = { x = 5, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            adds = 1
        },
    },
})

-- Future Visions
SMODS.Joker({
    key = "futurevisions",
    atlas = 'Misc04',
    pos = { x = 6, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            banishes = 1
        },
    },
})

-- Xyz Territory
SMODS.Joker({
    key = "xyzterritory",
    atlas = 'Misc04',
    pos = { x = 2, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.money } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            mult = 25,
            current_mult = 0,
            money = 5
        },
    },
})

-- Xyz Override
SMODS.Joker({
    key = "xyzoverride",
    atlas = 'Misc04',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.tributes, card.ability.extra.attach } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            tributes = 1,
            attach = 1
        },
    },
})

-- Summon Breaker
SMODS.Joker({
    key = "summonbreaker",
    atlas = 'Misc04',
    pos = { x = 0, y = 3 },
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
                is_field_spell = true,
            },
        },
    },
})

-- Extra Net
SMODS.Joker({
    key = "extranet",
    atlas = 'Misc04',
    pos = { x = 4, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            h_size = 1
        },
    },
})

-- Ancient Fairy Dragon
SMODS.Joker({
    key = "afd",
    atlas = 'Misc04',
    pos = { x = 4, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.destroys_and_creates, card.ability.extra.money } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "LIGHT",
                monster_type = "Dragon",
            },
            creates = 1,
            destroys_and_creates = 1,
            money = 10,
        },
    },
})

-- Heavenly Zephyr - Miradora
SMODS.Joker({
    key = "miradora",
    atlas = 'Misc04',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.turns, card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Dragon",
            },
            turns = 1,
            xmult = 1.1
        },
    },
})

-- Lycanthrope
SMODS.Joker({
    key = "lycanthrope",
    atlas = 'Misc04',
    pos = { x = 3, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_all_materials({ { is_normal = true } }) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "EARTH",
                monster_type = "BeastWarrior",
            },
            mult = 50
        },
    },
})

-- Fish Lamp
SMODS.Joker({
    key = "fishlamp",
    atlas = 'Misc04',
    pos = { x = 5, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "FIRE",
                monster_type = "Fish",
            },
            adds = 1,
            creates = 2
        },
    },
})

-- Lifeless Leaffish
SMODS.Joker({
    key = "leaffish",
    atlas = 'Misc04',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mills, card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
            },
            mills = 1,
            revives = 1
        },
    },
})

-- Beautunaful Princess
SMODS.Joker({
    key = "beautunaful",
    atlas = 'Misc04',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
            },
            creates = 1
        },
    },
})

-- Ringowurm, the Dragon Guarding the Hundred Apples
SMODS.Joker({
    key = "ringowurm",
    atlas = 'Misc04',
    pos = { x = 7, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Dragon",
            },
            creates = 1
        },
    },
})

-- Disablaster the Negation Fortress
SMODS.Joker({
    key = "disablaster",
    atlas = 'Misc04',
    pos = { x = 4, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.current_money, math.max(1, card.ability.extra.xmult - JoyousSpring.get_joker_column(card)), JoyousSpring.get_joker_column(card) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Machine",
            },
            money = 1,
            current_money = 0,
            xmult = 7
        },
    },
})

-- Ghost Bird of Bewitchment
SMODS.Joker({
    key = "ghostbird",
    atlas = 'Misc04',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                JoyousSpring.get_joker_column(card),
                card.ability.extra.chips,
                colours = {
                    (JoyousSpring.get_joker_column(card) == 1) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (JoyousSpring.get_joker_column(card) == 3) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE,
                    (JoyousSpring.get_joker_column(card) == 5) and G.C.UI.TEXT_DARK or
                    G.C.UI.TEXT_INACTIVE
                }
            },
        }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "WingedBeast",
            },
            chips = 50
        },
    },
})

-- Iron Dragon Tiamaton
SMODS.Joker({
    key = "tiamaton",
    atlas = 'Misc04',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, JoyousSpring.get_joker_column(card) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Dragon",
            },
            xmult = 0.05,
            current_xmult = 1,
        },
    },
})

-- Storm Shooter
SMODS.Joker({
    key = "stormshooter",
    atlas = 'Misc04',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.column, JoyousSpring.get_joker_column(card) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "WingedBeast",
            },
            column = 1
        },
    },
})

-- Procession of the Tea Jar
SMODS.Joker({
    key = "procession",
    atlas = 'Misc04',
    pos = { x = 6, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
            xmult = 2
        },
    },
})

-- Dark Cat with White Tail
SMODS.Joker({
    key = "darkcat",
    atlas = 'Misc04',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
            },
            mult = 22,
            adds = 2
        },
    },
})

-- Dekoichi the Battlechanted Locomotive
SMODS.Joker({
    key = "dekoichi",
    atlas = 'Misc04',
    pos = { x = 4, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult_normal,
                card.ability.extra.mult +
                card.ability.extra.mult_normal * JoyousSpring.count_materials_owned({ { is_non_effect = true } }),
                card.ability.extra.h_size,
                card.ability.extra.h_size_normal,
                card.ability.extra.creates
            },
        }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Machine",
            },
            mult = 10,
            mult_normal = 25,
            h_size = 1,
            h_size_normal = 1,
            creates = 1
        },
    },
})

-- Bokoichi the Freightening Car
SMODS.Joker({
    key = "bokoichi",
    atlas = 'Misc04',
    pos = { x = 0, y = 0 },
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
                is_effect = false,
                attribute = "DARK",
                monster_type = "Machine",
            },
        },
    },
})

-- Desertapir
SMODS.Joker({
    key = "desertapir",
    atlas = 'Misc04',
    pos = { x = 5, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.flips } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Beast",
            },
            money = 4,
            flips = 2
        },
    },
})

-- Searchlightman
SMODS.Joker({
    key = "searchlight",
    atlas = 'Misc04',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.extra_mult, card.ability.extra.current_mult, G.GAME.probabilities.normal or 1, card.ability.extra.odds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Machine",
            },
            mult = 10,
            extra_mult = 10,
            current_mult = 10,
            odds = 2
        },
    },
})

-- The Stern Mystic
SMODS.Joker({
    key = "sternmystic",
    atlas = 'Misc04',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.extra_chips, card.ability.extra.current_chips, G.GAME.probabilities.normal or 1, card.ability.extra.odds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            chips = 50,
            extra_chips = 50,
            current_chips = 50,
            odds = 2
        },
    },
})

-- Magician of Faith
SMODS.Joker({
    key = "mof",
    atlas = 'Misc04',
    pos = { x = 4, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } }), card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            chips = 200,
            creates = 1
        },
    },
})

-- Mask of Darkness
SMODS.Joker({
    key = "mask",
    atlas = 'Misc04',
    pos = { x = 5, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { is_trap = true } }), card.ability.extra.revives } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Fiend",
            },
            mult = 5,
            revives = 1
        },
    },
})

JoyousSpring.token_pool["utchatzimime"] = {
    order = 6,
    name = "j_joy_token_utchatzimime",
    atlas = "joy_Misc04",
    sprite_pos = { x = 1, y = 4 },
    joyous_spring = {
        attribute = "DARK",
        monster_type = "Fiend"
    }
}

JoyousSpring.token_pool["lamp"] = {
    order = 7,
    name = "j_joy_token_lamp",
    atlas = "joy_Misc04",
    sprite_pos = { x = 7, y = 3 },
    joyous_spring = {
        attribute = "FIRE",
        monster_type = "Fish",
        is_all_materials = { SYNCHRO = true },
    }
}

JoyousSpring.token_pool["ringo"] = {
    order = 8,
    name = "j_joy_token_ringo",
    atlas = "joy_Misc04",
    sprite_pos = { x = 0, y = 4 },
    joyous_spring = {
        attribute = "LIGHT",
        monster_type = "Wyrm",
        is_tuner = true
    }
}

--- 0.8.0
-- SMODS.Joker({
--     key = "zenoguitar",
--     atlas = 'Misc02',
--     pos = { x = 1, y = 1 },
--     rarity = 1,
--     discovered = true,
--     blueprint_compat = false,
--     eternal_compat = true,
--     cost = 0,
--     loc_vars = function(self, info_queue, card)
--         return { vars = {} }
--     end,
--     generate_ui = JoyousSpring.generate_info_ui,
--     set_sprites = JoyousSpring.set_back_sprite,
--     config = {
--         extra = {
--             joyous_spring = JoyousSpring.init_joy_table {
--                 attribute = "EARTH",
--                 monster_type = "Rock",
--             },
--         },
--     },
-- })
-- SMODS.Joker({
--     key = "revgolem",
--     atlas = 'Misc02',
--     pos = { x = 0, y = 1 },
--     rarity = 1,
--     discovered = true,
--     blueprint_compat = false,
--     eternal_compat = true,
--     cost = 0,
--     loc_vars = function(self, info_queue, card)
--         return { vars = {} }
--     end,
--     generate_ui = JoyousSpring.generate_info_ui,
--     set_sprites = JoyousSpring.set_back_sprite,
--     config = {
--         extra = {
--             joyous_spring = JoyousSpring.init_joy_table {
--                 attribute = "EARTH",
--                 monster_type = "Rock",
--             },
--         },
--     },
-- })
-- SMODS.Joker({
--     key = "tackcrusader",
--     atlas = 'Misc02',
--     pos = { x = 2, y = 1 },
--     rarity = 1,
--     discovered = true,
--     blueprint_compat = false,
--     eternal_compat = true,
--     cost = 0,
--     loc_vars = function(self, info_queue, card)
--         return { vars = {} }
--     end,
--     generate_ui = JoyousSpring.generate_info_ui,
--     set_sprites = JoyousSpring.set_back_sprite,
--     config = {
--         extra = {
--             joyous_spring = JoyousSpring.init_joy_table {
--                 attribute = "EARTH",
--                 monster_type = "Rock",
--             },
--         },
--     },
-- })
-- SMODS.Joker({
--     key = "doki",
--     atlas = 'Misc02',
--     pos = { x = 2, y = 0 },
--     rarity = 1,
--     discovered = true,
--     blueprint_compat = false,
--     eternal_compat = true,
--     cost = 0,
--     loc_vars = function(self, info_queue, card)
--         return { vars = {} }
--     end,
--     generate_ui = JoyousSpring.generate_info_ui,
--     set_sprites = JoyousSpring.set_back_sprite,
--     config = {
--         extra = {
--             joyous_spring = JoyousSpring.init_joy_table {
--                 attribute = "EARTH",
--                 monster_type = "Rock",
--             },
--         },
--     },
-- })
-- SMODS.Joker({
--     key = "blockdragon",
--     atlas = 'Misc02',
--     pos = { x = 1, y = 0 },
--     rarity = 1,
--     discovered = true,
--     blueprint_compat = false,
--     eternal_compat = true,
--     cost = 0,
--     loc_vars = function(self, info_queue, card)
--         return { vars = {} }
--     end,
--     generate_ui = JoyousSpring.generate_info_ui,
--     set_sprites = JoyousSpring.set_back_sprite,
--     config = {
--         extra = {
--             joyous_spring = JoyousSpring.init_joy_table {
--                 attribute = "EARTH",
--                 monster_type = "Rock",
--             },
--         },
--     },
-- })
