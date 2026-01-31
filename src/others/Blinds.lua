-- Blinds and Opponent's Blind cards

SMODS.Atlas {
    key = "blinds",
    path = "blind_macro.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
}

-- Macro Cosmos
SMODS.Blind {
    key = "macrocosmos",
    atlas = "blinds",
    pos = { x = 0, y = 0 },
    discovered = true,
    boss_colour = G.C.JOY.TRAP,
    boss = { min = 2 },
    config = {},
    joy_joker_key = "opp_joy_macrocosmos",
    joy_ante_ability = true,
    joy_can_be_sent_to_graveyard = function(self, choices)
        return {}
    end
}

JoyousSpring.OpponentCard {
    key = "macrocosmos",
    atlas = "blinds",
    joy_blind_key = "bl_joy_macrocosmos",
    loc_vars = function(self, info_queue, card)
        return { key = card.area and card.area == G.joy_blind_effects_area and self.key .. "_blind" or nil }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
            },
        }
    },
    calculate = function(self, card, context)
        JoyousSpring.calculate_flip_effect(card, context)
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
        end
    end,
    joy_can_be_sent_to_graveyard = function(self, card, choices)
        if JoyousSpring.can_use_abilities(card) then
            return {}
        end
    end
}
