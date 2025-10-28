--- VIRTUAL WORLD
SMODS.Atlas({
    key = "vw",
    path = "23VirtualWorld.png",
    px = 71,
    py = 95
})

local get_type_attribute_allowlist = function(card_list)
    local allowlist = {}

    for _, joker in ipairs(card_list) do
        if JoyousSpring.is_monster_card(joker) then
            local monster_type = JoyousSpring.get_monster_type(joker)
            local attribute = JoyousSpring.get_attribute(joker)
            table.insert(allowlist,
                {
                    monster_type = monster_type ~= true and monster_type or nil,
                    monster_attribute = attribute ~= true and attribute or nil
                }
            )
        end
    end

    return allowlist
end

local all_cards_in_gy_share_type_attribute = function()
    return JoyousSpring.get_graveyard_count() ==
        JoyousSpring.count_materials_in_graveyard(get_type_attribute_allowlist(G.jokers.cards))
end

local vw_played_hand = function(handname, context)
    if handname ~= "xuanwu" and handname ~= "qinglong" and handname ~= "chuche" and handname ~= "kauwloon" then
        return false
    end
    handname = "joy_vw_" .. handname
    if next(SMODS.find_card("j_joy_vw_shenshen")) and all_cards_in_gy_share_type_attribute() then
        return not not next(context.poker_hands[handname])
    end
    return context.scoring_name == handname
end

local vw_any_played = function(context)
    local hands = { "xuanwu", "qinglong", "chuche", "kauwloon" }
    for _, key in ipairs(hands) do
        if vw_played_hand(key, context) then
            return true
        end
    end
    return false
end

-- Virtual World Mai-Hime - Lulu
SMODS.Joker({
    key = "vw_lulu",
    atlas = 'vw',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.shop_add, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            xmult = 1.5,
            shop_add = 1,
            creates = 1,
            shop_activated = false,
            create_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "VirtualWorld" }, is_extra_deck = true } })
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_lulu')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_activated then
                    card.ability.extra.create_activated = true
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "VirtualWorld" }, is_main_deck = true } },
                            'j_joy_vw_lulu', true)
                    end
                end
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.destroy_card and context.cardarea == "unscored" and vw_played_hand("chuche", context) then
                return {
                    remove = true
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.create_activated = false
            card.ability.extra.shop_activated = false
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
                local xmult = 1
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) then
                    for _, scoring_card in pairs(scoring_hand) do
                        xmult = xmult *
                            card.ability.extra.xmult ^
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
                card.joker_display_values.xmult = xmult
            end
        }
    end
})

-- Virtual World Hime - Nyannyan
SMODS.Joker({
    key = "vw_nyannyan",
    atlas = 'vw',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.shop_add, card.ability.extra.creates, card.ability.extra.returns } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            chips = 50,
            shop_add = 1,
            creates = 1,
            returns = 1,
            shop_activated = false,
            banish_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_activated then
                    card.ability.extra.create_activated = true
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.creates do
                        if #G.consumeables.cards < G.consumeables.config.card_limit then
                            SMODS.add_card {
                                key = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                            }
                        end
                    end
                end
                if vw_played_hand("chuche", context) and not card.ability.extra.banish_activated then
                    card.ability.extra.banish_activated = true
                    card.ability.extra.joyous_spring.is_tuner = true
                end
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    chips = card.ability.extra.chips
                }
            end
            if context.joy_banished and context.joy_banished_card == card then
                if card.ability.extra.return_banish then
                    local choices = SMODS.merge_lists({ JoyousSpring.banish_boss_selected_area.cards,
                        JoyousSpring.banish_end_of_ante_area.cards })
                    local new_choices = {}
                    for _, joker in ipairs(choices) do
                        if joker ~= card then
                            table.insert(new_choices, joker)
                        end
                    end
                    local to_return = pseudorandom_element(new_choices, 'j_joy_vw_nyannyan')
                    if to_return then
                        JoyousSpring.return_from_banish(to_return)
                    end
                end
                card.ability.extra.return_banish = nil
            end
        end
        if context.joy_post_round_eval then
            if JoyousSpring.can_use_abilities(card) and card.ability.extra.banish_activated then
                local returns_from_banish = card.ability.extra.create_activated
                JoyousSpring.banish(card, "blind_selected",
                    function(card)
                        card.ability.extra.return_banish = returns_from_banish
                    end)
                local choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card then
                        table.insert(choices, joker)
                    end
                end
                local to_banish = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
            card.ability.extra.create_activated = false
            card.ability.extra.shop_activated = false
            card.ability.extra.banish_activated = false
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
                local chips = 0
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) then
                    for _, scoring_card in pairs(scoring_hand) do
                        chips = chips +
                            card.ability.extra.chips *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
                card.joker_display_values.chips = chips
            end
        }
    end
})


-- Virtual World Xiezhi - Jiji
SMODS.Joker({
    key = "vw_jiji",
    atlas = 'vw',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.shop_add, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            mult = 6,
            shop_add = 1,
            creates = 1,
            create_activated = false,
            shop_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = JoyousSpring.get_materials_in_graveyard(
                        { { monster_archetypes = { "VirtualWorld" } } },
                        nil,
                        true)
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_jiji')
                        if key_to_add then
                            JoyousSpring.add_monster_tag(key_to_add)
                        end
                    end
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_activated then
                    card.ability.extra.create_activated = true
                    local choices = JoyousSpring.get_materials_in_graveyard(
                        { { monster_archetypes = { "VirtualWorld" }, is_main_deck = true } },
                        nil,
                        true)
                    for _ = 1, card.ability.extra.creates do
                        local to_create = pseudorandom_element(choices, 'j_joy_vw_jiji')
                        if to_create then
                            JoyousSpring.create_summon({ key = to_create }, true)
                        end
                    end
                end
                if vw_played_hand("chuche", context) then
                    local choices = {}
                    for _, pcard in ipairs(G.hand.cards) do
                        if pcard:get_id() ~= 3 and pcard:get_id() ~= 6 and pcard:get_id() ~= 9 and pcard:get_id() ~= 12 then
                            table.insert(choices, pcard)
                        end
                    end
                    local choice = pseudorandom_element(choices, 'j_joy_vw_jiji')
                    if choice then
                        choice.joy_picked_by_jiji = true
                    end
                end
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if context.destroy_card and context.cardarea == G.hand and context.destroy_card.joy_picked_by_jiji then
            context.destroy_card.joy_picked_by_jiji = nil
            if JoyousSpring.can_use_abilities(card) then
                return {
                    remove = true
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.create_activated = false
            card.ability.extra.shop_activated = false
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
                local mult = 0
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) then
                    for _, scoring_card in pairs(scoring_hand) do
                        mult = mult +
                            card.ability.extra.mult *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
                card.joker_display_values.mult = mult
            end
        }
    end
})


-- Virtual World Oto-Hime - Toutou
SMODS.Joker({
    key = "vw_toutou",
    atlas = 'vw',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.shop_add, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            mult = 15,
            shop_add = 2,
            creates = 1,
            shop_activated = false,
            banish_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) then
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.creates do
                        SMODS.add_card {
                            key = pseudorandom_element(choices, 'j_joy_vw_nyannyan'),
                            edition = "e_negative"
                        }
                    end
                end
                if vw_played_hand("chuche", context) and not card.ability.extra.banish_activated then
                    card.ability.extra.banish_activated = true
                    card.ability.extra.joyous_spring.is_tuner = true
                    if not card.ability.extra.joyous_spring.is_all_materials then
                        card.ability.extra.joyous_spring.is_all_materials = {}
                    end
                    card.ability.extra.joyous_spring.is_all_materials.SYNCHRO = true
                end
            end
            if context.other_joker and context.other_joker.facing == "front" and (JoyousSpring.is_monster_type(context.other_joker, "Psychic") or JoyousSpring.is_monster_type(context.other_joker, "Wyrm")) and vw_played_hand("xuanwu", context) then
                return {
                    mult = card.ability.extra.mult,
                    message_card = context.other_joker
                }
            end
        end
        if context.joy_post_round_eval then
            if JoyousSpring.can_use_abilities(card) and card.ability.extra.banish_activated then
                JoyousSpring.banish(card, "boss_selected")
            end
            card.ability.extra.shop_activated = false
            card.ability.extra.banish_activated = false
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            calc_function = function(card)
                local mult = 0
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) then
                    mult = card.ability.extra.mult
                end
                card.joker_display_values.mult = mult
            end,
            mod_function = function(card, mod_joker)
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                return {
                    mult = text ~= 'Unknown' and
                        vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) and
                        (JoyousSpring.is_monster_type(card, "Psychic") or JoyousSpring.is_monster_type(card, "Wyrm")) and
                        mod_joker.ability.extra.mult and
                        mod_joker.ability.extra.mult * JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
})


-- Virtual World Kirin - Lili
SMODS.Joker({
    key = "vw_lili",
    atlas = 'vw',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
        end
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } }), card
                .ability.extra.mills, card.ability.extra.removes, card.ability.extra.gy_chips, card.ability.extra
            .gy_chips * card.ability.extra.removes, card.ability.extra
                .current_gy_chips, card.ability.extra.adds }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            chips = 20,
            mills = 3,
            removes = 6,
            gy_chips = 12,
            current_gy_chips = 0,
            adds = 1,
            add_active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) then
                    JoyousSpring.send_to_graveyard_pseudorandom(
                        { { monster_archetypes = { "VirtualWorld" } } },
                        card.config.center.key, card.ability.extra.mills)
                end
                if vw_played_hand("chuche", context) then
                    local old_count = JoyousSpring.get_graveyard_count()
                    JoyousSpring.remove_from_graveyard(card.ability.extra.removes, 'j_joy_vw_lili',
                        { { monster_type = "Wyrm" }, { monster_type = "Psychic" } })
                    local removed = old_count - JoyousSpring.get_graveyard_count()
                    card.ability.extra.current_gy_chips = card.ability.extra.current_gy_chips +
                        card.ability.extra.gy_chips * (removed > 0 and removed or card.ability.extra.removes)
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.add_active then
                    if JoyousSpring.get_graveyard_count() == JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } }) then
                        card.ability.extra.add_active = true
                        local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "VirtualWorld" }, is_extra_deck = true } })

                        for i = 1, card.ability.extra.adds do
                            local key_to_add, _ = pseudorandom_element(choices, 'j_joy_vw_lili')
                            if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                                JoyousSpring.add_to_extra_deck(key_to_add)
                            end
                        end
                    end
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_gy_chips
                }
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } })
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.add_active = false
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
                local chips = 0
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) then
                    for _, scoring_card in pairs(scoring_hand) do
                        chips = chips +
                            card.ability.extra.chips *
                            JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } }) *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
                card.joker_display_values.chips = chips
            end
        }
    end
})


-- Virtual World Roshi - Laolao
SMODS.Joker({
    key = "vw_laolao",
    atlas = 'vw',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult *
            JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" }, { monster_attribute = "EARTH" } }),
                card.ability.extra.revives, card.ability.extra.removes, card.ability.extra.gy_mult, card.ability.extra
            .gy_mult * card.ability.extra.removes, card.ability.extra.current_gy_mult, card.ability.extra
                .revives_negative }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            mult = 3,
            revives = 1,
            removes = 6,
            gy_mult = 3,
            current_gy_mult = 0,
            revives_negative = 1,
            create_active = false,
            revive_active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.revive_active then
                    for i = 1, card.ability.extra.revives do
                        JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "VirtualWorld" } } },
                            card.config.center.key, true)
                    end
                end
                if vw_played_hand("chuche", context) then
                    local old_count = JoyousSpring.get_graveyard_count()
                    JoyousSpring.remove_from_graveyard(card.ability.extra.removes, 'j_joy_vw_laolao',
                        { { monster_attribute = "WIND" }, { monster_attribute = "EARTH" } })
                    local removed = old_count - JoyousSpring.get_graveyard_count()
                    card.ability.extra.current_gy_mult = card.ability.extra.current_gy_mult +
                        card.ability.extra.gy_mult * (removed > 0 and removed or card.ability.extra.removes)
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_active then
                    if JoyousSpring.get_graveyard_count() == JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" }, { monster_attribute = "EARTH" } }) then
                        card.ability.extra.create_active = true
                        for i = 1, card.ability.extra.revives_negative do
                            JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "VirtualWorld" } } },
                                card.config.center.key, false, "e_negative")
                        end
                    end
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_gy_mult
                }
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" }, { monster_attribute = "EARTH" } })
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.create_active = false
            card.ability.extra.revive_active = false
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
                local mult = 0
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and vw_played_hand("xuanwu", { scoring_name = text, poker_hands = poker_hands }) then
                    for _, scoring_card in pairs(scoring_hand) do
                        mult = mult +
                            card.ability.extra.mult *
                            JoyousSpring.count_materials_in_graveyard({ { monster_attribute = "WIND" }, { monster_attribute = "EARTH" } }) *
                            JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                    end
                end
                card.joker_display_values.mult = mult
            end
        }
    end
})


-- Virtual World Dragon - Longlong
SMODS.Joker({
    key = "vw_longlong",
    atlas = 'vw',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
        end
        local count = 0
        local sub = 0
        if G.jokers then
            local attributes = JoyousSpring.get_material_attributes(G.jokers.cards)
            for key, value in pairs(JoyousSpring.graveyard) do
                local center = G.P_CENTERS[key]
                if center.config.extra.joyous_spring.attribute and attributes[center.config.extra.joyous_spring.attribute] then
                    count = count + value.count
                end
            end
            sub = JoyousSpring.get_graveyard_count() - count
        end
        return { vars = { card.ability.extra.mult_add, card.ability.extra.mult_sub, math.max(0, (card.ability.extra.mult_add * count) - (card.ability.extra.mult_sub * sub)), card.ability.extra.mult_change, card.ability.extra.detach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            mult_add = 1,
            mult_sub = 2,
            mult_change = 1,
            detach = 1,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card and not card.ability.extra.active then
                JoyousSpring.ease_detach(card)
                card.ability.extra.active = true
            end
            if context.before then
                if vw_any_played(context) then
                    card.ability.extra.mult_add = card.ability.extra.mult_add + card.ability.extra.mult_change
                    card.ability.extra.mult_sub = card.ability.extra.mult_sub + card.ability.extra.mult_change
                end
                if card.ability.extra.active then
                    return {
                        level_up = true
                    }
                end
            end
            if context.joker_main then
                local attributes = JoyousSpring.get_material_attributes(G.jokers.cards)
                local count = 0
                for key, value in pairs(JoyousSpring.graveyard) do
                    local center = G.P_CENTERS[key]
                    if center.config.extra.joyous_spring.attribute and attributes[center.config.extra.joyous_spring.attribute] then
                        count = count + value.count
                    end
                end
                local sub = JoyousSpring.get_graveyard_count() - count
                return {
                    mult = math.max(0, (card.ability.extra.mult_add * count) - (card.ability.extra.mult_sub * sub))
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    joy_can_detach = function(self, card)
        return not card.ability.extra.active
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                local attributes = JoyousSpring.get_material_attributes(G.jokers.cards)
                local count = 0
                for key, value in pairs(JoyousSpring.graveyard) do
                    local center = G.P_CENTERS[key]
                    if center.config.extra.joyous_spring.attribute and attributes[center.config.extra.joyous_spring.attribute] then
                        count = count + value.count
                    end
                end
                local sub = JoyousSpring.get_graveyard_count() - count
                card.joker_display_values.mult = math.max(0,
                    (card.ability.extra.mult_add * count) - (card.ability.extra.mult_sub * sub))
            end
        }
    end
})


-- Virtual World Shell - Jaja
SMODS.Joker({
    key = "vw_jaja",
    atlas = 'vw',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.detach, card.ability.extra.removes, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            detach = 2,
            removes = 9,
            xmult = 4
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)
                JoyousSpring.remove_from_graveyard(card.ability.extra.removes, card.config.center.key,
                    get_type_attribute_allowlist(G.jokers.cards))
            end
            if context.joker_main and all_cards_in_gy_share_type_attribute() and vw_any_played(context) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.joy_post_round_eval and all_cards_in_gy_share_type_attribute() then
                for _, joker in ipairs(G.jokers.cards) do
                    JoyousSpring.banish(joker, "blind_selected")
                end
            end
        end
    end,
    joy_can_detach = function(self, card)
        return (JoyousSpring.get_graveyard_count() -
            JoyousSpring.count_materials_in_graveyard(get_type_attribute_allowlist(G.jokers.cards))) > 0
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
                local xmult = 1
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                if text ~= 'Unknown' and all_cards_in_gy_share_type_attribute() and vw_any_played({ scoring_name = text, poker_hands = poker_hands }) then
                    xmult = 4
                end
                card.joker_display_values.xmult = 1 + xmult
            end
        }
    end
})


-- Virtual World Phoenix - Fanfan
SMODS.Joker({
    key = "vw_fanfan",
    atlas = 'vw',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.detach, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            detach = 2,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card and not card.ability.extra.active then
                JoyousSpring.ease_detach(card)
                JoyousSpring.revive_pseudorandom(get_type_attribute_allowlist(G.jokers.cards), card.config.center.key,
                    true)
            end
            if context.joy_returned and context.joy_returned_card == card then
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        if all_cards_in_gy_share_type_attribute() then
                            local editionless_jokers = SMODS.Edition:get_edition_cards(G.jokers, true)

                            local eligible_card = pseudorandom_element(editionless_jokers, 'j_joy_vw_fanfan')
                            if eligible_card then
                                eligible_card:set_edition("e_negative", true)
                            end
                        end
                        return true
                    end)
                }))
            end
        end
    end,
    joy_can_detach = function(self, card)
        return JoyousSpring.count_materials_in_graveyard(get_type_attribute_allowlist(G.jokers.cards), true) > 0
    end,
})


-- Virtual World Tiger - Fufu
SMODS.Joker({
    key = "vw_fufu",
    atlas = 'vw',
    pos = { x = 3, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.detach, card.ability.extra.xmult, card.ability.extra.current_xmult, card.ability.extra.attach, card.ability.extra.banish } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            detach = 1,
            xmult = 1,
            current_xmult = 1,
            attach = 1,
            banish = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detach and context.joy_detaching_card == card and not card.ability.extra.active then
                JoyousSpring.ease_detach(card)
                card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
            end
            if context.before and (vw_played_hand("xuanwu", context) or vw_played_hand("qinglong", context)) then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials +
                    #context.scoring_hand
            end
            if context.after and (vw_played_hand("chuche", context) or vw_played_hand("kauwloon", context)) then
                local choices = {}
                for _, pcard in ipairs(context.full_hand) do
                    if not pcard.destroyed and (pcard.edition or pcard.seal or next(SMODS.get_enhancements(pcard))) then
                        table.insert(choices, pcard)
                    end
                end
                local to_banish = pseudorandom_element(choices, card.config.center.key)
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.current_xmult = 1
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "current_xmult", retrigger_type = "exp" }
                    }
                }
            },
        }
    end
})


-- Virtual World Beast - Jiujiu
SMODS.Joker({
    key = "vw_jiujiu",
    atlas = 'vw',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.get_graveyard_count() } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            mills = 3,
            chips = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_attribute = "WIND", monster_type = "Psychic" }, { monster_attribute = "EARTH", monster_type = "Wyrm" } },
                    card.config.center.key, card.ability.extra.mills)
            end
            if context.joker_main and all_cards_in_gy_share_type_attribute() then
                return {
                    chips = card.ability.extra.chips * JoyousSpring.get_graveyard_count()
                }
            end
            if context.repetition and context.cardarea == G.play and vw_any_played(context) and context.other_card:is_face() and all_cards_in_gy_share_type_attribute() then
                local repetitions = 0
                for _, pcard in ipairs(context.scoring_hand) do
                    if not pcard:is_face() then repetitions = repetitions + 1 end
                end
                return {
                    repetitions = repetitions
                }
            end
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
                card.joker_display_values.chips = all_cards_in_gy_share_type_attribute() and
                    card.ability.extra.chips * JoyousSpring.get_graveyard_count() or 0
            end,
            retrigger_function = function(playing_card, scoring_hand, held_in_hand, joker_card)
                if held_in_hand then return 0 end
                local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
                local repetitions = 0
                for _, pcard in ipairs(scoring_hand) do
                    if not pcard:is_face() then repetitions = repetitions + 1 end
                end
                return playing_card:is_face() and text ~= 'Unknown' and all_cards_in_gy_share_type_attribute() and
                    vw_any_played({ scoring_name = text, poker_hands = poker_hands }) and
                    repetitions * JokerDisplay.calculate_joker_triggers(joker_card) or 0
            end
        }
    end
})


-- Virtual World Kyubi - Shenshen
SMODS.Joker({
    key = "vw_shenshen",
    atlas = 'vw',
    pos = { x = 3, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_vwhands" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.xchips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            xchips = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_attribute = "WIND", monster_type = "Psychic" }, { monster_attribute = "EARTH", monster_type = "Wyrm" } },
                    card.config.center.key, card.ability.extra.mills)
            end
            if context.joker_main and all_cards_in_gy_share_type_attribute() then
                return {
                    xchips = card.ability.extra.xchips
                }
            end
            if context.after and all_cards_in_gy_share_type_attribute() then
                for _, pcard in ipairs(context.scoring_hand) do
                    JoyousSpring.banish(pcard, "blind_selected")
                end
            end
        end
    end,
    joy_can_be_sent_to_graveyard = function(self, card, choices)
        local vw_owned = JoyousSpring.get_materials_owned({ { monster_archetypes = { "VirtualWorld" } } })
        return JoyousSpring.filter_material_keys_from_list(choices, get_type_attribute_allowlist(vw_owned))
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xchips", retrigger_type = "exp" }
                    },
                    border_colour = G.C.CHIPS
                }
            },
            calc_function = function(card)
                card.joker_display_values.xchips = all_cards_in_gy_share_type_attribute() and card.ability.extra.xchips or
                    1
            end
        }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "vw" },
    label = "k_joy_archetype_vw"
}
