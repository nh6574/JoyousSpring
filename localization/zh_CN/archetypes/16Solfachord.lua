return {
    descriptions = {
        Joker = {
            j_joy_solfa_cutia = {
                name = "{C:joy_pendulum_effect}多音和弦·库蒂亚",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}8{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "偶数点数的计分牌每张提供{C:mult}+#2#{}倍率×{C:joy_normal}“音律和弦”{}数量",
                        "{C:inactive}（当前{C:mult}+#3#{} {C:inactive}倍率）{}",
                    },
                    {
                        "每回合1次，在消耗{C:attention}#5#张{C:joy_pendulum}灵摆{C:joy_normal}“音律和弦”{}后",
                        "生成{C:attention}#4#张{C:joy_pendulum}灵摆{C:joy_normal}“音律和弦”{}",
                        "{C:inactive}（#6#/#5#）（需有栏位）{}",
                    },
                }
            },
            j_joy_solfa_dreamia = {
                name = "{C:joy_pendulum_effect}回音和弦·梦蒂亚",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}7{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "奇数点数的计分牌每张提供{C:mult}+#2#{}倍率×{C:joy_normal}“音律和弦”{}数量",
                        "{C:inactive}（当前{C:mult}+#3#{} {C:inactive}倍率）{}",
                    },
                    {
                        "若持有{C:joy_pendulum}灵摆{}则免费获得",
                    },
                }
            },
            j_joy_solfa_eliteia = {
                name = "{C:joy_pendulum_effect}咪音和弦·艾莉缇娅",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}6{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "每有1张偶数点数计分牌，{C:chips}+#2#{}筹码",
                        "{C:inactive}（当前{C:chips}+#3#{} {C:inactive}筹码）{}",
                    },
                    {
                        "在{C:attention}#5#张偶数牌被计分后",
                        "向{C:joy_spell}额外牌组{}添加{C:attention}#4#张{C:joy_normal}“音律和弦”{}",
                        "{C:inactive}（#6#/#5#）（需有栏位）{}",
                    },
                }
            },
            j_joy_solfa_fancia = {
                name = "{C:joy_pendulum_effect}发音和弦·凡希亚",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}5{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "每有1张奇数点数计分牌，{C:chips}+#2#{}筹码",
                        "{C:inactive}（当前{C:chips}+#3#{} {C:inactive}筹码）{}",
                    },
                    {
                        "在{C:attention}#5#张奇数牌被计分后生成{C:attention}#4#张{C:joy_normal}“音律和弦”{}",
                        "{C:inactive}（#6#/#5#）（需有栏位）{}",
                    },
                }
            },
            j_joy_solfa_gracia = {
                name = "{C:joy_pendulum_effect}索音和弦·格拉西亚",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}4{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "偶数牌额外再次触发{C:attention}#2#次",
                    },
                    {
                        "在{C:attention}#4#张偶数牌被计分后生成{C:attention}#3#张{C:joy_spell}“音律和弦·和谐”{}",
                        "{C:inactive}（#5#/#4#）（需有栏位）{}",
                    },
                }
            },
            j_joy_solfa_angelia = {
                name = "{C:joy_pendulum_effect}拉音和弦·安洁莉娅",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}3{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "奇数牌额外再次触发{C:attention}#2#次",
                    },
                    {
                        "在{C:attention}#4#张奇数牌被计分后{C:attention}复活#3#张{C:joy_normal}“音律和弦”{}",
                        "{C:inactive}（#5#/#4#）{}",
                    },
                }
            },
            j_joy_solfa_beautia = {
                name = "{C:joy_pendulum_effect}缇音和弦·碧优缇娅",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}2{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "偶数点数计分牌额外获得",
                        "{X:chips,C:white}X#2#{}筹码×{C:joy_normal}“音律和弦”{}数量",
                        "{C:inactive}（当前{X:chips,C:white}X#3#{} {C:inactive}筹码）",
                    },
                    {
                        "回合结束时{C:attention}除外#4#张{C:joy_pendulum}灵摆{}",
                        "直至选择盲注",
                    },
                }
            },
            j_joy_solfa_coolia = {
                name = "{C:joy_pendulum_effect}多音和弦·库莉娅",
                joy_consumable = {
                    "将最多{C:attention}#1#张选中牌的点数改为{C:attention}A{}",
                    "同时提升{C:attention}葫芦{}、{C:attention}顺子{}与{C:attention}两对{}等级",
                },
                text = {
                    {
                        "奇数点数计分牌额外获得",
                        "{X:mult,C:white}X#2#{}倍率×{C:joy_normal}“音律和弦”{}数量",
                        "{C:inactive}（当前{X:mult,C:white}X#3#{} {C:inactive}倍率）",
                    },
                    {
                        "{C:attention}墓地{C:joy_normal}“音律和弦”{}计入{C:joy_normal}“音律和弦”{}效果",
                    },
                }
            },
            j_joy_solfa_musecia = {
                name = "{C:joy_link}大音和弦·缪瑟娅",
                text = {
                    {
                        "受{C:joy_normal}“音律和弦”{}消耗能力影响的打出的牌",
                        "若可能则获得随机{C:dark_edition}版本{}",
                        "{C:inactive}（负片除外）{}"
                    },
                    {
                        "每底注1次，在消耗{C:attention}#2#张{C:joy_pendulum}灵摆{}后",
                        "生成{C:attention}#1#张{C:dark_edition}负片{C:joy_pendulum}灵摆{C:joy_normal}“音律和弦”{}",
                        "{C:inactive}（剩余#3#）{}并要求提高{C:attention}#4#{}",
                    },
                    {
                        "若计分手牌同时包含奇偶点数，",
                        "所有计分牌视为同时拥有奇偶点数以触发{C:joy_normal}“音律和弦”{}效果",
                    },
                    {
                        "{C:joy_pendulum}灵摆{}视为{C:joy_normal}“音律和弦”{}以触发其他{C:joy_normal}“音律和弦”{}效果",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{C:joy_pendulum}灵摆{}"
                }
            },
            j_joy_solfa_grancoolia = {
                name = "{C:joy_link}大音和弦·库莉娅",
                text = {
                    {
                        "每有1张{C:joy_pendulum}灵摆{}{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）",
                    },
                    {
                        "受{C:joy_normal}“音律和弦”{}消耗能力影响的打出的牌",
                        "若可能则获得随机{C:attention}蜡封{}",
                    },
                    {
                        "消耗{C:attention}#4#张{C:joy_pendulum}灵摆{}后{C:money}+$#3#{C:inactive}（#5#/#4#）{}",
                    },
                    {
                        "若计分手牌同时包含奇偶点数，",
                        "所有手牌视为被计分以触发{C:joy_normal}“音律和弦”{}效果",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张小丑牌{}，",
                    "包含1张{C:joy_pendulum}灵摆{}"
                }
            },
            j_joy_solfa_harmonia = {
                name = "{C:joy_spell}音律和弦·和谐",
                text = {
                    {
                        "选择盲注时{C:attention}复活#1#张{C:joy_normal}“音律和弦”{}（若无则复活{C:joy_pendulum}灵摆{}）",
                    },
                    {
                        "每消耗1张{C:joy_pendulum}灵摆{}后生成{C:attention}#2#力量{C:tarot}塔罗牌{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "若持有{C:attention}#3#张名称不同的{C:joy_normal}“音律和弦”{}，",
                        "计分后所有未强化偶数牌变为{C:attention}黄金牌{}，",
                        "所有未强化奇数牌变为{C:attention}钢铁牌{}，并忽略其他能力",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_solfa = "音律和弦",
        }
    }
}