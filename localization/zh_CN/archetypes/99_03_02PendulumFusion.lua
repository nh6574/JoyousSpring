return {
    descriptions = {
        Joker = {
            j_joy_couverture = {
                name = "{C:joy_pendulum_fusion}圣菓使 考维曲天使",
                joy_consumable = {
                    "生成{C:attention}#1#{}张{C:red}稀有{} {C:joy_pendulum}灵摆{}",
                    "{C:inactive}(需有空位)"
                },
                text = {
                    {
                        "若此卡被消耗，添加{C:attention}#2#{}张",
                        "{C:joy_pendulum_fusion}「圣菓使 考维曲天使」{}至{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_pendulum}灵摆{}"
                }
            },
        }
    },
}