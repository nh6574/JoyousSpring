--- SKY STRIKER
SMODS.Atlas({
    key = "striker",
    path = "35SkyStriker.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "striker_opp",
    path = "35SkyStriker_opp.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
})

local striker_links = {
    "j_joy_striker_hayate", "j_joy_striker_kagari", "j_joy_striker_shizuku",
    "j_joy_striker_kaina", "j_joy_striker_amatsu", "j_joy_striker_zeke",
    "j_joy_striker_azalea", "j_joy_striker_azaleatemp", "j_joy_striker_camellia",
    "j_joy_striker_zero", "j_joy_striker_combined", "j_joy_striker_spectra",
}

local striker_planet_to_link = {
    c_earth = "j_joy_striker_hayate",
    c_mars = "j_joy_striker_kagari",
    c_neptune = "j_joy_striker_shizuku",
    c_venus = "j_joy_striker_kaina",
    c_pluto = "j_joy_striker_amatsu",
    c_jupiter = "j_joy_striker_zeke",
    c_uranus = "j_joy_striker_azalea",
    c_saturn = "j_joy_striker_camellia",
    c_mercury = "j_joy_striker_zero",
    c_planet_x = "j_joy_striker_spectra",
    c_ceres = "j_joy_striker_spectra",
    c_eris = "j_joy_striker_spectra",
}

local striker_link_to_planet = {
    j_joy_striker_hayate = "c_earth",
    j_joy_striker_kagari = "c_mars",
    j_joy_striker_shizuku = "c_neptune",
    j_joy_striker_kaina = "c_venus",
    j_joy_striker_amatsu = "c_pluto",
    j_joy_striker_zeke = "c_jupiter",
    j_joy_striker_azalea = "c_uranus",
    j_joy_striker_camellia = "c_saturn",
    j_joy_striker_zero = "c_mercury",
    j_joy_striker_spectra = { "c_planet_x", "c_ceres", "c_eris" },
}

local striker_link_to_hands = {
    j_joy_striker_hayate = { ["Full House"] = true },
    j_joy_striker_kagari = { ["Four of a Kind"] = true },
    j_joy_striker_shizuku = { ["Straight Flush"] = true },
    j_joy_striker_kaina = { ["Three of a Kind"] = true },
    j_joy_striker_amatsu = { ["High Card"] = true },
    j_joy_striker_zeke = { ["Flush"] = true },
    j_joy_striker_azalea = { ["Two Pair"] = true },
    j_joy_striker_camellia = { ["Straight"] = true },
    j_joy_striker_zero = { ["Pair"] = true },
    j_joy_striker_spectra = { ["Five of a Kind"] = true, ["Flush House"] = true, ["Flush Five"] = true },
    j_joy_striker_combined = "MODDED"
}

local striker_planet_to_hand = {
    c_earth = "Full House",
    c_mars = "Four of a Kind",
    c_neptune = "Straight Flush",
    c_venus = "Three of a Kind",
    c_pluto = "High Card",
    c_jupiter = "Flush",
    c_uranus = "Two Pair",
    c_saturn = "Straight",
    c_mercury = "Pair",
    c_planet_x = "Five of a Kind",
    c_ceres = "Flush House",
    c_eris = "Flush Five",
}

local striker_get_not_summoned_links = function(empty_is_none, as_list)
    local not_summoned = {}
    for _, key in ipairs(striker_links) do
        if JoyousSpring.get_summoned_count(nil, true, key) == 0 then
            not_summoned[key] = true
        end
    end
    local ret = next(not_summoned) and not_summoned or empty_is_none and {} or copy_table(striker_links)
    if as_list then
        local other_ret = {}
        for key, _ in pairs(ret) do
            other_ret[#other_ret + 1] = key
        end
        return other_ret
    end
    return ret
end

local striker_get_planets_for_tribute = function()
    local not_summoned = striker_get_not_summoned_links(true)
    if not next(not_summoned) then return {} end
    local to_tribute = {}

    for _, card in ipairs(JoyousSpring.get_consumable_set("Planet")) do
        local link_key = striker_planet_to_link[card.config.center_key] or "j_joy_striker_combined"
        if not_summoned[link_key] then
            to_tribute[#to_tribute + 1] = card
        end
    end
    return to_tribute
end

local striker_get_planet_for_link = function(key, key_append)
    if key == "j_joy_striker_azaleatemp" then return end
    if key == "j_joy_striker_combined" then
        local choices = {}
        for _, center in ipairs(G.P_CENTER_POOLS.Planet) do
            if center.original_mod and center.original_mod.id == "JoyousSpring" then
                choices[#choices + 1] = center.key
            end
        end
        local choice, _ = pseudorandom_element(choices, key_append)
        return choice
    end
    local planet = striker_link_to_planet[key]

    if type(planet) == "string" then return planet end
    if type(planet) == "table" then
        local choice, _ = pseudorandom_element(planet, key_append)
        return choice
    end
end

-- Sky Striker Ace - Raye
JoyousSpring.Joker({
    key = "striker_raye",
    atlas = 'striker',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 1, y = 0 } },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "transform", "link", "summon", "material" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
            xmult = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = striker_get_planets_for_tribute()
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    local key_to_transform = striker_planet_to_link[context.joy_selection[1].config.center_key] or
                        "j_joy_striker_combined"
                    JoyousSpring.tribute(card, context.joy_selection)
                    JoyousSpring.transform_card(card, key_to_transform, false, "LINK", { "j_joy_striker_raye" })
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            if card.ability.extra.joyous_spring.material_effects.j_joy_striker_raye then
                                card.ability.extra.joyous_spring.material_effects.j_joy_striker_raye.poker_hand =
                                    striker_planet_to_hand[context.joy_selection[1].config.center_key] or "MODDED"
                            end
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return next(striker_get_planets_for_tribute())
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.joy_transforming == "j_joy_striker_raye"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                local contains
                if config.poker_hand == "MODDED" then
                    for key, hands in pairs(context.poker_hands) do
                        if next(hands) and (SMODS.PokerHands[key] or {}).original_mod then
                            contains = true
                            break
                        end
                    end
                elseif next(context.poker_hands[config.poker_hand]) then
                    contains = true
                end
                if contains then
                    return {
                        xmult = config.xmult
                    }
                end
            end
            if context.joy_post_round_eval then
                JoyousSpring.transform_card(other_card, "j_joy_striker_raye")
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 3,
            poker_hand = "Flush Five"
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.xmult, config.poker_hand == "MODDED" and localize("k_joy_modded_hand") or localize(config.poker_hand, "poker_hands") } }
    end,
    joy_select_from_pack = function(self, card, other_card, pack)
        if pack.kind == "Celestial" then
            return { area = "consumeables", can_use = true }
        end
    end
})

-- Sky Striker Ace - Roze
JoyousSpring.Joker({
    key = "striker_roze",
    atlas = 'striker',
    pos = { x = 2, y = 0 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "extradeck", "link", "summon", "material", "tribute", 'revive' },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
            },
            mult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.starting_shop then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local pack = get_pack(self.key, "Celestial").key

                        SMODS.add_booster_to_shop(pack)
                        return true
                    end
                }))
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if not next(SMODS.find_card("j_joy_striker_raye")) then
                JoyousSpring.create_summon({ key = "j_joy_striker_raye" }, true)
            else
                JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "SkyStrikerAce" } } },
                    self.key .. "_extra", true)
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "LINK")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.mult * JoyousSpring.count_set_tributed("Planet", true)
                }
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.revive("j_joy_striker_raye", true)
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 1,
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * JoyousSpring.count_set_tributed("Planet") } }
    end,
})

-- Surgical Striker - H.A.M.P.
JoyousSpring.Joker({
    key = "striker_hamp",
    joy_treated_as = "k_joy_archetype_striker",
    atlas = 'striker',
    pos = { x = 3, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("LINK") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "link", "summon", },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true }
            },
            xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("LINK")
                }
            end
            if context.using_consumeable and context.consumeable.ability.set == 'Planet' then
                JoyousSpring.count_as_tributed(context.consumeable)
            end
        end
    end,
})

-- Aileron
JoyousSpring.Joker({
    key = "striker_aileron",
    joy_treated_as = "k_joy_archetype_striker",
    atlas = 'striker',
    pos = { x = 4, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "link", },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "WIND",
                monster_archetypes = { ["SkyStriker"] = true }
            },
            xmult = 3,
            creates = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local contains
                for _, joker in ipairs(G.jokers.cards) do
                    if JoyousSpring.is_monster_archetype(joker, "SkyStrikerAce") then
                        local hands = striker_link_to_hands[joker.config.center.key]
                        if hands == "MODDED" then
                            for key, phands in pairs(context.poker_hands) do
                                if next(phands) and (SMODS.PokerHands[key] or {}).original_mod then
                                    contains = true
                                    break
                                end
                            end
                        elseif type(hands) == "table" then
                            for key, _ in pairs(hands) do
                                if next(context.poker_hands[key]) then
                                    contains = true
                                    break
                                end
                            end
                        end
                        if contains then break end
                    end
                end
                if contains then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
        end
        if context.selling_self then
            for i = 1, card.ability.extra.creates do
                SMODS.add_card { set = 'Planet', key_append = self.key }
            end
        end
    end,
})

-- Pillar of the Future - Cyanos
JoyousSpring.Joker({
    key = "striker_cyanos",
    joy_treated_as = "k_joy_archetype_striker",
    atlas = 'striker',
    pos = { x = 5, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.tags } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true }
            },
            tags = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval
                and G.GAME.blind.boss then
                JoyousSpring.create_summon({ key = "j_joy_striker_roze" })
            end
        end
        if context.selling_self then
            for i = 1, card.ability.extra.tags do
                add_tag { key = "tag_meteor" }
            end
        end
    end,
})

-- Sage of Benevolence - Ciela
JoyousSpring.Joker({
    key = "striker_ciela",
    joy_treated_as = "k_joy_archetype_striker",
    atlas = 'striker',
    pos = { x = 0, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_striker_ciela",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "opponent" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "WATER",
                monster_archetypes = { ["SkyStriker"] = true }
            },
            creates = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    SMODS.destroy_cards(card, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_striker_ciela", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for i = 1, card.ability.extra.creates do
                SMODS.add_card { set = "Planet", edition = 'e_negative', key_append = self.key }
            end
        end
    end,
    joy_can_activate = function(card)
        return true
    end,
})

JoyousSpring.OpponentCard {
    key = "striker_ciela",
    atlas = 'striker_opp',
    pos = { x = 0, y = 0 },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, 4, self.key)
        return { vars = { numerator, denominator } }
    end,
    joy_desc_cards = {
        { "j_joy_striker_ciela",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "WATER",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_tributed and context.joy_card.ability.set == "Planet"
                and SMODS.pseudorandom_probability(card, self.key, 1, 4) then
                if context.joy_card.ability.hand_type then
                    return {
                        level_up = true,
                        level_up_hand = context.joy_card.ability.hand_type
                    }
                elseif context.joy_card.config.center.joy_level_up then
                    context.joy_card.config.center.joy_level_up(context.joy_card)
                end
            end
        end
    end,
}

-- Sage of Strength - Akash
JoyousSpring.Joker({
    key = "striker_akash",
    joy_treated_as = "k_joy_archetype_striker",
    atlas = 'striker',
    pos = { x = 1, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_striker_akash",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "opponent" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "FIRE",
                monster_archetypes = { ["SkyStriker"] = true }
            },
            creates = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    SMODS.destroy_cards(card, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_striker_akash", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for i = 1, card.ability.extra.creates do
                SMODS.add_card { set = "Planet", edition = 'e_negative', key_append = self.key }
            end
        end
    end,
    joy_can_activate = function(card)
        return true
    end,
})

JoyousSpring.OpponentCard {
    key = "striker_akash",
    atlas = 'striker_opp',
    pos = { x = 0, y = 1 },
    joy_desc_cards = {
        { "j_joy_striker_akash",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "revive", "link", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "FIRE",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                local tributed = JoyousSpring.get_set_tributed("Joker", nil, nil, { summon_type = "LINK" })
                local choices = {}
                for _, key in ipairs(tributed) do
                    if JoyousSpring.graveyard[key] and JoyousSpring.graveyard[key].summonable > 0 then
                        choices[#choices + 1] = key
                    end
                end
                local choice = pseudorandom_element(choices, self.key)
                if choice then
                    JoyousSpring.revive(choice, true)
                end
            end
        end
    end,
}

-- Sage of Wisdom - Himmel
JoyousSpring.Joker({
    key = "striker_himmel",
    joy_treated_as = "k_joy_archetype_striker",
    atlas = 'striker',
    pos = { x = 2, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_striker_himmel",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "enter", "opponent" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["SkyStriker"] = true }
            },
            creates = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    SMODS.destroy_cards(card, nil, true)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_striker_himmel", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for i = 1, card.ability.extra.creates do
                SMODS.add_card { set = "Planet", edition = 'e_negative', key_append = self.key }
            end
        end
    end,
    joy_can_activate = function(card)
        return true
    end,
})

JoyousSpring.OpponentCard {
    key = "striker_himmel",
    atlas = 'striker_opp',
    pos = { x = 0, y = 2 },
    joy_desc_cards = {
        { "j_joy_striker_himmel",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                local choices = JoyousSpring.get_set_tributed("Planet")
                for i = 1, 2 do
                    local choice, index = pseudorandom_element(choices, self.key)
                    if choice then
                        SMODS.add_card { key = choice }
                        table.remove(choices, index)
                    end
                end
            end
        end
    end,
}

-- Sky Striker Ace - Hayate
JoyousSpring.Joker({
    key = "striker_hayate",
    atlas = 'striker',
    pos = { x = 4, y = 2 },
    joy_alt_pos = { { x = 5, y = 2 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_set_tributed("Planet"), JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "WIND",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SkyStrikerAce" }, exclude_monster_attributes = { "WIND" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            chips = 25,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * JoyousSpring.count_set_tributed("Planet")
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    card.ability.extra.active = true
                end
            end
            if context.pre_discard and card.ability.extra.active and not context.hook then
                local text, _ = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
                local planet = JoyousSpring.get_played_planet(text)
                if planet and #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card { key = planet }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = false
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Sky Striker Ace - Kagari
JoyousSpring.Joker({
    key = "striker_kagari",
    atlas = 'striker',
    pos = { x = 0, y = 3 },
    joy_alt_pos = { { x = 1, y = 3 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_set_tributed("Planet"), JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "FIRE",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SkyStrikerAce" }, exclude_monster_attributes = { "FIRE" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            mult = 10,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_set_tributed("Planet")
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    if card.ability.extra.planets and next(card.ability.extra.planets) then
                        for _, key in ipairs(card.ability.extra.planets) do
                            SMODS.add_card { key = key, edition = 'e_negative' }
                        end
                    end
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            card.ability.extra.planets = JoyousSpring.get_set_tributed("Planet")
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Sky Striker Ace - Shizuku
JoyousSpring.Joker({
    key = "striker_shizuku",
    atlas = 'striker',
    pos = { x = 3, y = 3 },
    joy_alt_pos = { { x = 4, y = 3 } },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, card.ability.extra.money * JoyousSpring.count_set_tributed("Planet"), JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "WATER",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SkyStrikerAce" }, exclude_monster_attributes = { "WATER" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            money = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    card.ability.extra.active = true
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.money_gained = card.ability.extra.money * JoyousSpring.count_set_tributed("Planet")
            if JoyousSpring.can_use_abilities(card) and card.ability.extra.active then
                local tributed = JoyousSpring.get_set_tributed("Joker", nil, nil,
                    { monster_archetypes = { "SkyStrikerAce" } })
                for _, key in ipairs(tributed) do
                    local planet = striker_get_planet_for_link(key, self.key)
                    if planet then
                        SMODS.add_card { key = planet, edition = 'e_negative' }
                    end
                end
            end
            card.ability.extra.active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = false
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        local amount = card.ability.extra.money_gained or 0
        card.ability.extra.money_gained = 0
        if amount > 0 then
            return amount
        end
    end
})

-- Sky Striker Ace - Kaina
JoyousSpring.Joker({
    key = "striker_kaina",
    atlas = 'striker',
    pos = { x = 2, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SkyStrikerAce" }, exclude_monster_attributes = { "EARTH" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            planets = {}
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    card.ability.extra.active = true
                end
            end
            if context.joy_tributed and context.joy_card.ability.set == "Planet" and card.ability.extra.active
                and not card.ability.extra.planets[context.joy_card.config.center_key] then
                card.ability.extra.planets[context.joy_card.config.center_key] = true
                if context.joy_card.ability.hand_type then
                    return {
                        level_up = true,
                        level_up_hand = context.joy_card.ability.hand_type
                    }
                elseif context.joy_card.config.center.joy_level_up then
                    context.joy_card.config.center.joy_level_up(context.joy_card)
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = false
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            for _, consumable in ipairs(JoyousSpring.get_consumable_set("Planet")) do
                consumable:set_edition("e_negative")
            end
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Prototype Sky Striker Ace - Amatsu
JoyousSpring.Joker({
    key = "striker_amatsu",
    atlas = 'striker',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon", "revive" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SkyStrikerAce" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            creates = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_set_tributed("Planet")
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = SMODS.merge_lists({ JoyousSpring.get_materials_owned(
                    { { monster_archetypes = { "SkyStrikerAce" }, summon_type = "LINK" } }, nil, true),
                    not card.ability.extra.activated and JoyousSpring.get_consumable_set("Planet") or {} })
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                if context.joy_selection[1].ability.set == "Planet" then
                    card.ability.extra.activated = true

                    if JoyousSpring.count_set_tributed("Planet") >= 3 then
                        JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "SkyStrikerAce" } } }, self.key, true)
                    end
                else
                    for i = 1, card.ability.extra.creates do
                        SMODS.add_card { set = "Planet", edition = 'e_negative', key_append = self.key }
                    end
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if JoyousSpring.any_materials_owned({ { monster_archetypes = { "SkyStrikerAce" }, summon_type = "LINK" } }, nil, true) then
            return true
        end
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Sky Striker Ace - Zeke
local zeke = JoyousSpring.Joker({
    key = "striker_zeke",
    atlas = 'striker',
    pos = { x = 5, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon", "banish" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            { monster_archetypes = { "SkyStrikerAce" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    G.GAME.joy_zeke_effect = true
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            local any
            for _, consumable in ipairs(G.consumeables.cards) do
                if consumable.ability.set ~= "Planet" then
                    any = any or JoyousSpring.banish(consumable, "blind_selected")
                end
            end
            if any then
                JoyousSpring.summon_token("striker", "e_negative")
            end
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

JoyousSpring.calculate_effects[#JoyousSpring.calculate_effects + 1] = {
    key = "striker_zeke",
    center = zeke,
    is_active = function(self, func)
        return G.GAME.joy_zeke_effect
    end,
    calculate = function(self, context)
        if context.joy_post_round_eval then
            local jokers = JoyousSpring.get_materials_owned({ { monster_archetypes = { "SkyStriker" } } })
            for _, joker in ipairs(jokers) do
                JoyousSpring.banish(joker, "blind_selected")
            end
            G.GAME.joy_zeke_effect = nil
        end
    end,
}

-- Sky Striker Ace - Azalea
JoyousSpring.Joker({
    key = "striker_azalea",
    atlas = 'striker',
    pos = { x = 2, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon", "transform" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_attribute = "DARK" },
                            { monster_attribute = "DARK" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    },
                    {
                        type = "LINK",
                        materials = {
                            { monster_attribute = "LIGHT" },
                            { monster_attribute = "LIGHT" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    },
                    {
                        type = "LINK",
                        materials = {
                            { monster_attribute = "DARK" },
                            { monster_attribute = "LIGHT" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_tributed and context.joy_card.ability.set == 'Planet' then
                SMODS.draw_cards(1)
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.transform_card(card, "j_joy_striker_azaleatemp", nil, "LINK", { self.key })
            end
        end
    end,
    joy_can_activate = function(card)
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Sky Striker Ace - Azalea Temperance
JoyousSpring.Joker({
    key = "striker_azaleatemp",
    atlas = 'striker',
    pos = { x = 1, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.money, card.ability.extra.money *
            ((G.GAME.joy_used_count or {}).c_high_priestess or 0),
                JoyousSpring.count_set_tributed("Planet") }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            { summon_type = "LINK" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            money = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_tributed and context.joy_card.ability.set == 'Planet'
                and card.ability.extra.active then
                SMODS.add_card { key = "c_high_priestess", edition = 'e_negative' }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    card.ability.extra.active = true
                end
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
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            card.ability.extra_value = card.ability.extra_value +
                card.ability.extra.money * ((G.GAME.joy_used_count or {}).c_high_priestess or 0)
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Sky Striker Ace - Camellia
JoyousSpring.Joker({
    key = "striker_camellia",
    atlas = 'striker',
    pos = { x = 3, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon", "opponent" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { is_effect = true },
                            { is_effect = true },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            creates = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.setting_blind then
                local most_played = JoyousSpring.most_played_hand()
                local planet = JoyousSpring.get_played_planet(most_played)
                if planet then
                    local amount = G.consumeables.config.card_limit - #G.consumeables.cards
                    for i = 1, amount do
                        SMODS.add_card { key = planet }
                    end
                end
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Spectral")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true
                for i = 1, card.ability.extra.creates do
                    SMODS.add_card { set = 'Planet', edition = 'e_negative' }
                end
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local to_add = pseudorandom_element(
                            { "opp_joy_striker_ciela", "opp_joy_striker_akash", "opp_joy_striker_himmel" }, self.key)
                        SMODS.add_card { key = to_add, area = JoyousSpring.opponent_area }
                        return true
                    end
                }))
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Spectral")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

local striker_get_level_amount = function()
    local amount = 0
    for _, hand in ipairs(G.GAME.hands) do
        if hand.level > 1 then
            amount = amount + hand.level - 1
        end
    end
    return amount
end

-- Sky Striker Ace = Zero
JoyousSpring.Joker({
    key = "striker_zero",
    atlas = 'striker',
    pos = { x = 0, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * striker_get_level_amount(), JoyousSpring.count_set_tributed("Planet") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SkyStrikerAce" } },
                            { monster_archetypes = { "SkyStrikerAce" } },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            xmult = 0.2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * striker_get_level_amount()
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    JoyousSpring.create_summon({ key = "j_joy_striker_roze" })
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Combined Maneuver - Engage Zero!
JoyousSpring.Joker({
    key = "striker_combined",
    joy_treated_as = "k_joy_archetype_striker_ace",
    atlas = 'striker',
    pos = { x = 5, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult *
                JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "SkyStriker" } } }),
                JoyousSpring.count_set_tributed("Planet")
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon", "graveyard", "revive" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_attribute = "DARK" },
                            { monster_attribute = "DARK" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    },
                    {
                        type = "LINK",
                        materials = {
                            { monster_attribute = "LIGHT" },
                            { monster_attribute = "LIGHT" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    },
                    {
                        type = "LINK",
                        materials = {
                            { monster_attribute = "DARK" },
                            { monster_attribute = "LIGHT" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            sends = 2,
            mult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.setting_blind then
                JoyousSpring.send_to_graveyard_pseudorandom({ { monster_archetypes = { "SkyStrikerAce" } } }, self.key,
                    card.ability.extra.sends)
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "SkyStriker" } } })
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if JoyousSpring.is_exit_selection_context(card, context) then
                JoyousSpring.tribute(card, context.joy_selection)
                card.ability.extra.activated = true

                if JoyousSpring.count_set_tributed("Planet") >= 3 then
                    card.ability.extra.active = true
                end
            end
            if context.selling_self and card.ability.extra.active then
                JoyousSpring.revive("j_joy_striker_raye", true)
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
        if card.ability.extra.activated then return false end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 1
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Surgical Striker - S.P.E.C.T.R.A
JoyousSpring.Joker({
    key = "striker_spectra",
    joy_treated_as = "k_joy_archetype_striker_ace",
    atlas = 'striker',
    pos = { x = 1, y = 4 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.percent * 100 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "extradeck", "enter", "summon" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Machine",
                attribute = "DARK",
                monster_archetypes = { ["SkyStriker"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            {},
                            { summon_type = "LINK" },
                        },
                        restrictions = {
                            not_summoned_this_round = true
                        }
                    }
                }
            },
            xmult = 4,
            percent = 0.25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joker_main and (next(context.poker_hands["Five of a Kind"]) or
                    next(context.poker_hands["Flush Five"]) or next(context.poker_hands["Flush House"])) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if JoyousSpring.is_activated_context(card, context) then
                local materials = JoyousSpring.get_consumable_set("Planet")
                if #materials >= 3 then
                    JoyousSpring.tribute(card, materials)
                    return {
                        xblindsize = 1 - card.ability.extra.percent
                    }
                end
            end
            if context.selling_self and card.ability.extra.active then
                JoyousSpring.revive("j_joy_striker_raye", true)
            end
        end
    end,
    joy_can_activate = function(card)
        if not G.GAME.blind.in_blind then return end
        local materials = JoyousSpring.get_consumable_count("Planet")
        return materials >= 3
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                SMODS.add_card { set = 'Planet', key_append = self.key .. "_planet" }
            end
            local choices = striker_get_not_summoned_links(nil, true)
            local choice = pseudorandom_element(choices, self.key .. "_extra")
            if choice then
                JoyousSpring.add_to_extra_deck(choice)
            end
        end
    end
})

-- Sky Striker Airspace - Area Zero
JoyousSpring.Joker({
    key = "striker_areazero",
    atlas = 'striker',
    pos = { x = 3, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "SkyStriker" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "link" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["SkyStriker"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.after and JoyousSpring.any_materials_owned({ { summon_type = "LINK" } }) then
                local planet = JoyousSpring.get_played_planet(context.scoring_name)
                if planet then
                    local added = SMODS.add_card { key = planet, edition = "e_negative" }
                    SMODS.debuff_card(added, true, self.key)
                end
            end
        end
        if context.joy_tributed_self or context.selling_self then
            JoyousSpring.create_summon({ key = "j_joy_striker_raye" })
        end
    end,
})

local smods_showman_ref = SMODS.showman
function SMODS.showman(card_key, ...)
    if (G.P_CENTERS[card_key] or {}).set == "Planet" then
        for _, joker in ipairs(SMODS.find_card("j_joy_striker_areazero")) do
            if JoyousSpring.can_use_abilities(joker) then
                return true
            end
        end
    end

    return smods_showman_ref(card_key, ...)
end

JoyousSpring.token_pool["striker"] = {
    order = 7,
    name = "j_joy_token_striker",
    atlas = "joy_striker",
    sprite_pos = { x = 4, y = 1 },
    joyous_spring = {
        attribute = "DARK",
        monster_type = "Warrior",
        monster_archetypes = { ["SkyStriker"] = true, ["SkyStrikerAce"] = true }
    }
}

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "striker" },
    label = "k_joy_archetype_striker"
}
