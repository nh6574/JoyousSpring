return {
    descriptions = {
        Joker = {
            j_joy_runick_hugin = {
                name = "{C:joy_fusion}神碑之翼 胡基",
                text = {
                    {
                        "{C:attention}+#1#{}消耗牌槽位",
                    },
                    {
                        "生成{C:attention}#2#{}张{C:joy_spell}「神碑之泉」",
                        "并于召唤时添加{C:attention}#3#{}张{C:joy_normal}「神碑」",
                        "到{C:joy_spell}额外牌组{}",
                        "{C:inactive}（必须有空位）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_munin = {
                name = "{C:joy_fusion}神碑之翼 姆鹰",
                text = {
                    {
                        "{C:attention}+#1#{}消耗牌槽位",
                    },
                    {
                        "于召唤时添加{C:attention}#2#{}张{C:joy_normal}「神碑」",
                        "到{C:joy_spell}额外牌组{}",
                        "{C:inactive}（必须有空位）{}",
                    },
                    {
                        "在{C:attention}盲注{}期间每使用一张{C:tarot}塔罗牌{}，",
                        "获得{X:chips,C:white}X#3#{}筹码",
                        "{C:inactive}（当前为{} {X:chips,C:white}X#4#{} {C:inactive}筹码）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_geri = {
                name = "{C:joy_fusion}神碑之牙 格里",
                text = {
                    {
                        "若{C:attention}墓地{}存在神碑之泉，召唤时",
                        "生成{C:attention}#1#{}张{C:joy_spell}「神碑之泉」",
                        "并添加{C:attention}#2#{}张{C:joy_normal}「神碑」到{C:joy_spell}额外牌组{}",
                        "{C:inactive}（必须有空位）{}",
                    },
                    {
                        "出售此召唤卡可生成最多",
                        "{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}（必须有空位）",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_freki = {
                name = "{C:joy_fusion}神碑之牙 弗蕾基",
                text = {
                    {
                        "于召唤时添加{C:attention}#1#{}张{C:joy_normal}「神碑」",
                        "到{C:joy_spell}额外牌组{}",
                        "{C:inactive}（必须有空位）{}",
                    },
                    {
                        "在{C:attention}盲注{}期间使用{C:tarot}塔罗牌{}时",
                        "添加{C:attention}#2#{}张随机{C:attention}游戏牌{}",
                    },
                    {
                        "出售此召唤卡可生成最多",
                        "{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}（必须有空位）",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_sleipnir = {
                name = "{C:joy_fusion}神碑之鬃 斯雷普",
                text = {
                    {
                        "于召唤时添加{C:attention}#1#{}张{C:joy_normal}「神碑」",
                        "到{C:joy_spell}额外牌组{}",
                        "{C:inactive}（必须有空位）{}",
                    },
                    {
                        "回合结束时被{C:attention}除外{}，",
                        "直到选择{C:attention}盲注{}",
                    },
                    {
                        "从{C:attention}除外{}返回时生成",
                        "{C:attention}#2#{}张{C:dark_edition}负片{} {C:tarot}塔罗牌{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_fountain = {
                name = "{C:joy_spell}神碑之泉",
                text = {
                    {
                        "回合结束时尽可能生成本{C:attention}盲注{}",
                        "期间使用过的{C:tarot}塔罗牌{}",
                        "{C:inactive}（移除版本）{}",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "销毁牌组中{C:attention}#1#{}张随机{C:attention}游戏牌{}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_runick = "神碑",
        }
    }
}   