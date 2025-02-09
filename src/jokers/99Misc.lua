--- MISCELLANEOUS
SMODS.Atlas({
    key = "joy_Misc01",
    path = "99Misc01.png",
    px = 71,
    py = 95
})

--#region Effect

-- Inspector Boarder

SMODS.Joker({
    key = "boarder",
    atlas = 'Misc01',
    pos = { x = 0, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 0 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = {
                is_main_deck = true,
                summon_type = "NORMAL",
                is_effect = true,
                attribute = "LIGHT",
                monster_type = "Machine",
                monster_archetypes = {},
            },
            xmult = 1
        },
    },
})

--#endregion

--#region Pendulum

-- Archfiend Eccentrick

SMODS.Joker({
    key = "eccentrick",
    atlas = 'Misc01',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.base_mult, card.ability.extra.mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = {
                is_main_deck = true,
                summon_type = "NORMAL",
                is_effect = true,
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["Archfiend"] = true },
            },
            base_mult = 1,
            mult = 0
        },
    },
})

--#endregion

--#region Ritual

-- Sauravis, the Ancient and Ascended

SMODS.Joker({
    key = "sauravis",
    atlas = 'Misc01',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = {
                is_main_deck = true,
                summon_type = "RITUAL",
                is_effect = true,
                attribute = "LIGHT",
                monster_type = "Dragon",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {},
                            {},
                        }
                    }
                },
            },
        },
    },
})

--#endregion

--#region Fusion

-- Mudragon of the Swamp

SMODS.Joker({
    key = "mudragon",
    atlas = 'Misc01',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = {
                is_main_deck = false,
                summon_type = "FUSION",
                is_effect = true,
                is_all_attributes = true,
                is_all_materials = { "FUSION" },
                attribute = "FIRE",
                monster_type = "Dragon",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            {},
                            {},
                        },
                        restrictions = {
                            different_rarities = true
                        }
                    }
                },
            },
        },
    },
})



-- Garura, Wings of Resonant Life

SMODS.Joker({
    key = "garura",
    atlas = 'Misc01',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, card.ability.extra.h_size_gain } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = {
                is_main_deck = false,
                summon_type = "FUSION",
                is_effect = true,
                attribute = "DARK",
                monster_type = "Winged Beast",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            {},
                            {},
                        },
                        restrictions = {
                            same_rarity = true,
                            different_names = true
                        }
                    }
                },
            },
            h_size = 2,
            h_size_gain = 1
        },
    },
})

--#endregion

--#region Link

-- Apollousa, Bow of the Goddess

SMODS.Joker({
    key = "apollousa",
    atlas = 'Misc01',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips_reduction, 0 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = {
                is_main_deck = false,
                summon_type = "LINK",
                is_effect = true,
                attribute = "WIND",
                monster_type = "Fairy",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            {},
                        },
                        restrictions = {
                            different_names = true
                        }
                    }
                },
            },
            chips = 80,
            chips_reduction = 80
        },
    },
})

--#endregion
