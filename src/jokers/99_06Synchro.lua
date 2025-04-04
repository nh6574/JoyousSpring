--- SYNCHRO FREE AGENTS

-- Firewall Saber Dragon
SMODS.Joker({
    key = "firewall_saber",
    atlas = 'Misc03',
    pos = { x = 0, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revives" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.creates } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = { ["Firewall"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { monster_type = "Cyberse", is_tuner = true,                         exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true,    exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            revives = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "LINK") then
            for i = 1, card.ability.extra.creates do
                SMODS.add_card({
                    set = "Spectral",
                    edition = "e_negative"
                })
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { is_extra_deck = true, monster_type = "Cyberse" } },
                    pseudoseed("j_joy_firewall_saber"), false, "e_negative")
            end
        end
    end
})
