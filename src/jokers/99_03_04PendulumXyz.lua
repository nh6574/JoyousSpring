--- PENDULUM XYZ FREE AGENTS

-- Daidaratant the Ooze Giant
SMODS.Joker({
    key = "ooze",
    atlas = 'Misc04',
    pos = { x = 5, y = 5 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.attach, card.ability.extra.detach, card.ability.extra.revives } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
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
