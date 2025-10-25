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

local joy_groups = {
    {
        name = "Dragonmaid",
        properties = { { monster_archetypes = { "Dragonmaid" } } },
        extra_keys = {},
        center = "j_joy_dmaid_house"
    },
    {
        name = "LiveTwin",
        properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } },
        extra_keys = {},
        center = "j_joy_etwin_kisikil_lilla"
    },
    {
        name = "Dogmatika",
        properties = { { monster_archetypes = { "Dogmatika" } } },
        extra_keys = {},
        center = "j_joy_dogma_ecclesia"
    },
    {
        name = "Spright",
        properties = { { monster_archetypes = { "Spright" } } },
        extra_keys = {},
        center = "j_joy_spright_blue"
    },
    {
        name = "Mekk-Knight",
        properties = { { monster_archetypes = { "MekkKnight" } } },
        extra_keys = { "j_joy_mekkleg_scars" },
        center = "j_joy_mekk_blue"
    },
    {
        name = "Generaider",
        properties = { { monster_archetypes = { "Generaider" } } },
        extra_keys = {},
        center = "j_joy_generaider_boss_stage"
    },
    {
        name = "Ghoti",
        properties = { { monster_archetypes = { "Ghoti" } } },
        extra_keys = { "j_joy_fish_depths" },
        center = "j_joy_fish_deepbeyond"
    },
    {
        name = "PSY-Frame",
        properties = { { monster_archetypes = { "PSYFrame" } } },
        extra_keys = {},
        center = "j_joy_psy_omega"
    },
    {
        name = "Runick",
        properties = { { monster_archetypes = { "Runick" } } },
        extra_keys = {},
        center = "j_joy_runick_hugin"
    },
    {
        name = "Burning Abyss",
        properties = { { monster_archetypes = { "BurningAbyss" } } },
        extra_keys = { "j_joy_ba_beatrice" },
        center = "j_joy_ba_dante"
    },
    {
        name = "Labrynth",
        properties = { { monster_archetypes = { "Labrynth" } } },
        extra_keys = {},
        center = "j_joy_lab_lovely"
    },
    {
        name = "Subterror",
        properties = { { monster_archetypes = { "Subterror" } } },
        extra_keys = { "j_joy_sub_city" },
        center = "j_joy_sub_guru"
    },
    {
        name = "Eldlich",
        properties = { { monster_archetypes = { "Eldlich" } }, { monster_archetypes = { "GoldenLand" } } },
        extra_keys = {},
        center = "j_joy_eld_eldlich"
    },
    {
        name = "@Ignister",
        properties = { { monster_archetypes = { "Ignister" } } },
        extra_keys = { "j_joy_ignis_ailand" },
        center = "j_joy_ignis_arrival"
    },
    {
        name = "Solfachord",
        properties = { { monster_archetypes = { "Solfachord" } } },
        extra_keys = {},
        center = "j_joy_solfa_coolia"
    },
    {
        name = "Witchcrafter",
        properties = { { monster_archetypes = { "Witchcrafter" } } },
        extra_keys = {},
        center = "j_joy_witch_verre"
    },
    {
        name = "Shaddoll",
        properties = { { monster_archetypes = { "Shaddoll" } } },
        extra_keys = { "j_joy_shaddoll_prison" },
        center = "j_joy_shaddoll_elconstruct"
    },
    {
        name = "Paleozoic",
        properties = { { monster_archetypes = { "Paleozoic" } } },
        extra_keys = {},
        center = "j_joy_paleo_dino"
    },
    {
        name = "Invoked",
        properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } },
        extra_keys = { "j_joy_invoked_meltdown" },
        center = "j_joy_invoked_aleister"
    },
    {
        name = "Danger!",
        properties = { { monster_archetypes = { "Danger" } } },
        extra_keys = {},
        center = "j_joy_danger_tsuch"
    },
    {
        name = "Adamancipator",
        properties = { { monster_archetypes = { "Adamancipator" } } },
        extra_keys = {},
        center = "j_joy_adaman_researcher"
    },
    {
        name = "Virtual World",
        properties = { { monster_archetypes = { "VirtualWorld" } } },
        extra_keys = {},
        center = "j_joy_vw_lulu"
    },
    {
        name = "Flower Cardian",
        properties = { { monster_archetypes = { "FlowerCardian" } } },
        extra_keys = {},
        center = "j_joy_cardian_curtain"
    },
    {
        name = "Fortune Lady",
        properties = { { monster_archetypes = { "FortuneLady" } }, { monster_archetypes = { "FortuneFairy" } }, },
        extra_keys = {},
        center = "j_joy_flady_every"
    },
}

for i, data in ipairs(joy_groups) do
    local joy_desc_cards = { data.extra_keys }
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
            extra = 4,
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

-- SMODS.Booster({
--     key = "secret_pack",
--     atlas = "Booster",
--     pos = { x = 1, y = 1 },
--     discovered = true,
--     loc_vars = function(self, info_queue, card)
--         return { vars = { card.ability.choose, card.ability.extra } }
--     end,
--     config = {
--         choose = 1,
--         extra = 2
--     },
--     cost = 4,
--     weight = 1,
--     kind = "joy_secret",
--     group_key = "k_joy_booster_group",
--     joy_desc_cards = {
--         { properties = { { monster_archetypes = { "Dragonmaid" } } }, name = "k_joy_archetype" },
--     },
--     generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
--         SMODS.Booster.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
--         JoyousSpring.generate_info_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
--     end,
--     create_card = function(self, card)
--         return SMODS.create_card({
--             set = "JoyousSpring",
--             area = G.pack_cards,
--             joy_monster_properties = { {
--                 is_monster = true,
--                 exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
--                 monster_attribute = "WATER",
--             } }
--         })
--     end,
--     ease_background_colour = function(self)
--         local choices = {
--             G.C.JOY.NORMAL,
--             G.C.JOY.EFFECT
--         }
--         local color = pseudorandom_element(choices, 'JoyousSpring_booster')
--         ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
--         ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
--     end,
-- })
--#endregion
