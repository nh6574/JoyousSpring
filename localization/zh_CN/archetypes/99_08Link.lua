-- 文件 6：99_08Link.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_apollousa = {
                name = "{C:joy_link}女神弓 阿波罗莎",
                text = {
                    {
                        "每使用1个{C:attention}素材{C:attention}召唤，获得{C:mult}+#1#{C:attention}倍率，每回合减少{C:red}#2#{C:attention}",
                        "{C:inactive}(当前{C:mult}+#3#{C:inactive}倍率)"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+张名称不同的小丑牌{C:attention}"
                }
            },
            j_joy_beyond = {
                name = "{C:joy_link}超越灵摆",
                text = {
                    {
                        "本局每消耗1张{C:joy_pendulum}灵摆{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "消耗{C:attention}#4#{C:attention}张后生成{C:attention}#3#{C:joy_pendulum}灵摆{C:attention}",
                        "{C:inactive}(#5#/#4#)(需有空位)"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{C:attention}",
                    "需包含1张{C:joy_pendulum}灵摆{C:attention}"
                }
            },
            j_joy_exceed = {
                name = "{C:joy_link}超越灵摆·进阶",
                text = {
                    {
                        "本局每消耗1张{C:joy_pendulum}灵摆{C:attention}，获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
                    },
                    {
                        "首次击败{C:attention}首领盲注{C:attention}时，",
                        "生成{C:attention}#3#{C:dark_edition}负片{C:joy_normal}主卡组{C:joy_pendulum}灵摆{C:attention}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张小丑牌{C:attention}",
                    "需包含1张{C:joy_pendulum}灵摆{C:attention}"
                }
            },
            j_joy_linkuriboh = {
                name = "{C:joy_link}连接衍生物",
                text = {
                    {
                        "出售此牌以跳过当前{C:attention}首领盲注{C:attention}",
                        "但{C:money}金钱{C:attention}归零"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:blue}普通{C:attention}小丑牌{C:attention}"
                }
            },
            j_joy_linguriboh = {
                name = "{C:joy_link}连接衍生物·进阶",
                text = {
                    {
                        "出售此牌以跳过当前{C:attention}首领盲注{C:attention}",
                        "若非用{C:joy_normal}“@火灵天星”{C:attention}作素材召唤，则手牌上限减{C:attention}#1#{C:attention}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_normal}电子界{C:attention}"
                }
            },
            j_joy_ipmasq = {
                name = "{C:joy_link}I:P 假面舞会",
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时，{C:attention}变身{C:attention}为随机{C:joy_link}连接{C:attention}",
                        "{C:inactive}(视为用2素材连接召唤){}",
                        "以此法召唤的{C:joy_link}连接{C:attention}获得以下能力：",
                        "{s:0.9,C:attention}回合结束时变回{s:0.9,C:joy_link}“I:P 假面舞会”{s:0.9}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{C:joy_effect}效果{C:attention}小丑牌{C:attention}"
                },
                joy_transfer_ability = {
                    "{C:attention}回合结束时变回{C:joy_link}“I:P 假面舞会”{C:attention}"
                }
            },
            j_joy_spknight = {
                name = "{C:joy_link}S:P 小骑士",
                text = {
                    {
                        "回合结束时，放逐自身与{C:attention}#1#{C:attention}张小丑牌{C:attention}",
                        "直至选择{C:attention}首领盲注{C:attention}",
                        "若用{C:attention}2{C:joy_spell}额外卡组{C:attention}小丑牌{C:attention}作素材召唤，",
                        "则改为直至选择任意{C:attention}盲注{C:attention}后返回"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{C:joy_effect}效果{C:attention}小丑牌{C:attention}"
                }
            },
            j_joy_progleo = {
                name = "{C:joy_link}程序狮",
                text = {
                    {
                        "回合结束时放逐{C:attention}#1#{C:attention}张相邻小丑牌{C:attention}",
                        "直至选择{C:attention}首领盲注{C:attention}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{C:attention}",
                    "不含{C:joy_token}衍生物"
                }
            },
            j_joy_raster = {
                name = "{C:joy_link}栅格狮",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_link}连接{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "可{C:attention}献祭{C:attention}所有其他小丑牌{C:attention}",
                        "每献祭1张，使{C:attention}盲注{C:attention}需求降低{C:red}#3#%{C:attention}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4张小丑牌{C:attention}",
                    "不含{C:joy_token}衍生物"
                }
            },
        }
    },
}