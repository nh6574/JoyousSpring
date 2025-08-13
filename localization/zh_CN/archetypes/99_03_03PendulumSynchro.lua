-- 文件 14：99_03_03PendulumSynchro.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_nirvana = {
                name = "{C:joy_pendulum_synchro}涅槃超魔导剑士",
                joy_consumable = {
                    "所有{C:joy_pendulum}灵摆{C:attention}变为{C:dark_edition}多彩{C:attention}"
                },
                text = {
                    {
                        "每有1张{C:joy_pendulum}灵摆{C:attention}，提供{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调同步"
                }
            },
        }
    },
}