--- DRACOTAIL
SMODS.Atlas({
    key = "dracotail",
    path = "34Dracotail.png",
    px = 71,
    py = 95
})

-- Dracotail Lukias
JoyousSpring.Joker({
    key = "dracotail_lukias",
    atlas = 'dracotail',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cards, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "maindeck", "material", "fusion" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "EARTH",
                monster_archetypes = { ["Dracotail"] = true }
            },
            cards = 5,
            count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.remove_playing_cards then
                card.ability.extra.count = card.ability.extra.count + #context.removed
                while card.ability.extra.count >= 5 do
                    JoyousSpring.create_pseudorandom({ { is_main_deck = true, monster_archetypes = { "Dracotail" } } },
                        self.key, true)
                    card.ability.extra.count = math.max(0, card.ability.extra.count - 5)
                end
            end
            if context.destroy_card and context.cardarea == G.play and
                G.GAME.current_round.hands_played == 0 and #context.full_hand == 3 then
                card.active = true
                return {
                    remove = true
                }
            end
            if context.after then
                if card.active then
                    G.GAME.joy_extra_packs = G.GAME.joy_extra_packs or {}
                    G.GAME.joy_extra_packs[#G.GAME.joy_extra_packs + 1] = "p_standard_jumbo_" .. math.random(1, 2)
                end
                card.active = nil
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.remove_playing_cards then
                config.count = config.count + #context.removed
                while config.count >= 5 do
                    JoyousSpring.create_pseudorandom({ { is_main_deck = true, monster_archetypes = { "Dracotail" } } },
                        self.key, true)
                    config.count = math.max(0, config.count - 5)
                end
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            cards = 5,
            count = 0
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.cards, config.count } }
    end,
})

-- Dracotail Faimena
JoyousSpring.Joker({
    key = "dracotail_faimena",
    atlas = 'dracotail',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cards, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "extradeck", "material", "fusion" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "WATER",
                monster_archetypes = { ["Dracotail"] = true }
            },
            cards = 5,
            count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.remove_playing_cards then
                card.ability.extra.count = card.ability.extra.count + #context.removed
                while card.ability.extra.count >= 5 do
                    JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Dracotail" } } },
                        self.key)
                    card.ability.extra.count = math.max(0, card.ability.extra.count - 5)
                end
            end
            if context.destroy_card and context.cardarea == G.play and
                G.GAME.current_round.hands_played == 1 and #context.full_hand == 3 then
                card.active = true
                return {
                    remove = true
                }
            end
            if context.after then
                if card.active then
                    for i = 1, 2 do
                        add_tag({ key = "tag_standard" })
                    end
                end
                card.active = nil
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.remove_playing_cards then
                config.count = config.count + #context.removed
                while config.count >= 5 do
                    JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Dracotail" } } },
                        self.key)
                    config.count = math.max(0, config.count - 5)
                end
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            cards = 5,
            count = 0
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.cards, config.count } }
    end,
})

-- Dracotail Phryxul
JoyousSpring.Joker({
    key = "dracotail_phry",
    atlas = 'dracotail',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cards, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "revive", "material", "fusion" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["Dracotail"] = true }
            },
            cards = 5,
            count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.remove_playing_cards then
                card.ability.extra.count = card.ability.extra.count + #context.removed
                while card.ability.extra.count >= 5 do
                    JoyousSpring.revive_pseudorandom(
                        { { monster_archetypes = { "Dracotail" }, exclude_keys = { "j_joy_dracotail_arthalion", "j_joy_dracotail_phry" } } },
                        self.key, true)
                    card.ability.extra.count = math.max(0, card.ability.extra.count - 5)
                end
            end
            if context.destroy_card and context.cardarea == G.play and
                G.GAME.current_round.hands_played == 2 and #context.full_hand == 3 then
                card.active = true
                return {
                    remove = true
                }
            end
            if context.after then
                if card.active then
                    for i = 1, 2 do
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { set = "Base", key_append = self.key .. "_pcard", area = G.deck,
                                    edition = SMODS.poll_edition { guaranteed = true, key = self.key .. "_edition" } }
                                return true
                            end
                        }))
                    end
                end
                card.active = nil
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.remove_playing_cards then
                config.count = config.count + #context.removed
                while config.count >= 5 do
                    JoyousSpring.revive_pseudorandom(
                        { { monster_archetypes = { "Dracotail" }, exclude_keys = { "j_joy_dracotail_arthalion", "j_joy_dracotail_phry" } } },
                        self.key, true)
                    config.count = math.max(0, config.count - 5)
                end
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            cards = 5,
            count = 0
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.cards, config.count } }
    end,
})

-- Dracotail Mululu
JoyousSpring.Joker({
    key = "dracotail_mululu",
    atlas = 'dracotail',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "transform", "fusion", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["Dracotail"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.after then
                local key_to_transform = #context.scoring_hand == 2 and
                    pseudorandom_element({ "j_joy_dracotail_gulamel", "j_joy_dracotail_shaulas" }, self.key) or
                    "j_joy_dracotail_arthalion"
                local playing_card_materials = SMODS.shallow_copy(context.scoring_hand)
                local cards_used = JoyousSpring.playing_cards_used({}, playing_card_materials)
                JoyousSpring.destroy_cards(playing_card_materials)

                JoyousSpring.transform_card(card, key_to_transform, false, "FUSION", { "j_joy_dracotail_mululu" },
                    cards_used)
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.joy_transforming == "j_joy_dracotail_mululu"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.transform_card(other_card, "j_joy_dracotail_mululu")
            end
        end
    end,
})

-- Dracotail Urgula
JoyousSpring.Joker({
    key = "dracotail_urgula",
    atlas = 'dracotail',
    pos = { x = 2, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0), card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "material", "fusion" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "FIRE",
                monster_archetypes = { ["Dracotail"] = true }
            },
            mult = 2,
            adds = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_cards_destroyed or 0)
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) then
            for i = 1, 3 do
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card { set = "Enhanced", key_append = self.key .. "_pcard", area = G.deck }
                        return true
                    end
                }))
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.mult * (G.GAME.joy_cards_destroyed or 0)
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 2
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * (G.GAME.joy_cards_destroyed or 0) } }
    end,
})

-- Dracotail Pan
JoyousSpring.Joker({
    key = "dracotail_pan",
    atlas = 'dracotail',
    pos = { x = 0, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.joy_cards_destroyed or 0), card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "material", "fusion" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "WIND",
                monster_archetypes = { ["Dracotail"] = true }
            },
            chips = 20,
            adds = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * (G.GAME.joy_cards_destroyed or 0)
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) then
            for i = 1, 3 do
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card { set = "Base", key_append = self.key .. "_pcard", area = G.deck, seal = SMODS.poll_seal { guaranteed = true, key = self.key .. "_seal" } }
                        return true
                    end
                }))
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    chips = config.chips * (G.GAME.joy_cards_destroyed or 0)
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            chips = 20
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.chips, config.chips * (G.GAME.joy_cards_destroyed or 0) } }
    end,
})

-- Dracotail Shaulas
JoyousSpring.Joker({
    key = "dracotail_shaulas",
    atlas = 'dracotail',
    pos = { x = 2, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "extradeck", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                monster_type = "Dragon",
                attribute = "LIGHT",
                monster_archetypes = { ["Dracotail"] = true },
                summon_playing_card_conditions = { min = 2, max = 2 },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Dragon" },
                        }
                    }
                }
            },
            money = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and (G.GAME.joy_cards_destroyed or 0) > 0 then
            ease_dollars(card.ability.extra.money * (G.GAME.joy_cards_destroyed or 0))
            JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Dracotail" } } }, self.key, true)
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if not from_debuff and G.GAME.joy_cards_destroyed_round_info then
            for _, pcard_info in ipairs(G.GAME.joy_cards_destroyed_round_info) do
                local created = SMODS.create_card { set = "Base", rank = '2', suit = 'Hearts' }
                created:load(pcard_info)
                created:set_edition("e_negative", true, true)
                created.facing = 'front'
                created.sprite_facing = 'front'
                created.ability.joy_temporary = true
                SMODS.add_to_deck(created, { area = G.GAME.blind.in_blind and G.hand or G.deck })
            end
        end
    end
})

-- Dracotail Gulamel
JoyousSpring.Joker({
    key = "dracotail_gulamel",
    atlas = 'dracotail',
    pos = { x = 1, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.destroys } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "extradeck", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                monster_type = "Spellcaster",
                attribute = "WATER",
                monster_archetypes = { ["Dracotail"] = true },
                summon_playing_card_conditions = { min = 2, max = 2 },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Dragon" },
                        }
                    }
                }
            },
            destroys = 5
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local choices = SMODS.shallow_copy(G.deck.cards)
            local picked = {}
            for i = 1, card.ability.extra.destroys do
                local choice, index = pseudorandom_element(choices, self.key)
                if choice then
                    picked[#picked + 1] = choice
                    table.remove(choices, index)
                else
                    break
                end
            end
            SMODS.destroy_cards(picked)
            JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Dracotail" } } }, self.key, true)
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if not from_debuff then
            for i = 1, 2 do
                add_tag({ key = "tag_standard" })
            end
        end
    end
})

local tarot_spectrals_arth = {
    "c_magician", "c_empress", "c_heirophant", "c_lovers", "c_chariot",
    "c_justice", "c_devil", "c_tower", "c_joy_cardian_gathering", "c_talisman", "c_deja_vu",
    "c_trance", "c_medium", "c_joy_purr_happy", "c_joy_purr_sleepy", "c_joy_purr_delicious", "c_joy_purr_pretty"
}

-- Dracotail Arthalion
JoyousSpring.Joker({
    key = "dracotail_arthalion",
    atlas = 'dracotail',
    pos = { x = 0, y = 2 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
        JoyousSpring.Joker.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)

        if card and not card.debuff and card.ability.extra.has_ability then
            local cards_used = card.ability.extra.cards_used or {}
            full_UI_table.joy_multi_box = full_UI_table.joy_multi_box or {}

            local order = {
                "m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky", "m_joy_hanafuda",
                "e_foil", "e_holo", "e_polychrome",
                "red_seal", "blue_seal", "gold_seal", "purple_seal", "joy_purr_memory_seal",
            }
            local types = {
                m_bonus = "Enhanced",
                m_mult = "Enhanced",
                m_wild = "Enhanced",
                m_glass = "Enhanced",
                m_steel = "Enhanced",
                m_stone = "Enhanced",
                m_gold = "Enhanced",
                m_lucky = "Enhanced",
                m_joy_hanafuda = "Enhanced",
                e_foil = "Edition",
                e_holo = "Edition",
                e_polychrome = "Edition",
                red_seal = "Other",
                blue_seal = "Other",
                gold_seal = "Other",
                purple_seal = "Other",
                joy_purr_memory_seal = "Other",
            }
            local columns = { {}, {}, {}, {} }
            local i = 1
            for _, key in ipairs(order) do
                if cards_used[key] then
                    local amount = cards_used[key]
                    local set = types[key]
                    local name_node = {}
                    local node = {}

                    if G.localization.descriptions.Joker.j_joy_dracotail_arthalion.joy_extra_effects[key] then
                        localize { type = 'name', set = set, key = key, nodes = name_node, vars = {}, scale = 0.5 }
                        local loc = G.localization.descriptions.Joker.j_joy_dracotail_arthalion.joy_extra_effects[key]
                            .text
                        for _, line in ipairs(loc) do
                            node[#node + 1] = SMODS.localize_box(loc_parse_string(line),
                                {
                                    vars = self:joy_effect_loc_vars(key, amount),
                                    scale = 0.8
                                })
                        end
                    end
                    name_node.joy_box_minh = 0.3
                    node.joy_box_minh = 0.7
                    node.joy_box_minw = 4
                    name_node.background_colour = G.C.CLEAR
                    local column = ({ [0] = 4, [1] = 1, [2] = 2, [3] = 3 })[i % 4]
                    columns[column][#columns[column] + 1] = desc_from_rows(name_node)
                    columns[column][#columns[column] + 1] = desc_from_rows(node)
                    i = i + 1
                end
            end

            full_UI_table.joy_multi_box[#full_UI_table.joy_multi_box + 1] = next(columns[1]) and {
                n = G.UIT.R,
                nodes = {
                    {
                        n = G.UIT.C,
                        nodes = columns[1]
                    },
                    next(columns[2]) and {
                        n = G.UIT.C,
                        nodes = columns[2]
                    } or nil,
                    next(columns[2]) and {
                        n = G.UIT.C,
                        nodes = columns[3]
                    } or nil,
                    next(columns[2]) and {
                        n = G.UIT.C,
                        nodes = columns[4]
                    } or nil,
                }
            } or nil
        end
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {},
            key = not card.ability.extra.has_ability and "j_joy_dracotail_arthalion_notsummoned" or nil
        }
    end,
    joy_effect_loc_vars = function(self, key, amount)
        local config = self.joy_extra_config[key]
        amount = amount or 1
        if not config then return {} end
        if key == "m_lucky" then
            return { (config[1] or 0) ^ amount }
        end
        return { (config[1] or 0) * amount, (config[2] or 0) * amount }
    end,
    joy_desc_cards = {
        { extra = "Playing Cards",                                    extra_values = { loc_key = "j_joy_dracotail_arthalion", enhancements = { "m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky", "m_joy_hanafuda" }, editions = { "e_foil", "e_holo", "e_polychrome" }, seals = { "Red", "Blue", "Gold", "Purple", "joy_purr_memory" } }, name = "k_joy_arthalion_effects" },
        { properties = { { monster_archetypes = { "Dracotail" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "extradeck", "material", "modifier" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                monster_type = "Dragon",
                attribute = "EARTH",
                monster_archetypes = { ["Dracotail"] = true },
                summon_playing_card_conditions = { min = 1 },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Dracotail" }, min = 1 },
                        }
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Dracotail" }, min = 1 },
                            { min = 1 },
                        }
                    }
                }
            },
        },
    },
    joy_extra_config = { -- magic numbers
        m_bonus = { 60 },
        m_mult = { 8 },
        m_wild = { 1 },
        m_glass = { 4, 1 },
        m_steel = { 4, 1 },
        m_stone = { 150 },
        m_gold = { 6 },
        m_lucky = { 2 },
        m_joy_hanafuda = { 1 },
        e_foil = { 100 },
        e_holo = { 20 },
        e_polychrome = { 2.25 },
        red_seal = { 1 },
        blue_seal = { 1 },
        gold_seal = { 6 },
        purple_seal = { 1 },
        joy_purr_memory_seal = { 1 }
    },
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            card.ability.extra.has_ability = true
            JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "Dracotail" } } }, self.key, true)
        end
    end,
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and card.ability.extra.has_ability then
            if context.joker_main then
                local cards_used = card.ability.extra.cards_used or {}

                local planet = JoyousSpring.get_played_planet(context.scoring_name)
                if planet then
                    for i = 1, (cards_used.blue_seal or 0) do
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { key = planet, edition = 'e_negative' }
                                return true
                            end
                        }))
                    end
                end

                for i = 1, (cards_used.purple_seal or 0) do
                    local key = pseudorandom_element(tarot_spectrals_arth, self.key .. "_purple")
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = key, edition = 'e_negative' }
                            return true
                        end
                    }))
                end

                return {
                    chips = (cards_used.m_bonus or 0) * self.joy_extra_config.m_bonus[1] +
                        (cards_used.m_stone or 0) * self.joy_extra_config.m_stone[1] +
                        (cards_used.e_foil or 0) * self.joy_extra_config.e_foil[1],
                    mult = (cards_used.m_mult or 0) * self.joy_extra_config.m_mult[1] +
                        (cards_used.e_holo or 0) * self.joy_extra_config.e_holo[1],
                    xmult = math.max(1,
                        ((cards_used.m_glass or 0) * self.joy_extra_config.m_glass[1]) +
                        ((cards_used.m_steel or 0) * self.joy_extra_config.m_steel[1]) +
                        ((cards_used.e_polychrome or 0) * self.joy_extra_config.e_polychrome[1])),
                    dollars = (cards_used.m_gold or 0) * self.joy_extra_config.m_gold[1] +
                        (cards_used.gold_seal or 0) * self.joy_extra_config.gold_seal[1]
                }
            end
            if context.after then
                local cards_used = card.ability.extra.cards_used or {}
                local cards_played = SMODS.shallow_copy(context.full_hand)
                local to_destroy = {}
                for i = 1, (cards_used.m_glass or 0) do
                    local choice, index = pseudorandom_element(cards_played, self.key .. "_glass")
                    if choice then
                        to_destroy[#to_destroy + 1] = choice
                        table.remove(cards_played, index)
                    end
                end
                if next(to_destroy) then SMODS.destroy_cards(to_destroy) end
            end
            if context.repetition then
                local cards_used = card.ability.extra.cards_used or {}
                local reps = context.cardarea == G.play and (cards_used.red_seal or 0) or
                    context.cardarea == G.hand and (cards_used.m_steel or 0) or nil
                if reps and reps > 0 then
                    return {
                        repetitions = reps
                    }
                end
            end
            if context.mod_probability then
                local cards_used = card.ability.extra.cards_used or {}
                if (cards_used.m_lucky or 0) > 0 then
                    return {
                        numerator = context.numerator * (2 ^ cards_used.m_lucky)
                    }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.has_ability and JoyousSpring.can_use_abilities(card) then
                local cards_used = card.ability.extra.cards_used or {}
                for i = 1, (cards_used.m_wild or 0) do
                    JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Dracotail" }, is_main_deck = true } },
                        self.key .. "_draco", true)
                end
                for i = 1, (cards_used.m_joy_hanafuda or 0) do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "FlowerCardian" }, is_main_deck = true } },
                        self.key .. "_flower")
                end
                for i = 1, (cards_used.joy_purr_memory_seal or 0) do
                    JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Purrely" }, is_main_deck = true } },
                        self.key .. "_purr", true)
                end
            end
            card.ability.extra.has_ability = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.has_ability = nil
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dracotail" },
    label = "k_joy_archetype_dracotail"
}
