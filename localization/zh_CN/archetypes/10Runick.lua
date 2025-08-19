return {
    descriptions = {
        Joker = {
            j_joy_runick_hugin = {
                name = "{C:joy_fusion}神碑之翼 胡基",
                text = {
                    {
                        "{C:attention}+#1#{}个消耗牌槽",
                    },
                    {
                        "召唤时生成{C:attention}#2#{}张{C:joy_spell}「神碑之泉」{}",
                        "并将{C:attention}#3#{}张{C:joy_normal}「神碑」{}加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_munin = {
                name = "{C:joy_fusion}神碑之翼 穆宁",
                text = {
                    {
                        "{C:attention}+#1#{}个消耗牌槽",
                    },
                    {
                        "召唤时将{C:attention}#2#{}张{C:joy_normal}「神碑」{}",
                        "加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "在{C:attention}盲注{}阶段每使用1张{C:tarot}塔罗牌{}",
                        "获得{X:chips,C:white}X#3#{}筹码",
                        "{C:inactive}(当前{X:chips,C:white}X#4#{}{C:inactive}筹码){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_geri = {
                name = "{C:joy_fusion}神碑之牙 格利",
                text = {
                    {
                        "召唤时若墓地有{C:attention}「神碑之泉」{}",
                        "则生成{C:attention}#1#{}张该牌",
                        "并将{C:attention}#2#{}张{C:joy_normal}「神碑」{}加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "售出此召唤牌可生成最多",
                        "{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}(需有空位)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_freki = {
                name = "{C:joy_fusion}神碑之牙 弗利基",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张{C:joy_normal}「神碑」{}",
                        "加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "在{C:attention}盲注{}阶段使用{C:tarot}塔罗牌{}时",
                        "添加{C:attention}#2#{}张随机{C:attention}游戏牌{}",
                    },
                    {
                        "售出此召唤牌可生成最多",
                        "{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}(需有空位)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:tarot}塔罗牌{}",
                }
            },
            j_joy_runick_sleipnir = {
                name = "{C:joy_fusion}神碑之鬣 史莱普尼尔",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张{C:joy_normal}「神碑」{}",
                        "加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                    {
                        "从{C:attention}除外{}返回时",
                        "生成{C:attention}#2#{}张{C:dark_edition}负片{}版{C:tarot}塔罗牌{}",
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
                        "阶段使用的所有{C:tarot}塔罗牌{}",
                        "{C:inactive}(移除版本){}",
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