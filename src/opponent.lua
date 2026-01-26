-- OPPONENT AREA AND CARDS

-- no there's no AI to play against in this mod

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
