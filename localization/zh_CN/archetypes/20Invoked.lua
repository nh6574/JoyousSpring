return {
    descriptions = {
        Joker = {
            j_joy_invoked_aleister = {
                name = "{C:joy_effect}召唤师 阿莱斯特",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_normal}“召唤兽”{}",
                        "{C:inactive}(视为融合召唤)",
                    },
                    {
                        "用此牌作{C:attention}素材{}的{C:joy_fusion}融合{}获得能力：",
                        "{s:0.9,C:chips}+#2#{}{s:0.9}筹码（每{s:0.9,C:joy_fusion}融合{s:0.9}召唤）",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{}筹码（每{C:joy_fusion}融合{}召唤）",
                    "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码)"
                }
            },
            j_joy_invoked_madness = {
                name = "{C:joy_link}暴走召唤师 阿莱斯特",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_normal}“召唤兽”{}",
                        "{C:inactive}(视为融合召唤)",
                    },
                    {
                        "作为{C:joy_fusion}融合{}召唤{C:attention}素材{}时，生成{C:attention}#2#{}张{C:joy_spell}“暴走魔法阵”{}",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "用此牌作{C:attention}素材{}的{C:joy_fusion}融合{}获得能力：",
                        "{s:0.9,C:mult}+#3#{}{s:0.9}倍率（每{s:0.9,C:joy_fusion}融合{s:0.9}召唤）",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张卡牌{}含",
                    "不同{C:attention}类型{}",
                    "和{C:attention}属性"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍率（每{C:joy_fusion}融合{}召唤）",
                    "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)"
                }
            },
            j_joy_invoked_caliga = {
                name = "{C:joy_fusion}召唤兽 卡牌利古拉",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "本局每{C:attention}解放{}1张卡牌提供{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#3#{}{C:inactive}倍率)",
                    },
                    {
                        "降低{C:joy_effect}怪兽包{}价格{C:money}$#4#",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_dark}暗属性{}{C:attention}卡牌",
                    "{s:0.8,C:inactive}(解放非怪兽牌时随机触发)",
                },
                joy_transfer_ability = {
                    "本局每{C:attention}解放{}1张卡牌提供{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    " ",
                    "降低{C:joy_effect}怪兽包{}价格{C:money}$#3#"
                }
            },
            j_joy_invoked_raidjin = {
                name = "{C:joy_fusion}召唤兽 雷电",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "本局每{C:attention}反转{}1张卡牌提供{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#3#{}{C:inactive}倍率)",
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}反转 #4#{}张其他随机{C:attention}卡牌{}为表侧",
                        "回合结束时{C:attention}反转 #4#{}张其他随机{C:attention}卡牌{}为里侧",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_wind}风属性{}{C:attention}卡牌",
                    "{s:0.8,C:inactive}(解放非怪兽牌时随机触发)",
                },
                joy_transfer_ability = {
                    "本局每{C:attention}反转{}1张卡牌提供{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    " ",
                    "选择{C:attention}盲注{}时{C:attention}反转 #3#{}张其他随机{C:attention}卡牌{}为表侧",
                    "回合结束时{C:attention}反转 #3#{}张其他随机{C:attention}卡牌{}为里侧",
                }
            },
            j_joy_invoked_cocytus = {
                name = "{C:joy_fusion}召唤兽 科库托斯",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "降低{C:attention}盲注{}要求{C:red}#2#%",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_water}水属性{}{C:attention}卡牌",
                    "{s:0.8,C:inactive}(解放非怪兽牌时随机触发)",
                },
                joy_transfer_ability = {
                    "降低{C:attention}盲注{}要求{C:red}#1#%",
                }
            },
            j_joy_invoked_purgatorio = {
                name = "{C:joy_fusion}召唤兽 普尔加托里奥",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "每张{C:joy_fusion}融合{}提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_fire}炎属性{}{C:attention}卡牌",
                    "{s:0.8,C:inactive}(解放非怪兽牌时随机触发)",
                },
                joy_transfer_ability = {
                    "每张{C:joy_fusion}融合{}提供{X:mult,C:white}X#1#{}倍率",
                }
            },
            j_joy_invoked_mage = {
                name = "{C:joy_fusion}召唤兽 墨瓦腊尼加",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "{C:mult}+#2#{}倍率",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_earth}地属性{}{C:attention}卡牌",
                    "{s:0.8,C:inactive}(解放非怪兽牌时随机触发)",
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍率",
                }
            },
            j_joy_invoked_mechaba = {
                name = "{C:joy_fusion}召唤兽 梅尔卡牌巴",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "本回合出售{C:attention}#2#{}张牌后禁用{C:attention}首领盲注{}效果",
                        "{C:inactive}(#3#/#2#)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_light}光属性{}{C:attention}卡牌",
                    "{s:0.8,C:inactive}(解放非怪兽牌时随机触发)",
                },
                joy_transfer_ability = {
                    "本回合出售{C:attention}#1#{}张牌后禁用{C:attention}首领盲注{}效果",
                    "{C:inactive}(#2#/#1#)"
                }
            },
            j_joy_invoked_augo = {
                name = "{C:joy_fusion}召唤兽 光体",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "墓地每张{C:joy_fusion}融合{}提供{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#3#{}{C:inactive}倍率)",
                    },
                    {
                        "选择{C:attention}盲注{}时将{C:attention}#4#{}张非{C:joy_normal}“召唤兽”{}{C:joy_fusion}融合{}送入{C:attention}墓地",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张{C:joy_fusion}融合",
                    "{s:0.8,C:inactive}(优先于其他条件)",
                },
                joy_transfer_ability = {
                    "墓地每张{C:joy_fusion}融合{}提供{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    " ",
                    "选择{C:attention}盲注{}时将{C:attention}#3#{}张非{C:joy_normal}“召唤兽”{}{C:joy_fusion}融合{}送入{C:attention}墓地",
                }
            },
            j_joy_invoked_elysium = {
                name = "{C:joy_fusion}召唤兽 埃律西昂",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张其他{C:attention}卡牌",
                        "以{C:attention}转换{}此牌为{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "获得墓地每种{C:joy_normal}“召唤兽”{}的能力",
                    },
                    {
                        "拥有时视为任意{C:attention}素材{}用于{C:joy_fusion}融合{}召唤",
                        "且视为任意{C:attention}属性{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}解放1{}张召唤的",
                    "非{C:joy_fusion}融合{}牌",
                    "{s:0.8,C:inactive}(优先于其他条件)",
                }
            },
            j_joy_invoked_meltdown = {
                name = "{C:joy_spell}暴走魔法阵",
                text = {
                    {
                        "可{C:attention}解放 #1#{}张{C:joy_fusion}融合{}以生成{C:attention}#2#{}张{C:joy_effect}“召唤师 阿莱斯特”",
                    },
                    {
                        "本局每{C:joy_fusion}融合{}召唤提供{X:mult,C:white}X#3#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#4#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_fusion}融合{}免疫反转与削弱",
                    },
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            invoked = {
                story = {
                    "{C:gold}[来自“大魔法战争”故事线]{}",
                    "久远往昔的天才魔法师：{C:joy_effect}“阿莱斯特”{}。他精通名为{C:joy_spell}“召唤魔术”{}的禁忌魔法，能以此唤来未知境界与位面的精魂、幻影乃至神明。然而，随着{C:attention}“拉迈松”{}的建立，他的存在与所有研究均被从魔法史册中抹去。事实是，{C:joy_effect}“阿莱斯特”{}在一次实验中，与其中一个神明或精魂产生了部分融合。如今他被关押在{C:attention}“拉迈松”{}的最深处，与设施连接，作为魔法动力源使用。但当他最终苏醒之时，他将成为最大的威胁……",
                },
                gameplay = {
                    "{C:joy_effect}“阿莱斯特”{}以一些{C:attention}解放{}为代价提供多种功能。查看{C:joy_fusion}融合{}的{C:attention}召唤条件{}，了解如何召唤每一种，然后根据时机选择合适的一种。"
                }
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_invoked = "召唤兽",
        }
    }
}