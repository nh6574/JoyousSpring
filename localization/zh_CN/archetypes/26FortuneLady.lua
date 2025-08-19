return {
    descriptions = {
        Joker = {
            j_joy_flady_light = {
                name = "{C:joy_effect}命运女郎·莱蒂",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率在回合结束时{C:attention}除外 #3#{}",
                        "{C:joy_normal}「命运女郎」{} 直到选择{C:attention}盲注{}",
                    },
                    {
                        "回合结束时给予 {C:money}$#4#{}X{C:green}分子{}",
                        "{C:inactive}(上限 $#4#X#2#){}",
                        "{C:inactive}(当前 {C:money}+$#5#{}{C:inactive})"
                    },
                    {
                        "当卡牌被{C:attention}除外{}时",
                        "永久提升所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#6#{}"
                    }
                }
            },
            j_joy_flady_fire = {
                name = "{C:joy_effect}命运女郎·菲莉",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率使本回合",
                        "所有其他{C:green}几率{}翻倍",
                    },
                    {
                        "给予等同 {C:mult}+#3#{}X所有{C:joy_normal}「命运女郎」{} {C:green}分子{}的倍率",
                        "{C:inactive}(上限 +#3#X#4#){}",
                        "{C:inactive}(当前 {C:mult}+#5#{}{C:inactive}倍率)"
                    },
                    {
                        "回合结束时永久提升",
                        "所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#6#{}"
                    }
                }
            },
            j_joy_flady_wind = {
                name = "{C:joy_effect}命运女郎·温蒂",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率生成",
                        "打出牌型的{C:planet}星球牌{}",
                    },
                    {
                        "每张{C:joy_normal}「命运女郎」{}给予等同 {C:chips}+#3#{}X其{C:green}分子{}的筹码",
                        "{C:inactive}(上限 +#3#X分母){}",
                    },
                    {
                        "回合结束时每张{C:joy_normal}「命运女郎」{}",
                        "永久提升所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#4#{}"
                    }
                }
            },
            j_joy_flady_water = {
                name = "{C:joy_effect}命运女郎·沃特莉",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率在选中{C:attention}盲注{}时",
                        "增加{C:attention}#3#{}点手牌上限",
                        "{C:inactive}(失败时重置)(最大+#8#)",
                        "{C:inactive}(当前 {C:attention}+#4#{}{C:inactive}点)"
                    },
                    {
                        "给予等同 {C:chips}+#5#{}X{C:green}分子{}的筹码",
                        "{C:inactive}(上限 +#5#X#2#){}",
                        "{C:inactive}(当前 {C:chips}+#6#{}{C:inactive}筹码)"
                    },
                    {
                        "回合结束时永久提升",
                        "所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#7#{}"
                    }
                }
            },
            j_joy_flady_earth = {
                name = "{C:joy_effect}命运女郎·厄系",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率在选中{C:attention}盲注{}时",
                        "生成{C:attention}#3#{}张{C:joy_normal}主卡组「命运女郎」{}",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "每永久提升",
                        "此卡的{C:green}分子{}时获得{X:mult,C:white}X#4#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#5#{}{C:inactive}倍率)"
                    },
                    {
                        "当此卡{C:green}分子{}永久提升时",
                        "永久提升所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#6#{}",
                        "{C:inactive}(「命运女郎·厄系」除外){}"
                    }
                }
            },
            j_joy_flady_dark = {
                name = "{C:joy_effect}命运女郎·达琪",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率在选中{C:attention}盲注{}时{C:attention}复活{}",
                        "{C:attention}#3#{}张{C:joy_normal}「命运女郎」{}",
                        "(或{C:joy_normal}魔法师{}若无可用)",
                    },
                    {
                        "给予等同 {C:mult}+#4#{}X{C:green}分子{}的倍率",
                        "{C:inactive}(上限 +#4#X#2#){}",
                        "{C:inactive}(当前 {C:mult}+#5#{}{C:inactive}倍率)"
                    },
                    {
                        "回合结束时每张{C:joy_normal}魔法师{}",
                        "永久提升所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#6#{}"
                    }
                }
            },
            j_joy_flady_past = {
                name = "{C:joy_effect}命运女郎·帕丝蒂",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率在回合结束时{C:attention}除外{}",
                        "所有{C:joy_normal}魔法师{} {C:attention}小丑牌{}",
                        "直到选择{C:attention}盲注{}",
                    },
                    {
                        "给予 {X:mult,C:white}X#3#{}X{C:green}分子{}倍率",
                        "{C:inactive}(上限 X#3#X#2#){}",
                        "{C:inactive}(当前 {X:mult,C:white}X#4#{}{C:inactive}倍率)"
                    },
                    {
                        "当卡牌从{C:attention}除外区{}返回时",
                        "永久提升所有{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#5#{}"
                    }
                }
            },
            j_joy_flady_every = {
                name = "{C:joy_synchro}命运女郎·艾芙莉",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率本回合给予 {X:mult,C:white}X#3#{}倍率",
                        "{C:green}#4#/#5#{} 几率在回合结束时{C:attention}除外 #6#{}张{C:joy_normal}「命运女郎」{}",
                        "直到选择{C:attention}盲注{}",
                        "{C:green}#7#/#8#{} 几率回合结束时给予 {C:money}+$#9#{}",
                        "{C:green}#10#/#11#{} 几率永久翻倍",
                        "所有计分牌的{C:green}几率{}",
                        "{C:green}#12#/#13#{} 几率在选中{C:attention}盲注{}时",
                        "生成{C:attention}#14#{}张{C:joy_normal}「占卜魔女」{}",
                        "{C:green}#15#/#16#{} 几率在选中{C:attention}盲注{}时{C:attention}复活 #17#{}张",
                        "{C:joy_normal}「命运女郎」{}（或{C:joy_normal}魔法师{}）为{C:dark_edition}负片{}"
                    },
                    {
                        "给予等同 {C:mult}+#18#{}X{C:green}分子{}的倍率",
                        "{C:inactive}(上限 +#18#X#19#){}",
                        "{C:inactive}(当前 {C:mult}+#20#{}{C:inactive}倍率)"
                    },
                    {
                        "当卡牌从{C:attention}除外区{}返回时",
                        "永久翻倍其{C:green}几率{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}的{C:joy_normal}魔法师{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}和{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外)",
                }
            },
            j_joy_ffairy_hikari = {
                name = "{C:joy_effect}占卜魔女·小光",
                text = {
                    {
                        "{C:money}+$#1#{}当{C:green}几率{}触发时"
                    },
                    {
                        "每局游戏一次：在{C:attention}#3#{}次{C:green}几率{}触发后",
                        "生成{C:attention}#2#{}张{C:joy_normal}主卡组魔法师{}",
                        "{C:inactive}(#4#/#3#){C:inactive}(需有空位)"
                    },
                    {
                        "若拥有{C:joy_normal}「命运女郎」{}时从商店获取",
                        "免费且不占空位"
                    }
                }
            },
            j_joy_ffairy_en = {
                name = "{C:joy_effect}占卜魔女·小炎",
                text = {
                    {
                        "每触发一次",
                        "本局游戏的{C:green}几率{}使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:green}#3#/#4#{} 几率将每张计分牌",
                        "变为{C:attention}幸运{}牌"
                    },
                    {
                        "若拥有{C:joy_normal}「命运女郎」{}时从商店获取",
                        "免费且不占空位"
                    }
                }
            },
            j_joy_ffairy_hu = {
                name = "{C:joy_effect}占卜魔女·小风",
                text = {
                    {
                        "每触发一次",
                        "本局游戏的{C:green}几率{}使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "此卡从{C:attention}除外区{}返回后",
                        "下一次{C:green}几率{}必定触发"
                    },
                    {
                        "若拥有{C:joy_normal}「命运女郎」{}时从商店获取",
                        "免费且不占空位"
                    }
                }
            },
            j_joy_ffairy_swee = {
                name = "{C:joy_effect}占卜魔女·小水",
                text = {
                    {
                        "每触发一次",
                        "本局游戏的{C:green}几率{}使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "若本回合有{C:green}几率{}触发",
                        "回合结束时{C:attention}除外{}此卡和{C:attention}#3#{}张其他{C:attention}小丑牌{}",
                        "直到选择{C:attention}盲注{}"
                    },
                    {
                        "若拥有{C:joy_normal}「命运女郎」{}时从商店获取",
                        "免费且不占空位"
                    }
                }
            },
            j_joy_ffairy_chee = {
                name = "{C:joy_effect}占卜魔女·小暗",
                text = {
                    {
                        "每触发一次",
                        "本局游戏的{C:green}几率{}使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "使所有非{C:joy_normal}魔法师{}卡牌的",
                        "{C:green}分母{}减半"
                    },
                    {
                        "若拥有{C:joy_normal}「命运女郎」{}时从商店获取",
                        "免费且不占空位"
                    }
                }
            },
            j_joy_ffairy_ann = {
                name = "{C:joy_effect}占卜魔女·小地",
                text = {
                    {
                        "{C:money}+$#1#{}并将{C:attention}#2#{}张{C:joy_normal}魔法师{}",
                        "送入{C:attention}墓地{}当{C:green}几率{}触发时"
                    },
                    {
                        "{C:green}#3#/#4#{} 几率在回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}"
                    },
                    {
                        "若拥有{C:joy_normal}「命运女郎」{}时从商店获取",
                        "免费且不占空位"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_flady = "命运女郎",
        }
    }
}