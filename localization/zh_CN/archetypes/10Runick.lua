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
                        "召唤时生成{C:attention}#2#{}张{C:joy_spell}“神碑之泉”{}",
                        "并将{C:attention}#3#{}张{C:joy_normal}“神碑”{}加入{C:joy_spell}额外卡组{}",
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
                        "召唤时将{C:attention}#2#{}张{C:joy_normal}“神碑”{}",
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
                        "召唤时若墓地有{C:attention}“神碑之泉”{}",
                        "则生成{C:attention}#1#{}张该牌",
                        "并将{C:attention}#2#{}张{C:joy_normal}“神碑”{}加入{C:joy_spell}额外卡组{}",
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
                        "召唤时将{C:attention}#1#{}张{C:joy_normal}“神碑”{}",
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
                        "召唤时将{C:attention}#1#{}张{C:joy_normal}“神碑”{}",
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
    JoyousSpring = {
        Blurbs = {
            runick = {
                story = {
                    "{C:gold}[来自“王战”的故事线]{}",
                    "你被一位神秘的假面魔法师召唤至这个世界，他赋予你使命——使用神祇本身的力量{C:joy_normal}“神碑”{}，击败统治九界的王者{C:joy_normal}“王战”{}。{C:joy_normal}“神碑”{}之力通过击败{C:joy_normal}“王战”{}而成长，解锁各种新的力量。起初，你应以弱小怪物为目标，磨练技巧，学习如何挥舞你的魔法剑。此外，{C:joy_normal}“神碑”{}在反复使用后会失去光辉，因此必须将其浸入{C:joy_spell}“神碑之泉”{}中以恢复光芒。",
                },
                gameplay = {
                    "这些{C:joy_fusion}融合{}的核心在于通过{C:tarot}塔罗牌{}产生优势以及一定得分。将它们与其他基于{C:attention}消耗牌{}的策略一起尝试吧！"
                }
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_runick = "神碑",
        }
    }
}