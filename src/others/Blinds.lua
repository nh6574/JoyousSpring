SMODS.Atlas {
    key = "blinds",
    path = "blind_macro.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
}

SMODS.Blind {
    key = "macrocosmos",
    atlas = "blinds",
    pos = { x = 0, y = 0 },
    discovered = true,
    boss_colour = G.C.JOY.TRAP,
    boss = { min = 1, max = 10 },
    config = { discards = 1 },
    joy_joker_key = "j_joy_macrocosmos",
    joy_on_enter = function(self, blind_type)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + self.config.discards
        ease_discard(self.config.discards)
    end,
    joy_on_exit = function(self, blind_type)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - self.config.discards
        ease_discard(-self.config.discards)
    end,
    defeat = function(self)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - self.config.discards
        ease_discard(-self.config.discards)
    end,
    joy_calculate_ante = function(self, context)
        if context.initial_scoring_step then
            return {
                dollars = 10
            }
        end
    end,
    joy_on_game_over = function(self, blind)

    end,
    in_pool = function(self)
        return false
    end
}

SMODS.Joker {
    key = "macrocosmos",
    atlas = "blinds",
    pos = { x = 0, y = 0 },
    discovered = true,
    display_size = { w = 34, h = 34 },
    joy_blind_key = "bl_joy_macrocosmos",
    set_card_type_badge = function(self, card, badges)
        if not card.area or card.area ~= G.joy_blind_effects_area then
            badges[#badges + 1] = create_badge(localize("k_joy_opponent"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        else
            badges[#badges + 1] = create_badge(localize("b_blinds"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        end
    end,
    loc_vars = function(self, info_queue, card)
        return { key = card.area and card.area == G.joy_blind_effects_area and self.key .. "_blind" or nil }
    end
}
