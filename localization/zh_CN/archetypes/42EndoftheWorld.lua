return {
    descriptions = {
        Joker = {
            j_joy_eotw_ruinangel = {
                name = "{C:joy_ritual}破灭之天使 露茵",
                text = {
                    {
                        "打出手牌中的所有计分卡牌",
                        "再次触发一次"
                    },
                    {
                        "被{C:attention}解放{}时，向一张{C:joy_ritual}仪式{}",
                        "施加一个随机的{C:dark_edition}版本{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1{}张{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_eotw_ruin = {
                name = "{C:joy_ritual}破灭之女神 露茵",
                text = {
                    {
                        "打出手牌中的所有计分卡牌",
                        "再次触发两次"
                    },
                    {
                        "被{C:attention}解放{}时，每有1张",
                        "其他{C:joy_ritual}仪式{}提供{C:money}+$#1#{}金钱"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2{}张{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_eotw_ruinsupreme = {
                name = "{C:joy_ritual}终焉之至高女王 露茵",
                text = {
                    {
                        "用于其{C:attention}召唤{}的每张{C:joy_ritual}仪式{}",
                        "使打出手牌中的所有计分卡牌",
                        "再次触发一次"
                    },
                    {
                        "{C:joy_ritual}仪式{}不能被无效",
                        "或{C:attention}反转{}为里侧表示"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2{}张以上{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_eotw_demiseagent = {
                name = "{C:joy_ritual}终焉之恶魔 迪米斯",
                text = {
                    {
                        "{C:mult}+#1#{}倍率"
                    },
                    {
                        "销毁打出手牌中的",
                        "最后一张计分卡牌"
                    },
                    {
                        "被{C:attention}解放{}时，向一张{C:joy_ritual}仪式{}",
                        "施加一个随机的{C:dark_edition}版本{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1{}张{C:joy_dark}暗属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_eotw_demise = {
                name = "{C:joy_ritual}终焉之王 迪米斯",
                text = {
                    {
                        "打出手牌中每张计分卡牌",
                        "提供{C:mult}+#1#{}倍率，",
                        "然后销毁它们"
                    },
                    {
                        "被{C:attention}解放{}时，每有1张",
                        "其他{C:joy_ritual}仪式{}提供{C:money}+$#1#{}金钱"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2{}张{C:joy_dark}暗属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_eotw_demisesupreme = {
                name = "{C:joy_ritual}终焉之霸王 迪米斯",
                text = {
                    {
                        "每回合一次，你可以销毁手牌中选中的卡牌，",
                        "数量不超过其{C:attention}召唤{}所用{C:attention}素材{}的数量，",
                        "本回合每张销毁的卡牌额外提供{X:chips,C:white}X#1#{}筹码",
                        "{C:inactive}（当前{X:chips,C:white}X#2#{}{C:inactive}筹码）"
                    },
                    {
                        "{C:joy_ritual}仪式{}不能被无效",
                        "或{C:attention}反转{}为里侧表示"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2{}张以上{C:joy_dark}暗属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_eotw_ruler = {
                name = "{C:joy_ritual}破灭与终焉之支配者",
                text = {
                    {
                        "{C:attention}墓地{}中每张{C:joy_ritual}仪式{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "每回合一次，你可以销毁",
                        "手牌中任意数量的选中卡牌，",
                        "使下一手打出的牌中的",
                        "每张计分卡牌再次触发",
                        "{C:inactive}（当前{C:attention}#3#{C:inactive}次再次触发）"
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}1{}张{C:joy_dark}暗属性{}{C:joy_ritual}仪式{}",
                    "+ {C:attention}1{}张{C:joy_light}光属性{}{C:joy_ritual}仪式{}"
                }
            },
            j_joy_eotw_breaking = {
                name = "{C:joy_spell}世界破坏",
                text = {
                    {
                        "每当一张卡牌为{C:joy_ritual}仪式{}",
                        "被{C:attention}解放{}时，提供{C:money}+$#1#{}金钱"
                    },
                    {
                        "每底注一次，当一张{C:joy_ritual}仪式{}",
                        "被{C:attention}解放{}时，向{C:joy_link}副卡组{}",
                        "添加一张{C:joy_normal}“露茵”{}或{C:joy_normal}“迪米斯”{}"
                    }
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            eotw = {
                story = {
                    "{C:joy_ritual}“迪米斯”{}，倾尽全力毁灭世界者，与{C:joy_ritual}“露茵”{}，带来温柔破灭以促新生者。她们的存在如同一枚硬币的两面——一方完成使命的瞬间，另一方便会显现接替其位，延续这世界毁灭的永恒循环。",
                },
                gameplay = {
                    "泛用{C:joy_ritual}仪式{}支援，适合与{C:joy_normal}教导{}、{C:joy_normal}肃声{}或{C:joy_normal}龙辉巧{}搭配使用。"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_eotw = "世界末日",
        }
    }
}