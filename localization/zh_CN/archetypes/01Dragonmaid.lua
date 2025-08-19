return {
    descriptions = {
        Joker = {
            j_joy_dmaid_kitchen = {
                name = "{C:joy_effect}半龙女仆·蒸馏室龙女",
                text = {
                    {
                        "获得时，每拥有{C:attention}#1#{}张{C:joy_normal}「半龙女仆」",
                        "提供{C:green}免费重掷{}机会",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "{C:attention}转变{}为{C:joy_effect}「半龙女仆·赤焰龙女」",
                    }
                },
            },
            j_joy_dmaid_tinkhec = {
                name = "{C:joy_effect}半龙女仆·赤焰龙女",
                text = {
                    {
                        "每张{C:joy_normal}「半龙女仆」",
                        "提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "回合结束时{C:attention}转变{}为",
                        "{C:joy_effect}「半龙女仆·蒸馏室龙女」",
                    }
                },
            },
            j_joy_dmaid_parlor = {
                name = "{C:joy_effect}半龙女仆·客厅龙女",
                text = {
                    {
                        "若拥有{C:attention}#2#{}张{C:joy_normal}「半龙女仆」",
                        "获得时提供{C:attention}#1#个补充包标签{}",
                        "每多{C:attention}#3#{}张额外增加1个",
                        "并将{C:attention}#4#{}张{C:joy_normal}「半龙女仆」送入{C:attention}墓地{}",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "{C:attention}转变{}为{C:joy_effect}「半龙女仆·天风龙女」",
                    },
                },
            },
            j_joy_dmaid_lorpar = {
                name = "{C:joy_effect}半龙女仆·天风龙女",
                text = {
                    {
                        "每张{C:joy_normal}「半龙女仆」",
                        "提供{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "回合结束时{C:attention}转变{}为",
                        "{C:joy_effect}「半龙女仆·客厅龙女」",
                    },
                },
            },
            j_joy_dmaid_nurse = {
                name = "{C:joy_effect}半龙女仆·育婴龙女",
                text = {
                    {
                        "{C:green}#1#/#2#{}几率复活{C:attention}#3#{}张",
                        "{C:blue}普通{}{C:joy_normal}「半龙女仆」",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "{C:attention}转变{}为{C:joy_effect}「半龙女仆·地慈龙女」",
                    },
                },
            },
            j_joy_dmaid_ernus = {
                name = "{C:joy_effect}半龙女仆·地慈龙女",
                text = {
                    {
                        "墓地中每张{C:joy_normal}「半龙女仆」",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "回合结束时{C:attention}转变{}为",
                        "{C:joy_effect}「半龙女仆·育婴龙女」",
                    },
                },
            },
            j_joy_dmaid_laundry = {
                name = "{C:joy_effect}半龙女仆·洗衣龙女",
                text = {
                    {
                        "获得时将{C:attention}#1#{}张{C:joy_normal}主卡组{}",
                        "{C:joy_normal}「半龙女仆」送入{C:attention}墓地{}",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "{C:attention}转变{}为{C:joy_effect}「半龙女仆·苍河龙女」",
                    },
                },
            },
            j_joy_dmaid_nudyarl = {
                name = "{C:joy_effect}半龙女仆·苍河龙女",
                text = {
                    {
                        "墓地中每张{C:joy_normal}「半龙女仆」",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "回合结束时{C:attention}转变{}为",
                        "{C:joy_effect}「半龙女仆·洗衣龙女」",
                    },
                },
            },
            j_joy_dmaid_chamber = {
                name = "{C:joy_effect}半龙女仆·寝室龙女",
                text = {
                    {
                        "若拥有{C:attention}#2#{}张{C:joy_normal}「半龙女仆」",
                        "获得时提供{C:attention}#1#个优惠券标签{}",
                        "每多{C:attention}#3#{}张额外增加1个",
                        "并将{C:attention}#4#{}张{C:joy_normal}「半龙女仆」送入{C:attention}墓地{}",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "{C:attention}转变{}为{C:joy_effect}「半龙女仆·星夜龙女」",
                    },
                },
            },
            j_joy_dmaid_cehrmba = {
                name = "{C:joy_effect}半龙女仆·星夜龙女",
                text = {
                    {
                        "{C:green}#1#/#2#{}几率复活{C:attention}#3#{}张",
                        "{C:green}罕见{}或{C:red}稀有{}",
                        "{C:joy_normal}「半龙女仆」",
                    },
                    {
                        "回合结束时{C:attention}转变{}为",
                        "{C:joy_effect}「半龙女仆·寝室龙女」",
                    },
                },
            },
            j_joy_dmaid_lady = {
                name = "{C:joy_fusion}半龙女仆·贴身龙女",
                text = {
                    {
                        "召唤时将{C:joy_fusion}「半龙女仆·龙女管家」{}",
                        "加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "选择{C:attention}盲注{}时，有{C:green}#1#/#2#{}几率",
                        "{C:attention}转变{}为{C:green}罕见{}",
                        "{C:joy_normal}「半龙女仆」",
                        "{C:inactive}(「半龙女仆·贴身龙女」除外){}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}小丑牌{}",
                    "包含{C:joy_normal}「半龙女仆」{}"
                }
            },
            j_joy_dmaid_house = {
                name = "{C:joy_fusion}半龙女仆·龙女管家",
                text = {
                    {
                        "每张{C:joy_normal}「半龙女仆」提供",
                        "{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "墓地中的{C:joy_normal}「半龙女仆」",
                        "可触发「半龙女仆」效果",
                    },
                    {
                        "经过{C:attention}#3#{}回合后{C:inactive}(#4#/#3#){}",
                        "{C:attention}转变{}为{C:joy_fusion}「烛光龙女」",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}「半龙女仆」{}"
                }
            },
            j_joy_dmaid_sheou = {
                name = "{C:joy_fusion}烛光龙女",
                text = {
                    {
                        "墓地中的{C:joy_normal}「半龙女仆」",
                        "可触发「半龙女仆」效果",
                    },
                    {
                        "选择{C:attention}首领盲注{}时",
                        "无效其效果并{C:attention}转变{}为",
                        "{C:joy_fusion}「半龙女仆·龙女管家」{}，同时生成{C:attention}#1#{}张",
                        "{C:blue}普通{}{C:joy_normal}「半龙女仆」",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dmaid = "半龙女仆",
        }
    }
}