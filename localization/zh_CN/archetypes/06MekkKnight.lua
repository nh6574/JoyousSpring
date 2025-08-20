return {
    descriptions = {
        Joker = {
            j_joy_mekk_avram = {
                name = "{C:joy_normal}机界骑士 亚伯拉姆",
                text = {
                    {
                        "{E:1}“看看这个！”{}",
                    },
                },
            },
            j_joy_mekk_red = {
                name = "{C:joy_effect}红莲之机界骑士",
                text = {
                    {
                        "本{C:attention}列{}的计分牌",
                        "提供点数×{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前位于第{} {C:attention}#2#{}{C:inactive}列){}",
                    },
                },
            },
            j_joy_mekk_orange = {
                name = "{C:joy_effect}灯影之机界骑士",
                text = {
                    {
                        "本{C:attention}列{}的打出的牌",
                        "可参与计分",
                        "{C:inactive}(当前位于第{} {C:attention}#1#{}{C:inactive}列){}",
                    },
                    {
                        "每次触发能力使牌参与计分",
                        "获得{X:chips,C:white}X#2#{}筹码",
                        "{C:inactive}(当前{X:chips,C:white}X#3#{}{C:inactive}筹码)",
                    },
                },
            },
            j_joy_mekk_yellow = {
                name = "{C:joy_effect}黄华之机界骑士",
                text = {
                    {
                        "本{C:attention}列{}的计分牌",
                        "提供点数×{C:money}+$#1#{}金钱",
                        "{C:inactive}(当前位于第{} {C:attention}#2#{}{C:inactive}列){}",
                    },
                },
            },
            j_joy_mekk_green = {
                name = "{C:joy_effect}翠岚之机界骑士",
                text = {
                    {
                        "本{C:attention}列{}的计分牌有{C:green}#1#/#2#{}几率",
                        "根据点数多次再次触发",
                        "每张{C:joy_normal}「机界骑士」{}提高几率",
                        "{C:inactive}(当前位于第{} {C:attention}#3#{}{C:inactive}列){}",
                    },
                },
            },
            j_joy_mekk_blue = {
                name = "{C:joy_effect}苍穹之机界骑士",
                text = {
                    {
                        "本{C:attention}列{}的计分牌",
                        "提供点数×{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前位于第{} {C:attention}#2#{}{C:inactive}列){}",
                    },
                },
            },
            j_joy_mekk_indigo = {
                name = "{C:joy_effect}绀碧之机界骑士",
                text = {
                    {
                        "根据所在{C:attention}列{}获得能力",
                        "{V:1}1: 所有计分牌再次触发一次{}",
                        "{V:2}2:{} {C:chips}+#1#{} {V:2}筹码{}",
                        "{V:3}3:{} {C:mult}+#2#{} {V:3}倍率{}",
                        "{V:4}4:{} {X:mult,C:white}X#3#{} {V:4}倍率{}",
                        "{V:5}5+:{} {C:money}+$#4#{} {V:5}回合结束{}",
                    },
                },
            },
            j_joy_mekk_purple = {
                name = "{C:joy_effect}紫宵之机界骑士",
                text = {
                    {
                        "选择{C:attention}盲注{}时{C:attention}除外{}",
                        "直到击败{C:attention}首领盲注{}后生成{C:attention}#1#{}张",
                        "{C:joy_normal}主卡组「机界骑士」{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_mekk_morningstar = {
                name = "{C:joy_link}明星之机械骑士",
                text = {
                    {
                        "相邻{C:attention}列{}的计分牌",
                        "若该列有{C:joy_normal}「机界骑士」{}",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前位于第{} {C:attention}#2#{} {C:inactive}和{} {C:attention}#3#{}{C:inactive}列){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张小丑牌"
                }
            },
            j_joy_mekk_spectrum = {
                name = "{C:joy_link}星痕之机界骑士",
                text = {
                    {
                        "{C:joy_normal}「机界骑士」{}效果适用于",
                        "所有打出的牌和{C:attention}列",
                    },
                    {
                        "每回合可售出{C:attention}#1#{}张{C:joy_normal}「机界骑士」{}",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}版主卡组「机界骑士」",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张{C:joy_normal}「机界骑士」{}"
                }
            },
            j_joy_mekkcrus_avramax = {
                name = "{C:joy_link}双穹之骑士 阿斯特拉姆",
                text = {
                    {
                        "立即获胜所有{C:attention}盲注{}",
                    },
                    {
                        "击败等同于召唤素材数量的",
                        "{C:attention}盲注{}后销毁自身",
                        "{C:inactive}(#1#/#2#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:joy_spell}额外卡组{}召唤的小丑牌"
                }
            },
            j_joy_mekkleg_scars = {
                name = "{C:joy_spell}星遗物印刻的伤痕",
                text = {
                    {
                        "每张{C:joy_normal}「机界骑士」{}提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "在{C:attention}盲注{}阶段可解放{C:attention}#2#{}张",
                        "{C:joy_normal}「机界骑士」{}获得{C:blue}+#3#{}出牌次数",
                    },
                    {
                        "当墓地有{C:attention}#4#{}张不同名的",
                        "{C:joy_normal}「机界骑士」{}时售出此牌",
                        "可获胜当前{C:attention}盲注{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mekk = "机界骑士",
        }
    }
}