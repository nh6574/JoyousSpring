return {
    descriptions = {
        Joker = {
            j_joy_solfa_cutia = {
                name = "{C:joy_pendulum_effect}多之七音服·丘蒂娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}8{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "偶数点计分牌每张{C:joy_normal}「七音服」{}提供{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前{C:mult}+#3#{}{C:inactive}倍率)",
                    },
                    {
                        "每回合1次，消耗{C:attention}#5#{}张{C:joy_pendulum}灵摆{}后",
                        "生成{C:attention}#4#{}张{C:joy_pendulum}灵摆{}{C:joy_normal}「七音服」{}",
                        "{C:inactive}(#6#/#5#) (需有空位)",
                    },
                }
            },
            j_joy_solfa_dreamia = {
                name = "{C:joy_pendulum_effect}来之七音服·德莉米娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}7{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "奇数点计分牌每张{C:joy_normal}「七音服」{}提供{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前{C:mult}+#3#{}{C:inactive}倍率)",
                    },
                    {
                        "若拥有{C:joy_pendulum}灵摆{}则免费",
                    },
                }
            },
            j_joy_solfa_eliteia = {
                name = "{C:joy_pendulum_effect}米之七音服·埃莉蒂娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}6{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "每张偶数点计分牌提供{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前{C:chips}+#3#{}{C:inactive}筹码)",
                    },
                    {
                        "打出{C:attention}#5#{}张偶数牌后",
                        "将{C:attention}#4#{}张{C:joy_normal}「七音服」{}加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(#6#/#5#) (需有空位)",
                    },
                }
            },
            j_joy_solfa_fancia = {
                name = "{C:joy_pendulum_effect}发之七音服·凡西娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}5{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "每张奇数点计分牌提供{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前{C:chips}+#3#{}{C:inactive}筹码)",
                    },
                    {
                        "打出{C:attention}#5#{}张奇数牌后生成{C:attention}#4#{}张{C:joy_normal}「七音服」{}",
                        "{C:inactive}(#6#/#5#) (需有空位)",
                    },
                }
            },
            j_joy_solfa_gracia = {
                name = "{C:joy_pendulum_effect}梭之七音服·格蕾西娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}4{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "每张偶数牌再次触发{C:attention}#2#{}次",
                    },
                    {
                        "打出{C:attention}#4#{}张偶数牌后生成{C:attention}#3#{}张{C:joy_spell}「七音服的调和」{}",
                        "{C:inactive}(#5#/#4#) (需有空位)",
                    },
                }
            },
            j_joy_solfa_angelia = {
                name = "{C:joy_pendulum_effect}拉之七音服·安琪莉娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}3{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "每张奇数牌再次触发{C:attention}#2#{}次",
                    },
                    {
                        "打出{C:attention}#4#{}张奇数牌后{C:attention}复活 #3#{}张{C:joy_normal}「七音服」{}",
                        "{C:inactive}(#5#/#4#)",
                    },
                }
            },
            j_joy_solfa_beautia = {
                name = "{C:joy_pendulum_effect}西之七音服·比蒂娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}2{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "偶数点计分牌每张{C:joy_normal}「七音服」{}提供",
                        "额外{X:chips,C:white}X#2#{}筹码",
                        "{C:inactive}(当前 {X:chips,C:white}X#3#{}{C:inactive}筹码)",
                    },
                    {
                        "回合结束时{C:attention}放逐 #4#{}张{C:joy_pendulum}灵摆{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
            },
            j_joy_solfa_coolia = {
                name = "{C:joy_pendulum_effect}多之七音服·库莉娅",
                joy_consumable = {
                    "将最多{C:attention}#1#{}张选定牌的点数改为{C:attention}A{}",
                    "并提升{C:attention}葫芦{}、{C:attention}顺子{}和{C:attention}两对{}等级",
                },
                text = {
                    {
                        "奇数点计分牌每张{C:joy_normal}「七音服」{}提供",
                        "额外{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#3#{}{C:inactive}倍率)",
                    },
                    {
                        "墓地{C:joy_normal}「七音服」{}计入{C:joy_normal}「七音服」{}能力",
                    },
                },
            },
            j_joy_solfa_musecia = {
                name = "{C:joy_link}大钢琴之七音服·缪塞西娅",
                text = {
                    {
                        "受{C:joy_normal}「七音服」{}消耗能力影响的牌",
                        "若可能则获得随机{C:dark_edition}版本{}",
                        "{C:inactive}(不含负片)",
                    },
                    {
                        "每底注1次，消耗{C:attention}#2#{}张{C:joy_pendulum}灵摆{}后",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:joy_pendulum}灵摆{}{C:joy_normal}「七音服」{}{C:inactive}(剩余#3#次){}",
                        "且需求增加{C:attention}#4#{}",
                    },
                    {
                        "若牌型包含偶数和奇数点牌，",
                        "所有计分牌同时视为两者以触发{C:joy_normal}「七音服」{}能力",
                    },
                    {
                        "{C:joy_pendulum}灵摆{}视为{C:joy_normal}「七音服」{}以触发能力",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{C:joy_pendulum}灵摆"
                }
            },
            j_joy_solfa_grancoolia = {
                name = "{C:joy_link}大钢琴之七音服·库莉娅",
                text = {
                    {
                        "每张{C:joy_pendulum}灵摆{}提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)",
                    },
                    {
                        "受{C:joy_normal}「七音服」{}消耗能力影响的牌",
                        "若可能则获得随机{C:attention}蜡封{}",
                    },
                    {
                        "消耗{C:attention}#4#{}张{C:joy_pendulum}灵摆{}后获得{C:money}+$#3#{}",
                        "{C:inactive}(#5#/#4#)",
                    },
                    {
                        "若牌型包含偶数和奇数点牌，",
                        "所有手牌视为计分牌以触发{C:joy_normal}「七音服」{}能力",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张小丑牌{}，",
                    "含1张{C:joy_pendulum}灵摆"
                }
            },
            j_joy_solfa_harmonia = {
                name = "{C:joy_spell}七音服的调和",
                text = {
                    {
                        "选择{C:attention}盲注{}时{C:attention}复活 #1#{}张{C:joy_normal}「七音服」{}{}（若无则复活{C:joy_pendulum}灵摆{}）",
                    },
                    {
                        "消耗1张{C:joy_pendulum}灵摆{}后生成{C:attention}#2#{}张{C:tarot}力量{}",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "若拥有{C:attention}#3#{}张不同名的{C:joy_normal}「七音服」{}（忽略其他能力），",
                        "所有未强化偶数牌变为{C:attention}黄金牌{}，",
                        "所有未强化奇数牌变为{C:attention}钢铁牌{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_solfa = "七音服",
        }
    }
}