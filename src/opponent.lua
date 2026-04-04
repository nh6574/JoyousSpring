-- OPPONENT AREA AND CARDS

-- no, there's no AI to play against in this mod

SMODS.Atlas({
    key = "small_Back",
    path = "blind_back.png",
    px = 34,
    py = 34
})

JoyousSpring.OpponentCard = SMODS.Center:extend {
    set = "joy_Opponent",
    unlocked = true,
    discovered = true,
    class_prefix = "opp",
    config = {},
    pos = { x = 0, y = 0 },
    display_size = { w = 34, h = 34 },
    pre_inject_class = function(self)
        G.P_CENTER_POOLS[self.set] = {}
    end,
    set_card_type_badge = function(self, card, badges)
        if not card.area or card.area ~= G.joy_blind_effects_area then
            badges[#badges + 1] = create_badge(localize("k_joy_opponent"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        else
            badges[#badges + 1] = create_badge(localize("b_blinds"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        end
    end
}

---Handles the card limit of JoyousSpring.opponent_area
JoyousSpring.handle_opponent_area_limit = function()
    local area = JoyousSpring.opponent_area
    local limit = area.config.card_limit
    local amount = #area.cards
    local i = 1
    while limit < amount do
        local card = area.cards[i]
        if not card then break end
        if (not card.edition or not card.edition.negative) and JoyousSpring.get_card_limit(card) <= 0 then
            JoyousSpring.destroy_cards(card, true)
            amount = amount - 1
        end
        i = i + 1
    end
end

G.FUNCS.joy_your_collection_opponent = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu {
        definition = JoyousSpring.create_UIBox_your_collection_opponent(),
    }
end

JoyousSpring.create_UIBox_your_collection_opponent = function()
    return SMODS.card_collection_UIBox(G.P_CENTER_POOLS.joy_Opponent, { 8, 8, 8, 8, 8 }, {
        no_materialize = true,
        h_mod = 0.5,
        w_mod = 0.8,
        card_scale = 1.5,
    })
end

function JoyousSpring.opponent_collection_tally()
    local obj_tally = { tally = 0, of = 0 }

    for _, v in pairs(G.P_CENTER_POOLS.joy_Opponent) do
        if not v.no_collection then
            obj_tally.of = obj_tally.of + 1
            if v.discovered then
                obj_tally.tally = obj_tally.tally + 1
            end
        end
    end

    return obj_tally
end
