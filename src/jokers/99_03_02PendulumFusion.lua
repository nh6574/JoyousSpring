--- PENDULUM FUSION FREE AGENTS

-- Patissciel Couverture
SMODS.Joker({
    key = "couverture",
    atlas = 'Misc03',
    pos = { x = 4, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.adds } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                is_pendulum = true,
                attribute = "DARK",
                monster_type = "Fairy",

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
            JoyousSpring.create_pseudorandom({ { is_pendulum = true, rarity = 3 } }, 'j_joy_couverture', true)
        end
        if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
            JoyousSpring.add_to_extra_deck("j_joy_couverture")
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.is_summoned(card) and
            (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit)
    end,
})
