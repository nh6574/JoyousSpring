return {
    descriptions = {
        Joker = {
            j_joy_miracleraven = {
                name = "{C:joy_pendulum_ritual}奇迹的供物",
                joy_consumable = {
                    "获得一个{C:attention}启蒙仪式秘密包标签{}"
                },
                text = {
                    {
                        "视为{C:joy_ritual}仪式{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "被{C:attention}解放{}时，在{C:joy_link}副卡组{}中生成{C:attention}1{}张{C:joy_ritual}仪式{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2张卡牌{}",
                    "或{C:attention}1{}张{C:joy_pendulum}灵摆{}"
                }
            },
        }
    },
}