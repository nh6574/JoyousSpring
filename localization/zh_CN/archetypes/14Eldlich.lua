return {
    descriptions = {
        Joker = {
            j_joy_eld_eldlich = {
                name = "{C:joy_effect}黄金卿 黄金国巫妖",
                text = {
                    {
                        "每有1张{C:joy_normal}不死族{}在手或在{C:attention}墓地{}，",
                        "计分牌获得{C:attention}黄金牌{}效果时额外{C:money}+$#1#{}",
                    },
                    {
                        "计分牌计分后变为{C:attention}黄金牌{}",
                    },
                    {
                        "每回合1次，你可{C:attention}解放#2#张{C:joy_normal}不死族{}或{C:joy_trap}陷阱{C:attention}小丑牌{}",
                        "以生成{C:attention}#3#张{C:joy_normal}主牌组“黄金国”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_eld_conq = {
                name = "{C:joy_trap}黄金国征服者",
                text = {
                    {
                        "每有1张{C:joy_normal}不死族{}在手或在{C:attention}墓地{}，",
                        "计分牌获得{C:attention}黄金牌{}效果时额外{C:chips}+#1#{}筹码",
                    },
                    {
                        "所有带强化的计分牌（包括手牌中）额外再触发1次",
                        "若持有{C:joy_normal}“黄金卿”{}",
                    },
                    {
                        "{C:joy_effect}反转{}：本回合{C:red}+#2#{}弃牌次数",
                    },
                }
            },
            j_joy_eld_guard = {
                name = "{C:joy_trap}黄金国守护者",
                text = {
                    {
                        "每有1张{C:joy_normal}不死族{}在手或在{C:attention}墓地{}，",
                        "计分牌获得{C:attention}黄金牌{}效果时额外{C:mult}+#1#{}倍率",
                    },
                    {
                        "所有带强化的计分牌（包括手牌中）额外再触发1次",
                        "若持有{C:joy_normal}“黄金卿”{}",
                    },
                    {
                        "{C:joy_effect}反转{}：本回合{C:blue}+#2#{}手牌数",
                    },
                }
            },
            j_joy_eld_huaq = {
                name = "{C:joy_trap}黄金国掘墓人",
                text = {
                    {
                        "每有1张{C:joy_normal}不死族{}在手或在{C:attention}墓地{}，",
                        "计分牌获得{C:attention}黄金牌{}效果时额外{C:chips}+#1#{}筹码",
                    },
                    {
                        "所有带强化的计分牌（包括手牌中）额外再触发1次",
                        "若持有{C:joy_normal}“黄金卿”{}",
                    },
                    {
                        "{C:joy_effect}反转{}：回合结束时{C:attention}除外#2#张{C:joy_normal}不死族{}",
                        "直至选择盲注",
                    },
                }
            },
            j_joy_eld_glorious = {
                name = "{C:joy_trap}辉煌黄金国灵药",
                text = {
                    {
                        "每有1张{C:joy_normal}不死族{}在手或在{C:attention}墓地{}，",
                        "计分牌获得{C:attention}黄金牌{}效果时额外{C:mult}+#1#{}倍率",
                    },
                    {
                        "所有带强化的计分牌（包括手牌中）额外再触发1次",
                        "若持有{C:joy_normal}“黄金卿”{}",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活#2#张{C:joy_normal}“黄金国”{}或{C:joy_trap}陷阱{}（若无前者）",
                    },
                }
            },
            j_joy_eld_mad = {
                name = "{C:joy_fusion}狂怒黄金卿 黄金国巫妖",
                text = {
                    {
                        "每有1张{C:joy_normal}不死族{}在手或在{C:attention}墓地{}，",
                        "计分牌获得{C:attention}黄金牌{}效果时额外{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "所有打出的牌计分后变为{C:attention}黄金牌{}",
                    },
                    {
                        "{C:joy_trap}陷阱{}不再自动{C:attention}翻面为里侧{}",
                        "且其{C:joy_effect}反转{}效果在选择盲注时自动发动",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}“黄金卿”{} + {C:attention}1{}张{C:joy_normal}不死族{}"
                }
            },
            j_joy_eld_angel = {
                name = "{C:joy_fusion}黄金国堕落天使",
                text = {
                    {
                        "启用{C:attention}黄金国灵药{}牌型",
                        "当{C:joy_trap}陷阱{}被{C:attention}翻面为表侧{}或其反转效果发动时",
                        "提升{C:attention}黄金国灵药{}等级",
                        "{C:inactive}（或反转效果发动）",
                    },
                    {
                        "若打出的手牌包含{C:attention}黄金国灵药{}，",
                        "则将{C:attention}#1#张{C:joy_effect}“黄金卿 黄金国巫妖”{}送入{C:attention}墓地{}",
                    },
                    {
                        "若本卡被送入{C:attention}墓地{}，",
                        "{C:attention}复活#2#张{C:joy_normal}“黄金卿”{}并使其为{C:dark_edition}负片{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{}，其中包含1张{C:joy_trap}陷阱{}"
                }
            },
        },
        Planet = {
            c_joy_cursed_eldland = {
                name = "{C:joy_spell}被诅咒的黄金国"
            }
        },
        JoyPokerHand = {
            phd_joy_eldlixir = {
                name = "黄金国灵药",
                text = {
                    "5张{C:attention}黄金牌{}",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_eldlixir = "黄金国灵药"
        },
        poker_hand_descriptions = {
            joy_eldlixir = {
                "5张{C:attention}黄金牌{}",
                "{C:inactive}（需被能力启用）"
            }
        },
        dictionary = {
            k_joy_archetype_eld = "黄金国",
        }
    }
}