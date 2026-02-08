SMODS.current_mod.custom_card_areas = function(game)
    game.joy_field_spell_area = CardArea(
        0,
        0,
        game.CARD_W * 1.9,
        game.CARD_H * 0.95,
        {
            card_limit = 1,
            type = 'joker',
            highlight_limit = 1,
            negative_info = "field_spell",
            bg_colour = { game.C.JOY.SPELL[1], game.C.JOY.SPELL[2], game.C.JOY.SPELL[3], 0.5 }
        }
    )
    JoyousSpring.field_spell_area = game.joy_field_spell_area
    if JoyousSpring.hide_ui then JoyousSpring.field_spell_area.states.visible = false end
    game.joy_extra_deck_area = CardArea(
        0,
        0,
        game.CARD_W * 4.95,
        game.CARD_H * 0.95,
        {
            card_limit = 5,
            type = 'joker',
            highlight_limit = 1,
            negative_info = "extra_deck",
            bg_colour = { game.C.JOY.SPELL[1], game.C.JOY.SPELL[2], game.C.JOY.SPELL[3], 0.5 }
        }
    )
    JoyousSpring.extra_deck_area = game.joy_extra_deck_area
    game.joy_blind_effects_area = CardArea(
        0, 0, game.CARD_W * 1.1, 0.7,
        {
            card_limit = 99,
            type = 'joker',
            highlight_limit = 0,
            negative_info = 'joker',
            no_card_count = true,
            bg_colour = game.C.CLEAR
        })
    game.joy_opponent_area = CardArea(
        0, 0, game.CARD_W * 1.9, 0.7,
        {
            card_limit = 5,
            type = 'joker',
            highlight_limit = 0,
            negative_info = 'joker',
            bg_colour = { game.C.JOY.TRAP[1], game.C.JOY.TRAP[2], game.C.JOY.TRAP[3], 0.5 }
        })
end
