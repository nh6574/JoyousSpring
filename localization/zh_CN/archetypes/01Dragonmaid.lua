return {
    descriptions = {
        Joker = {
            j_joy_dmaid_kitchen = {
                name = "{C:joy_effect}厨房龙女仆",
                text = {
                    {
                        "获得时，每有1只{C:joy_normal}“龙女仆”{}，获得{C:attention}#1#{}次免费{C:green}重roll{}",
                    },
                    {
                        "当选择{C:attention}盲注{}时，{C:attention}变形{}为{C:joy_effect}“龙女仆 汀赫”",
                    }
                },
            },
            j_joy_dmaid_tinkhec = {
                name = "{C:joy_effect}龙女仆 汀赫",
                text = {
                    {
                        "每只{C:joy_normal}“龙女仆”{}提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "回合结束时，{C:attention}变形{}为{C:joy_effect}“厨房龙女仆”",
                    }
                },
            },
            j_joy_dmaid_parlor = {
                name = "{C:joy_effect}客厅龙女仆",
                text = {
                    {
                        "获得时，若你持有{C:attention}#2#{}只{C:joy_normal}“龙女仆”{}，则获得{C:attention}#1#个补充包标签{}",
                        "每多持有{C:attention}#3#{}只，额外获得1个",
                        "并将{C:attention}#4#{}只{C:joy_normal}“龙女仆”{}送入{C:attention}墓地{}",
                    },
                    {
                        "当选择{C:attention}盲注{}时，{C:attention}变形{}为{C:joy_effect}“龙女仆 洛琶”",
                    },
                },
            },
            j_joy_dmaid_lorpar = {
                name = "{C:joy_effect}龙女仆 洛琶",
                text = {
                    {
                        "每只{C:joy_normal}“龙女仆”{}提供{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "回合结束时，{C:attention}变形{}为{C:joy_effect}“客厅龙女仆”",
                    },
                },
            },
            j_joy_dmaid_nurse = {
                name = "{C:joy_effect}护士龙女仆",
                text = {
                    {
                        "获得时，有{C:green}#1#/#2#{}几率{C:attention}复活#3#{}",
                        "{C:blue}普通{} {C:joy_normal}“龙女仆”{}",
                    },
                    {
                        "当选择{C:attention}盲注{}时，{C:attention}变形{}为{C:joy_effect}“龙女仆 埃尔努斯”",
                    },
                },
            },
            j_joy_dmaid_ernus = {
                name = "{C:joy_effect}龙女仆 埃尔努斯",
                text = {
                    {
                        "每有1只{C:joy_normal}“龙女仆”{}在{C:attention}墓地{}，{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "回合结束时，{C:attention}变形{}为{C:joy_effect}“护士龙女仆”",
                    },
                },
            },
            j_joy_dmaid_laundry = {
                name = "{C:joy_effect}洗衣龙女仆",
                text = {
                    {
                        "获得时，将{C:attention}#1#{}只{C:joy_normal}主牌组{} {C:joy_normal}“龙女仆”{}",
                        "送入{C:attention}墓地{}",
                    },
                    {
                        "当选择{C:attention}盲注{}时，{C:attention}变形{}为{C:joy_effect}“龙女仆 努迪亚尔”",
                    },
                },
            },
            j_joy_dmaid_nudyarl = {
                name = "{C:joy_effect}龙女仆 努迪亚尔",
                text = {
                    {
                        "每有1只{C:joy_normal}“龙女仆”{}在{C:attention}墓地{}，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）"
                    },
                    {
                        "回合结束时，{C:attention}变形{}为{C:joy_effect}“洗衣龙女仆”",
                    },
                },
            },
            j_joy_dmaid_chamber = {
                name = "{C:joy_effect}卧室龙女仆",
                text = {
                    {
                        "获得时，若你持有{C:attention}#2#{}只{C:joy_normal}“龙女仆”{}，则获得{C:attention}#1#个优惠券标签{}",
                        "每多持有{C:attention}#3#{}只，额外获得1个",
                        "并将{C:attention}#4#{}只{C:joy_normal}“龙女仆”{}送入{C:attention}墓地{}",
                    },
                    {
                        "当选择{C:attention}盲注{}时，{C:attention}变形{}为{C:joy_effect}“龙女仆 切尔姆巴”",
                    },
                },
            },
            j_joy_dmaid_cehrmba = {
                name = "{C:joy_effect}龙女仆 切尔姆巴",
                text = {
                    {
                        "获得时，有{C:green}#1#/#2#{}几率{C:attention}复活#3#{}",
                        "{C:green}稀有{}或{C:red}史诗{} {C:joy_normal}“龙女仆”{}",
                    },
                    {
                        "回合结束时，{C:attention}变形{}为{C:joy_effect}“卧室龙女仆”",
                    },
                },
            },
            j_joy_dmaid_lady = {
                name = "{C:joy_fusion}侍女龙女仆",
                text = {
                    {
                        "召唤时，向{C:joy_spell}额外牌组{}添加{C:joy_fusion}“家主龙女仆”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "当选择{C:attention}盲注{}时，有{C:green}#1#/#2#{}几率{C:attention}变形{}为1只",
                        "{C:green}稀有{} {C:joy_normal}“龙女仆”{}",
                        "{C:inactive}（“侍女龙女仆”除外）{}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}小丑牌{}，",
                    "包含1只{C:joy_normal}“龙女仆”{}"
                }
            },
            j_joy_dmaid_house = {
                name = "{C:joy_fusion}家主龙女仆",
                text = {
                    {
                        "每有1只{C:joy_normal}“龙女仆”{}，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "在{C:attention}墓地{}的{C:joy_normal}“龙女仆”{}计入",
                        "{C:joy_normal}“龙女仆”{}的效果计数",
                    },
                    {
                        "{C:attention}#3#{}回合后，{C:attention}变形{}为{C:joy_fusion}“龙女仆 希欧”",
                        "{C:inactive}（#4#/#3#）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}“龙女仆”{}"
                }
            },
            j_joy_dmaid_sheou = {
                name = "{C:joy_fusion}龙女仆 希欧",
                text = {
                    {
                        "在{C:attention}墓地{}的{C:joy_normal}“龙女仆”{}计入",
                        "{C:joy_normal}“龙女仆”{}的效果计数",
                    },
                    {
                        "当选择{C:attention}首领盲注{}时，",
                        "无效其效果，然后{C:attention}变形{}为",
                        "{C:joy_fusion}“家主龙女仆”{}并生成{C:attention}#1#{}",
                        "{C:blue}普通{} {C:joy_normal}“龙女仆”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dmaid = "龙女仆",
        }
    }
}