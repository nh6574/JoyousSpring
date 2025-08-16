--- PENDULUM SYNCHRO FREE AGENTS

-- Nirvana High Paladin
SMODS.Joker({
    key = "nirvana",
    atlas = 'Misc04',
    pos = { x = 4, y = 5 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                summon_type = "SYNCHRO",
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, summon_type = "SYNCHRO" },
                        },
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_pendulum_monster(context.other_joker) then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
        end
    end,
    use = function(self, card, area, copier)
        for _, joker in ipairs(G.jokers.cards) do
            if JoyousSpring.is_pendulum_monster(joker) then
                joker:set_edition("e_polychrome")
            end
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.count_materials_owned({ { is_pendulum = true } }) >
            (card.area and card.area == G.jokers and 1 or 0)
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            mod_function = function(card, mod_joker)
                return {
                    x_mult = card.facing == "front" and JoyousSpring.is_pendulum_monster(card) and
                        mod_joker.ability.extra.xmult ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
})
