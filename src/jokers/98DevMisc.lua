--- MISCELLANEOUS

-- Rock Band Xenoguitar
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
        return { vars = { card.ability.extra.mills, card.ability.extra.revives, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mills = 2,
            revives = 1,
            adds = 2
        },
    },

})

-- Revival Golem
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
        return { vars = { card.ability.extra.adds, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            adds = 2,
            creates = 1
        },
    },
})

-- Tackle Crusader
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
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.tributes, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mult = 1,
            tributes = 1,
            adds = 2
        },
    },
})

-- Doki Doki
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
        return { vars = { card.ability.extra.chips, 0, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            chips = 5,
            tributes = 1,
            creates = 2
        },
    },
})

-- Block Dragon
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
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }), card.ability.extra.xmult, 1, card.ability.extra.requirement, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mult = 1,
            xmult = 0.1,
            requirement = 30,
            creates = 3
        },
    },
})

-- Ghost Fairy Elfobia
SMODS.Joker({
    key = "elfobia",
    atlas = 'Misc05',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } }), card.ability.extra.increases } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
            },
            chips = 20,
            increases = 1
        },
    },
})

-- Mystical Fairy Elfuria
SMODS.Joker({
    key = "elfuria",
    atlas = 'Misc05',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } }), card.ability.extra.attaches } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
            },
            mult = 1,
            attaches = 1
        },
    },
})

-- Lindbloom
SMODS.Joker({
    key = "lindbloom",
    atlas = 'Misc05',
    pos = { x = 0, y = 1 },
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
                attribute = "EARTH",
                monster_type = "Wyrm",
            },
            xmult = 1.5
        },
    },
})

-- Genomix Fighter
SMODS.Joker({
    key = "genomix",
    atlas = 'Misc05',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                is_tuner = true,
            },
            mult = 5
        },
    },
})

-- Maximum Six
SMODS.Joker({
    key = "maxsix",
    atlas = 'Misc05',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_xmult,
            card.config.center.key .. "_xmult")
        local numerator_negative, denominator_negative = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds_negative, card.config.center.key .. "_negative")
        return { vars = { numerator_xmult, denominator_xmult, card.ability.extra.xmult, numerator_negative, denominator_negative } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Warrior",
            },
            odds_xmult = 6,
            odds_negative = 66,
            xmult = 6
        },
    },
})

-- Space-Time Police
SMODS.Joker({
    key = "stpolice",
    atlas = 'Misc05',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.returns } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
            },
            returns = 1
        },
    },
})

-- Wannabee!
SMODS.Joker({
    key = "wannabee",
    atlas = 'Misc05',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.excavates, card.ability.extra.draws } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Insect",
            },
            excavates = 5,
            draws = 1
        },
    },
})

-- Magical Merchant
SMODS.Joker({
    key = "merchant",
    atlas = 'Misc05',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { localize(card.ability.extra.suit, 'suits_plural'), colours = { G.C.SUITS[card.ability.extra.suit] } } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Insect",
                is_flip = true
            },
            suit = "Diamonds",
        },
    },
})

-- Catoblepas and the Witch of Fate
SMODS.Joker({
    key = "catoblepas",
    atlas = 'Misc05',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            card.config.center.key)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } }), numerator, denominator, card.ability.extra.banishes } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
            },
            mult = 1,
            odds = 100,
            banishes = 1
        },
    },
})

-- Couple of Aces
SMODS.Joker({
    key = "coupleofaces",
    atlas = 'Misc05',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_xmult,
            card.config.center.key .. "_xmult")
        local numerator_level, denominator_level = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_level,
            card.config.center.key .. "_level")
        local numerator_enhance, denominator_enhance = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds_enhance, card.config.center.key .. "_enhance")
        return { vars = { card.ability.extra.xmult, numerator_xmult, denominator_xmult, numerator_level, denominator_level, numerator_enhance, denominator_enhance } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Fairy",
            },
            xmult = 2,
            odds_xmult = 2,
            odds_level = 20,
            odds_enhance = 200
        },
    },
})

-- Hallohallo
SMODS.Joker({
    key = "hallo",
    atlas = 'Misc05',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.from, card.ability.extra.to } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                is_pendulum = true,
                is_tuner = true,
                is_effect = false
            },
            from = 1,
            to = 6
        },
    },
})

-- Number 67: Pair-a-Dice Smasher
SMODS.Joker({
    key = "67",
    atlas = 'Misc05',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            card.config.center.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.from, card.ability.extra.to, numerator, denominator, card.ability.extra.attach } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fairy",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_rarity = true,
                        }
                    }
                }
            },
            detach = 2,
            from = 1,
            to = 6,
            odds = 100,
            attach = 1
        },
    },
})

-- Number 85: Crazy Box
SMODS.Joker({
    key = "85",
    atlas = 'Misc05',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, card.config.center.key)
        return { vars = { card.ability.extra.detach, card.ability.extra.plus_h_size, card.ability.extra.minus_h_size, numerator, denominator, card.ability.extra.attach } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 1,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                            },
                            {
                                rarity = 1,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                            },
                        },
                    }
                }
            },
            detach = 1,
            plus_h_size = 5,
            minus_h_size = 1,
            numerator = 6,
            odds = 36,
            attach = 1
        },
    },
})
