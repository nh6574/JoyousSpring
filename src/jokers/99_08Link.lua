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
