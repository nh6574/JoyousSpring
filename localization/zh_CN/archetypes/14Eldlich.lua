return {
    descriptions = {
        Joker = {
            j_joy_eld_eldlich = {
                name = "{C:joy_effect}黄金卿 黄金国巫妖",
                text = {
                    {
                        "每张{C:attention}黄金牌{}计分时，根据拥有或墓地中的",
                        "{C:joy_normal}不死族{}数量获得{C:money}+$#1#{}",
                    },
                    {
                        "计分后牌变为{C:attention}黄金牌{}",
                    },
                    {
                        "每回合1次，可{C:attention}解放 #2#{}张{C:joy_normal}不死族{}或{C:joy_trap}陷阱{}卡牌{}",
                        "以生成{C:attention}#3#{}张{C:joy_normal}主卡组“黄金乡”{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_eld_conq = {
                name = "{C:joy_trap}黄金乡的征服者",
                text = {
                    {
                        "每张{C:attention}黄金牌{}计分时，根据拥有或墓地中的",
                        "{C:joy_normal}不死族{}数量获得{C:chips}+#1#{}筹码",
                    },
                    {
                        "所有带强化的计分牌再次触发1次",
                        "若拥有{C:joy_normal}“黄金卿”{}，手牌中的牌也生效",
                    },
                    {
                        "{C:joy_effect}反转{}：本回合{C:red}+#2#{}次弃牌",
                    },
                }
            },
            j_joy_eld_guard = {
                name = "{C:joy_trap}黄金乡的守护者",
                text = {
                    {
                        "每张{C:attention}黄金牌{}计分时，根据拥有或墓地中的",
                        "{C:joy_normal}不死族{}数量获得{C:mult}+#1#{}倍率",
                    },
                    {
                        "所有带强化的计分牌再次触发1次",
                        "若拥有{C:joy_normal}“黄金卿”{}，手牌中的牌也生效",
                    },
                    {
                        "{C:joy_effect}反转{}：本回合{C:blue}+#2#{}手牌上限",
                    },
                }
            },
            j_joy_eld_huaq = {
                name = "{C:joy_trap}黄金乡的盗墓者",
                text = {
                    {
                        "每张{C:attention}黄金牌{}计分时，根据拥有或墓地中的",
                        "{C:joy_normal}不死族{}数量获得{C:chips}+#1#{}筹码",
                    },
                    {
                        "所有带强化的计分牌再次触发1次",
                        "若拥有{C:joy_normal}“黄金卿”{}，手牌中的牌也生效",
                    },
                    {
                        "{C:joy_effect}反转{}：回合结束时{C:attention}放逐 #2#{}张{C:joy_normal}不死族{}",
                        "直到选择{C:attention}盲注{}",
                    },
                }
            },
            j_joy_eld_glorious = {
                name = "{C:joy_trap}贵华黄金乡之黄金国永生药",
                text = {
                    {
                        "每张{C:attention}黄金牌{}计分时，根据拥有或墓地中的",
                        "{C:joy_normal}不死族{}数量获得{C:mult}+#1#{}倍率",
                    },
                    {
                        "所有带强化的计分牌再次触发1次",
                        "若拥有{C:joy_normal}“黄金卿”{}，手牌中的牌也生效",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活 #2#{}张{C:joy_normal}“黄金乡”{}{}或若无则复活{C:joy_trap}陷阱{}",
                    },
                }
            },
            j_joy_eld_mad = {
                name = "{C:joy_fusion}黄金狂 黄金国巫妖",
                text = {
                    {
                        "每张{C:attention}黄金牌{}计分时，根据拥有或墓地中的",
                        "{C:joy_normal}不死族{}数量获得额外{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "所有打出的牌计分后变为{C:attention}黄金牌{}",
                    },
                    {
                        "{C:joy_trap}陷阱{}不会自动{C:attention}反转{}为里侧",
                        "且其{C:joy_effect}反转{}能力在选择{C:attention}盲注{}时激活",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}“黄金卿”{} + {C:attention}1{}张{C:joy_normal}不死族{}"
                }
            },
            j_joy_eld_angel = {
                name = "{C:joy_fusion}黄金乡的堕落天使",
                text = {
                    {
                        "解锁{C:attention}黄金国永生药{}牌型",
                        "{C:joy_trap}陷阱{}被{C:attention}反转{}为表侧时提升{C:attention}黄金国永生药{}等级",
                        "{C:inactive}(或其反转能力激活时)",
                    },
                    {
                        "若打出{C:attention}黄金国永生药{}牌型，将{C:attention}#1#{}张{C:joy_effect}“黄金卿”{}送入{C:attention}墓地{}",
                    },
                    {
                        "此牌送入{C:attention}墓地{}时，{C:attention}复活 #2#{}张{C:joy_normal}“黄金卿”{}{C:dark_edition}负片{}版",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张卡牌{}，含1张{C:joy_trap}陷阱{}"
                }
            },
        },
        Planet = {
            c_joy_cursed_eldland = {
                name = "{C:joy_spell}被诅咒的黄金国度"
            }
        },
        JoyPokerHand = {
            phd_joy_eldlixir = {
                name = "黄金国永生药",
                text = {
                    "5张{C:attention}黄金牌{}",
                },
            }
        }
    },
    JoyousSpring = {
        Blurbs = {
            eld = {
                story = {
                    "智慧魔法石{C:joy_trap}“埃尔德里希尔”{}，以能为获得者带来‘无穷力量’而闻名。这颗曾将无数旅人引向灭亡的石头，最终落入了一位意志力超乎常人的男人手中。于是，{C:joy_effect}“黄金卿 黄金国巫妖”{}——一个贪欲无与伦比的存在——{C:joy_spell}“黄金国”{}的不朽统治者——诞生了。",
                },
                gameplay = {
                    "{C:joy_effect}“黄金卿”{}实现了一种强大的{C:attention}黄金{}强化与{C:joy_trap}陷阱{}创造的循环。{C:joy_fusion}“堕落天使”{}可以帮助更快地达成这一点！"
                }
            }
        }
    },
    misc = {
        poker_hands = {
            joy_eldlixir = "黄金国永生药"
        },
        poker_hand_descriptions = {
            joy_eldlixir = {
                "5张{C:attention}黄金牌{}",
                "{C:inactive}(需由能力解锁)"
            }
        },
        dictionary = {
            k_joy_archetype_eld = "黄金国巫妖",
        }
    }
}