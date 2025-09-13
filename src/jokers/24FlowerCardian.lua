--- FLOWER CARDIAN
SMODS.Atlas({
    key = "cardian",
    path = "24FlowerCardian.png",
    px = 71,
    py = 95
})

local cardian_excavate = function(card, context)
    if context.setting_blind then
        return card.ability.extra.excavates
    end
end

local cardian_bypass_room_check = function(card, from_booster)
    return JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 0
end

local cardian_is_hanafuda_month = function(card, months)
    local hanafuda, _ = JoyousSpring.get_hanafuda(card)
    if not hanafuda then
        return false
    elseif next(SMODS.find_card("j_joy_cardian_lightflare")) then
        return true
    end

    for _, month in ipairs(months) do
        if hanafuda.month == month then
            return true
        end
    end
    return false
end

-- Flower Cardian Pine
SMODS.Joker({
    key = "cardian_pine",
    atlas = 'cardian',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.mult *
                JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } }),
                card.ability.extra.excavates,
                card.ability.extra.draws,
                card.ability.extra.creates,
            }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            mult = 1,
            excavates = 3,
            draws = 1,
            creates = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "january", "february" }) then
                    return {
                        mult = card.ability.extra.mult *
                            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } })
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Spades") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "january", "february" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_crane"
                    }, false)

                    JoyousSpring.banish(added_card, "boss_selected")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Pine with Crane
SMODS.Joker({
    key = "cardian_crane",
    atlas = 'cardian',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            mult = 20,
            excavates = 5,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and not context.end_of_round then
                if cardian_is_hanafuda_month(context.other_card, { "january", "february" }) then
                    return {
                        mult = card.ability.extra.mult
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Spades") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "january", "february" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_pine"
                    }, false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Cherry Blossom
SMODS.Joker({
    key = "cardian_cherry",
    atlas = 'cardian',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult *
            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } }), card.ability.extra
                .excavates, card.ability.extra.draws, card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            mult = 1,
            excavates = 3,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "march", "april" }) then
                    return {
                        mult = card.ability.extra.mult *
                            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } })
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Hearts") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "march", "april" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_curtain"
                    }, false)

                    JoyousSpring.banish(added_card, "boss_selected")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Cherry Blossom with Curtain
SMODS.Joker({
    key = "cardian_curtain",
    atlas = 'cardian',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            mult = 20,
            excavates = 5,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and not context.end_of_round then
                if cardian_is_hanafuda_month(context.other_card, { "march", "april" }) then
                    return {
                        mult = card.ability.extra.mult
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Hearts") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "march", "april" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_cherry"
                    }, false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Peony with Butterfly
SMODS.Joker({
    key = "cardian_butterfly",
    atlas = 'cardian',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.adds, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            xmult = 1.1,
            excavates = 5,
            draws = 1,
            adds = 1,
            creates = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "june" }) then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if cardian_is_hanafuda_month(context.joy_excavated, { "june" }) then
                    card.joy_draw = true
                    hit = true
                end
                if JoyousSpring.get_hanafuda(context.joy_excavated) and (next(SMODS.find_card("j_joy_cardian_lightflare")) or JoyousSpring.get_hanafuda(context.joy_excavated).type == "light") then
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "FlowerCardian" }, is_extra_deck = true } })
                    for i = 1, card.ability.extra.adds do
                        local key_to_add, _ = pseudorandom_element(choices, 'j_joy_cardian_butterfly')
                        if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                            JoyousSpring.add_to_extra_deck(key_to_add)
                        end
                    end
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_pseudorandom({ { monster_archetypes = { "FlowerCardian" } } },
                        "j_joy_cardian_butterfly", false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Clover with Boar
SMODS.Joker({
    key = "cardian_boar",
    atlas = 'cardian',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.adds, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            xmult = 1.1,
            excavates = 5,
            draws = 1,
            adds = 1,
            creates = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "july" }) then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if cardian_is_hanafuda_month(context.joy_excavated, { "july" }) then
                    card.joy_draw = true
                    hit = true
                end
                if JoyousSpring.get_hanafuda(context.joy_excavated) and (next(SMODS.find_card("j_joy_cardian_lightflare")) or JoyousSpring.get_hanafuda(context.joy_excavated).type == "light") then
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "FlowerCardian" }, is_extra_deck = true } })
                    for i = 1, card.ability.extra.adds do
                        local key_to_add, _ = pseudorandom_element(choices, 'j_joy_cardian_boar')
                        if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                            JoyousSpring.add_to_extra_deck(key_to_add)
                        end
                    end
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_pseudorandom({ { monster_archetypes = { "FlowerCardian" } } },
                        "j_joy_cardian_boar", false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Zebra Grass
SMODS.Joker({
    key = "cardian_zebra",
    atlas = 'cardian',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {
            vars = { card.ability.extra.money, card.ability.extra.money *
            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } }), card.ability.extra
                .excavates, card.ability.extra.draws, card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            money = 1,
            excavates = 3,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "august", "september" }) then
                    return {
                        dollars = card.ability.extra.money *
                            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } })
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Clubs") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "august", "september" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_moon"
                    }, false)

                    JoyousSpring.banish(added_card, "boss_selected")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Zebra Grass with Moon
SMODS.Joker({
    key = "cardian_moon",
    atlas = 'cardian',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            excavates = 7,
            draws = 1,
            creates = 1,
            hanafuda_count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Clubs") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "august", "september" }) then
                    card.joy_draw = true
                    hit = true
                end
                if JoyousSpring.get_hanafuda(context.joy_excavated) then
                    card.ability.extra.hanafuda_count = card.ability.extra.hanafuda_count + 1
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_zebra"
                    }, false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn then
                if card.joy_draw then
                    card.joy_draw = nil
                    SMODS.draw_cards(card.ability.extra.draws * card.ability.extra.hanafuda_count)
                end
                card.ability.extra.hanafuda_count = 0
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Maple with Deer
SMODS.Joker({
    key = "cardian_deer",
    atlas = 'cardian',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.adds, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            xmult = 1.1,
            excavates = 5,
            draws = 1,
            adds = 1,
            creates = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "october" }) then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if cardian_is_hanafuda_month(context.joy_excavated, { "october" }) then
                    card.joy_draw = true
                    hit = true
                end
                if JoyousSpring.get_hanafuda(context.joy_excavated) and (next(SMODS.find_card("j_joy_cardian_lightflare")) or JoyousSpring.get_hanafuda(context.joy_excavated).type == "light") then
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "FlowerCardian" } } })
                    for i = 1, card.ability.extra.adds do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_moissa')
                        JoyousSpring.add_monster_tag(key_to_add or "j_joy_eccentrick")
                    end
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_pseudorandom({ { monster_archetypes = { "FlowerCardian" } } },
                        "j_joy_cardian_deer", false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Willow
SMODS.Joker({
    key = "cardian_willow",
    atlas = 'cardian',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {
            vars = { card.ability.extra.money, card.ability.extra.money *
            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } }), card.ability.extra
                .excavates, card.ability.extra.draws, card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            money = 1,
            excavates = 3,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "november" }) then
                    return {
                        dollars = card.ability.extra.money *
                            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } })
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_face() then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "november" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_calligrapher"
                    }, false)

                    JoyousSpring.banish(added_card, "boss_selected")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Willow with Calligrapher
SMODS.Joker({
    key = "cardian_calligrapher",
    atlas = 'cardian',
    pos = { x = 4, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.excavates, card.ability.extra.revives, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            excavates = 5,
            revives = 1,
            creates = 1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_face() then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "november" }) then
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "FlowerCardian" } } },
                            'j_joy_cardian_calligrapher',
                            true
                        )
                    end
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_willow"
                    }, false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Paulownia
SMODS.Joker({
    key = "cardian_paulownia",
    atlas = 'cardian',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult *
            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } }), card.ability.extra
                .excavates, card.ability.extra.draws, card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            mult = 1,
            excavates = 3,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.play then
                if cardian_is_hanafuda_month(context.other_card, { "may", "december" }) then
                    return {
                        mult = card.ability.extra.mult *
                            JoyousSpring.count_all_materials({ { monster_archetypes = { "FlowerCardian" } } })
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Diamonds") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "may", "december" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_phoenix"
                    }, false)

                    JoyousSpring.banish(added_card, "boss_selected")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Paulownia with Phoenix
SMODS.Joker({
    key = "cardian_phoenix",
    atlas = 'cardian',
    pos = { x = 4, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.excavates, card.ability.extra.draws, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                monster_archetypes = { ["FlowerCardian"] = true }
            },
            mult = 20,
            excavates = 5,
            draws = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and not context.end_of_round then
                if cardian_is_hanafuda_month(context.other_card, { "may", "december" }) then
                    return {
                        mult = card.ability.extra.mult
                    }
                end
            end
            if context.joy_excavated and context.joy_number <= card.ability.extra.excavates and context.joy_other_context.setting_blind then
                local hit
                if context.joy_excavated:is_suit("Diamonds") then
                    if not next(SMODS.get_enhancements(context.joy_excavated)) then
                        context.joy_excavated:set_ability("m_joy_hanafuda")
                    end
                    hit = true
                end
                if cardian_is_hanafuda_month(context.joy_excavated, { "may", "december" }) then
                    card.joy_draw = true
                    hit = true
                end
                card.joy_hit = card.joy_hit or hit
                return {
                    message = hit and localize("k_joy_hit") or nil
                }
            end
            if context.setting_blind then
                if not card.joy_hit then
                    local added_card = JoyousSpring.create_summon({
                        key = "j_joy_cardian_paulownia"
                    }, false)

                    JoyousSpring.banish(added_card, "end_of_round")
                    SMODS.destroy_cards(card)
                end
                card.joy_hit = nil
            end
            if context.first_hand_drawn and card.joy_draw then
                card.joy_draw = nil
                SMODS.draw_cards(card.ability.extra.draws)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                if JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }) > 1 then
                    SMODS.add_card({
                        key = "c_joy_cardian_gathering"
                    })
                end
            end
        end
    end,
    joy_calculate_excavate = cardian_excavate,
    joy_bypass_room_check = cardian_bypass_room_check
})

-- Flower Cardian Boardefly
SMODS.Joker({
    key = "cardian_boardefly",
    atlas = 'cardian',
    pos = { x = 3, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_koikoihand" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.banish } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                summon_type = "SYNCHRO",
                monster_archetypes = { ["FlowerCardian"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" },
                                func = "hanafuda_type_played_this_run", func_vars = { type = "animal", min = 5 } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            banish = 1,
            animals_scored = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.after and SMODS.PokerHands[context.scoring_name].joy_koi_koi then
                for _, pcard in ipairs(context.scoring_hand) do
                    if JoyousSpring.get_hanafuda(pcard) and (next(SMODS.find_card("j_joy_cardian_lightflare")) or JoyousSpring.get_hanafuda(pcard).type == "animal") then
                        card.ability.extra.animals_scored = card.ability.extra.animals_scored + 1
                    end
                    pcard:set_seal(SMODS.poll_seal({ guaranteed = true }))
                end
            end
            if context.joy_post_round_eval then
                local choices = JoyousSpring.get_materials_owned()
                for i = 1, card.ability.extra.animals_scored do
                    local to_banish, index = pseudorandom_element(choices, 'j_joy_cardian_boardefly')
                    if to_banish then
                        JoyousSpring.banish(to_banish, "blind_selected")
                    end
                    table.remove(choices, index)
                end
                card.ability.extra.animals_scored = 0
            end
        end
    end
})

-- Flower Cardian Moonflowerviewing
SMODS.Joker({
    key = "cardian_moonflower",
    atlas = 'cardian',
    pos = { x = 1, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_koikoihand" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.draws } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Warrior",
                is_all_materials = { SYNCHRO = true },
                summon_type = "SYNCHRO",
                monster_archetypes = { ["FlowerCardian"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" },
                                func = "hanafuda_played_this_run", func_vars = { key = "Chrysanthemum with Sake", min = 3 } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            draws = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.first_hand_drawn then
                SMODS.draw_cards(JoyousSpring.count_materials_owned({ { monster_archetypes = { "FlowerCardian" } } }))
            end
            if context.modify_scoring_hand and (SMODS.PokerHands[context.scoring_name] or {}).joy_koi_koi and JoyousSpring.get_hanafuda(context.other_card) then
                return {
                    add_to_hand = true
                }
            end
            if context.before and SMODS.PokerHands[context.scoring_name].joy_koi_koi then
                SMODS.draw_cards(#context.scoring_hand)
            end
        end
    end
})

-- Flower Cardian Lightshower
SMODS.Joker({
    key = "cardian_lightshower",
    atlas = 'cardian',
    pos = { x = 0, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_koikoihand" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.scored_xmult, card.ability.extra.turns } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                summon_type = "SYNCHRO",
                monster_archetypes = { ["FlowerCardian"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" },
                                func = "hanafuda_type_played_this_run", func_vars = { type = "light", min = 3 } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                        restrictions = {
                            no_room = true
                        }
                    },
                }
            },
            xmult = 1.1,
            scored_xmult = 5,
            turns = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_monster_archetype(context.other_joker, "FlowerCardian") then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
            if context.modify_scoring_hand then
                local _, key = JoyousSpring.get_hanafuda(context.other_card)
                if key == "Willow with Calligrapher" or key == "Chrysanthemum with Sake" then
                    return {
                        add_to_hand = true
                    }
                end
            end
            if context.individual and context.cardarea == G.play then
                local _, key = JoyousSpring.get_hanafuda(context.other_card)
                if key == "Willow with Calligrapher" or key == "Chrysanthemum with Sake" then
                    return {
                        xmult = card.ability.extra.scored_xmult
                    }
                end
            end
        end
    end,
})

-- Flower Cardian Lightflare
SMODS.Joker({
    key = "cardian_lightflare",
    atlas = 'cardian',
    pos = { x = 4, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_koikoihand" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_excavate" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "FlowerCardian" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Warrior",
                summon_type = "SYNCHRO",
                monster_archetypes = { ["FlowerCardian"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" },
                                func = "hanafuda_type_played_this_run", func_vars = { type = "light", min = 5 } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                        restrictions = {
                            no_room = true
                        }
                    }
                }
            },
            mult = 10,
            current_mult = 0,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and JoyousSpring.get_hanafuda(context.joy_excavated) then
                card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult
                return { message = localize('k_upgrade_ex'), message_card = card }
            end
            if context.debuff_card and JoyousSpring.get_hanafuda(context.debuff_card) then
                return {
                    prevent_debuff = true
                }
            end
            if context.before and (context.scoring_name == "joy_cardian_lightflare" or context.scoring_name == "joy_cardian_moonflowerviewing" or context.scoring_name == "joy_cardian_redpoemblueribbon") then
                for i = 1, card.ability.extra.revives do
                    local revived_card = JoyousSpring.revive_pseudorandom(
                        { { monster_archetypes = { "FlowerCardian" } } },
                        'j_joy_cardian_lightflare',
                        false, "e_negative"
                    )
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
        end
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "cardian" },
    label = "k_joy_archetype_cardian"
}
