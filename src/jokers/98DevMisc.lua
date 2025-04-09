--- MISCELLANEOUS

--- 0.7.0

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
            chips = 25,
            mult = 5,
            current_chips = 0,
            current_mult = 0,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                card.ability.extra.current_chips = card.ability.extra.current_chips +
                    card.ability.extra.chips * #JoyousSpring.extra_deck_area.cards
                card.ability.extra.current_mult = card.ability.extra.current_mult +
                    card.ability.extra.mult *
                    math.max(0, JoyousSpring.extra_deck_area.config.card_limit - #JoyousSpring.extra_deck_area.cards)
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips,
                    mult = card.ability.extra.current_mult
                }
            end
        end
    end,
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
