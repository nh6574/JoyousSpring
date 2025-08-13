-- 文件 1：99_03_04PendulumXyz.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_ooze = {
                name = "{C:joy_pendulum_xyz}软泥巨神 代达拉坦特",
                joy_consumable = {
                    "随机给1只{C:joy_xyz}超量{C:attention}附加{C:attention}#1#{C:attention}个素材"
                },
                text = {
                    {
                        "{C:joy_xyz}取除{C:attention}#2#{C:attention}素材：复活{C:attention}#3#{C:joy_pendulum}灵摆{C:attention}并设为{C:dark_edition}负片",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{C:joy_pendulum}灵摆{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive})"
                }
            },
        }
    },
}