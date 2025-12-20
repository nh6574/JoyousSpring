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
    atlas = "Booster",
    pos = { x = 0, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 4
    },
    cost = 4,
    weight = 0,
    kind = "joy_selection",
    group_key = "k_joy_selection_pack_group",
    create_card = function(self, card)
        JoyousSpring.in_pack_selection = true
        local pack = get_pack("joy_selection_booster", "joy_secret")
        JoyousSpring.in_pack_selection = nil
        return SMODS.create_card({
            key = (pack or {}).key,
            area = G.pack_cards,
        })
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.L_BLACK)
        ease_background_colour({ new_colour = G.C.L_BLACK, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

-- TODO: do this properly

---@type {name:string, properties:material_properties[], extra_keys:string[], center:string}[]
local joy_groups = {
    {
        name = "Fusion",
        properties = { { summon_type = "FUSION" } },
        extra_keys = { "j_joy_fusiongate", "j_joy_invoked_meltdown", "j_joy_invoked_aleister", "j_joy_invoked_madness", "j_joy_shaddoll_prison", "j_joy_shaddoll_construct", "j_joy_shaddoll_core" },
        center = "j_joy_garura"
    },
    {
        name = "Ritual",
        properties = { { summon_type = "RITUAL" }, { monster_archetypes = { "Dogmatika" } } },
        extra_keys = { "j_joy_igniter", "j_joy_miradora" },
        center = "j_joy_sauravis"
    },
    {
        name = "Synchro",
        properties = { { summon_type = "SYNCHRO" } },
        extra_keys = {},
        center = "j_joy_afd"
    },
    {
        name = "Xyz",
        properties = { { summon_type = "XYZ" } },
        extra_keys = { "j_joy_elfuria", "j_joy_xyzterritory", "j_joy_xyzoverride" },
        center = "j_joy_zeus"
    },
    {
        name = "Link",
        properties = { { summon_type = "LINK" } },
        extra_keys = { "j_joy_ignis_gatchiri", "j_joy_ignis_gussari", "j_joy_ignis_danmari", "j_joy_ignis_linkslayer",
            "j_joy_formud", "j_joy_crukra" },
        center = "j_joy_apollousa"
    },
    {
        name = "Pendulum",
        properties = { { is_pendulum = true } },
        extra_keys = {},
        center = "j_joy_moissa"
    },
    {
        name = "Tuner",
        properties = { { is_tuner = true } },
        extra_keys = {},
        center = "j_joy_ringowurm"
    },
    {
        name = "Trap",
        properties = { { is_trap = true }, { monster_archetypes = { "Paleozoic" } }, { monster_archetypes = { "Eldlich" } } },
        extra_keys = { "j_joy_heavenlyprison", "j_joy_mask" },
        center = "j_joy_tiki_curse"
    },
    {
        name = "Flip",
        properties = { { is_flip = true } },
        extra_keys = {},
        center = "j_joy_darkcat"
    },
    {
        name = "Field Spell",
        properties = { { is_field_spell = true } },
        extra_keys = { "j_joy_afd", "j_joy_mof" },
        center = "j_joy_chickengame"
    },
    {
        name = "Probability",
        properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } } },
        extra_keys = {
            "j_joy_mekk_green", "j_joy_lab_lovely", "j_joy_lab_labyrinth", "j_joy_ignis_pegasus",
            "j_joy_elfobia", "j_joy_maxsix", "j_joy_catoblepas", "j_joy_coupleofaces", "j_joy_hallo", "j_joy_85",
            "j_joy_67", "j_joy_futurevisions"
        },
        center = "j_joy_flady_every"
    },
    {
        name = "Excavate",
        properties = { { monster_archetypes = { "Adamancipator" } }, { monster_archetypes = { "FlowerCardian" } } },
        extra_keys = { "j_joy_tackcrusader", "j_joy_doki", "j_joy_blockdragon", "j_joy_wannabee", "j_joy_merchant", "j_joy_revgolem" },
        center = "j_joy_adaman_researcher"
    },
    {
        name = "Transform and Generate",
        properties = { { monster_archetypes = { "Dragonmaid" } }, { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Generaider" } } },
        extra_keys = { "j_joy_invoked_meltdown", "j_joy_ipmasq" },
        center = "j_joy_ipmasq"
    },
    {
        name = "Tarot Support",
        properties = { { monster_archetypes = { "Runick" } }, { monster_archetypes = { "Witchcrafter" } } },
        extra_keys = { "j_joy_psy_delta", "j_joy_ignis_pikari", "j_joy_solfa_harmonia", "j_joy_shaddoll_hedgehog" },
        center = "j_joy_witch_verre"
    },
    {
        name = "Poker Hand Support",
        properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "VirtualWorld" } }, { monster_archetypes = { "Solfachord" } } },
        extra_keys = { "j_joy_psy_epsilon", "j_joy_flady_wind", "j_joy_stormshooter", "j_joy_foucault", "j_joy_elfobia",
            "j_joy_elfuria", "j_joy_lindbloom", "j_joy_genomix"
        },
        center = "j_joy_stormshooter"
    },
    {
        name = "Flip Support",
        properties = { { monster_archetypes = { "Labyrinth" } }, { monster_archetypes = { "Subterror" } }, { monster_archetypes = { "Shaddoll" } } },
        extra_keys = { "j_joy_sub_city", "j_joy_procession", "j_joy_tackcrusader", "j_joy_foucault" },
        center = "j_joy_sub_city"
    },
    {
        name = "Fiend Support",
        properties = { { monster_archetypes = { "Ignister" } }, { monster_type = "Fiend" }, },
        extra_keys = { "j_joy_ltwin_lilla", "j_joy_ltwin_kisikil" },
        center = "j_joy_rhino"
    },
    {
        name = "Cyberse Support",
        properties = { { monster_archetypes = { "BurningAbyss" } }, { monster_type = "Cyberse" }, },
        extra_keys = { "j_joy_ignis_ailand", "j_joy_ltwin_kisikil" },
        center = "j_joy_backup"
    },
    {
        name = "Banish Support",
        properties = { { monster_archetypes = { "PSYFrame" } }, { monster_archetypes = { "Ghoti" } }, },
        extra_keys = { "j_joy_fish_depths", "j_joy_mekk_purple", "j_joy_runick_sleipnir", "j_joy_ba_farfa",
            "j_joy_sub_uma", "j_joy_witch_potterie", "j_joy_shaddoll_ariel", "j_joy_paleo_dino", "j_joy_solfa_beautia",
            "j_joy_vw_nyannyan", "j_joy_flady_light", "j_joy_grenmaju", "j_joy_eater", "j_joy_beautunaful",
            "j_joy_leaffish", "j_joy_stpolice", "j_joy_spknight", "j_joy_progleo", "j_joy_futurevisions"
        },
        center = "j_joy_spknight"
    },
    {
        name = "Digital and Psychic",
        properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } }, { monster_archetypes = { "Spright" } }, { monster_archetypes = { "MekkKnight" } } },
        extra_keys = { "j_joy_mekkleg_scars", },
        center = "j_joy_spknight"
    },
    {
        name = "Drawback and destruction",
        properties = { { monster_archetypes = { "Danger" } } },
        extra_keys = { "j_joy_boarder", "j_joy_ghostbird", "j_joy_tiamaton", "j_joy_eccentrick", "j_joy_bishbaalkin",
            "j_joy_yokai_ash", "j_joy_yokai_belle", "j_joy_yokai_ogre", "j_joy_yokai_reaper", "j_joy_yokai_sister",
            "j_joy_yokai_mourner" },
        center = "j_joy_boarder"
    },
    {
        name = "Score Helper",
        properties = {},
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
            "j_joy_paleo_hallu", "j_joy_paleo_eldonia"
        },
        center = "j_joy_fish_shif"
    },
    {
        name = "Acorn Counter",
        properties = { { monster_archetypes = { "Ghoti" } }, },
        extra_keys = {
            "j_joy_dmaid_lady", "j_joy_dmaid_house", "j_joy_etwin_sunny", "j_joy_ltwin_channel", "j_joy_lab_lady",
            "j_joy_paleo_hallu", "j_joy_paleo_eldonia", "j_joy_paleo_canadia", "j_joy_paleo_lean",
            "j_joy_quantumcat", "j_joy_tiki_curse", "j_joy_tiki_soul", "j_joy_apophis",
            "j_joy_mekkcrus_avramax", "j_joy_sub_defender", "j_joy_sub_guru", "j_joy_sub_speleo", "j_joy_sub_befiendess",
            "j_joy_sub_city", "j_joy_shaddoll_apka", "j_joy_shaddoll_shekh", "j_joy_invoked_meltdown", "j_joy_apollousa",
            "j_joy_beyond", "j_joy_exceed", "j_joy_linguriboh", "j_joy_linkuriboh", "j_joy_ignis_kiruku", "j_joy_raster",
            "j_joy_xyzterritory", "j_joy_midbreaker", "j_joy_sauravis", "j_joy_generaider_loptr",
            "j_joy_generaider_boss_stage"
        },
        center = "j_joy_linkuriboh"
    },
}

for i, data in ipairs(joy_groups) do
    local joy_desc_cards = { data.extra_keys }
    for _, property in ipairs(data.properties) do
        property.from_shop = true
    end
    joy_desc_cards[1].properties = data.properties
    joy_desc_cards[1].name = "k_booster_related"

    SMODS.Booster({
        key = "secret_pack" .. i,
        atlas = "Booster",
        pos = { x = 1, y = 1 },
        discovered = true,
        loc_vars = function(self, info_queue, card)
            return {
                vars = { card.ability.choose, card.ability.extra, card.ability.joy_secret.name },
                key =
                "p_joy_secret_pack"
            }
        end,
        config = {
            choose = 1,
            extra = 3,
            joy_secret = {
                name = data.name,
                properties = data.properties,
                extra_keys = data.extra_keys,
                center = data.center
            }
        },
        cost = 4,
        kind = "joy_secret",
        group_key = "k_joy_booster_group",
        joy_desc_cards = joy_desc_cards,
        generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
            SMODS.Booster.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
            JoyousSpring.generate_info_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
        end,
        create_card = function(self, card)
            local main_properties = card.ability.joy_secret.properties
            local properties = {}
            for _, key in ipairs(card.ability.joy_secret.extra_keys) do
                properties[#properties + 1] = {
                    key = key,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil
                }
            end
            for _, main_property in ipairs(main_properties) do
                main_property.exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil
                properties[#properties + 1] = main_property
            end
            return SMODS.create_card({
                set = "JoyousSpring",
                area = G.pack_cards,
                joy_monster_properties = properties
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
        get_weight = function()
            return JoyousSpring.in_pack_selection and 1 or 0
        end
    })
end

JoyousSpring.shared_booster_sprite = {} -- I probably won't use soul sprites for this later so I'll remove this

SMODS.DrawStep {
    key = 'joy_booster',
    order = 60,
    func = function(card)
        if card.config.center.config.joy_secret then
            local center_key = card.config.center.config.joy_secret.center
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
