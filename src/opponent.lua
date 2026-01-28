-- OPPONENT AREA AND CARDS

-- no there's no AI to play against in this mod

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
            SMODS.destroy_cards(card, true)
            amount = amount - 1
        end
        i = i + 1
    end
end

local moveable_drag_ref = Moveable.drag
function Moveable:drag(offset)
    if not self.area or self.area ~= JoyousSpring.opponent_area then
        moveable_drag_ref(self, offset)
    end
end
