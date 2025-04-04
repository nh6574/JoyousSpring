--- MISCELLANEOUS
SMODS.Atlas({
    key = "joy_Misc03",
    path = "99Misc03.png",
    px = 71,
    py = 95
})

-- PenduLuMoon
SMODS.Joker({
    key = "pendulumoon",
    atlas = 'Misc03',
    pos = { x = 3, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revives, card.ability.extra.mills } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = {}
            },
            revives = 1,
            mills = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                local choices = JoyousSpring.get_materials_in_collection({ { is_pendulum = true } })

                for i = 1, card.ability.extra.mills do
                    JoyousSpring.send_to_graveyard(pseudorandom_element(choices, pseudoseed("j_joy_pendulumoon")))
                end
                return { message = localize("k_joy_mill") }
            end
        end
    end,
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.revives do
            JoyousSpring.revive_pseudorandom({ { is_pendulum = true, exclude_keys = { "j_joy_pendulumoon" } } },
                pseudoseed("j_joy_pendulumoon"), false,
                "e_negative")
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.count_materials_in_graveyard(
            { { is_pendulum = true, exclude_keys = { "j_joy_pendulumoon" } } }, true) > 0
    end,
})

-- Patissciel Couverture
SMODS.Joker({
    key = "couverture",
    atlas = 'Misc03',
    pos = { x = 4, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.adds } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Fairy",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { is_pendulum = true },
                            { is_pendulum = true },
                        }
                    }
                },
            },
            creates = 1,
            adds = 1
        },
    },
    use = function(self, card, area, copier)
        for i = 1, card.ability.extra.creates do
            JoyousSpring.create_pseudorandom({ { is_pendulum = true, rarity = 3 } }, pseudoseed("j_joy_couverture"), true)
        end
        if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
            JoyousSpring.add_to_extra_deck("j_joy_couverture")
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.is_summoned(card) and
            (#G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit + (card.edition and card.edition.negative and 0 or 1))
    end,
})

-- Firewall Saber Dragon
SMODS.Joker({
    key = "firewall_saber",
    atlas = 'Misc03',
    pos = { x = 0, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 1 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = { ["Firewall"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { monster_type = "Cyberse", is_tuner = true,                         exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true,    exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            revives = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "LINK") then
            for i = 1, card.ability.extra.creates do
                SMODS.add_card({
                    set = "Spectral",
                    edition = "e_negative"
                })
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { is_extra_deck = true, monster_type = "Cyberse" } },
                    pseudoseed("j_joy_firewall_saber"), false, "e_negative")
            end
        end
    end
})

-- Divine Arsenal AA-ZEUS - Sky Thunder
SMODS.Joker({
    key = "zeus",
    atlas = 'Misc03',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "LIGHT",
                monster_type = "Machine",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 3,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                    },
                    {
                        type = "XYZ",
                        materials = {
                            {
                                func = "detached_this_round",
                            },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 1,
            percent = 0.75
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card and G.GAME.blind.in_blind then
                JoyousSpring.ease_detach(card)
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips - G.GAME.blind.chips * card.ability.extra.percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)

                for _, pcard in ipairs(G.playing_cards) do
                    pcard:set_ability("c_base")
                end
            end
        end
    end,
})

-- Super Starslayer TY-PHON - Sky Crisis
SMODS.Joker({
    key = "typhon",
    atlas = 'Misc03',
    pos = { x = 2, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 1, 50 } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = {}
            },
        },
    },
})

-- Beyond the Pendulum
SMODS.Joker({
    key = "beyond",
    atlas = 'Misc03',
    pos = { x = 0, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 10, 0, 1, 4, 0 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = {}
            },
        },
    },
})

-- Linkuriboh
SMODS.Joker({
    key = "linkuriboh",
    atlas = 'Misc03',
    pos = { x = 1, y = 4 },
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
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = {}
            },
        },
    },
})

-- Linguriboh
SMODS.Joker({
    key = "linguriboh",
    atlas = 'Misc03',
    pos = { x = 2, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { 3 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = {}
            },
        },
    },
})

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
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = {}
            },
        },
    },
})
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
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = {}
            },
        },
    },
})
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
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = {}
            },
        },
    },
})
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
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = {}
            },
        },
    },
})
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
        return { vars = {} }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = {}
            },
        },
    },
})
