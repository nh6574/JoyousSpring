--- LINK FREE AGENTS

-- Apollousa, Bow of the Goddess
SMODS.Joker({
    key = "apollousa",
    atlas = 'Misc01',
    pos = { x = 2, y = 1 },
    joy_alt_pos = { { x = 0, y = 2 } },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        local mult = math.max(0, card.ability.extra.mult_gain * #JoyousSpring.get_materials(card) -
            card.ability.extra.mult_loss * card.ability.extra.turns)
        return { vars = { card.ability.extra.mult_gain, card.ability.extra.mult_loss, mult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "WIND",
                monster_type = "Fairy",
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
            turns = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local mult = math.max(0, card.ability.extra.mult_gain * #JoyousSpring.get_materials(card) -
                    card.ability.extra.mult_loss * card.ability.extra.turns)
                return {
                    mult = mult
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                local mult = math.max(0, card.ability.extra.mult_gain * #JoyousSpring.get_materials(card) -
                    card.ability.extra.mult_loss * card.ability.extra.turns)
                if mult > 0 then
                    card.ability.extra.turns = card.ability.extra.turns + 1
                    return {
                        message = localize { type = 'variable', key = 'a_mult_minus', vars = { card.ability.extra.mult_loss } },
                        colour = G.C.MULT
                    }
                end
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
                card.joker_display_values.mult = math.max(0,
                    card.ability.extra.mult_gain * #JoyousSpring.get_materials(card) -
                    card.ability.extra.mult_loss * card.ability.extra.turns)
            end
        }
    end
})

-- Beyond the Pendulum
SMODS.Joker({
    key = "beyond",
    atlas = 'Misc03',
    pos = { x = 0, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.get_pendulum_count(), card.ability.extra.creates, card.ability.extra.consume, card.ability.extra.consumed } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "LINK",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            { is_pendulum = true },
                        },
                    }
                }
            },
            mult = 10,
            creates = 1,
            consume = 4,
            consumed = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.get_pendulum_count()
                }
            end
            if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
                card.ability.extra.consumed = card.ability.extra.consumed + 1
                if card.ability.extra.consumed >= card.ability.extra.consume then
                    card.ability.extra.consumed = 0
                    JoyousSpring.create_pseudorandom({ { is_pendulum = true } }, 'j_joy_beyond', true)
                end
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
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "consumed" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "consume" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult * JoyousSpring.get_pendulum_count()
            end
        }
    end
})

-- Exceed the Pendulum
SMODS.Joker({
    key = "exceed",
    atlas = 'Misc04',
    pos = { x = 6, y = 5 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_pendulum_count(), card.ability.extra.creates } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { is_pendulum = true },
                            {},
                            {},
                        }
                    }
                },
            },
            xmult = 0.05,
            creates = 1,
            activated = true
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_pendulum_count()
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss and
                not card.ability.extra.activated then
                card.ability.extra.activated = true
                for i = 1, card.ability.extra.creates do
                    JoyousSpring.create_pseudorandom({ { is_pendulum = true, is_main_deck = true } },
                        'j_joy_exceed', false, false,
                        "e_negative")
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
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                card.joker_display_values.xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_pendulum_count()
            end
        }
    end
})

-- Linkuriboh
SMODS.Joker({
    key = "linkuriboh",
    atlas = 'Misc03',
    pos = { x = 1, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = { ["Kuriboh"] = true },
                summon_type = "LINK",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { rarity = 1 },
                        },
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if not context.blueprint_card and context.selling_self then
            if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then
                G.GAME.blind:disable()
                ease_dollars(-G.GAME.dollars)
                return { message = localize('ph_boss_disabled') }
            end
        end
    end,
})

-- Linguriboh
SMODS.Joker({
    key = "linguriboh",
    atlas = 'Misc03',
    pos = { x = 2, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.h_size } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",

                summon_type = "LINK",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_type = "Cyberse" },
                        },
                    }
                }
            },
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if not context.blueprint_card and context.selling_self then
            if G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind:get_type() == 'Boss')) then
                G.GAME.blind:disable()
                local used_ignister = false
                for _, material in ipairs(card.ability.extra.joyous_spring.summon_materials) do
                    if JoyousSpring.is_material_center(material, { monster_archetypes = { "Ignister" } }) then
                        used_ignister = true
                        break
                    end
                end
                if not used_ignister then
                    G.hand:change_size(-card.ability.extra.h_size)
                end
                return { message = localize('ph_boss_disabled') }
            end
        end
    end,
})

-- I:P Masquerena
SMODS.Joker({
    key = "ipmasq",
    atlas = 'Misc04',
    pos = { x = 7, y = 5 },
    joy_alt_pos = { { x = 3, y = 6 } },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = {} }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Cyberse",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { is_effect = true },
                            { is_effect = true },
                        },
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "LINK", exclude_keys = { "j_joy_ipmasq" } } })
                local key_to_transform = pseudorandom_element(choices, 'j_joy_ipmasq') or "j_joy_spknight"
                JoyousSpring.transform_card(card, key_to_transform, false, "Link", { "j_joy_ipmasq" })
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.joy_transforming == "j_joy_ipmasq"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.transform_card(other_card, "j_joy_ipmasq")
            end
        end
    end,
})

-- S:P Little Knight
SMODS.Joker({
    key = "spknight",
    atlas = 'Misc04',
    pos = { x = 0, y = 6 },
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
        return { vars = { card.ability.extra.banishes } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Warrior",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { is_effect = true },
                            { is_effect = true },
                        },
                    }
                }
            },
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_post_round_eval then
                local choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card then
                        table.insert(choices, joker)
                    end
                end
                local chosen = pseudorandom_element(choices, 'j_joy_spknight')
                if chosen then
                    local ed_materials = 0
                    for _, material in ipairs(JoyousSpring.get_materials(card)) do
                        if JoyousSpring.is_material_center(material, { is_extra_deck = true }) then
                            ed_materials = ed_materials + 1
                            if ed_materials >= 2 then
                                break
                            end
                        end
                    end
                    JoyousSpring.banish(card, ed_materials >= 2 and "blind_selected" or "boss_selected")
                    JoyousSpring.banish(chosen, ed_materials >= 2 and "blind_selected" or "boss_selected")
                end
            end
        end
    end,
})

-- Progleo
SMODS.Joker({
    key = "progleo",
    atlas = 'Misc04',
    pos = { x = 1, y = 6 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.banishes } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { exclude_tokens = true },
                            { exclude_tokens = true },
                        },
                    }
                }
            },
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_post_round_eval then
                local column = JoyousSpring.get_joker_column(card)

                local choices = {}
                if G.jokers.cards[column - 1] then
                    choices[#choices + 1] = G.jokers.cards[column - 1]
                end
                if G.jokers.cards[column + 1] then
                    choices[#choices + 1] = G.jokers.cards[column + 1]
                end
                local chosen = pseudorandom_element(choices, 'j_joy_progleo')
                if chosen then
                    JoyousSpring.banish(chosen, "boss_selected")
                end
            end
        end
    end,
})

-- Rasterliger
SMODS.Joker({
    key = "raster",
    atlas = 'Misc04',
    pos = { x = 2, y = 6 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { summon_type = "LINK" } }), card.ability.extra.percent * 100 } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "LIGHT",
                monster_type = "Cyberse",
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { exclude_tokens = true },
                            { exclude_tokens = true },
                            { exclude_tokens = true },
                            { exclude_tokens = true },
                        },
                    }
                }
            },
            mult = 50,
            percent = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { summon_type = "LINK" } })
                }
            end
            if context.joy_activate_effect and context.joy_activated_card == card and G.GAME.blind.in_blind then
                local tributes = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and not SMODS.is_eternal(joker, card) then
                        table.insert(tributes, joker)
                    end
                end
                local count = #tributes
                JoyousSpring.tribute(card, tributes)

                G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                    G.GAME.blind.chips * math.min(1, count * card.ability.extra.percent))
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            end
        end
    end,
    joy_can_activate = function(card)
        if not G.GAME.blind.in_blind or G.GAME.blind.chips <= to_big(0) then
            return false
        end
        for _, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
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
                    JoyousSpring.count_materials_in_graveyard({ { summon_type = "LINK" } })
            end
        }
    end
})
