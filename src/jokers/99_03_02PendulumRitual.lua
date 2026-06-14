--- PENDULUM RITUAL FREE AGENTS

-- Miracle Raven
JoyousSpring.Joker({
    key = "miracleraven",
    atlas = "Misc03",
    pos = { x = 6, y = 5 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.p_secret_pack_joy_ritual
        return { vars = {} }
    end,
    joy_glossary = { 'material', 'sidedeck', 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                is_pendulum = true,
                is_all_materials = { RITUAL = true },
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {},
                            {},
                        }
                    },
                    {
                        type = "RITUAL",
                        materials = {
                            { is_pendulum = true },
                        }
                    }
                }
            },
        },
    },
    use = function(self, card, area, copier)
        JoyousSpring.add_secret_tag("p_secret_pack_joy_ritual")
    end,
    can_use = function(self, card)
        return true
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed_self then
                local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "RITUAL" } })
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                end
            end
        end
    end,
})
