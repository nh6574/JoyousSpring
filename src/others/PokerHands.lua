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
    set = 'Planet',
    key = 'cursed_eldland',
    atlas = 'p_eldland',
    discovered = true,
    config = { hand_type = 'joy_eldlixir', softlock = true },
    pos = { x = 0, y = 0 },
    set_card_type_badge = function(self, card, badges)
        badges[1] = create_badge(localize('k_planet'), get_type_colour(self or card.config, card), nil, 1.2)
    end,
    generate_ui = 0,
    process_loc_text = function(self)
        local target_text = G.localization.descriptions[self.set]['c_mercury'].text
        SMODS.Consumable.process_loc_text(self)
        G.localization.descriptions[self.set][self.key] = {}
        G.localization.descriptions[self.set][self.key].text = target_text
    end
}
--#endregion
