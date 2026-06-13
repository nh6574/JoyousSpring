--- RITUAL FREE AGENTS

-- Sauravis, the Ancient and Ascended
JoyousSpring.Joker({
    key = "sauravis",
    atlas = 'Misc01',
    pos = { x = 1, y = 4 },
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = false,
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
    atlas = 'Misc02',
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
                            { is_normal = true },
                        }
                    }
                }
            },
            mult = 20
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
    atlas = "Misc03",
    pos = { x = 2, y = 3 },
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
    atlas = "Misc03",
    pos = { x = 1, y = 3 },
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

-- Cú Chulainn the Awakened
JoyousSpring.Joker({
    key = "chulainn",
    atlas = 'Misc03',
    pos = { x = 3, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.removes, card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.sends } }
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
            removes = 3,
            mult = 5,
            current_mult = 0,
            sends = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
            if context.setting_blind then
                JoyousSpring.send_to_graveyard_pseudorandom({ { is_normal = true } }, self.key .. "_send")
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                local old_count = JoyousSpring.get_graveyard_count()
                JoyousSpring.remove_from_graveyard(card.ability.extra.removes, self.key, nil,
                    { { is_normal = true } })
                local removed = old_count - JoyousSpring.get_graveyard_count()
                card.ability.extra.current_mult = card.ability.extra.current_mult +
                    card.ability.extra.mult * removed
            end
        end
    end,
})

-- Divine Grace - Northwemko
JoyousSpring.Joker({
    key = "northwemko",
    atlas = 'Misc03',
    pos = { x = 4, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.xchips },
        }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT", min = 1 },
                        }
                    }
                }
            },
            xchips = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play and
                context.other_card.ability.joy_northwemko then
                return {
                    xchips = card.ability.extra.xchips
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                card.ability.extra.active = true

                for _, pcard in ipairs(G.hand.highlighted) do
                    pcard.ability.joy_northwemko = true
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.active then
            return false
        end
        local amount = #G.hand.highlighted
        return amount > 0
    end,
})

-- Shinato, King of a Higher Plane
JoyousSpring.Joker({
    key = "shinato",
    atlas = 'Misc03',
    pos = { x = 0, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fairy",
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
            xchips = 6
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xchips = card.ability.extra.xchips
                }
            end
            if context.after and SMODS.last_hand_oneshot then
                SMODS.destroy_cards(card)
            end
        end
    end,
})

-- Vennu, Bright Bird of Divinity
JoyousSpring.Joker({
    key = "vennu",
    atlas = 'Misc03',
    pos = { x = 1, y = 4 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fairy",
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
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed and context.joy_card.ability.set == "Joker"
                and not card.ability.extra.active then
                card.ability.extra.active = true
                JoyousSpring.revive_pseudorandom({ { monster_attribute = "LIGHT" } }, self.key, true)
            end
            if context.joy_returned and context.joy_returned_card == card then
                card.ability.extra.active_prob = true
            end
            if context.joy_probability_roll and card.ability.extra.active_prob then
                JoyousSpring.guaranteed_probability = true
                card.ability.extra.active_prob = false
                return {
                    message = localize("k_joy_activated_ex"),
                    colour = G.C.GREEN,
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end
})

-- Reshef the Dark Being
JoyousSpring.Joker({
    key = "reshef",
    atlas = 'Misc03',
    pos = { x = 6, y = 3 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Fiend",
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            {},
                            {},
                            {},
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_materials_owned({ { is_field_spell = true } }, nil, true, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) and #G.jokers.cards < G.jokers.config.card_limit then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.create_pseudorandom({ { is_effect = true } }, self.key, true)
            end
        end
    end,
    joy_can_activate = function(card)
        return #G.jokers.cards < G.jokers.config.card_limit and
            JoyousSpring.any_materials_owned({ { is_field_spell = true } }, nil, true, true)
    end,
})

-- Garlandolf, King of Destruction
JoyousSpring.Joker({
    key = "garlandolf",
    atlas = 'Misc03',
    pos = { x = 5, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.current_xchips } }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "DARK" },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            xchips = 1,
            current_xchips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xchips = card.ability.extra.current_xchips
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and card.ability.extra.joyous_spring.summoned then
            local count = 0
            local targets = {}
            for _, joker in ipairs(G.jokers.cards) do
                if not SMODS.is_eternal(joker, card) then
                    count = count + 1
                    targets[#targets + 1] = joker
                end
            end
            SMODS.destroy_cards(targets)
            card.ability.extra.current_xchips = card.ability.extra.xchips * count
        end
    end
})
