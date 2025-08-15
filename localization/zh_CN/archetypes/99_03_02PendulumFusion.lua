-- 文件 13：99_03_02PendulumFusion.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_couverture = {
                name = "{C:joy_pendulum_fusion}千层酥 库芙蕾",
                joy_consumable = {
                    "生成{C:attention}#1#{C:red}稀有{C:joy_pendulum}灵摆{C:attention}",
                    "{C:inactive}(需有空位)"
                },
                text = {
                    {
                        "若此牌被消耗，将{C:attention}#2#{C:joy_pendulum_fusion}“千层酥 库芙蕾”{C:attention}",
                        "加入{C:joy_spell}额外卡组{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{C:joy_pendulum}灵摆{C:attention}"
                }
            },
        }
    },
}