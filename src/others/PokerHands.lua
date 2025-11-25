-- POKER HANDS

JoyousSpring.PokerHandDummies = {}

JoyousSpring.PokerHandDummy = SMODS.Center:extend {
    set = 'JoyPokerHand',
    obj_buffer = {},
    obj_table = JoyousSpring.PokerHandDummies,
    class_prefix = 'phd',
    required_params = {
        'key',
    },
    pre_inject_class = function(self)
        G.P_CENTER_POOLS[self.set] = {}
    end,
    inject = function(self)
        SMODS.Center.inject(self)
    end,
    get_obj = function(self, key)
        if key == nil then
            return nil
        end
        return self.obj_table[key]
    end
}

--#region Eldlixir
SMODS.PokerHand({
    key = "eldlixir",
    chips = 100,
    mult = 8,
    l_chips = 15,
    l_mult = 2,
    visible = false,
    example = {
        { 'H_K', true, enhancement = 'm_gold' },
        { 'S_2', true, enhancement = 'm_gold' },
        { 'S_7', true, enhancement = 'm_gold' },
        { 'H_9', true, enhancement = 'm_gold' },
        { 'C_A', true, enhancement = 'm_gold' },
    },
    evaluate = function(parts, hand)
        local has_angel = false
        for _, joker in ipairs(SMODS.find_card("j_joy_eld_angel")) do
            if JoyousSpring.can_use_abilities(joker) then
                has_angel = true
                break
            end
        end
        if #hand == 5 and has_angel then
            local all_gold = true
            for _, card in ipairs(hand) do
                if not SMODS.has_enhancement(card, 'm_gold') then
                    all_gold = false
                    break
                end
            end
            if all_gold then
                return { hand }
            end
        end
        return {}
    end
})

JoyousSpring.PokerHandDummy {
    key = "eldlixir",
    generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
        SMODS.Center.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
        if desc_nodes ~= full_UI_table.main then
            local cards = {}
            local card_w = G.CARD_W * 0.6
            local card_h = G.CARD_H * 0.6
            table.insert(cards, Card(0, 0, card_w, card_h, G.P_CARDS['H_K'], G.P_CENTERS.m_gold))
            table.insert(cards, Card(0, 0, card_w, card_h, G.P_CARDS['S_2'], G.P_CENTERS.m_gold))
            table.insert(cards, Card(0, 0, card_w, card_h, G.P_CARDS['S_7'], G.P_CENTERS.m_gold))
            table.insert(cards, Card(0, 0, card_w, card_h, G.P_CARDS['H_9'], G.P_CENTERS.m_gold))
            table.insert(cards, Card(0, 0, card_w, card_h, G.P_CARDS['C_A'], G.P_CENTERS.m_gold))
            G.joy_dummy_area = CardArea(
                0, 0,
                4.25 * card_w,
                0.95 * card_h,
                { card_limit = 5, type = 'title', highlight_limit = 0, collection = true }
            )

            for i, p_card in ipairs(cards) do
                G.joy_dummy_area:emplace(p_card)
            end

            desc_nodes[#desc_nodes + 1] = {
                {
                    n = G.UIT.B,
                    config = { w = 0, h = 0.1 },
                },
            }

            desc_nodes[#desc_nodes + 1] = {
                {
                    n = G.UIT.R,
                    config = { align = "cm", padding = 0.07, no_fill = true },
                    nodes = {
                        { n = G.UIT.O, config = { object = G.joy_dummy_area } }
                    }
                },
            }
        end
    end,
}

SMODS.Consumable {
    key = 'cursed_eldland',
    set = 'Planet',
    atlas = 'eld',
    discovered = true,
    config = { hand_type = 'joy_eldlixir', softlock = true },
    pos = { x = 2, y = 2 },
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
--#endregion

--#region Koi Koi
-- I'm the only one using these so I'm not going to bother making the parts properly.

local cardian_is_visible = function(self)
    if G.GAME.hands[self.key].visible then
        return true
    end
    for _, playing_card in ipairs(G.playing_cards or {}) do
        if playing_card.config.center.key == 'm_joy_hanafuda' then
            return true
        end
    end
    return false
end
JoyousSpring.hanafuda_get_hand_for_list = function(hand, has_hanafuda, has_at_least)
    local ret = {}
    for _, pcard in ipairs(hand) do
        local _, name = JoyousSpring.get_hanafuda(pcard)
        for required, _ in pairs(has_hanafuda) do
            if required == name then
                has_hanafuda[name] = true
                table.insert(ret, pcard)
            end
        end
    end

    local count = 0
    for _, value in pairs(has_hanafuda) do
        if value then
            count = count + 1
        elseif not has_at_least then
            return {}
        end
    end
    return { (not has_at_least or count >= has_at_least) and ret or nil }
end

-- Chaff
SMODS.PokerHand({
    key = "cardian_chaff",
    joy_koi_koi = true,
    chips = 100,
    mult = 1,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia_2" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia" },
        { 'C_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Sake" },
    },
    evaluate = function(parts, hand)
        if #hand < 5 then return {} end
        for _, pcard in ipairs(hand) do
            local hanafuda, name = JoyousSpring.get_hanafuda(pcard)
            if (hanafuda or {}).type ~= "chaff" and name ~= "Chrysanthemum with Sake" then
                return {}
            end
        end
        return { hand }
    end,
})

-- Ribbons
SMODS.PokerHand({
    key = "cardian_ribbons",
    joy_koi_koi = true,
    chips = 100,
    mult = 1,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Plum Blossom with Ribbon" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Clover with Ribbon" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Willow with Ribbon" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Ribbon" },
        { 'C_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Plum Blossom with Ribbon" },
    },
    evaluate = function(parts, hand)
        if #hand < 5 then return {} end
        for _, pcard in ipairs(hand) do
            local hanafuda, _ = JoyousSpring.get_hanafuda(pcard)
            if (hanafuda or {}).type ~= "ribbon" then
                return {}
            end
        end
        return { hand }
    end,
})

-- Blue Ribbon
SMODS.PokerHand({
    key = "cardian_blueribbon",
    joy_koi_koi = true,
    chips = 100,
    mult = 5,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Peony with Ribbon" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Ribbon" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Maple with Ribbon" },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        local has_hanafuda = {
            ["Peony with Ribbon"] = false,
            ["Chrysanthemum with Ribbon"] = false,
            ["Maple with Ribbon"] = false,
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
    end
})

-- Red Poem
SMODS.PokerHand({
    key = "cardian_redpoem",
    joy_koi_koi = true,
    chips = 100,
    mult = 5,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Pine with Ribbon" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Plum Blossom with Ribbon" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Ribbon" },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        local has_hanafuda = {
            ["Pine with Ribbon"] = false,
            ["Plum Blossom with Ribbon"] = false,
            ["Cherry Blossom with Ribbon"] = false,
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
    end
})

-- Red Poem and Blue Ribbon
SMODS.PokerHand({
    key = "cardian_redpoemblueribbon",
    joy_koi_koi = true,
    chips = 100,
    mult = 10,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Pine with Ribbon" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Ribbon" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Ribbon" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Maple with Ribbon" },
        { 'C_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Plum Blossom with Ribbon" },
    },
    evaluate = function(parts, hand)
        local has_hanafuda = {
            ["Pine with Ribbon"] = false,
            ["Plum Blossom with Ribbon"] = false,
            ["Cherry Blossom with Ribbon"] = false,
            ["Peony with Ribbon"] = false,
            ["Chrysanthemum with Ribbon"] = false,
            ["Maple with Ribbon"] = false,
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda, 5)
    end
})

-- Animals
SMODS.PokerHand({
    key = "cardian_animals",
    joy_koi_koi = true,
    chips = 100,
    mult = 1,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Water Iris with Bridge" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Maple with Deer" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Clover with Boar" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Plum Blossom with White-eye" },
        { 'C_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Wisteria with Cuckoo" },
    },
    evaluate = function(parts, hand)
        if #hand < 5 then return {} end
        for _, pcard in ipairs(hand) do
            local hanafuda, _ = JoyousSpring.get_hanafuda(pcard)
            if (hanafuda or {}).type ~= "animal" then
                return {}
            end
        end
        return { hand }
    end
})

-- Boardefly
SMODS.PokerHand({
    key = "cardian_boardefly",
    joy_koi_koi = true,
    chips = 100,
    mult = 5,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Peony with Butterfly" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Maple with Deer" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Clover with Boar" },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        local has_hanafuda = {
            ["Peony with Butterfly"] = false,
            ["Maple with Deer"] = false,
            ["Clover with Boar"] = false,
        }
        local ret = JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
        if not next(ret) then
            return {}
        end
        local animals = {}

        for _, pcard in ipairs(hand) do
            local hanafuda, _ = JoyousSpring.get_hanafuda(pcard)
            if (hanafuda or {}).type == "animal" then
                table.insert(animals, pcard)
            end
        end
        return { SMODS.merge_lists(ret, { animals }) }
    end
})

-- Flowerviewing
SMODS.PokerHandPart({
    key = "flowerviewing_part",
    func = function(hand)
        local has_hanafuda = {
            ["Chrysanthemum with Sake"] = false,
            ["Cherry Blossom with Curtain"] = false
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
    end
})

SMODS.PokerHand({
    key = "cardian_flowerviewing",
    joy_koi_koi = true,
    chips = 200,
    mult = 5,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Sake" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Curtain" },
        { 'S_7', false },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        return parts.joy_flowerviewing_part
    end
})

-- Moonviewing
SMODS.PokerHandPart({
    key = "moonviewing_part",
    func = function(hand)
        local has_hanafuda = {
            ["Chrysanthemum with Sake"] = false,
            ["Zebra Grass with Moon"] = false
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
    end
})

SMODS.PokerHand({
    key = "cardian_moonviewing",
    joy_koi_koi = true,
    chips = 200,
    mult = 5,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Sake" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Zebra Grass with Moon" },
        { 'S_7', false },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        return parts.joy_moonviewing_part
    end
})

-- Moonflowerviewing
SMODS.PokerHand({
    key = "cardian_moonflowerviewing",
    joy_koi_koi = true,
    chips = 500,
    mult = 10,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Chrysanthemum with Sake" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Curtain" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Zebra Grass with Moon" },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        if next(parts.joy_moonviewing_part) and next(parts.joy_flowerviewing_part) then
            return { SMODS.merge_lists(parts.joy_moonviewing_part, parts.joy_flowerviewing_part) }
        end
        return {}
    end
})

-- Lightwave
SMODS.PokerHandPart({
    key = "lightwave_part",
    func = function(hand)
        local has_hanafuda = {
            ["Pine with Crane"] = false,
            ["Cherry Blossom with Curtain"] = false,
            ["Zebra Grass with Moon"] = false,
            ["Paulownia with Phoenix"] = false
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda, 3)
    end
})

SMODS.PokerHand({
    key = "cardian_lightwave",
    joy_koi_koi = true,
    chips = 200,
    mult = 5,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Pine with Crane" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Zebra Grass with Moon" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia with Phoenix" },
        { 'H_9', false },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        return parts.joy_lightwave_part
    end
})

-- Lightshower
SMODS.PokerHand({
    key = "cardian_lightshower",
    joy_koi_koi = true,
    chips = 500,
    mult = 7,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Pine with Crane" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Curtain" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia with Phoenix" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Willow with Calligrapher" },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        if not next(parts.joy_lightwave_part) then
            return {}
        end
        local calligrapher = {}

        for _, pcard in ipairs(hand) do
            local _, name = JoyousSpring.get_hanafuda(pcard)
            if name == "Willow with Calligrapher" then
                table.insert(calligrapher, pcard)
            end
        end
        return next(calligrapher) and { SMODS.merge_lists(parts.joy_lightwave_part, { calligrapher }) } or {}
    end
})

-- Lightshow
SMODS.PokerHand({
    key = "cardian_lightshow",
    joy_koi_koi = true,
    chips = 500,
    mult = 8,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Pine with Crane" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Curtain" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia with Phoenix" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Zebra Grass with Moon" },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        local has_hanafuda = {
            ["Pine with Crane"] = false,
            ["Cherry Blossom with Curtain"] = false,
            ["Zebra Grass with Moon"] = false,
            ["Paulownia with Phoenix"] = false
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
    end
})

-- Lightflare
SMODS.PokerHand({
    key = "cardian_lightflare",
    joy_koi_koi = true,
    chips = 1000,
    mult = 10,
    l_chips = 15,
    l_mult = 2,
    visible = cardian_is_visible,
    example = {
        { 'D_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Pine with Crane" },
        { 'S_2', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Cherry Blossom with Curtain" },
        { 'S_7', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Paulownia with Phoenix" },
        { 'H_9', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Zebra Grass with Moon" },
        { 'C_A', true, enhancement = 'm_joy_hanafuda', joy_hanafuda = "Willow with Calligrapher" },
    },
    evaluate = function(parts, hand)
        local has_hanafuda = {
            ["Pine with Crane"] = false,
            ["Cherry Blossom with Curtain"] = false,
            ["Zebra Grass with Moon"] = false,
            ["Willow with Calligrapher"] = false,
            ["Paulownia with Phoenix"] = false
        }
        return JoyousSpring.hanafuda_get_hand_for_list(hand, has_hanafuda)
    end
})

SMODS.Consumable {
    key = "cardian_koikoi",
    set = "Planet",
    atlas = "cardian",
    discovered = true,
    pos = { x = 2, y = 3 },
    config = { joy_hand_types = {
        "joy_cardian_chaff",
        "joy_cardian_ribbons",
        "joy_cardian_blueribbon",
        "joy_cardian_redpoem",
        "joy_cardian_redpoemblueribbon",
        "joy_cardian_animals",
        "joy_cardian_boardefly",
        "joy_cardian_flowerviewing",
        "joy_cardian_moonviewing",
        "joy_cardian_moonflowerviewing",
        "joy_cardian_lightwave",
        "joy_cardian_lightshower",
        "joy_cardian_lightshow",
        "joy_cardian_lightflare",
    } },
    use = function(self, card, area, copier)
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
            { handname = localize('k_joy_all_koikoi_hands'), chips = '...', mult = '...', level = '' })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                G.TAROT_INTERRUPT_PULSE = true
                return true
            end
        }))
        update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.9,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                return true
            end
        }))
        update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.9,
            func = function()
                play_sound('tarot1')
                card:juice_up(0.8, 0.5)
                G.TAROT_INTERRUPT_PULSE = nil
                return true
            end
        }))
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
        delay(1.3)
        for _, poker_hand_key in pairs(card.ability.joy_hand_types) do
            level_up_hand(card, poker_hand_key, true)
        end
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 1.1, delay = 0 },
            { mult = 0, chips = 0, handname = '', level = '' })
    end,
    can_use = function(self, card)
        return true
    end,
}
--#endregion

--#region VW

local vw_is_hand_active = function()
    local enablers = {
        "j_joy_vw_lulu",
        "j_joy_vw_nyannyan",
        "j_joy_vw_jiji",
        "j_joy_vw_toutou",
        "j_joy_vw_lili",
        "j_joy_vw_laolao",
        "j_joy_vw_fufu"
    }

    for _, key in ipairs(enablers) do
        for _, joker in ipairs(SMODS.find_card(key)) do
            if JoyousSpring.can_use_abilities(joker) then
                return true
            end
        end
    end

    for _, joker in ipairs(SMODS.find_card("j_joy_vw_longlong")) do
        if JoyousSpring.can_use_abilities(joker) and joker.ability.extra.active then
            return true
        end
    end

    return false
end

local get_type_attribute_allowlist = function(card_list)
    local allowlist = {}

    for _, joker in ipairs(card_list) do
        local monster_type = JoyousSpring.get_monster_type(joker)
        local attribute = JoyousSpring.get_attribute(joker)
        table.insert(allowlist,
            {
                monster_type = monster_type ~= true and monster_type or nil,
                monster_attribute = attribute ~= true and attribute or nil
            }
        )
    end

    return allowlist
end

local all_cards_in_gy_share_type_attribute = function()
    return JoyousSpring.get_graveyard_count() ==
        JoyousSpring.count_materials_in_graveyard(get_type_attribute_allowlist(G.jokers.cards))
end

-- thank you AI overlords for this one
local vw_get_X_combinations = function(hand, n, different_ranks)
    if not vw_is_hand_active() then return {} end
    local candidates = { [3] = {}, [6] = {}, [9] = {}, [12] = {} }
    local has_jiujiu = false
    if next(SMODS.find_card("j_joy_vw_jiujiu")) and all_cards_in_gy_share_type_attribute() then
        for _, joker in ipairs(SMODS.find_card("j_joy_vw_jiujiu")) do
            if JoyousSpring.can_use_abilities(joker) then
                has_jiujiu = true
                break
            end
        end
    end
    for _, card in ipairs(hand) do
        local id = card:get_id()
        if id == 3 or id == 6 or id == 9 or (has_jiujiu and id == 12) then
            table.insert(candidates[id], card)
        end
    end

    local available_ranks = {}
    for rank, cards_list in pairs(candidates) do
        if #cards_list > 0 then
            table.insert(available_ranks, rank)
        end
    end
    local total_ranks = #available_ranks
    if total_ranks < different_ranks then
        return {}
    end

    local function get_combinations(list, m)
        if m == 0 then
            return { {} }
        end
        if m > #list then
            return {}
        end
        local res = {}
        local function recurse(start, depth, combo)
            if depth == m then
                table.insert(res, combo)
                return
            end
            for i = start, #list do
                local new_combo = { unpack(combo) }
                table.insert(new_combo, list[i])
                recurse(i + 1, depth + 1, new_combo)
            end
        end
        recurse(1, 0, {})
        return res
    end

    local function cartesian_product(lists)
        local m = #lists
        if m == 0 then
            return { {} }
        end
        local result = {}
        local indices = {}
        for i = 1, m do
            indices[i] = 1
        end

        while true do
            local product = {}
            for i = 1, m do
                if indices[i] > #lists[i] then
                    break
                end
                table.insert(product, lists[i][indices[i]])
            end
            if #product == m then
                table.insert(result, product)
            end

            local j = m
            while j >= 1 do
                indices[j] = indices[j] + 1
                if indices[j] <= #lists[j] then
                    break
                else
                    indices[j] = 1
                    j = j - 1
                end
            end
            if j < 1 then
                break
            end
        end
        return result
    end

    local function generate_distributions(n, k, rank_set, candidates)
        local max_counts = {}
        for idx, r in ipairs(rank_set) do
            max_counts[idx] = #candidates[r]
        end

        local distributions = {}
        local current = {}

        local function recurse(rem, idx)
            if idx == k + 1 then
                if rem == 0 then
                    table.insert(distributions, { unpack(current, 1, k) })
                end
                return
            end

            local min_val = 1
            local max_val = math.min(max_counts[idx], rem - (k - idx))
            if min_val > max_val then
                return
            end

            for c = min_val, max_val do
                current[idx] = c
                recurse(rem - c, idx + 1)
            end
        end

        recurse(n, 1)
        return distributions
    end

    local result = {}
    for k = different_ranks, math.min(n, total_ranks) do
        local rank_combinations = get_combinations(available_ranks, k)
        for _, rank_set in ipairs(rank_combinations) do
            local distributions = generate_distributions(n, k, rank_set, candidates)
            for _, dist in ipairs(distributions) do
                local choices_per_rank = {}
                for i, r in ipairs(rank_set) do
                    local count_i = dist[i]
                    local cards_list = candidates[r]
                    choices_per_rank[i] = get_combinations(cards_list, count_i)
                end
                local cp = cartesian_product(choices_per_rank)
                for _, product in ipairs(cp) do
                    local combo = {}
                    for i = 1, k do
                        for _, card in ipairs(product[i]) do
                            table.insert(combo, card)
                        end
                    end
                    table.insert(result, combo)
                end
            end
        end
    end
    return result
end

SMODS.PokerHandPart({
    key = "vw_xuanwu_part",
    func = function(hand)
        return vw_get_X_combinations(hand, 2, 2)
    end
})

SMODS.PokerHand({
    key = "vw_xuanwu",
    chips = 15,
    mult = 2,
    l_chips = 15,
    l_mult = 1,
    visible = false,
    example = {
        { 'S_7', false },
        { 'H_T', false },
        { 'H_9', true },
        { 'S_3', true },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        return parts.joy_vw_xuanwu_part
    end
})

SMODS.PokerHandPart({
    key = "vw_qinglong_part",
    func = function(hand)
        return vw_get_X_combinations(hand, 3, 2)
    end
})

SMODS.PokerHand({
    key = "vw_qinglong",
    chips = 35,
    mult = 3,
    l_chips = 20,
    l_mult = 2,
    visible = false,
    example = {
        { 'S_7', false },
        { 'H_3', true },
        { 'H_9', true },
        { 'S_3', true },
        { 'C_A', false },
    },
    evaluate = function(parts, hand)
        return parts.joy_vw_qinglong_part
    end
})

SMODS.PokerHandPart({
    key = "vw_chuche_part",
    func = function(hand)
        return vw_get_X_combinations(hand, 4, 2)
    end
})

SMODS.PokerHand({
    key = "vw_chuche",
    chips = 45,
    mult = 4,
    l_chips = 25,
    l_mult = 2,
    visible = false,
    example = {
        { 'S_7', false },
        { 'H_6', true },
        { 'S_6', true },
        { 'S_3', true },
        { 'C_3', true },
    },
    evaluate = function(parts, hand)
        return parts.joy_vw_chuche_part
    end
})

SMODS.PokerHandPart({
    key = "vw_kauwloon_part",
    func = function(hand)
        return vw_get_X_combinations(hand, 5, 3)
    end
})

SMODS.PokerHand({
    key = "vw_kauwloon",
    chips = 65,
    mult = 7,
    l_chips = 30,
    l_mult = 3,
    visible = false,
    example = {
        { 'S_6', true },
        { 'H_6', true },
        { 'H_9', true },
        { 'S_3', true },
        { 'C_3', true },
    },
    evaluate = function(parts, hand)
        return parts.joy_vw_kauwloon_part
    end
})

SMODS.Consumable {
    key = 'vw_xuanwu',
    set = 'Planet',
    atlas = 'vw',
    discovered = true,
    config = { hand_type = 'joy_vw_xuanwu', softlock = true },
    pos = { x = 0, y = 3 },
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
SMODS.Consumable {
    key = 'vw_qinglong',
    set = 'Planet',
    atlas = 'vw',
    discovered = true,
    config = { hand_type = 'joy_vw_qinglong', softlock = true },
    pos = { x = 1, y = 3 },
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
SMODS.Consumable {
    key = 'vw_chuche',
    set = 'Planet',
    atlas = 'vw',
    discovered = true,
    config = { hand_type = 'joy_vw_chuche', softlock = true },
    pos = { x = 2, y = 3 },
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
SMODS.Consumable {
    key = 'vw_kauwloon',
    set = 'Planet',
    atlas = 'vw',
    discovered = true,
    config = { hand_type = 'joy_vw_kauwloon', softlock = true },
    pos = { x = 3, y = 3 },
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
--#endregion
