--- LINK FREE AGENTS

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

-- Beyond the Pendulum
SMODS.Joker({
    key = "beyond",
    atlas = 'Misc03',
    pos = { x = 0, y = 4 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.get_pendulum_count(), card.ability.extra.creates, card.ability.extra.consume, card.ability.extra.consumed } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
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
                    JoyousSpring.create_pseudorandom({ { is_pendulum = true } }, pseudoseed("j_joy_beyond"), true)
                end
            end
        end
    end,
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
    generate_ui = JoyousSpring.generate_info_ui,
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
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
                    { message = localize('ph_boss_disabled') })
                G.GAME.blind:disable()
                ease_dollars(-G.GAME.dollars)
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
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revives" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.h_size } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
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
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil,
                    { message = localize('ph_boss_disabled') })
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
            end
        end
    end,
})
