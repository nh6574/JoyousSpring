--- RITUAL FREE AGENTS

-- Sauravis, the Ancient and Ascended

JoyousSpring.Joker({
    key = "sauravis",
    atlas = 'Misc01',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + (card.ability.extra.xmult * (G.GAME.joy_sauravis_uses or 0)) } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "LIGHT",
                monster_type = "Dragon",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {},
                            {},
                        }
                    }
                }
            },
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + (card.ability.extra.xmult * (G.GAME.joy_sauravis_uses or 0))
                }
            end
        end
        if not context.blueprint_card and context.selling_self then
            if JoyousSpring.are_blinds_active() then
                JoyousSpring.disable_all_active_blinds()
                JoyousSpring.add_monster_tag("j_joy_sauravis")
                G.GAME.joy_sauravis_uses = (G.GAME.joy_sauravis_uses or 0) + 1
                return { message = localize('ph_boss_disabled') }
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
            reminder_text = {
                { ref_table = "card.joker_display_values", ref_value = "active_text" },
            },
            calc_function = function(card)
                local disableable = JoyousSpring.are_there_blinds_to_disable_this_ante()
                card.joker_display_values.active = disableable
                card.joker_display_values.active_text = localize(disableable and 'k_active' or 'ph_no_boss_active')
                card.joker_display_values.xmult = 1 + (card.ability.extra.xmult * (G.GAME.joy_sauravis_uses or 0))
            end,
            style_function = function(card, text, reminder_text, extra)
                if reminder_text and reminder_text.children[1] then
                    reminder_text.children[1].config.colour = card.joker_display_values.active and G.C.GREEN or G.C.RED
                    reminder_text.children[1].config.scale = card.joker_display_values.active and 0.35 or 0.3
                    return true
                end
                return false
            end
        }
    end,
})

-- Lycanthrope
JoyousSpring.Joker({
    key = "lycanthrope",
    atlas = 'Misc04',
    pos = { x = 3, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_all_materials({ { is_normal = true } }) } }
    end,
    joy_glossary = { "normal", "graveyard" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "EARTH",
                monster_type = "BeastWarrior",
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
                            { is_normal = true },
                        }
                    }
                }
            },
            mult = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_all_materials({ { is_normal = true } })
                }
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
                    JoyousSpring.count_all_materials({ { is_normal = true } })
            end
        }
    end
})

-- Skull Guardian
JoyousSpring.Joker({
    key = "skullguardian",
    atlas = "Misc06",
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Warrior",
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {},
                        }
                    }
                }
            },
            mult = 25
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
    end,
})

-- Saffira, Queen of Dragons
JoyousSpring.Joker({
    key = "saffira",
    atlas = "Misc06",
    pos = { x = 4, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, card.ability.extra.discards, card.ability.extra.h_size * card.ability.extra.count_h_size, card.ability.extra.current_discards, card.ability.extra.count_add } }
    end,
    joy_glossary = { "tribute", "sidedeck" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Dragon",
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT" },
                            {},
                        }
                    }
                }
            },
            count_h_size = 0,
            count_discards = 0,
            count_add = 0,
            h_size = 1,
            discards = 1,
            current_discards = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                if card.ability.extra.count_h_size > 0 then
                    G.hand:change_size(card.ability.extra.h_size * card.ability.extra.count_h_size)
                    G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                        card.ability.extra.h_size * card.ability.extra.count_h_size
                end
                card.ability.extra.count_h_size = 0
                if card.ability.extra.current_discards > 0 then
                    ease_discard(card.ability.extra.current_discards)
                end
                card.ability.extra.current_discards = 0
            end
            if context.joy_tributed and JoyousSpring.is_attribute(context.joy_card, "LIGHT") then
                card.ability.extra.count_h_size = card.ability.extra.count_h_size + 1
                card.ability.extra.count_discards = card.ability.extra.count_discards + 1
                card.ability.extra.count_add = card.ability.extra.count_add + 1
                if card.ability.extra.count_discards >= 3 then
                    while card.ability.extra.count_discards >= 3 do
                        card.ability.extra.current_discards = card.ability.extra.current_discards + 1
                        card.ability.extra.count_discards = card.ability.extra.count_discards - 3
                    end
                end
                if card.ability.extra.count_add >= 5 then
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_attribute = "LIGHT" } })
                    while card.ability.extra.count_add >= 5 do
                        local choice = pseudorandom_element(choices, self.key)
                        if choice then
                            SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                        end
                        card.ability.extra.count_add = card.ability.extra.count_add - 5
                    end
                end
            end
        end
    end,
})
