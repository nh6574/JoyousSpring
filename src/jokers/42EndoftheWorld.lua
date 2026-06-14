--- END OF THE WORLD
SMODS.Atlas({
    key = "eotw",
    path = "42EndoftheWorld.png",
    px = 71,
    py = 95
})

-- Ruin, Angel of Oblivion
JoyousSpring.Joker({
    key = "eotw_ruinangel",
    atlas = 'eotw',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                summon_type = "RITUAL",
                monster_archetypes = { ["Ruin"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT" },
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and context.cardarea == G.play then
                return {
                    repetitions = 1
                }
            end
        end
        if context.joy_tributed_self then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local editionless_jokers = JoyousSpring.get_materials_owned({ { summon_type = "RITUAL", exclude_edition = true } })

                    local eligible_card = pseudorandom_element(editionless_jokers, self.key)
                    if eligible_card then
                        local edition = SMODS.poll_edition { key = self.key .. "_edition", guaranteed = true, no_negative = true }
                        eligible_card:set_edition(edition, true)
                    end
                    return true
                end
            }))
        end
    end,
})

-- Ruin, Queen of Oblivion
JoyousSpring.Joker({
    key = "eotw_ruin",
    atlas = 'eotw',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                summon_type = "RITUAL",
                monster_archetypes = { ["Ruin"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT" },
                            { monster_attribute = "LIGHT" },
                        }
                    }
                }
            },
            money = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and context.cardarea == G.play then
                return {
                    repetitions = 2
                }
            end
        end
        if context.joy_tributed_self then
            local count = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker ~= card and JoyousSpring.is_summon_type(joker, "RITUAL") then
                    count = count + 1
                end
            end
            return {
                dollars = count * card.ability.extra.money
            }
        end
    end,
})

-- Ruin, Supreme Queen of Oblivion
JoyousSpring.Joker({
    key = "eotw_ruinsupreme",
    atlas = 'eotw',
    pos = { x = 0, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'material', 'summon' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                summon_type = "RITUAL",
                monster_archetypes = { ["Ruin"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT", min = 2 },
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition and context.cardarea == G.play then
                local count = 0
                local materials = JoyousSpring.get_materials(card)
                for _, material in ipairs(materials) do
                    if JoyousSpring.is_material_center(material, { summon_type = "RITUAL" }) then
                        count = count + 1
                    end
                end
                if count > 0 then
                    return {
                        repetitions = count
                    }
                end
            end
        end
    end,
    joy_prevent_flip = function(self, card, other_card)
        return other_card.facing == "front" and JoyousSpring.is_summon_type(other_card, "RITUAL")
    end,
})

-- Demise, Agent of Armageddon
JoyousSpring.Joker({
    key = "eotw_demiseagent",
    atlas = 'eotw',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "DARK",
                summon_type = "RITUAL",
                monster_archetypes = { ["Demise"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "DARK" },
                        }
                    }
                },
            },
            mult = 18
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
            if context.destroying_card and context.destroying_card == context.scoring_hand[#context.scoring_hand] then
                return {
                    remove = true
                }
            end
        end
        if context.joy_tributed_self then
            G.E_MANAGER:add_event(Event({
                func = function()
                    local editionless_jokers = JoyousSpring.get_materials_owned({ { summon_type = "RITUAL", exclude_edition = true } })

                    local eligible_card = pseudorandom_element(editionless_jokers, self.key)
                    if eligible_card then
                        local edition = SMODS.poll_edition { key = self.key .. "_edition", guaranteed = true, no_negative = true }
                        eligible_card:set_edition(edition, true)
                    end
                    return true
                end
            }))
        end
    end,
})

-- Demise, King of Armageddon
JoyousSpring.Joker({
    key = "eotw_demise",
    atlas = 'eotw',
    pos = { x = 2, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'tribute' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "DARK",
                summon_type = "RITUAL",
                monster_archetypes = { ["Demise"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "DARK" },
                            { monster_attribute = "DARK" },
                        }
                    }
                }
            },
            mult = 24,
            money = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * #context.scoring_hand
                }
            end
            if context.destroying_card then
                return {
                    remove = true
                }
            end
        end
        if context.joy_tributed_self then
            local count = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker ~= card and JoyousSpring.is_summon_type(joker, "RITUAL") then
                    count = count + 1
                end
            end
            return {
                dollars = count * card.ability.extra.money
            }
        end
    end,
})

-- Demise, Supreme King of Armageddon
JoyousSpring.Joker({
    key = "eotw_demisesupreme",
    atlas = 'eotw',
    pos = { x = 0, y = 2 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, 1 + card.ability.extra.xchips * (card.ability.extra.active or 0) } }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'material', 'summon' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "DARK",
                summon_type = "RITUAL",
                monster_archetypes = { ["Demise"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "DARK", min = 2 },
                        }
                    }
                }
            },
            xchips = 1
        },
    },
    joy_set_hand_highlight_limit = function(self, card)
        return #JoyousSpring.get_materials(card)
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xchips = 1 + card.ability.extra.xchips * (card.ability.extra.active or 0)
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                card.ability.extra.active = #G.hand.highlighted

                SMODS.destroy_cards(G.hand.highlighted)
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        if card.ability.extra.active then
            return false
        end
        local amount = #G.hand.highlighted
        local max = #JoyousSpring.get_materials(card)
        return amount > 0 and amount <= max
    end,
    joy_prevent_flip = function(self, card, other_card)
        return other_card.facing == "front" and JoyousSpring.is_summon_type(other_card, "RITUAL")
    end,

})

local mod_set_debuff_ref = SMODS.current_mod.set_debuff or function() end
SMODS.current_mod.set_debuff = function(card)
    if JoyousSpring.is_summon_type(added_card, "RITUAL") and not JoyousSpring.is_perma_debuffed(card) then
        local has_supreme = false
        for _, joker in ipairs(SMODS.merge_lists(SMODS.find_card("j_joy_eotw_ruinsupreme"), SMODS.find_card("j_joy_eotw_demisesupreme"))) do
            if JoyousSpring.can_use_abilities(joker) then
                has_supreme = true
                break
            end
        end
        return has_supreme and "prevent_debuff" or nil
    end
    return mod_set_debuff_ref(card)
end

-- End of the World Ruler
JoyousSpring.Joker({
    key = "eotw_ruler",
    atlas = 'eotw',
    pos = { x = 1, y = 2 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 18,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { summon_type = "RITUAL" } }), card.ability.extra.active or 0 } }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'graveyard' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "DARK",
                summon_type = "RITUAL",
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_attribute = "LIGHT", summon_type = "RITUAL" },
                            { monster_attribute = "DARK",  summon_type = "RITUAL" },
                        }
                    }
                }
            },
            mult = 30
        },
    },
    joy_set_hand_highlight_limit = function(self, card)
        return #JoyousSpring.get_materials(card)
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { summon_type = "RITUAL" } })
                }
            end
            if context.repetition and context.cardarea == G.play and card.ability.extra.active
                and card.ability.extra.active > 0 then
                return {
                    repetitions = card.ability.extra.active
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                card.ability.extra.active = #G.hand.highlighted

                SMODS.destroy_cards(G.hand.highlighted)
            end
        end
        if context.after then
            card.ability.extra.active = nil
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        if card.ability.extra.active then
            return false
        end
        local amount = #G.hand.highlighted
        return amount > 0
    end,
})

-- Breaking of the World
JoyousSpring.Joker({
    key = "eotw_breaking",
    atlas = 'eotw',
    pos = { x = 0, y = 0 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { "j_joy_eotw_breaking", properties = { { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { 'tribute', 'ritual', 'sidedeck' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true
            },
            money = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed then
                if not card.ability.extra.active and JoyousSpring.is_summon_type(context.joy_card, "RITUAL") then
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Ruin" } }, { monster_archetypes = { "Demise" } } })
                    local choice = pseudorandom_element(choices, self.key)
                    if choice then
                        SMODS.add_card { key = choice, area = JoyousSpring.side_deck_area }
                    end
                end
                if context.joy_for_ritual then
                    return {
                        dollars = card.ability.extra.money
                    }
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "eotw" },
    label = "k_joy_archetype_eotw"
}
