JoyousSpring.material_functions = {}

-- `card` can be a Card or a center

JoyousSpring.material_functions.detached_this_round = function(card, vars)
    return JoyousSpring.is_summon_type(card, "XYZ") and
        card.ability.extra.joyous_spring.detached_count_round > 0
end

JoyousSpring.material_functions.summoned_this_round = function(card, vars)
    return JoyousSpring.get_summoned_count(nil, true) >= (vars.more or 0) and
        (not vars.less or JoyousSpring.get_summoned_count(nil, true) <= vars.less)
end

JoyousSpring.material_functions.played_this_run = function(card, vars)
    return G.GAME.joy_played and G.GAME.joy_played[vars.hand]
end

JoyousSpring.material_functions.hanafuda_played_this_run = function(card, vars)
    return G.GAME.joy_hanafuda_played and (G.GAME.joy_hanafuda_played[vars.key] or 0) >= vars.min
end

JoyousSpring.material_functions.hanafuda_type_played_this_run = function(card, vars)
    return G.GAME.joy_hanafuda_type_played and (G.GAME.joy_hanafuda_type_played[vars.type] or 0) >= vars.min
end

JoyousSpring.material_functions.column = function(card, vars)
    return card.area and card.area == G.jokers and JoyousSpring.get_joker_column(card) == vars.column
end
