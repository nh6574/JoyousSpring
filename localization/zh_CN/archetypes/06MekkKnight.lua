return {
    descriptions = {
        Joker = {
            j_joy_mekk_avram = {
                name = "{C:joy_normal}机甲骑士 亚布拉姆",
                text = {
                    {
                        "{E:1}“看看这个！”{}",
                    },
                },
            },
            j_joy_mekk_red = {
                name = "{C:joy_effect}机甲骑士 红月",
                text = {
                    {
                        "本{C:attention}列{}的计分牌",
                        "提供{C:mult}+#1#{}倍率×其点数",
                        "{C:inactive}（当前在第{C:attention}#2#{}{C:inactive}列）{}",
                    },
                },
            },
            j_joy_mekk_orange = {
                name = "{C:joy_effect}机甲骑士 橙日落",
                text = {
                    {
                        "本{C:attention}列{}的打出的牌",
                        "计入计分",
                        "{C:inactive}（当前在第{C:attention}#1#{}{C:inactive}列）{}",
                    },
                    {
                        "每次本卡效果使某张牌计入计时，获得{X:chips,C:white}X#2#{}筹码",
                        "{C:inactive}（当前{X:chips,C:white}X#3#{}{C:inactive}筹码）",
                    },
                },
            },
            j_joy_mekk_yellow = {
                name = "{C:joy_effect}机甲骑士 黄星",
                text = {
                    {
                        "本{C:attention}列{}的计分牌",
                        "提供{C:money}+$#1#{}×其点数",
                        "{C:inactive}（当前在第{C:attention}#2#{}{C:inactive}列）{}",
                    },
                },
            },
            j_joy_mekk_green = {
                name = "{C:joy_effect}机甲骑士 绿地平线",
                text = {
                    {
                        "本{C:attention}列{}的计分牌有{C:green}#1#/#2#{}几率",
                        "再次触发，次数等于其点数，",
                        "每有1只{C:joy_normal}“机甲骑士”{}，几率提升",
                        "{C:inactive}（当前在第{C:attention}#3#{}{C:inactive}列）{}",
                    },
                },
            },
            j_joy_mekk_blue = {
                name = "{C:joy_effect}机甲骑士 蓝天",
                text = {
                    {
                        "本{C:attention}列{}的计分牌",
                        "提供{C:chips}+#1#{}筹码×其点数",
                        "{C:inactive}（当前在第{C:attention}#2#{}{C:inactive}列）{}",
                    },
                },
            },
            j_joy_mekk_indigo = {
                name = "{C:joy_effect}机甲骑士 靛日食",
                text = {
                    {
                        "效果根据{C:attention}列{}变化",
                        "{V:1}1：所有计分牌再次触发1次{}",
                        "{V:2}2：{C:chips}+#1#{} {V:2}筹码{}",
                        "{V:3}3：{C:mult}+#2#{} {V:3}倍率{}",
                        "{V:4}4：{X:mult,C:white}X#3#{} {V:4}倍率{}",
                        "{V:5}5+：{C:money}+$#4#{} {V:5}回合结束时{}",
                    },
                },
            },
            j_joy_mekk_purple = {
                name = "{C:joy_effect}机甲骑士 紫夜幕",
                text = {
                    {
                        "选择盲注时除外，",
                        "直到击败首领盲注，生成{C:attention}#1#{}",
                        "{C:joy_normal}主牌组“机甲骑士”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_mekk_morningstar = {
                name = "{C:joy_link}晨星机甲骑士",
                text = {
                    {
                        "相邻{C:attention}列{}的计分牌",
                        "若该列有{C:joy_normal}“机甲骑士”{}，则提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前在第{C:attention}#2#{} {C:inactive}和第{C:attention}#3#{}{C:inactive}列）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}小丑牌{}",
                }
            },
            j_joy_mekk_spectrum = {
                name = "{C:joy_link}光谱至尊机甲骑士",
                text = {
                    {
                        "{C:joy_normal}“机甲骑士”{}效果适用于",
                        "所有打出的牌和{C:attention}列{}",
                    },
                    {
                        "每回合1次，出售{C:attention}#1#{} {C:joy_normal}“机甲骑士”{}",
                        "生成{C:attention}#1#{} {C:dark_edition}负片{} {C:joy_normal}主牌组“机甲骑士”{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:joy_normal}“机甲骑士”{}",
                }
            },
            j_joy_mekkcrus_avramax = {
                name = "{C:joy_link}机甲骑士 十字军 亚布拉姆ax",
                text = {
                    {
                        "立即赢得所有{C:attention}盲注{}",
                    },
                    {
                        "在击败的{C:attention}盲注{}数量等于",
                        "其召唤所用{C:attention}素材{}数量后自毁",
                        "{C:inactive}（#1#/#2#）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:joy_spell}额外牌组{}召唤的{C:attention}小丑牌{}",
                }
            },
            j_joy_mekkleg_scars = {
                name = "{C:joy_spell}世界遗产 伤痕",
                text = {
                    {
                        "每只{C:joy_normal}“机甲骑士”{}提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "盲注期间，你可以{C:attention}解放#2#{}",
                        "{C:joy_normal}“机甲骑士”{}，本回合获得{C:blue}+#3#{}手牌数",
                    },
                    {
                        "当墓地中有{C:attention}#4#只名称不同的{C:joy_normal}“机甲骑士”{}时，",
                        "出售本卡以赢得当前{C:attention}盲注{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mekk = "机甲骑士",
        }
    }
}