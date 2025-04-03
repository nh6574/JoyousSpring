--- MISCELLANEOUS
SMODS.Atlas({
    key = "joy_Token",
    path = "99Token00.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "joy_Misc01",
    path = "99Misc01.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "joy_Misc02",
    path = "99Misc02.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "joy_Misc03",
    path = "99Misc03.png",
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
    blueprint_compat = true,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return {
            vars = {
                card.ability.extra.xmult,
                1 + card.ability.extra.xmult * JoyousSpring.count_materials_owned({ { is_extra_deck = true } })
            }
        }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Machine",
                monster_archetypes = {}
            },
            xmult = 2,
            hands = {}
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 +
                        card.ability.extra.xmult *
                        JoyousSpring.count_materials_owned({ { is_extra_deck = true } })
                }
            end
            if context.setting_blind and context.main_eval then
                local types_owned = JoyousSpring.extra_deck_types_owned() + 1
                ease_hands_played(types_owned - G.GAME.current_round.hands_left, true)
                card.ability.extra.hands = {}
            end
            if context.debuff_hand and context.main_eval then
                if card.ability.extra.hands[context.scoring_name] then
                    return {
                        debuff = true
                    }
                end
            end
            if context.after and context.main_eval then
                card.ability.extra.hands[context.scoring_name] = true
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            for _, joker in ipairs(JoyousSpring.get_materials_owned({ { is_main_deck = true, exclude_keys = { "j_joy_boarder" } } })) do
                SMODS.debuff_card(joker, true, "j_joy_boarder")
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not next(SMODS.find_card("j_joy_boarder")) then
            for _, joker in ipairs(G.jokers.cards) do
                SMODS.debuff_card(joker, false, "j_joy_boarder")
            end
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff and JoyousSpring.is_main_deck_monster(added_card) and added_card.config.center.key ~= "j_joy_boarder" then
            SMODS.debuff_card(added_card, true, "j_joy_boarder")
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult * JoyousSpring.count_materials_owned({ { is_extra_deck = true } })
            end
        }
    end
})

-- Gren Maju Da Eiza
SMODS.Joker({
    key = "grenmaju",
    atlas = 'Misc02',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.joy_cards_banished or 0) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Fiend",
                monster_archetypes = {}
            },
            chips = 4,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * (G.GAME.joy_cards_banished or 0)
                }
            end
        end
    end,
})

-- Fiendish Rhino Warrior
SMODS.Joker({
    key = "rhino",
    atlas = 'Misc03',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_type = "Fiend" } }, name = "Sends" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Fiend",
                monster_archetypes = {}
            },
            mills = 5,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_type = "Fiend" } })
            for _ = 1, card.ability.extra.mills do
                local key_to_send = pseudorandom_element(choices, pseudoseed("j_joy_rhino"))
                JoyousSpring.send_to_graveyard(key_to_send or "j_joy_ba_cagna")
            end
            JoyousSpring.revive_pseudorandom({ { monster_type = "Fiend" } }, pseudoseed("j_joy_rhino"))
        end
    end,
})

-- Tour Guide From the Underworld
SMODS.Joker({
    key = "tourguide",
    atlas = 'Misc03',
    pos = { x = 4, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { is_main_deck = true, monster_type = "Fiend" } }, name = "Creates" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = {}
            },
            adds = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for _ = 1, card.ability.extra.adds do
                JoyousSpring.create_pseudorandom(
                    { { monster_type = "Fiend", rarity = 1, is_main_deck = true }, { monster_type = "Fiend", rarity = 2, is_main_deck = true } },
                    pseudoseed("j_joy_tourguide"), false, false, "e_negative")
            end
        end
    end,
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
        return { vars = { card.ability.extra.max, card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                attribute = "LIGHT",
                monster_type = "Fiend",
                monster_archetypes = { ["Archfiend"] = true }
            },
            mult = 5,
            max = 2
        },
    },
    use = function(self, card, area, copier)
        local destroyed_cards = {}
        for i = #G.hand.highlighted, 1, -1 do
            destroyed_cards[#destroyed_cards + 1] = G.hand.highlighted[i]
        end
        JoyousSpring.pre_consumable_use(card, true)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                for i = #G.hand.highlighted, 1, -1 do
                    local playing_card = G.hand.highlighted[i]
                    if SMODS.has_enhancement(playing_card, 'm_glass') then
                        playing_card:shatter()
                    else
                        playing_card:start_dissolve(nil, i == #G.hand.highlighted)
                    end
                end
                return true
            end
        }))
        JoyousSpring.post_consumable_highlighted_use()
        SMODS.calculate_context({ remove_playing_cards = true, removed = destroyed_cards })
    end,
    can_use = function(self, card)
        return card.ability.extra.max >= #G.hand.highlighted and #G.hand.highlighted >= 1
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0)
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0)
            end
        }
    end
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
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + (card.ability.extra.xmult * (G.GAME.joy_sauravis_uses or 0)) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
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
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + (card.ability.extra.xmult * (G.GAME.joy_sauravis_uses or 0))
                }
            end
        end
        if not context.blueprint_card and context.selling_self then
            if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
                    { message = localize('ph_boss_disabled') })
                G.GAME.blind:disable()
                JoyousSpring.add_monster_tag("j_joy_sauravis")
                G.GAME.joy_sauravis_uses = (G.GAME.joy_sauravis_uses or 0) + 1
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            reminder_text = {
                { ref_table = "card.joker_display_values", ref_value = "active_text" },
            },
            calc_function = function(card)
                local disableable = G.GAME and G.GAME.blind and G.GAME.blind.get_type and
                    ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss'))
                card.joker_display_values.active = disableable
                card.joker_display_values.active_text = localize(disableable and 'k_active' or 'ph_no_boss_active')
            end,
            style_function = function(card, text, reminder_text, extra)
                if reminder_text and reminder_text.children[1] then
                    reminder_text.children[1].config.colour = card.joker_display_values.active and G.C.GREEN or G.C.RED
                    reminder_text.children[1].config.scale = card.joker_display_values.active and 0.35 or 0.3
                    return true
                end
                return false
            end
        }
    end
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
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return {}
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                is_all_attributes = true,
                is_all_materials = { FUSION = true },
                attribute = "WATER",
                monster_type = "Wyrm",
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
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.h_size, card.ability.extra.h_size_gain } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "WingedBeast",
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
                }
            },
            h_size = 2,
            h_size_gain = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            G.hand:change_size(card.ability.extra.h_size_gain)
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
})

--#endregion

--#region Link

-- Apollousa, Bow of the Goddess

SMODS.Joker({
    key = "apollousa",
    atlas = 'Misc01',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult_loss, card.ability.extra.mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "WIND",
                monster_type = "Fairy",
                monster_archetypes = {},
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { min = 2 },
                        },
                        restrictions = {
                            different_names = true
                        }
                    }
                }
            },
            mult_gain = 80,
            mult_loss = 80,
            mult = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if card.ability.extra.mult > 0 then
                    card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_loss
                    card.ability.extra.mult = (card.ability.extra.mult >= 0 and card.ability.extra.mult) or 0
                    return {
                        message = localize { type = 'variable', key = 'a_chips_minus', vars = { card.ability.extra.mult_loss } },
                        colour = G.C.CHIPS
                    }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            card.ability.extra.mult = card.ability.extra.mult_gain * #JoyousSpring.get_materials(card)
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

--#endregion

--#region Token

SMODS.Joker({
    key = "token",
    atlas = 'Token',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 1,
    generate_ui = JoyousSpring.generate_info_ui,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "EARTH",
                monster_type = "Beast",
                monster_archetypes = {},
                token_name = "j_joy_token"
            },
        },
    },
    set_sprites = function(self, card, front)
        if card.ability and card.ability.extra then
            card.children.center.atlas.name = card.ability.extra.joyous_spring.token_atlas or "joy_Token"
            card.children.center.sprite_pos = card.ability.extra.joyous_spring.token_sprite_pos or { x = 0, y = 0 }
            card.children.center:reset()
        end
        JoyousSpring.set_back_sprite(self, card, front)
    end,
    in_pool = function(self, args)
        return false
    end,
})

--#endregion

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "misc" },
    label = "k_joy_archetype_misc"
}

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "token" },
    label = "k_joy_archetype_token"
}

JoyousSpring.token_pool["token"] = {
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 0, y = 0 }
}

JoyousSpring.token_pool["token2"] = {
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 1, y = 0 }
}

JoyousSpring.token_pool["token3"] = {
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 0, y = 1 }
}

JoyousSpring.token_pool["token4"] = {
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 1, y = 1 }
}
