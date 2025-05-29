JoyousSpring.material_functions = {}

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
