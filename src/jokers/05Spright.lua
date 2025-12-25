--- SPRIGHT
SMODS.Atlas({
    key = "Spright",
    path = "05Spright.png",
    px = 71,
    py = 95
})

-- Spright Blue
SMODS.Joker({
    key = "spright_blue",
    atlas = 'Spright',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true }
            },
            cards_to_create = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                for i = 1, card.ability.extra.cards_to_create do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "Spright" }, is_main_deck = true, exclude_keys = { "j_joy_spright_blue" } } },
                        'j_joy_spright_blue', true)
                end
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { rarity = 2 } }) > 0 then
            card.cost = 0
        end
    end,
})

-- Spright Jet
SMODS.Joker({
    key = "spright_jet",
    atlas = 'Spright',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mill } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true }
            },
            mills = 2,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { rarity = 2 } },
                    card.config.center.key, card.ability.extra.mills)
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { rarity = 2 } }) > 0 then
            card.cost = 0
        end
    end,
})

-- Spright Carrot
SMODS.Joker({
    key = "spright_carrot",
    atlas = 'Spright',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult,
                1 + card.ability.extra.xmult *
                (JoyousSpring.count_materials_owned({ { rarity = 2 } }) + (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0))
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true }
            },
            xmult = 0.1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local uncommon_count = JoyousSpring.count_materials_owned({ { rarity = 2 } }) +
                    (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0)
                return {
                    xmult = 1 + card.ability.extra.xmult * uncommon_count
                }
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { rarity = 2 } }) > 0 then
            card.cost = 0
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
            calc_function = function(card)
                local uncommon_count = JoyousSpring.count_materials_owned({ { rarity = 2 } }) +
                    (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0)
                card.joker_display_values.xmult = 1 + card.ability.extra.xmult * uncommon_count
            end
        }
    end
})

-- Spright Red
SMODS.Joker({
    key = "spright_red",
    atlas = 'Spright',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult *
                (JoyousSpring.count_materials_owned({ { rarity = 2 } }) + (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0))
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true }
            },
            mult = 10,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local uncommon_count = JoyousSpring.count_materials_owned({ { rarity = 2 } }) +
                    (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0)
                return {
                    mult = card.ability.extra.mult * uncommon_count
                }
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { rarity = 2 } }) > 0 then
            card.cost = 0
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
                local uncommon_count = JoyousSpring.count_materials_owned({ { rarity = 2 } }) +
                    (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0)
                card.joker_display_values.mult = card.ability.extra.mult * uncommon_count
            end
        }
    end
})

-- Spright Pixies
SMODS.Joker({
    key = "spright_pixies",
    atlas = 'Spright',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.chips *
                (JoyousSpring.count_materials_owned({ { rarity = 2 } }) + (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0))
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true }
            },
            chips = 40,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local uncommon_count = JoyousSpring.count_materials_owned({ { rarity = 2 } }) +
                    (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0)
                return {
                    chips = card.ability.extra.chips * uncommon_count
                }
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { rarity = 2 } }) > 0 then
            card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                local uncommon_count = JoyousSpring.count_materials_owned({ { rarity = 2 } }) +
                    (next(SMODS.find_card("j_joy_spright_elf")) and JoyousSpring.count_materials_in_graveyard({ { rarity = 2 } }) or 0)
                card.joker_display_values.chips = card.ability.extra.chips * uncommon_count
            end
        }
    end
})

-- Spright Elf
SMODS.Joker({
    key = "spright_elf",
    atlas = 'Spright',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "FIRE",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { rarity = 2 },
                            { rarity = 2 }
                        }
                    }
                }
            },
            revives = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                for i = 1, card.ability.extra.revives do
                    JoyousSpring.revive_pseudorandom(
                        { { rarity = 2 } },
                        'j_joy_spright_elf',
                        true
                    )
                end
            end
        end
    end,
})

-- Spright Sprind
SMODS.Joker({
    key = "spright_sprind",
    atlas = 'Spright',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.base_materials, card.ability.extra.detached } }
    end,
    joy_desc_cards = {
        { "j_joy_spright_gigantic",                                name = "k_joy_adds" },
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "FIRE",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { rarity = 2, summon_type = "XYZ" },
                            { rarity = 2 }
                        }
                    }
                }
            },
            base_materials = 4,
            detached = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and context.joy_detached then
                card.ability.extra.detached = card.ability.extra.detached + 1
                if card.ability.extra.detached >= card.ability.extra.base_materials then
                    card.ability.extra.detached = 0
                    if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                card:juice_up(0.5, 0.5)
                                return true
                            end,
                        }))
                        JoyousSpring.add_to_extra_deck("j_joy_spright_gigantic")
                    end
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            card.ability.extra.unique_count = #SMODS.find_card("j_joy_spright_sprind", true)
        end
        if not card.debuff then
            local spright_material = false
            for _, key in ipairs(JoyousSpring.get_materials(card)) do
                if JoyousSpring.is_material_center(key, { monster_archetypes = { "Spright" } }) then
                    spright_material = true
                    break
                end
            end
            if spright_material then
                for _, joker in ipairs(G.jokers.cards) do
                    if joker:is_rarity(2) then
                        if not joker.edition then
                            joker:set_edition({ negative = true })
                        end
                    else
                        SMODS.debuff_card(joker, true, "j_joy_spright_sprind" .. (card.ability.extra.unique_count or 0))
                    end
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, "j_joy_spright_sprind" .. (card.ability.extra.unique_count or 0))
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff then
            local spright_material = false
            for _, key in ipairs(JoyousSpring.get_materials(card)) do
                if JoyousSpring.is_material_center(key, { monster_archetypes = { "Spright" } }) then
                    spright_material = true
                    break
                end
            end
            if spright_material then
                if added_card:is_rarity(2) then
                    if not added_card.edition then
                        added_card:set_edition({ negative = true })
                    end
                else
                    SMODS.debuff_card(added_card, true, "j_joy_spright_sprind" .. (card.ability.extra.unique_count or 0))
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "detached" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "base_materials" },
                { text = ")" },
            },
        }
    end
})

-- Gigantic Spright
SMODS.Joker({
    key = "spright_gigantic",
    atlas = 'Spright',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_detach" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Spright" } } }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Thunder",
                monster_archetypes = { ["Spright"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 2, exclude_tokens = true, exclude_summon_types = { "XYZ" } },
                            { rarity = 2, exclude_tokens = true, exclude_summon_types = { "XYZ" } }
                        },
                    }
                }
            },
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    JoyousSpring.ease_detach(card)
                end

                for i = 1, card.ability.extra.cards_to_create do
                    if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                        JoyousSpring.create_pseudorandom({ {
                            rarity = 2,
                            exclude_field_spell = not (#JoyousSpring.field_spell_area.cards <
                                JoyousSpring.field_spell_area.config.card_limit) or nil
                        } }, card.config.center.key, true)
                    end
                end
            end
        end
    end,
    joy_can_detach = function(self, card)
        return #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "spright" },
    label = "k_joy_archetype_spright"
}
