--- LIVE TWIN
SMODS.Atlas({
    key = "LiveTwin",
    path = "02LiveTwin.png",
    px = 71,
    py = 95
})

-- Live☆Twin Lil-la
SMODS.Joker({
    key = "ltwin_lilla",
    atlas = 'LiveTwin',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_ltwin_kisikil",                                                                             name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = { ["LiveTwin"] = true, ["Lilla"] = true },
            },
            chips = 40,
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips,
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                if not next(SMODS.find_card("j_joy_ltwin_kisikil", true)) and not card.debuff and not from_debuff then
                    for i = 1, card.ability.extra.cards_to_create do
                        JoyousSpring.create_summon({
                            key = "j_joy_ltwin_kisikil"
                        }, true)

                        card:juice_up()
                    end
                end
                return true
            end
        }))
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
        }
    end
})

-- Live☆Twin Ki-sikil
SMODS.Joker({
    key = "ltwin_kisikil",
    atlas = 'LiveTwin',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_ltwin_lilla",                                                                               name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
                monster_archetypes = { ["LiveTwin"] = true, ["Kisikil"] = true },
            },
            mult = 10,
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult,
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                if not next(SMODS.find_card("j_joy_ltwin_lilla", true)) and not card.debuff and not from_debuff then
                    for i = 1, card.ability.extra.cards_to_create do
                        JoyousSpring.create_summon({
                            key = "j_joy_ltwin_lilla"
                        }, true)
                        card:juice_up()
                    end
                end
                return true
            end
        }))
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Live☆Twin Lil-la Treat
SMODS.Joker({
    key = "ltwin_lilla_treat",
    atlas = 'LiveTwin',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discards } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Zombie",
                monster_archetypes = { ["LiveTwin"] = true, ["Lilla"] = true },
            },
            discards = 1
        },
    },
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
            ease_discard(card.ability.extra.discards)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
            ease_discard(-card.ability.extra.discards)
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_archetypes = { "Kisikil" } } }) > 0 then
            card.cost = 0
        end
    end
})

-- Live☆Twin Lil-la Sweet
SMODS.Joker({
    key = "ltwin_lilla_sweet",
    atlas = 'LiveTwin',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["LiveTwin"] = true, ["Lilla"] = true },
            },
            hands = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
            ease_hands_played(card.ability.extra.hands)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
            ease_hands_played(-card.ability.extra.hands)
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_archetypes = { "Kisikil" } } }) > 0 then
            card.cost = 0
        end
    end
})

-- Live☆Twin Ki-sikil Frost
SMODS.Joker({
    key = "ltwin_kisikil_frost",
    atlas = 'LiveTwin',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Aqua",
                monster_archetypes = { ["LiveTwin"] = true, ["Kisikil"] = true },
            },
            h_size = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(card.ability.extra.h_size)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_archetypes = { "Lilla" } } }) > 0 then
            card.cost = 0
        end
    end
})

-- Evil★Twin Ki-sikil Deal
SMODS.Joker({
    key = "etwin_kisikil_deal",
    atlas = 'LiveTwin',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.h_size, card.ability.extra.mills, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["EvilTwin"] = true, ["Kisikil"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "Kisikil" } },
                        }
                    }
                },
            },
            mult = 10,
            h_size = 1,
            mills = 1,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult,
                }
            end
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_archetypes = { "Lilla" }, is_main_deck = true } },
                    card.config.center.key, card.ability.extra.mills)
                return {
                    message = localize("k_joy_mill")
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "LINK") then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "EvilTwin" }, is_extra_deck = true } })
            for i = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_ignis_doyon')
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(card.ability.extra.h_size)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Evil★Twin Ki-sikil
SMODS.Joker({
    key = "etwin_kisikil",
    atlas = 'LiveTwin',
    pos = { x = 3, y = 1 },
    joy_alt_pos = { { x = 2, y = 2 } },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.h_size, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["EvilTwin"] = true, ["Kisikil"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "Kisikil" } },
                            {}
                        }
                    }
                },
            },
            mult = 20,
            h_size = 1,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult,
                }
            end
            if context.setting_blind and context.main_eval then
                local has_revived = false
                if JoyousSpring.graveyard["j_joy_etwin_lilla"] and JoyousSpring.graveyard["j_joy_etwin_lilla"].summonable > 0 then
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive("j_joy_etwin_lilla", true)
                        has_revived = revived_card and true or has_revived
                    end
                else
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "Lilla" } } },
                            'j_joy_etwin_kisikil',
                            true
                        )
                        has_revived = revived_card and true or has_revived
                    end
                end
                if has_revived then
                    return {
                        message = localize("k_joy_revive")
                    }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Lilla" } } }) > 0 then
            G.hand:change_size(card.ability.extra.h_size)
            SMODS.calculate_effect(
                { message = localize { type = 'variable', key = 'a_handsize', vars = { card.ability.extra.h_size } } },
                card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Evil★Twin Lil-la
SMODS.Joker({
    key = "etwin_lilla",
    atlas = 'LiveTwin',
    pos = { x = 0, y = 2 },
    joy_alt_pos = { { x = 3, y = 2 } },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.money, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["EvilTwin"] = true, ["Lilla"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "Lilla" } },
                            {}
                        }
                    }
                },
            },
            chips = 80,
            money = 10,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips,
                }
            end
            if context.setting_blind and context.main_eval then
                local has_revived = false
                if JoyousSpring.graveyard["j_joy_etwin_kisikil"] and JoyousSpring.graveyard["j_joy_etwin_kisikil"].summonable > 0 then
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive("j_joy_etwin_kisikil", true)
                        has_revived = revived_card and true or has_revived
                    end
                else
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "Kisikil" } } },
                            'j_joy_etwin_lilla',
                            true
                        )
                        has_revived = revived_card and true or has_revived
                    end
                end
                if has_revived then
                    return {
                        message = localize("k_joy_revive")
                    }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.count_materials_owned({ { monster_archetypes = { "Kisikil" } } }) > 0 then
            SMODS.calculate_effect({ dollars = card.ability.extra.money }, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
        }
    end
})

-- Evil★Twins Ki-sikil & Lil-la
SMODS.Joker({
    key = "etwin_kisikil_lilla",
    atlas = 'LiveTwin',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
                card.ability.extra.h_size,
                card.ability.extra.chips *
                JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Lilla" } } }),
                card.ability.extra.mult *
                JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Kisikil" } } })
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["EvilTwin"] = true, ["Kisikil"] = true, ["Lilla"] = true },
                cannot_revive = true,
            },
            chips = 80,
            mult = 20,
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                local links_owned = JoyousSpring.count_materials_owned({ { summon_type = "LINK" } })
                if links_owned and links_owned > 0 then
                    ease_discard(-links_owned)
                    card:juice_up()
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Lilla" } } }),
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Kisikil" } } }),
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+",                              colour = G.C.CHIPS },
                { ref_table = "card.joker_display_values", ref_value = "chips", colour = G.C.CHIPS, retrigger_type = "mult" },
                { text = " +",                             colour = G.C.MULT },
                { ref_table = "card.joker_display_values", ref_value = "mult",  colour = G.C.MULT,  retrigger_type = "mult" }
            },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Lilla" } } })
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Kisikil" } } })
            end
        }
    end
})

-- Evil★Twin's Trouble Sunny
SMODS.Joker({
    key = "etwin_sunny",
    atlas = 'LiveTwin',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_etwin_kisikil",                                                                             "j_joy_etwin_lilla",     name = "Revives" },
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["EvilTwin"] = true, ["Kisikil"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "EvilTwin" } },
                            { monster_archetypes = { "EvilTwin" } },
                        }
                    }
                },
            },
            chips = 160,
            mult = 40,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.end_of_round and context.game_over == false and context.main_eval then
                if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit +
                    JoyousSpring.get_card_limit(card) then
                    local is_lilla_owned = JoyousSpring.count_materials_owned({ { monster_archetypes = { "Lilla" } } }) >
                        0
                    local kisikil_summoned = {}
                    local has_revived = false
                    if JoyousSpring.graveyard["j_joy_etwin_kisikil"] and JoyousSpring.graveyard["j_joy_etwin_kisikil"].summonable > 0 then
                        for i = 1, card.ability.extra.revives do
                            local revived_card = JoyousSpring.revive("j_joy_etwin_kisikil", true)
                            if revived_card then
                                table.insert(kisikil_summoned, revived_card)
                                has_revived = true
                            end
                        end
                    end
                    if JoyousSpring.graveyard["j_joy_etwin_lilla"] and JoyousSpring.graveyard["j_joy_etwin_lilla"].summonable > 0 then
                        for i = 1, card.ability.extra.revives do
                            local revived_card = JoyousSpring.revive("j_joy_etwin_lilla", true)
                            if revived_card then
                                has_revived = true
                            end
                        end
                    end
                    if not is_lilla_owned then
                        for _, joker in ipairs(kisikil_summoned) do
                            joker.config.center:add_to_deck(joker)
                        end
                    end
                    if has_revived then
                        JoyousSpring.return_to_extra_deck(card)
                    end
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips,
                    mult = card.ability.extra.mult,
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+",                       colour = G.C.CHIPS },
                { ref_table = "card.ability.extra", ref_value = "chips", colour = G.C.CHIPS, retrigger_type = "mult" },
                { text = " +",                      colour = G.C.MULT },
                { ref_table = "card.ability.extra", ref_value = "mult",  colour = G.C.MULT,  retrigger_type = "mult" }
            },
        }
    end
})

-- Live☆Twin Channel
SMODS.Joker({
    key = "ltwin_channel",
    atlas = 'LiveTwin',
    pos = { x = 0, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "LiveTwin" } }, { monster_archetypes = { "EvilTwin" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["LiveTwin"] = true },
            },
            tributes = 2,
            revives = 1,
        },
    },
    calculate = function(self, card, context)
        if context.joy_activate_effect and context.joy_activated_card == card then
            local materials = JoyousSpring.get_materials_owned(
                { { summon_type = "LINK", monster_archetypes = { "Kisikil" } }, { summon_type = "LINK", monster_archetypes = { "Lilla" } } },
                false, true)
            if #materials >= card.ability.extra.tributes then
                JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                    card.ability.extra.tributes)
            end
        end
        if context.joy_exit_effect_selection and context.joy_card == card and
            #context.joy_selection == card.ability.extra.tributes and G.GAME.blind.in_blind then
            JoyousSpring.tribute(card, context.joy_selection)

            G.GAME.chips = G.GAME.chips * 2
            if (G.GAME.chips >= G.GAME.blind.chips) then
                G.STATE = G.STATES.HAND_PLAYED
                G.STATE_COMPLETE = true
                end_round()
            end

            return {
                message = localize("k_joy_activated_ex")
            }
        end
        if context.ending_shop and context.main_eval then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom(
                    { { monster_archetypes = { "Kisikil" } }, { monster_archetypes = { "Lilla" } } },
                    'j_joy_ltwin_channel',
                    true
                )
            end
        end
    end,
    joy_can_activate = function(card)
        if not G.GAME.blind.in_blind then
            return false
        end
        local materials = JoyousSpring.get_materials_owned(
            { { summon_type = "LINK", monster_archetypes = { "Kisikil" } }, { summon_type = "LINK", monster_archetypes = { "Lilla" } } },
            false, true)
        return #materials >= card.ability.extra.tributes
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "ltwin", "etwin" },
    label = "k_joy_archetype_ltwin"
}
