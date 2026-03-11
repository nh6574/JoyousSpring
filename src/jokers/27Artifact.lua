--- ARTIFACT
SMODS.Atlas({
    key = "artifact",
    path = "27Artifact.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "artifact_opp",
    path = "27Artifact_opp.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
})

-- Artifact Achilleshield
SMODS.Joker({
    key = "artifact_achil",
    atlas = 'artifact',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_archfiend",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
            },
            xmult = 5,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_achil",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 0 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_achil",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Aegis
SMODS.Joker({
    key = "artifact_aegis",
    atlas = 'artifact',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_aegis",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
            },
            xmult = 0.1,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_aegis",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 1 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_aegis",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Beagalltach
SMODS.Joker({
    key = "artifact_beaga",
    atlas = 'artifact',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_beaga",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_beaga",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 2 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_beaga",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
}

-- Artifact Caduceus
SMODS.Joker({
    key = "artifact_cadu",
    atlas = 'artifact',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_cadu",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            mult = 5,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_cadu",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 3 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_cadu",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            h_size = 1
        },
    },
}

-- Artifact Chakram
SMODS.Joker({
    key = "artifact_chak",
    atlas = 'artifact',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_chak",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            chips = 25,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_chak",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 4 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_chak",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
}

-- Artifact Failnaught
SMODS.Joker({
    key = "artifact_fail",
    atlas = 'artifact',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_fail",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            chips = 25,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_fail",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 7 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_fail",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
}

-- Artifact Labrys
SMODS.Joker({
    key = "artifact_labrys",
    atlas = 'artifact',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_labrys",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xmult = 0.1,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_labrys",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 8 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_labrys",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
}

-- Artifact Lancea
SMODS.Joker({
    key = "artifact_lancea",
    atlas = 'artifact',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_lancea",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            mult = 5,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_lancea",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 9 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_lancea",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Mjollnir
SMODS.Joker({
    key = "artifact_mjol",
    atlas = 'artifact',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_mjol",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            mult = 5,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_mjol",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 10 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_mjol",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            revives = 1
        },
    },
}

-- Artifact Moralltach
SMODS.Joker({
    key = "artifact_morall",
    atlas = 'artifact',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, 1, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_morall",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xchips = 0.2,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_morall",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 11 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_morall",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            adds = 1
        },
    },
}

-- Artifact Scythe
SMODS.Joker({
    key = "artifact_scythe",
    atlas = 'artifact',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_scythe",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xmult = 0.1,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_scythe",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 12 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_scythe",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Vajra
SMODS.Joker({
    key = "artifact_vajra",
    atlas = 'artifact',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_vajra",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xchips = 1.2,
            creates = 1
        },
    },
})

JoyousSpring.OpponentCard {
    key = "artifact_vajra",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 13 },
    set_sprites = JoyousSpring.set_back_sprite,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_vajra",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Durendal
SMODS.Joker({
    key = "artifact_durendal",
    atlas = 'artifact',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attach, card.ability.extra.detach, card.ability.extra.draw, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            attach = 1,
            detach = 2,
            draw = 1,
            increases = 1
        },
    },
})

-- Artifact Dagda
SMODS.Joker({
    key = "artifact_dagda",
    atlas = 'artifact',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            { monster_archetypes = { "Artifact" } },
                        },
                    }
                }
            },
            creates = 1
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "artifact" },
    label = "k_joy_archetype_artifact"
}
