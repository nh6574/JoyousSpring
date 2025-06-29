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
        if #hand == 5 and next(SMODS.find_card("j_joy_eld_angel")) then
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

SMODS.Atlas({
    key = "p_eldland",
    path = "14p_eldland.png",
    px = 71,
    py = 95
})

SMODS.Consumable {
    key = 'cursed_eldland',
    set = 'Planet',
    atlas = 'p_eldland',
    discovered = true,
    config = { hand_type = 'joy_eldlixir', softlock = true },
    pos = { x = 0, y = 0 },
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
--#endregion
--[[
--#region Koi Koi
-- I'm the only one using these so I'm not going to bother making the parts properly.

local cardian_is_visible = function(self)
    if G.GAME.hands[self.key].visible then
        return true
    end
    for _, playing_card in ipairs(G.playing_cards or {}) do
        if SMODS.has_enhancement(playing_card, 'm_joy_hanafuda') then
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
    visible = true,
    is_visible = cardian_is_visible,
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
]]
--#endregion
