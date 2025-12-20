--- EFFECT FREE AGENTS

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
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Machine",
            },
            xmult = 5,
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
        if not from_debuff then
            card.ability.extra.unique_count = #SMODS.find_card("j_joy_spright_sprind", true)
        end
        if not card.debuff then
            for _, joker in ipairs(JoyousSpring.get_materials_owned({ { is_main_deck = true, exclude_keys = { "j_joy_boarder" } } })) do
                SMODS.debuff_card(joker, true, "j_joy_boarder" .. (card.ability.extra.unique_count or 0))
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not next(SMODS.find_card("j_joy_boarder")) then
            for _, joker in ipairs(G.jokers.cards) do
                SMODS.debuff_card(joker, false, "j_joy_boarder" .. (card.ability.extra.unique_count or 0))
            end
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff and JoyousSpring.is_main_deck_monster(added_card) and added_card.config.center.key ~= "j_joy_boarder" then
            SMODS.debuff_card(added_card, true, "j_joy_boarder" .. (card.ability.extra.unique_count or 0))
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
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Fiend",
            },
            chips = 20,
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
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * (G.GAME.joy_cards_banished or 0)
            end
        }
    end
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
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Fiend",
            },
            mills = 5,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_type = "Fiend" } },
                card.config.center.key, card.ability.extra.mills)
            JoyousSpring.revive_pseudorandom({ { monster_type = "Fiend" } }, 'j_joy_rhino')
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
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
            },
            adds = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for _ = 1, card.ability.extra.adds do
                JoyousSpring.create_pseudorandom(
                    { { monster_type = "Fiend", rarity = 1, is_main_deck = true }, { monster_type = "Fiend", rarity = 2, is_main_deck = true } },
                    "j_joy_tourguide", false, false, "e_negative")
            end
        end
    end,
})

-- Lord of the Heavenly Prison
SMODS.Joker({
    key = "heavenlyprison",
    atlas = 'Misc03',
    pos = { x = 3, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_gain, card.ability.extra.xmult + (card.ability.extra.xmult_gain * JoyousSpring.count_materials_owned({ { is_trap = true } })) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Rock",
            },
            xmult = 2,
            xmult_gain = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult +
                        (card.ability.extra.xmult_gain * JoyousSpring.count_materials_owned({ { is_trap = true } }))
                }
            end
        end
    end,
    joy_prevent_trap_flip = function(card, other_card)
        return other_card.facing == 'front'
    end,
    joy_flip_effect_active = function(card, other_card)
        return JoyousSpring.is_trap_monster(other_card)
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
                card.joker_display_values.xmult = card.ability.extra.xmult +
                    (card.ability.extra.xmult_gain * JoyousSpring.count_materials_owned({ { is_trap = true } }))
            end
        }
    end
})

-- Backup Secretary
SMODS.Joker({
    key = "backup",
    atlas = 'Misc03',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection(
                { { monster_type = "Cyberse", is_extra_deck = true } }, nil, nil, card.config.center.key)
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Cyberse Wizard
SMODS.Joker({
    key = "wizard",
    atlas = 'Misc03',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            chips = 50,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } })
                }
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) > 0 then
            card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } })
            end
        }
    end
})

-- Formud Skipper
SMODS.Joker({
    key = "formud",
    atlas = 'Misc04',
    pos = { x = 7, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.creates } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_all_materials = { LINK = true },
                attribute = "LIGHT",
                monster_type = "Cyberse",
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_monster_type(context.joy_card, "Cyberse") then
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { monster_type = "Cyberse", rarity = 3, is_main_deck = true } },
                    'j_joy_formud')
            end
        end
    end
})

-- Procession of the Tea Jar
SMODS.Joker({
    key = "procession",
    atlas = 'Misc04',
    pos = { x = 6, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Zombie",
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    if joker.config.center.key ~= "j_joy_procession" and joker.facing == "front" then
                        JoyousSpring.flip(joker, card)
                    end
                end
            end
            if context.other_joker and context.other_joker.facing == "back" then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
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
                    card.ability.extra.xmult * JoyousSpring.count_flipped('back', { G.jokers })
            end
        }
    end
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
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.adds } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.adds do
                SMODS.add_card { set = "Base", enhancement = "m_lucky", edition = "e_negative", rank = 2, area = G.GAME.blind.in_blind and G.hand or G.deck }
            end
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

-- Dekoichi the Battlechanted Locomotive
SMODS.Joker({
    key = "dekoichi",
    atlas = 'Misc04',
    pos = { x = 4, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult_normal,
                card.ability.extra.mult +
                card.ability.extra.mult_normal * JoyousSpring.count_materials_owned({ { is_normal = true } }),
                card.ability.extra.h_size,
                card.ability.extra.h_size_normal,
                card.ability.extra.creates
            },
        }
    end,
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
            creates = 1,
            h_size_change = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult +
                        card.ability.extra.mult_normal * JoyousSpring.count_materials_owned({ { is_normal = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            local h_size_change = card.ability.extra.h_size +
                card.ability.extra.h_size_normal * JoyousSpring.count_materials_owned({ { is_normal = true } })
            G.hand:change_size(h_size_change)
            card.ability.extra.h_size_change = card.ability.extra.h_size_change + h_size_change
            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_summon({
                    key = "j_joy_bokoichi",
                    edition = "e_negative"
                })
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.h_size_change > 0 then
                G.hand:change_size(-card.ability.extra.h_size_change)
                card.ability.extra.h_size_change = 0
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.h_size_change > 0 then
            G.hand:change_size(-card.ability.extra.h_size_change)
            card.ability.extra.h_size_change = 0
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
                card.joker_display_values.mult = card.ability.extra.mult +
                    card.ability.extra.mult_normal * JoyousSpring.count_materials_owned({ { is_normal = true } })
            end
        }
    end
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
    cost = 1,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
        end
    end,
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
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
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
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.flips } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.flips do
                local choices = JoyousSpring.get_materials_owned({ { facedown = true } })
                local joker = pseudorandom_element(choices, 'j_joy_desertapir')
                if joker then
                    JoyousSpring.flip(joker, card)
                end
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        return JoyousSpring.can_use_abilities(card) and
            card.ability.extra.money or nil
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.ability.extra", ref_value = "money" },
            },
            text_config = { colour = G.C.GOLD },
            reminder_text = {
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
            },
            calc_function = function(card)
                card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
            end
        }
    end
})

-- Searchlightman
SMODS.Joker({
    key = "searchlight",
    atlas = 'Misc04',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds,
            self.key)
        return { vars = { card.ability.extra.mult, card.ability.extra.extra_mult, card.ability.extra.mult + card.ability.extra.current_mult, numerator, denominator } }
    end,
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
            current_mult = 0,
            numerator = 5,
            odds = 10
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval then
            if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                JoyousSpring.flip(card, card)
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult + card.ability.extra.current_mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            JoyousSpring.flip_all_cards(card, 'front', { G.jokers })
        end
        if context.joy_card_flipped and context.joy_card_flipped.ability.set == "Joker" and context.joy_card_flipped.facing == "front" then
            card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.extra_mult
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
                card.joker_display_values.mult = card.ability.extra.mult + card.ability.extra.current_mult
            end
        }
    end
})

-- The Stern Mystic
SMODS.Joker({
    key = "sternmystic",
    atlas = 'Misc04',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds,
            self.key)
        return { vars = { card.ability.extra.chips, card.ability.extra.extra_chips, card.ability.extra.chips + card.ability.extra.current_chips, numerator, denominator } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
            },
            chips = 50,
            extra_chips = 5,
            current_chips = 0,
            numerator = 5,
            odds = 10
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval then
            if SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                JoyousSpring.flip(card, card)
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips + card.ability.extra.current_chips
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) and G.GAME.blind.in_blind then
            JoyousSpring.flip_all_cards(card, nil, { G.hand })
        end
        if context.joy_card_flipped and JoyousSpring.is_playing_card(context.joy_card_flipped) then
            card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.extra_chips
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips + card.ability.extra.current_chips
            end
        }
    end
})

-- Magician of Faith
SMODS.Joker({
    key = "mof",
    atlas = 'Misc04',
    pos = { x = 4, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } }), card.ability.extra.creates } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            local choices = JoyousSpring.get_materials_in_graveyard({ { is_field_spell = true } })
            for i = 1, card.ability.extra.creates do
                local spell = pseudorandom_element(choices, pseudorandom("j_joy_mof"))
                if spell and #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(spell, { edition = "e_negative" })
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } })
            end
        }
    end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { is_trap = true } }), card.ability.extra.revives } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { is_trap = true } })
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { is_trap = true } }, pseudorandom("j_joy_mask"), true)
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
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { is_trap = true } })
            end
        }
    end
})

-- Angraecum Umbrella
SMODS.Joker({
    key = "angraecum",
    atlas = 'Misc04',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.adds } }
    end,
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
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { exclude_tuners = true } }, 'j_joy_angraecum', false,
                    "e_negative", nil, nil, "j_joy_angraecum")
            end
            local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "SYNCHRO" } }, nil, nil,
                card.config.center.key)
            for i = 1, card.ability.extra.adds do
                local key_to_add = pseudorandom_element(choices, 'j_joy_angraecum')
                JoyousSpring.add_monster_tag(key_to_add or "j_joy_psy_zeta")
            end
        end
    end
})

-- Eater of Millions
SMODS.Joker({
    key = "eater",
    atlas = 'Misc04',
    pos = { x = 6, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, card.ability.extra.banishes } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
            if context.joy_banished and JoyousSpring.is_extra_deck_monster(context.joy_banished_card) then
                card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
            end
            if context.joy_post_round_eval then
                local choices = JoyousSpring.get_materials_owned({ { exclude_debuffed = true, is_extra_deck = true } })
                local joker = pseudorandom_element(choices, 'j_joy_eater')
                if joker then
                    JoyousSpring.banish(joker, "boss_selected")
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "current_xmult", retrigger_type = "exp" }
                    }
                }
            },
        }
    end
})

-- Heavenly Zephyr - Miradora
SMODS.Joker({
    key = "miradora",
    atlas = 'Misc04',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.turns, card.ability.extra.xmult } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and JoyousSpring.is_extra_deck_monster(context.other_joker) and context.other_joker.debuff then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            local choices = JoyousSpring.get_materials_owned({ { exclude_debuffed = true, is_extra_deck = true } })
            local joker = pseudorandom_element(choices, 'j_joy_miradora')
            if joker then
                SMODS.debuff_card(joker, true, "j_joy_miradora")
                joker:set_edition("e_negative")
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            mod_function = function(card, mod_joker)
                return {
                    x_mult = JoyousSpring.is_extra_deck_monster(card) and card.debuff and
                        mod_joker.ability.extra.xmult ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.creates } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and context.joy_returned and context.joy_returned_card == card then
                for _ = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom(
                        { { monster_type = "Fish", is_main_deck = true } },
                        'j_joy_beautunaful', true)
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            for _ = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom(
                    { { monster_type = "Fish", is_main_deck = true } },
                    'j_joy_beautunaful', true)
            end
        end
    end,
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
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.revives } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_type = "Fish", is_main_deck = true } },
                    card.config.center.key, card.ability.extra.mills)
            end
            if context.selling_self then
                for i = 1, card.ability.extra.revives do
                    JoyousSpring.revive_pseudorandom({ { monster_type = "Fish", exclude_keys = { "j_joy_leaffish" } } },
                        'j_joy_leaffish', true, nil, JoyousSpring.get_card_limit(card) > 0 and 0 or 1)
                end
            end
        end
    end
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
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.creates } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            for i = 1, card.ability.extra.creates do
                JoyousSpring.summon_token("ringo", "e_negative")
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { is_non_effect = true } }) > 0 then
            card.cost = 0
        end
    end
})

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

-- Storm Shooter
SMODS.Joker({
    key = "stormshooter",
    atlas = 'Misc04',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.column, JoyousSpring.get_joker_column(card) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "WingedBeast",
            },
            column = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.after and JoyousSpring.get_joker_column(card) == card.ability.extra.column and
                #context.full_hand >= card.ability.extra.column and not SMODS.in_scoring(context.full_hand[card.ability.extra.column], context.scoring_hand) and
                #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local planet = JoyousSpring.get_played_planet(context.scoring_name)
                if planet then
                    local amount = G.consumeables.config.card_limit - #G.consumeables.cards
                    for i = 1, amount do
                        SMODS.add_card({
                            key = planet
                        })
                    end
                end
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.column = pseudorandom("j_joy_stormshooter", 2, 5)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.column = pseudorandom("j_joy_stormshooter", 2, 5)
    end
})

-- Ghost Bird of Bewitchment
SMODS.Joker({
    key = "ghostbird",
    atlas = 'Misc04',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and JoyousSpring.get_joker_column(card) == 1 and JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                context.other_card.ability.perma_bonus = (context.other_card.ability.perma_bonus or 0) +
                    card.ability.extra.chips
                return { message = localize('k_upgrade_ex'), colour = G.C.CHIPS }
            end
            if ((context.destroying_card and JoyousSpring.get_joker_column(card) ~= 1) or
                    (context.destroy_card and context.cardarea == 'unscored')) and
                JoyousSpring.get_joker_column(card) ==
                (JoyousSpring.index_of(context.full_hand, context.destroy_card)) then
                return { remove = true }
            end
            if context.repetition and context.cardarea == G.play and JoyousSpring.get_joker_column(card) == 3 then
                if JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        repetitions = 2
                    }
                end
            end
            if context.modify_scoring_hand and JoyousSpring.get_joker_column(card) == 5 then
                if JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card)) then
                    return {
                        add_to_hand = true,
                        message = context.in_scoring and localize("k_joy_splash")
                    }
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            retrigger_function = function(card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand then return 0 end
                return JoyousSpring.get_joker_column(joker_card) == 3 and
                    JoyousSpring.index_of(JokerDisplay.current_hand, card) == 3 and 2 or 0
            end
        }
    end
})

-- Iron Dragon Tiamaton
SMODS.Joker({
    key = "tiamaton",
    atlas = 'Misc04',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, JoyousSpring.get_joker_column(card) } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
            if context.remove_playing_cards then
                card.ability.extra.current_xmult = card.ability.extra.current_xmult +
                    card.ability.extra.xmult * #context.removed
            end
            if (context.destroying_card or (context.destroy_card and context.cardarea == 'unscored')) and (JoyousSpring.get_joker_column(card) > 5 or JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.destroying_card or context.destroy_card))) then
                return { remove = true }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "current_xmult", retrigger_type = "exp" }
                    }
                }
            },
        }
    end
})

-- Rock Band Xenoguitar
SMODS.Joker({
    key = "zenoguitar",
    atlas = 'Misc02',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.revives, card.ability.extra.adds } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
                cannot_revive = true
            },
            mills = 2,
            revives = 1,
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_sent_to_gy and context.joy_from_field and context.joy_card == card then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_type = "Rock" } },
                    card.config.center.key, card.ability.extra.mills)
                JoyousSpring.revive_pseudorandom(
                    { { monster_type = "Rock" } },
                    card.config.center.key, true
                )
            end
            if JoyousSpring.used_as_material(card, context) then
                for _ = 1, card.ability.extra.adds do
                    SMODS.add_card { set = "Enhanced", suit = "Diamonds", area = G.deck }
                end
            end
        end
    end
})

-- Revival Golem
SMODS.Joker({
    key = "revgolem",
    atlas = 'Misc02',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds, card.ability.extra.creates } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.used_as_material(card, context) then
                for _ = 1, card.ability.extra.adds do
                    SMODS.add_card { set = "Base", suit = "Diamonds", seal = SMODS.poll_seal({ guaranteed = true }), area = G.deck }
                end
                JoyousSpring.create_perma_debuffed_card("j_joy_revgolem", card.config.center.key, "e_negative")
            end
        end
    end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.get_excavated_count("Diamonds"), card.ability.extra.tributes, card.ability.extra.adds } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            mult = 1,
            tributes = 1,
            adds = 2,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Rock" } }, false, true)
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                card.ability.extra.activated = true
                JoyousSpring.tribute(card, context.joy_selection)
                for _ = 1, card.ability.extra.adds do
                    SMODS.add_card { set = "Base", suit = "Diamonds", edition = poll_edition(card.config.center.key, nil, true, true), area = G.deck }
                end
                JoyousSpring.flip_all_cards(card, 'front', { G.jokers })
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.get_excavated_count("Diamonds")
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        local materials = JoyousSpring.get_materials_owned(
            { { monster_type = "Rock" } }, false, true)
        return #materials >= card.ability.extra.tributes
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult * JoyousSpring.get_excavated_count("Diamonds")
            end
        }
    end
})

-- Doki Doki
SMODS.Joker({
    key = "doki",
    atlas = 'Misc02',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.get_excavated_count("Diamonds"), card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Rock",
            },
            chips = 5,
            tributes = 1,
            creates = 2,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Rock" } }, false, true)
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes and #G.jokers.cards + G.GAME.joker_buffer + card.ability.extra.creates - card.ability.extra.tributes <= G.jokers.config.card_limit then
                card.ability.extra.activated = true
                JoyousSpring.tribute(card, context.joy_selection)
                for _ = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom({ { monster_type = "Rock", is_main_deck = true } },
                        card.config.center.key, true)
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * JoyousSpring.get_excavated_count("Diamonds")
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated or not (#G.jokers.cards + G.GAME.joker_buffer + card.ability.extra.creates - card.ability.extra.tributes <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_materials_owned(
            { { monster_type = "Rock" } }, false, true)
        return #materials >= card.ability.extra.tributes
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * JoyousSpring.get_excavated_count("Diamonds")
            end
        }
    end
})

-- Block Dragon
SMODS.Joker({
    key = "blockdragon",
    atlas = 'Misc02',
    pos = { x = 1, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }), card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_excavated_count("Diamonds"), card.ability.extra.requirement, card.ability.extra.creates } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }),
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_excavated_count("Diamonds")
                }
            end
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } }) >= card.ability.extra.requirement then
                for _ = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom({ { monster_type = "Rock", is_main_deck = true, rarity = 1 },
                            { monster_type = "Rock", is_main_deck = true, rarity = 2 } },
                        card.config.center.key, false, false, "e_negative")
                end
                JoyousSpring.empty_graveyard(nil, { { monster_type = "Rock" } })
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+",                              colour = G.C.MULT },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult", colour = G.C.MULT },
                { text = " " },
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                },
            },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { monster_type = "Rock" } })
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult * JoyousSpring.get_excavated_count("Diamonds")
            end
        }
    end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } }), card.ability.extra.increases } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
            },
            chips = 20,
            increases = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } })
                }
            end
            if context.setting_blind and context.blind.boss then
                local materials = JoyousSpring.get_materials_owned({ { monster_attribute = "WIND" } })
                for _, joker in ipairs(materials) do
                    JoyousSpring.modify_probability_numerator(joker, card.ability.extra.increases)
                end
                return {
                    message = localize("k_joy_increased"),
                    colour = G.C.GREEN
                }
            end
        end
    end,
    joy_can_be_sent_to_graveyard = function(self, card, choices)
        if next(SMODS.find_card("j_joy_elfuria")) then
            return JoyousSpring.filter_material_keys_from_list(choices, { { monster_attribute = "WIND" } })
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } })
            end
        }
    end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } }), card.ability.extra.attach } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
            },
            mult = 1,
            attach = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } })
                }
            end
            if context.setting_blind and context.blind.boss then
                for _, joker in ipairs(G.jokers.cards) do
                    if JoyousSpring.is_summon_type(joker, "XYZ") then
                        joker.ability.extra.joyous_spring.xyz_materials = joker.ability.extra.joyous_spring
                            .xyz_materials + card.ability.extra.attach
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" } })
            end
        }
    end
})

local smods_add_to_pool_ref = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    if prototype_obj.set == "Joker" and not JoyousSpring.is_material_center(prototype_obj.key, { monster_attribute = "WIND" })
        and next(SMODS.find_card("j_joy_elfuria")) and next(SMODS.find_card("j_joy_elfobia", true)) then
        return false
    end
    return smods_add_to_pool_ref(prototype_obj, args)
end

-- Lindbloom
SMODS.Joker({
    key = "lindbloom",
    atlas = 'Misc05',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" then
                local exists = false
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= context.other_joker and JoyousSpring.is_same_type_attribute(joker, context.other_joker) then
                        exists = true
                        break
                    end
                end
                if exists then
                    return {
                        xmult = card.ability.extra.xmult,
                        message_card = context.other_joker
                    }
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                if card.facing == "front" then
                    local exists = false
                    for _, joker in ipairs(G.jokers.cards) do
                        if joker ~= card and JoyousSpring.is_same_type_attribute(joker, card) then
                            exists = true
                            break
                        end
                    end
                    return {
                        x_mult = (exists and mod_joker.ability.extra.xmult and
                            mod_joker.ability.extra.xmult ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                    }
                end
                return {}
            end
        }
    end
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
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                is_tuner = true,
                is_all_materials = { SYNCHRO = true }
            },
            mult = 5
        },
    },
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "SYNCHRO")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            local monster_type = JoyousSpring.get_monster_type(other_card)
            local attribute = JoyousSpring.get_attribute(other_card)
            return {
                mult = config.mult * JoyousSpring.count_all_materials({ {
                    monster_type = monster_type ~= true and monster_type or nil,
                    monster_attribute = attribute ~= true and attribute or nil
                } })
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return { mult = 3 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local monster_type = JoyousSpring.get_monster_type(other_card)
        local attribute = JoyousSpring.get_attribute(other_card)
        return {
            vars = { config.mult, config.mult * JoyousSpring.count_all_materials({ {
                monster_type = monster_type ~= true and monster_type or nil,
                monster_attribute = attribute ~= true and attribute or nil
            } }) }
        }
    end
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
    cost = 5,
    loc_vars = function(self, info_queue, card)
        local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_xmult,
            self.key .. "_xmult")
        local numerator_negative, denominator_negative = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds_negative, self.key .. "_negative")
        return { vars = { numerator_xmult, denominator_xmult, card.ability.extra.xmult, numerator_negative, denominator_negative } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and not card.edition and SMODS.pseudorandom_probability(card, card.config.center.key .. "_negative", 1, card.ability.extra.odds_negative) then
                card:set_edition("e_negative")
            end
            if context.joker_main and SMODS.pseudorandom_probability(card, card.config.center.key .. "_xmult", 1, card.ability.extra.odds_xmult) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_xmult" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_negative" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds_xmult,
                    card.config.center.key .. "_xmult")
                local numerator_negative, denominator_negative = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds_negative, card.config.center.key .. "_negative")
                card.joker_display_values.odds_xmult = localize { type = 'variable', key = "jdis_odds", vars = { numerator_xmult, denominator_xmult } }
                card.joker_display_values.odds_negative = localize { type = 'variable', key = "jdis_odds", vars = { numerator_negative, denominator_negative } }
            end
        }
    end
})

-- Space-Time Police
SMODS.Joker({
    key = "stpolice",
    atlas = 'Misc05',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.returns } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_post_round_eval then
                local choices = SMODS.merge_lists({ JoyousSpring.banish_boss_selected_area.cards,
                    JoyousSpring.banish_end_of_ante_area.cards })
                local to_return = pseudorandom_element(choices, card.config.center.key)
                if to_return then
                    JoyousSpring.return_from_banish(to_return)
                end
                JoyousSpring.banish(card, "boss_selected")
                local banish_choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and JoyousSpring.is_monster_type(joker, "Psychic") then
                        table.insert(banish_choices, joker)
                    end
                end
                local to_banish = pseudorandom_element(banish_choices, card.config.center.key)
                if to_banish then
                    JoyousSpring.banish(to_banish, "boss_selected")
                end
            end
        end
    end,
})

-- Wannabee!
SMODS.Joker({
    key = "wannabee",
    atlas = 'Misc05',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.draws } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:get_id() == 2 then
                    card.joy_draw = (card.joy_draw or 0) + 1
                    hit = true
                end
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.first_hand_drawn and card.joy_draw then
                SMODS.draw_cards(card.joy_draw)
                card.joy_draw = nil
            end
        end
    end,
    joy_calculate_excavate = function(card, context)
        if context.setting_blind then
            return card.ability.extra.excavates
        end
    end
})

-- Magical Merchant
SMODS.Joker({
    key = "merchant",
    atlas = 'Misc05',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
        end
        return { vars = { card.ability.extra.requirement, math.max(card.ability.extra.requirement - card.ability.extra.excavated, 0), localize(card.ability.extra.suit, 'suits_plural'), colours = { G.C.SUITS[card.ability.extra.suit] } } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Insect",
                is_flip = true
            },
            requirement = 10,
            excavated = 0,
            suit = "Diamonds",
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.first_hand_drawn and card.joy_count then
                SMODS.draw_cards(card.joy_count)
                card.joy_count = nil
            end
        end
        if context.joy_excavated then
            card.ability.extra.excavated = card.ability.extra.excavated + 1
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.suit = JoyousSpring.most_owned_suit(card.config.center.key)
            if card.ability.extra.excavated >= card.ability.extra.requirement then
                JoyousSpring.flip(card, card)
                card.ability.extra.excavated = 0
            end
        end
        if context.setting_blind then
            card.ability.extra.active = false
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            card.ability.extra.active = true
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        if G.deck and not (card.area and card.area.config.type == 'title') then
            card.ability.extra.suit = JoyousSpring.most_owned_suit(card.config.center.key)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = false
    end,
    joy_calculate_excavate = function(card, context)
        if context.setting_blind and card.ability.extra.active then
            local count = 0
            for i = #G.deck.cards, 1, -1 do
                count = count + 1
                if G.deck.cards[i]:is_suit(card.ability.extra.suit) then
                    break
                end
            end
            card.joy_count = count
            return count
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "active" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.active = card.ability.extra.excavated .. "/" .. card.ability.extra.requirement
            end
        }
    end
})

-- Catoblepas and the Witch of Fate
SMODS.Joker({
    key = "catoblepas",
    atlas = 'Misc05',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            self.key)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } }), numerator, denominator, card.ability.extra.banishes } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } })
                }
            end
            if context.joy_post_round_eval and
                SMODS.pseudorandom_probability(card, card.config.center.key, 1, card.ability.extra.odds) then
                local choices = JoyousSpring.get_materials_owned({ { monster_type = "Spellcaster" } })
                local to_banish = pseudorandom_element(choices, card.config.center.key .. "_banish")
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                    JoyousSpring.modify_probability_numerator(to_banish, nil, 2)
                    return {
                        message = localize("k_joy_banished"),
                        colour = G.C.GREEN
                    }
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds" },
                    { text = ")" },
                }
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local numerator, denominator = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds, card.config.center.key)
                card.joker_display_values.odds = localize { type = 'variable', key = "jdis_odds", vars = { numerator, denominator } }
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { monster_type = "Spellcaster" } })
            end
        }
    end
})

-- Couple of Aces
SMODS.Joker({
    key = "coupleofaces",
    atlas = 'Misc05',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_xmult,
            self.key .. "_xmult")
        local numerator_level, denominator_level = SMODS.get_probability_vars(card, 1, card.ability.extra.odds_level,
            self.key .. "_level")
        local numerator_enhance, denominator_enhance = SMODS.get_probability_vars(card, 1,
            card.ability.extra.odds_enhance, self.key .. "_enhance")
        return { vars = { card.ability.extra.xmult, numerator_xmult, denominator_xmult, numerator_level, denominator_level, numerator_enhance, denominator_enhance } }
    end,
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
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                return {
                    level_up = SMODS.pseudorandom_probability(card, card.config.center.key .. "_level", 1,
                        card.ability.extra.odds_level) or nil
                }
            end
            if context.joker_main and next(context.poker_hands["Pair"]) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.individual and context.cardarea == G.play and next(context.poker_hands["Pair"]) then
                if (context.other_card.seal ~= "Gold" or not SMODS.has_enhancement(context.other_card, "m_lucky") or
                        context.other_card:get_id() ~= 14) and
                    SMODS.pseudorandom_probability(card, card.config.center.key .. "_enhance", 1,
                        card.ability.extra.odds_enhance) then
                    if context.other_card.seal ~= "Gold" then
                        context.other_card:set_seal("Gold")
                    end
                    if not SMODS.has_enhancement(context.other_card, "m_lucky") then
                        context.other_card:set_ability("m_lucky")
                    end
                    if context.other_card:get_id() ~= 14 then
                        assert(SMODS.change_base(context.other_card, nil, "Ace"))
                    end
                end
                return {
                    xmult = context.other_card:get_id() == 14 and
                        SMODS.pseudorandom_probability(card, card.config.center.key .. "_xmult", 1,
                            card.ability.extra.odds_xmult) and
                        card.ability.extra.xmult or nil
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                },
                { text = " " },
                { ref_table = "card.joker_display_values", ref_value = "aces", retrigger_type = "mult" },
                { text = "x",                              scale = 0.35 },
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "xmult" }
                    }
                }
            },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.joker_display_values", ref_value = "localized_text", colour = G.C.ORANGE },
                { text = ")" },
            },
            extra = {
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_xmult" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_level" },
                    { text = ")" },
                },
                {
                    { text = "(" },
                    { ref_table = "card.joker_display_values", ref_value = "odds_enhance" },
                    { text = ")" },
                },
            },
            extra_config = { colour = G.C.GREEN, scale = 0.3 },
            calc_function = function(card)
                local x_mult = 1
                local aces = 0
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if poker_hands["Pair"] and next(poker_hands["Pair"]) then
                    x_mult = card.ability.extra.xmult
                end
                if text ~= 'Unknown' then
                    for _, scoring_card in pairs(scoring_hand) do
                        if scoring_card:get_id() == 14 then
                            aces = aces +
                                JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                        end
                    end
                end
                card.joker_display_values.x_mult = x_mult
                card.joker_display_values.aces = aces
                card.joker_display_values.localized_text = localize("Pair", 'poker_hands')
                local numerator_xmult, denominator_xmult = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds_xmult,
                    card.config.center.key .. "_xmult")
                local numerator_level, denominator_level = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds_level,
                    card.config.center.key .. "_level")
                local numerator_enhance, denominator_enhance = SMODS.get_probability_vars(card, 1,
                    card.ability.extra.odds_enhance, card.config.center.key .. "_enhance")
                card.joker_display_values.odds_xmult = localize { type = 'variable', key = "jdis_odds", vars = { numerator_xmult, denominator_xmult } }
                card.joker_display_values.odds_level = localize { type = 'variable', key = "jdis_odds", vars = { numerator_level, denominator_level } }
                card.joker_display_values.odds_enhance = localize { type = 'variable', key = "jdis_odds", vars = { numerator_enhance, denominator_enhance } }
            end
        }
    end
})

-- Linkslayer
SMODS.Joker({
    key = "linkslayer",
    atlas = 'Misc03',
    pos = { x = 4, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.current_round.discards_used or 0) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Cyberse",
            },
            chips = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_type(context.other_joker, "Cyberse") then
                return {
                    chips = card.ability.extra.chips * (G.GAME.current_round.discards_used or 0),
                    message_card = context.other_joker
                }
            end
        end
    end,
    joy_bypass_room_check = function(card, from_booster)
        return JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) > 0
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Cyberse" } }) > 0 then
            card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            mod_function = function(card, mod_joker)
                return {
                    chips = G.GAME.blind.in_blind and
                        (JoyousSpring.is_monster_type(card, "Cyberse") and mod_joker.ability.extra.chips and (G.GAME.current_round.discards_used or 0) > 0 and
                            mod_joker.ability.extra.chips * G.GAME.current_round.discards_used * JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                }
            end
        }
    end
})
