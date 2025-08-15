return {
    descriptions = {
        Joker = {
            j_joy_spy_drone = {
                name = "{C:joy_effect}秘旋谍装备-无人机",
                text = {
                    {
                        "每个商店限一次，可以{C:attention}解放#1#张小丑牌{}",
                        "来{C:attention}发掘#2#{}"
                    },
                    {
                        "当{C:attention}猜测{}没有任何正确匹配时",
                        "将自身销毁"
                    }
                }
            },
            j_joy_spy_lastresort = {
                name = "{C:joy_effect}秘旋谍装备-绝地胜机",
                text = {
                    {
                        "每张{C:attention}发掘{}的牌给予{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive} 筹码)"
                    },
                    {
                        "当{C:attention}猜测{}没有任何正确匹配时",
                        "将自身销毁并视为全部猜对"
                    },
                    {
                        "{C:joy_normal}\"秘旋谍\"{}不会被弱化或变为盖伏状态"
                    }
                }
            },
            j_joy_spy_double = {
                name = "{C:joy_effect}秘旋谍-双面间谍",
                text = {
                    {
                        "商店结束时，{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}4{}张的花色：",
                        "每猜对1次{C:green}减半{}盲注要求，",
                        "每猜错1次{C:red}加倍{}要求"
                    },
                }
            },
            j_joy_spy_masterplan = {
                name = "{C:joy_effect}秘旋谍-天才",
                text = {
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}3{}张的点数：",
                        "1：生成{C:attention}#1#{}张{C:attention}易腐{}的{C:joy_normal}主卡组\"秘旋谍\"",
                        "{C:inactive}(需有空位)",
                        "2：{C:attention}复活#2#{}张{C:joy_normal}\"秘旋谍\"{}并变为{C:attention}易腐{}",
                        "3：前两项效果不附加{C:attention}易腐{}"
                    },
                    {
                        "拥有{C:joy_normal}\"秘旋谍\"{}时免费使用"
                    }
                }
            },
            j_joy_spy_quik = {
                name = "{C:joy_effect}秘旋谍-速拍灵",
                text = {
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}3{}张的花色：",
                        "1：生成{C:attention}#1#{}张{C:attention}易腐{}的{C:joy_normal}\"秘旋谍装备\"",
                        "{C:inactive}(需有空位)",
                        "2：{C:attention}复活#2#{}张{C:joy_normal}\"秘旋谍装备\"{}并变为{C:attention}易腐{}",
                        "3：前两项效果不附加{C:attention}易腐{}"
                    },
                    {
                        "拥有{C:joy_normal}\"秘旋谍\"{}时免费使用"
                    }
                }
            },
            j_joy_spy_sleeper = {
                name = "{C:joy_effect}秘旋谍-睡美人",
                text = {
                    {
                        "每张{C:attention}发掘{}的牌给予{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive} 倍率)"
                    },
                    {
                        "当{C:attention}猜测{}无任何匹配",
                        "或选择{C:attention}盲注{}时未猜测则销毁自身"
                    },
                }
            },
            j_joy_spy_tough = {
                name = "{C:joy_effect}秘旋谍-硬汉",
                text = {
                    {
                        "每张{C:attention}发掘{}的牌给予{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive} 倍率)"
                    },
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}5{}张的花色：",
                        "1：生成{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}(需有空位)",
                        "2：生成{C:attention}#4#{}张{C:dark_edition}负片{}的{C:planet}星球牌{}",
                        "对应上次打出的牌型",
                        "3：本回合获得{X:mult,C:white}X#5#{}倍率",
                        "4：抽牌后额外{C:attention}发掘{}最多{C:attention}#6#{}张牌",
                        "5：生成{C:attention}#7#{}张{C:dark_edition}负片{}的{C:joy_effect}\"秘旋谍-超级特务\""
                    }
                }
            },
            j_joy_spy_super = {
                name = "{C:joy_effect}秘旋谍-超级特务",
                text = {
                    {
                        "每张{C:attention}发掘{}的牌给予{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive} 筹码)"
                    },
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}5{}张的花色：",
                        "1：本回合计分牌提供{C:chips}+#3#{}筹码",
                        "2：本回合计分牌提供{C:mult}+#3#{}倍率",
                        "3：本回合计分牌提供{X:mult,C:white}X#4#{}倍率",
                        "4：本回合{C:joy_normal}\"秘旋谍\"{}提供{X:mult,C:white}X#4#{}倍率",
                        "5：每张计分牌再次触发两次"
                    }
                }
            },
            j_joy_spy_misty = {
                name = "{C:joy_effect}秘旋谍少女-米斯蒂",
                text = {
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}1{}张的花色，",
                        "猜中时将牌组中{C:attention}#1#{}张随机牌的花色",
                        "变为该花色，每张{C:joy_normal}\"秘旋谍\"{}额外转化1张牌"
                    },
                }
            },
            j_joy_spy_staff = {
                name = "{C:joy_effect}迷人度假村员工",
                text = {
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}3{}张的点数：",
                        "1：本回合{C:joy_normal}\"秘旋谍\"{}提供{C:mult}+#1#{}倍率",
                        "2：生成{C:attention}#2#{}张{C:joy_spell}\"秘旋谍度假胜地\"{}",
                        "{C:inactive}(需有空位)",
                        "3：前项效果附加{C:dark_edition}负片{}且无需空位"
                    },
                }
            },
            j_joy_spy_helix = {
                name = "{C:joy_link}秘旋谍-双螺旋特工",
                text = {
                    {
                        "{C:attention}发掘{}并{C:attention}猜测{}顶部{C:attention}5{}张的点数与花色：",
                        "1：本回合{X:mult,C:white}X#1#{}倍率",
                        "2：本回合{C:mult}+#2#{}倍率",
                        "3：提升本回合打出的牌型等级",
                        "4：给予本回合发掘的随机牌{C:dark_edition}炫彩{}",
                        "5：抽牌后额外{C:attention}发掘{}最多{C:attention}#3#{}张牌",
                        "6：{C:attention}复活#4#{}张{C:dark_edition}负片{}的{C:joy_normal}\"秘旋谍\"{}",
                        "7：生成{C:attention}#5#{}张{C:dark_edition}负片{}的{C:joy_normal}\"秘旋谍\"{}",
                        "8：将第一手牌全部变为牌组中最常见的花色",
                        "9：将第一手牌全部变为牌组中最常见的点数",
                        "10：生成{C:attention}#6#{}张{C:dark_edition}负片{}的{C:joy_effect}\"秘旋谍-超级特务\"{}",
                    },
                }
            },
            j_joy_spy_resort = {
                name = "{C:joy_spell}秘旋谍度假胜地",
                text = {
                    {
                        "每个商店限一次，可以{C:attention}解放#1#张小丑牌{}",
                        "来{C:attention}发掘#2#{}"
                    },
                    {
                        "每轮底注限一次，在完成{C:attention}#4#{}次",
                        "正确猜测后，生成{C:attention}#3#{}张{C:dark_edition}负片{}",
                        "{C:attention}易腐{}的{C:joy_effect}\"秘旋谍-超级特务\"{}"
                    },
                    {
                        "选择{C:attention}盲注{}时未猜测则销毁自身",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spy = "秘旋谍",
        }
    }
}