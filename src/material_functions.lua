JoyousSpring.material_functions = {}

JoyousSpring.material_functions.detached_this_round = function(card, vars)
    return JoyousSpring.is_summon_type(card, "XYZ") and
        card.ability.extra.joyous_spring.detached_count_round > 0
end
