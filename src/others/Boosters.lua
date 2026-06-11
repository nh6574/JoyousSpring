--- BOOSTERS
SMODS.Atlas({
    key = "Booster",
    path = "boosters.png",
    px = 71,
    py = 95
})

--#region Regular Boosters

SMODS.Booster({
    key = "monster_pack",
    atlas = "Booster",
    pos = { x = 0, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 2
    },
    cost = 4,
    weight = 1,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "jumbo_monster_pack",
    atlas = "Booster",
    pos = { x = 1, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 4
    },
    cost = 6,
    weight = 1,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "mega_monster_pack",
    atlas = "Booster",
    pos = { x = 2, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 2,
        extra = 4
    },
    cost = 8,
    weight = 0.25,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "extra_pack",
    atlas = "Booster",
    pos = { x = 0, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 2
    },
    cost = 6,
    weight = 0.75,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = {
                {
                    is_monster = true,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
                    exclude_main_deck = true,
                    exclude_field_spell = true
                },
                {
                    summon_type = "RITUAL"
                }
            },
            joy_monster_default = "j_joy_sauravis"
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.RITUAL,
            G.C.JOY.FUSION,
            G.C.JOY.SYNCHRO,
            G.C.JOY.XYZ,
            G.C.JOY.LINK
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.FUSION)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "jumbo_extra_pack",
    atlas = "Booster",
    pos = { x = 1, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 4
    },
    cost = 8,
    weight = 0.5,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = {
                {
                    is_monster = true,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
                    exclude_main_deck = true,
                    exclude_field_spell = true
                },
                {
                    summon_type = "RITUAL"
                }
            },
            joy_monster_default = "j_joy_sauravis"
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.RITUAL,
            G.C.JOY.FUSION,
            G.C.JOY.SYNCHRO,
            G.C.JOY.XYZ,
            G.C.JOY.LINK
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.FUSION)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "mega_extra_pack",
    atlas = "Booster",
    pos = { x = 2, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 2,
        extra = 4
    },
    cost = 10,
    weight = 0.25,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = {
                {
                    is_monster = true,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
                    exclude_main_deck = true,
                    exclude_field_spell = true
                },
                {
                    summon_type = "RITUAL"
                }
            },
            joy_monster_default = "j_joy_sauravis"
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.RITUAL,
            G.C.JOY.FUSION,
            G.C.JOY.SYNCHRO,
            G.C.JOY.XYZ,
            G.C.JOY.LINK
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.FUSION)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

--#endregion

--#region Selection Booster

SMODS.Booster({
    key = "selection_pack",
    atlas = "joy_Booster",
    pos = { x = 0, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 4,
        packs = {}
    },
    cost = 4,
    weight = 0,
    kind = "joy_selection",
    group_key = "k_joy_selection_pack_group",
    create_card = function(self, card)
        JoyousSpring.in_pack_selection = true
        local pack = get_pack("joy_selection_booster", "joy_secret")
        local i = 1
        while (not pack or card.ability.packs[pack.key]) do
            pack = get_pack("joy_selection_booster_reroll" .. i, "joy_secret")
            i = i + 1
        end
        JoyousSpring.in_pack_selection = nil
        card.ability.packs[pack.key] = true
        local booster = SMODS.create_card({
            key = (pack or { key = "p_joy_secret_pack_1" }).key,
            area = G.pack_cards,
        })
        booster.ability.joy_modify_cost = { cost = 0 }
        booster:set_cost()
        return booster
    end,
    ease_background_colour = function(self)
        if not G.GAME.joy_enter_selection_pack then
            G.GAME.joy_enter_selection_pack = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            JoyousSpring.INFO_MENU.open("secret_pack", nil, true)
                            return true
                        end
                    }))
                    return true
                end
            }))
        end
        ease_colour(G.C.DYN_UI.MAIN, G.C.JOY.SPELL)
        ease_background_colour({ new_colour = G.C.JOY.SPELL, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

JoyousSpring.secret_booster = SMODS.Booster:extend {
    atlas = "joy_Booster",
    pos = { x = 1, y = 1 },
    discovered = true,
    class_prefix = 'p_secret_pack',
    config = {
        choose = 1,
        extra = 4,
    },
    joy_secret = {
    },
    cost = 4,
    kind = "joy_secret",
    group_key = "k_joy_booster_group",
    generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
        SMODS.Booster.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
        JoyousSpring.generate_info_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    end,
    inject = function(self, i)
        SMODS.Booster.inject(self, i)
        local data = self.joy_secret
        local joy_desc_cards = { copy_table(data.extra_keys) or {} }
        for _, property in ipairs(data.properties or {}) do
            property.from_shop = true
        end
        joy_desc_cards[1].properties = copy_table(data.properties)
        joy_desc_cards[1].name = "k_booster_related"
        self.joy_desc_cards = joy_desc_cards
    end,
    create_card = function(self, card)
        local main_properties = self.joy_secret.properties
        local properties = {}
        for _, key in ipairs(self.joy_secret.extra_keys or {}) do
            properties[#properties + 1] = {
                key = key,
                exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil
            }
        end
        for _, main_property in ipairs(main_properties or {}) do
            main_property.exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil
            properties[#properties + 1] = main_property
        end
        return {
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = properties,
            skip_materialize = true
        }
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring_booster')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
    get_weight = function()
        return JoyousSpring.in_pack_selection and 1 or 0
    end
}

JoyousSpring.secret_booster {
    key = "fusion",
    pos = { x = 0, y = 0 },
    joy_secret = {
        properties = { { summon_type = "FUSION" } },
        extra_keys = { "j_joy_fusiongate", "j_joy_invoked_meltdown", "j_joy_invoked_aleister", "j_joy_invoked_madness", "j_joy_shaddoll_prison", "j_joy_shaddoll_construct", "j_joy_shaddoll_core" },
        center = "j_joy_garura"
    }
}

JoyousSpring.secret_booster {
    key = "ritual",
    pos = { x = 0, y = 0 },
    joy_secret = {
        properties = { { summon_type = "RITUAL" }, { monster_archetypes = { "Dogmatika" } }, { monster_archetypes = { "Drytron" } }, { monster_archetypes = { "VoicelessVoice" } } },
        extra_keys = { "j_joy_igniter", "j_joy_miradora", "j_joy_eotw_breaking" },
        center = "j_joy_sauravis"
    }
}

JoyousSpring.secret_booster {
    key = "synchro",
    pos = { x = 0, y = 0 },
    joy_secret = {
        properties = { { summon_type = "SYNCHRO" }, { monster_archetypes = { "CenturIon" } } },
        extra_keys = { "j_joy_wasp_dart", "j_joy_wasp_twinbow", "j_joy_wasp_arbalest", "j_joy_wasp_rapier" },
        center = "j_joy_afd"
    }
}

JoyousSpring.secret_booster {
    key = "xyz",
    pos = { x = 0, y = 0 },
    joy_secret = {
        properties = { { summon_type = "XYZ" }, { monster_archetypes = { "Zoodiac" } } },
        extra_keys = { "j_joy_elfuria", "j_joy_xyzterritory", "j_joy_xyzoverride" },
        center = "j_joy_zeus"
    }
}

JoyousSpring.secret_booster {
    key = "link",
    pos = { x = 0, y = 0 },
    joy_secret = {
        properties = { { summon_type = "LINK" } },
        extra_keys = { "j_joy_ignis_gatchiri", "j_joy_ignis_gussari", "j_joy_ignis_danmari", "j_joy_ignis_linkslayer",
            "j_joy_formud", "j_joy_crukra" },
        center = "j_joy_apollousa"
    }
}

JoyousSpring.secret_booster {
    key = "pendulum",
    joy_secret = {
        properties = { { is_pendulum = true } },
        extra_keys = {},
        center = "j_joy_moissa"
    }
}

JoyousSpring.secret_booster {
    key = "tuner",
    pos = { x = 0, y = 0 },
    joy_secret = {
        properties = { { is_tuner = true } },
        extra_keys = {},
        center = "j_joy_ringowurm"
    }
}

JoyousSpring.secret_booster {
    key = "trap",
    joy_secret = {
        properties = { { is_trap = true }, { monster_archetypes = { "Paleozoic" } }, { monster_archetypes = { "Eldlich" } } },
        extra_keys = { "j_joy_heavenlyprison", "j_joy_mask" },
        center = "j_joy_tiki_curse"
    }
}

JoyousSpring.secret_booster {
    key = "flip",
    joy_secret = {
        properties = { { is_flip = true } },
        extra_keys = {},
        center = "j_joy_darkcat"
    }
}

JoyousSpring.secret_booster {
    key = "field_spell",
    joy_secret = {
        properties = { { is_field_spell = true } },
        extra_keys = { "j_joy_afd", "j_joy_mof", "j_joy_mimi_cerberus", "j_joy_artifact_chak" },
        center = "j_joy_chickengame"
    }
}

JoyousSpring.secret_booster {
    key = "probability",
    joy_secret = {
        properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } },
        extra_keys = {
            "j_joy_mekk_green", "j_joy_lab_lovely", "j_joy_lab_labyrinth", "j_joy_ignis_pegasus",
            "j_joy_elfobia", "j_joy_maxsix", "j_joy_catoblepas", "j_joy_coupleofaces", "j_joy_hallo", "j_joy_85",
            "j_joy_67", "j_joy_futurevisions"
        },
        center = "j_joy_flady_every"
    }
}

JoyousSpring.secret_booster {
    key = "excavate",
    joy_secret = {
        properties = { { monster_archetypes = { "Adamancipator" } }, { monster_archetypes = { "FlowerCardian" } } },
        extra_keys = { "j_joy_tackcrusader", "j_joy_doki", "j_joy_blockdragon", "j_joy_wannabee", "j_joy_merchant", "j_joy_revgolem", "j_joy_purr_purrely", "j_joy_purr_purrelyly" },
        center = "j_joy_adaman_researcher"
    }
}

JoyousSpring.secret_booster {
    key = "generate",
    joy_secret = {
        properties = { { monster_archetypes = { "Dragonmaid" } }, { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Generaider" } }, { monster_archetypes = { "SkyStriker" } }, },
        extra_keys = { "j_joy_invoked_meltdown", "j_joy_ipmasq", "j_joy_dracotail_mululu" },
        center = "j_joy_ipmasq"
    }
}

JoyousSpring.secret_booster {
    key = "tarot",
    joy_secret = {
        properties = { { monster_archetypes = { "Runick" } }, { monster_archetypes = { "Witchcrafter" } }, { monster_archetypes = { "WhiteForest" } } },
        extra_keys = { "j_joy_psy_delta", "j_joy_ignis_pikari", "j_joy_solfa_harmonia", "j_joy_shaddoll_hedgehog" },
        center = "j_joy_witch_verre"
    }
}

JoyousSpring.secret_booster {
    key = "planet",
    joy_secret = {
        properties = { { monster_archetypes = { "SkyStriker" } }, { monster_archetypes = { "WhiteForest" } }, { monster_archetypes = { "VirtualWorld" } } },
        extra_keys = { "j_joy_psy_epsilon", "j_joy_flady_wind", "j_joy_zoo_bunny", "j_joy_stormshooter", "j_joy_foucault" },
        center = "j_joy_striker_raye"
    }
}

JoyousSpring.secret_booster {
    key = "poker_hand",
    joy_secret = {
        properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "VirtualWorld" } }, { monster_archetypes = { "Solfachord" } }, { monster_archetypes = { "Purrely" } } },
        extra_keys = { "j_joy_psy_epsilon", "j_joy_flady_wind", "j_joy_stormshooter", "j_joy_foucault", "j_joy_elfobia",
            "j_joy_elfuria", "j_joy_lindbloom", "j_joy_genomix"
        },
        center = "j_joy_stormshooter"
    }
}

JoyousSpring.secret_booster {
    key = "playing_cards",
    joy_secret = {
        properties = { { monster_archetypes = { "Dracotail" } }, { monster_archetypes = { "TimeThief" } } },
        extra_keys = { "j_joy_revgolem", "j_joy_tackcrusader", "j_joy_coupleofaces" },
        center = "j_joy_dracotail_arthalion"
    }
}

JoyousSpring.secret_booster {
    key = "flipping",
    joy_secret = {
        properties = { { monster_archetypes = { "Labyrinth" } }, { monster_archetypes = { "Subterror" } }, { monster_archetypes = { "Shaddoll" } } },
        extra_keys = { "j_joy_sub_city", "j_joy_procession", "j_joy_tackcrusader", "j_joy_mimi_master", "j_joy_mimi_dungeon" },
        center = "j_joy_sub_city"
    }
}

JoyousSpring.secret_booster {
    key = "fiend",
    joy_secret = {
        properties = { { monster_archetypes = { "BurningAbyss" } }, { monster_type = "Fiend" }, },
        extra_keys = {},
        center = "j_joy_rhino"
    }
}

JoyousSpring.secret_booster {
    key = "cyberse",
    joy_secret = {
        properties = { { monster_archetypes = { "Ignister" } }, { monster_type = "Cyberse" }, },
        extra_keys = { "j_joy_ignis_ailand" },
        center = "j_joy_backup"
    }
}

JoyousSpring.secret_booster {
    key = "insect",
    joy_secret = {
        properties = { { monster_type = "Insect" }, },
        extra_keys = {},
        center = "j_joy_wasp_sting"
    }
}

JoyousSpring.secret_booster {
    key = "uncommon",
    joy_secret = {
        properties = { { rarity = 2, is_monster = true }, },
        extra_keys = {},
        center = "j_joy_spright_blue"
    }
}

JoyousSpring.secret_booster {
    key = "column",
    joy_secret = {
        properties = { { monster_archetypes = { "MekkKnight" } }, { monster_archetypes = { "SForce" } } },
        extra_keys = { "j_joy_ghostbird", "j_joy_stormshooter", "j_joy_tiamaton", "j_joy_disablaster" },
        center = "j_joy_mekk_blue"
    }
}

JoyousSpring.secret_booster {
    key = "banish",
    joy_secret = {
        properties = { { monster_archetypes = { "PSYFrame" } }, { monster_archetypes = { "Ghoti" } }, { monster_archetypes = { "SForce" } } },
        extra_keys = { "j_joy_fish_depths", "j_joy_mekk_purple", "j_joy_runick_sleipnir", "j_joy_ba_farfa",
            "j_joy_sub_uma", "j_joy_witch_potterie", "j_joy_shaddoll_ariel", "j_joy_paleo_dino", "j_joy_solfa_beautia",
            "j_joy_vw_nyannyan", "j_joy_flady_light", "j_joy_grenmaju", "j_joy_eater", "j_joy_beautunaful",
            "j_joy_leaffish", "j_joy_stpolice", "j_joy_spknight", "j_joy_progleo", "j_joy_futurevisions", "j_joy_artifact_lancea", "j_joy_wpball"
        },
        center = "j_joy_spknight"
    }
}

JoyousSpring.secret_booster {
    key = "drawback",
    joy_secret = {
        properties = { { monster_archetypes = { "Danger" } }, { monster_archetypes = { "HazyFlame" } } },
        extra_keys = { "j_joy_boarder", "j_joy_ghostbird", "j_joy_tiamaton", "j_joy_eccentrick", "j_joy_bishbaalkin",
            "j_joy_yokai_ash", "j_joy_yokai_belle", "j_joy_yokai_ogre", "j_joy_yokai_reaper", "j_joy_yokai_sister",
            "j_joy_yokai_mourner", "j_joy_artifact_aegis", "j_joy_dracotail_urgula", "j_joy_dracotail_pan", "j_joy_hades",
            "j_joy_necrovalley", "j_joy_helios", "j_joy_heliosduo", "j_joy_heliostrice", },
        center = "j_joy_boarder"
    }
}

JoyousSpring.secret_booster {
    key = "score",
    joy_secret = {
        extra_keys = { "j_joy_dmaid_kitchen", "j_joy_dmaid_parlor", "j_joy_dmaid_nurse", "j_joy_dmaid_laundry",
            "j_joy_ltwin_lilla", "j_joy_ltwin_kisikil", "j_joy_etwin_kisikil", "j_joy_etwin_lilla",
            "j_joy_etwin_kisikil_lilla", "j_joy_etwin_sunny", "j_joy_dogma_ecclesia", "j_joy_dogma_fleur",
            "j_joy_dogma_theo", "j_joy_spright_carrot", "j_joy_spright_red", "j_joy_spright_pixies", "j_joy_mekk_red",
            "j_joy_mekk_orange", "j_joy_mekk_blue", "j_joy_mekkleg_scars", "j_joy_mekk_morningstar", "j_joy_fish_paces",
            "j_joy_fish_shif", "j_joy_psy_alpha", "j_joy_psy_beta", "j_joy_psy_gamma", "j_joy_ba_barbar",
            "j_joy_ba_cagna", "j_joy_ba_cir", "j_joy_ba_draghig", "j_joy_ba_graff", "j_joy_lab_ariane",
            "j_joy_lab_arianna", "j_joy_ignis_achichi", "j_joy_ignis_doshin", "j_joy_ignis_gatchiri",
            "j_joy_ignis_gussari", "j_joy_solfa_cutia", "j_joy_solfa_dreamia", "j_joy_solfa_eliteia",
            "j_joy_solfa_fancia", "j_joy_solfa_gracia", "j_joy_solfa_angelia", "j_joy_solfa_beautia",
            "j_joy_solfa_coolia", "j_joy_witch_genni", "j_joy_flady_fire", "j_joy_flady_wind", "j_joy_flady_water",
            "j_joy_flady_dark", "j_joy_flady_earth", "j_joy_flady_past", "j_joy_grenmaju", "j_joy_wizard",
            "j_joy_darkcat", "j_joy_dekoichi", "j_joy_searchlight", "j_joy_sternmystic", "j_joy_mof",
            "j_joy_lindbloom", "j_joy_quantumcat", "j_joy_tiki_curse", "j_joy_tiki_soul", "j_joy_apophis",
            "j_joy_zany", "j_joy_metrognome", "j_joy_bozu", "j_joy_disablaster", "j_joy_apollousa",
            "j_joy_paleo_hallu", "j_joy_paleo_eldonia", "j_joy_mimi_archfiend", "j_joy_mimi_armor", "j_joy_artifact_cadu", "j_joy_hazy_grif", "j_joy_sforce_digamma", "j_joy_sforce_razor", "j_joy_sforce_dog", "j_joy_sforce_gravitino", "j_joy_sforce_platina", "j_joy_sforce_lapcewell", "j_joy_dm_dmg", "j_joy_necrovalley", "j_joy_helios", "j_joy_heliosduo", "j_joy_heliostrice", "j_joy_nibiru"
        },
        center = "j_joy_fish_shif"
    }
}

JoyousSpring.secret_booster {
    key = "acorn",
    joy_secret = {
        properties = { { monster_archetypes = { "Ghoti" } }, },
        extra_keys = {
            "j_joy_dmaid_lady", "j_joy_dmaid_house", "j_joy_etwin_sunny", "j_joy_ltwin_channel", "j_joy_lab_lady",
            "j_joy_paleo_hallu", "j_joy_paleo_eldonia", "j_joy_paleo_canadia", "j_joy_paleo_lean",
            "j_joy_quantumcat", "j_joy_tiki_curse", "j_joy_tiki_soul", "j_joy_apophis",
            "j_joy_mekkcrus_avramax", "j_joy_sub_defender", "j_joy_sub_guru", "j_joy_sub_speleo", "j_joy_sub_befiendess",
            "j_joy_sub_city", "j_joy_shaddoll_apka", "j_joy_shaddoll_shekh", "j_joy_invoked_meltdown", "j_joy_apollousa",
            "j_joy_beyond", "j_joy_exceed", "j_joy_linguriboh", "j_joy_linkuriboh", "j_joy_ignis_kiruku", "j_joy_raster",
            "j_joy_xyzterritory", "j_joy_midbreaker", "j_joy_sauravis", "j_joy_generaider_loptr",
            "j_joy_generaider_boss_stage", "j_joy_sforce_orrafist"
        },
        center = "j_joy_linkuriboh"
    }
}

JoyousSpring.secret_booster {
    key = "sforce",
    joy_secret = {
        properties = { { monster_archetypes = { "SForce" } }, { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } }, { monster_archetypes = { "TimeThief" } }, { monster_archetypes = { "PSYFrame" } } },
        extra_keys = { "j_joy_ipmasq", "j_joy_spknight", "j_joy_wpball" },
        center = "j_joy_sforce_justify"
    }
}

JoyousSpring.secret_booster {
    key = "opponent",
    joy_secret = {
        properties = { { monster_archetypes = { "Mimighoul" } }, { monster_archetypes = { "Artifact" } }, },
        extra_keys = {},
        center = "j_joy_artifact_scythe"
    }
}


JoyousSpring.shared_booster_sprite = {}

SMODS.DrawStep {
    key = 'joy_booster',
    order = 60,
    func = function(card)
        if card.config.center.joy_secret then
            local center_key = card.config.center.joy_secret.center
            if not JoyousSpring.shared_booster_sprite[center_key] then
                local center = G.P_CENTERS[center_key]
                JoyousSpring.shared_booster_sprite[center_key] = Sprite(0, 0, G.CARD_W * 0.5, G.CARD_H * 0.5,
                    G.ASSET_ATLAS[center.atlas], center.pos)

                JoyousSpring.shared_booster_sprite[center_key].states.hover.can = card
                JoyousSpring.shared_booster_sprite[center_key].states.click.can = card
            end
            local scale_mod = -0.3 + 0.02 * math.sin(1.8 * G.TIMERS.REAL) +
                0.00 * math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL)) * math.pi * 14) *
                (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 3
            local rotate_mod = 0.05 * math.sin(1.219 * G.TIMERS.REAL) +
                0.00 * math.sin((G.TIMERS.REAL) * math.pi * 5) * (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 2

            JoyousSpring.shared_booster_sprite[center_key].role.draw_major = card
            JoyousSpring.shared_booster_sprite[center_key]:draw_shader('dissolve', nil, nil, nil, card.children.center,
                scale_mod, rotate_mod)
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}
