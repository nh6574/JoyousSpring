return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}古圣戴 始龙",
                text = {
                    {
                        "出售此卡牌以禁用当前{C:attention}Boss盲注{}",
                        "并将其添加至下家商店",
                    },
                    {
                        "每使用此能力一次，获得 {X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张卡牌{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}合成狼人",
                text = {
                    {
                        "每张在手牌或{C:attention}墓地{}的",
                        "{C:joy_normal}通常{}{C:attention}卡牌{}使此卡牌{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张卡牌{}",
                    "或{C:attention}1{}张{C:joy_normal}通常 {C:attention}卡牌{}",
                }
            },
            j_joy_skullguardian = {
                name = "{C:joy_ritual}法理守护者",
                text = {
                    {
                        "{C:mult}+#1#{}倍率"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1张卡牌{}",
                }
            },
            j_joy_saffira = {
                name = "{C:joy_ritual}龙姬神 萨菲拉",
                text = {
                    {
                        "根据被{C:attention}解放{}的{C:joy_light}光属性{}{C:attention}卡牌{}数量获得能力：",
                        "每张提供下回合{C:attention}+#1#{}手牌上限 {C:inactive}（+#3#）{}",
                        "每{C:attention}3{}张提供下回合{C:red}+#2#{}弃牌次数 {C:inactive}（+#4#）{}",
                        "每{C:attention}5{}张向{C:joy_link}副卡组{}添加一张",
                        "{C:joy_light}光属性{}{C:attention}卡牌{}{C:inactive}（#5#/5）{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2张卡牌{}，",
                    "包含一张{C:joy_light}光属性{}"
                }
            },
            j_joy_chulainn = {
                name = "{C:joy_ritual}觉醒战士 库丘林",
                text = {
                    {
                        "回合结束时从{C:attention}墓地{}中",
                        "移除最多{C:attention}#1#{}张{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "每张获得{C:mult}+#2#{}倍率",
                        "{C:inactive}（当前{C:mult}+#3#{}{C:inactive}倍率）"
                    },
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}#4#{}张",
                        "{C:joy_normal}通常{}{C:attention}卡牌{}送入{C:attention}墓地{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1张卡牌{}",
                }
            },
            j_joy_northwemko = {
                name = "{C:joy_ritual}救世之美神 诺斯维姆科",
                text = {
                    {
                        "一次，你可以发动此效果，使手牌中",
                        "选中的游戏牌（数量不超过此卡{C:attention}召唤{}",
                        "所用{C:attention}素材{}的数量）在打出手牌计分时",
                        "提供{X:chips,C:white}X#1#{}筹码，",
                        "只要拥有此{C:joy_ritual}“救世之美神 诺斯维姆科”{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1{}张以上{C:joy_light}光属性{}{C:attention}卡牌{}",
                }
            },
            j_joy_shinato = {
                name = "{C:joy_ritual}天界王 志那都",
                text = {
                    {
                        "{X:chips,C:white}X#1#{}筹码"
                    },
                    {
                        "打出一手牌后，若该手牌分数{C:red}爆火{}，",
                        "则销毁自身"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2张卡牌{}，",
                    "包含一张{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_vennu = {
                name = "{C:joy_ritual}辉神鸟 贝努鸟",
                text = {
                    {
                        "每回合一次，当一张{C:attention}卡牌{}",
                        "被{C:attention}解放{}时，{C:attention}复活{}一张{C:joy_light}光属性{}{C:attention}卡牌{}"
                    },
                    {
                        "此卡从{C:attention}除外区{}返回后，",
                        "下一次{C:green}几率{}必定成功"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2张卡牌{}，",
                    "包含一张{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_reshef = {
                name = "{C:joy_ritual}大邪神 雷瑟夫",
                text = {
                    {
                        "你可以{C:attention}解放1{}张{C:joy_spell}场地魔法{}，",
                        "以生成{C:attention}1{}张{C:joy_effect}效果{}{C:attention}卡牌{}",
                        "{C:inactive}（必须有槽位）"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}3张卡牌{}",
                }
            },
            j_joy_garlandolf = {
                name = "{C:joy_ritual}破灭之魔王 加兰道夫",
                text = {
                    {
                        "此卡{C:attention}召唤{}时，销毁所有其他{C:attention}卡牌{}，",
                        "每张被销毁的卡牌获得{X:chips,C:white}X#1#{}筹码",
                        "{C:inactive}（当前{X:chips,C:white}X#2#{}{C:inactive}筹码）"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1{}张{C:joy_dark}暗属性{}{C:attention}卡牌{}",
                    "无需槽位",
                }
            },
        },
        Other = {
            joy_northwemko = {
                name = "诺斯维姆科的恩惠",
                text = {
                    "只要拥有{C:joy_ritual}“救世之美神 诺斯维姆科”{}，",
                    "此卡在打出手牌计分时提供{X:chips,C:white}X4{}筹码",
                }
            }
        }
    },
}