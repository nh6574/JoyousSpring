--- PENDULUM XYZ FREE AGENTS

-- Daidaratant the Ooze Giant
JoyousSpring.Joker({
    key = "ooze",
    atlas = 'Misc02',
    pos = { x = 5, y = 5 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attach, card.ability.extra.detach, card.ability.extra.revives } }
    end,
    joy_glossary = { "xyz_material", "revive" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_pendulum = true,
                summon_type = "XYZ",
                attribute = "WATER",
                monster_type = "Zombie",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { is_pendulum = true, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { is_pendulum = true, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            attach = 2,
            detach = 2,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                for i = 1, card.ability.extra.revives do
                    JoyousSpring.revive_pseudorandom({ { is_pendulum = true } }, 'j_joy_ooze', false,
                        "e_negative")
                end
            end
        end
    end,
    use = function(self, card, area, copier)
        local choices = JoyousSpring.get_materials_owned({ { summon_type = "XYZ" } })
        local joker = pseudorandom_element(choices, 'j_joy_ooze')

        if joker then
            joker.ability.extra.joyous_spring.xyz_materials = joker.ability.extra.joyous_spring.xyz_materials +
                card.ability.extra.attach
        end
    end,
    can_use = function(self, card)
        return JoyousSpring.count_materials_owned({ { summon_type = "XYZ" } }) >
            (card.area and card.area == G.jokers and 1 or 0)
    end,
    joy_can_detach = function(self, card)
        return JoyousSpring.count_materials_in_graveyard({ { is_pendulum = true } }, true) > 0
    end
})
