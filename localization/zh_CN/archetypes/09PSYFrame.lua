return {
    descriptions = {
        Joker = {
            j_joy_psy_driver = {
                name = "{C:joy_normal}PSY骨架驱动者",
                text = {
                    {
                        "{E:1}一名精神力士兵，驾驭雷电洪流与治安部队作战，{}",
                        "{E:1}使用名为“PSY骨架”的自主增幅器{}",
                    },
                },
            },
            j_joy_psy_alpha = {
                name = "{C:joy_effect}PSY骨架装置α",
                text = {
                    {
                        "获得时生成{C:attention}#1#张{C:joy_normal}“PSY骨架驱动者”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "选择盲注时，将1张{C:joy_normal}“PSY骨架驱动者”{}除外直至回合结束，",
                        "令本回合所有持有的手牌提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_beta = {
                name = "{C:joy_effect}PSY骨架装置β",
                text = {
                    {
                        "获得时生成{C:attention}#1#张{C:joy_normal}“PSY骨架驱动者”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "选择盲注时，将1张{C:joy_normal}“PSY骨架驱动者”{}除外直至回合结束，",
                        "令所有计分牌本回合提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_gamma = {
                name = "{C:joy_effect}PSY骨架装置γ",
                text = {
                    {
                        "获得时生成{C:attention}#1#张{C:joy_normal}“PSY骨架驱动者”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "选择盲注时，将1张{C:joy_normal}“PSY骨架驱动者”{}除外直至回合结束，",
                        "令所有{C:attention}小丑牌{}本回合各提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_delta = {
                name = "{C:joy_effect}PSY骨架装置δ",
                text = {
                    {
                        "获得时生成{C:attention}#1#张{C:joy_normal}“PSY骨架驱动者”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "选择盲注时，将1张{C:joy_normal}“PSY骨架驱动者”{}除外直至回合结束，",
                        "令消耗区的所有{C:tarot}塔罗牌{}本回合各提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_epsilon = {
                name = "{C:joy_effect}PSY骨架装置ε",
                text = {
                    {
                        "获得时生成{C:attention}#1#张{C:joy_normal}“PSY骨架驱动者”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "选择盲注时，将1张{C:joy_normal}“PSY骨架驱动者”{}除外直至回合结束，",
                        "令消耗区的所有{C:planet}星球牌{}本回合各提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_multithreader = {
                name = "{C:joy_effect}PSY骨架多线程器",
                text = {
                    {
                        "本卡在{C:joy_normal}“PSY骨架”{}效果中视为{C:joy_normal}“PSY骨架驱动者”{}",
                    },
                    {
                        "本卡从除外区返回时，生成{C:attention}#1#张{C:joy_normal}主牌组“PSY骨架”{}",
                        "{C:joy_effect}效果{} {C:attention}小丑牌{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_psy_zeta = {
                name = "{C:joy_synchro}PSY骨架王ζ",
                text = {
                    {
                        "本卡与消耗区的{C:attention}#1#张卡回合结束时除外，",
                        "直至选择盲注",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张{C:blue}普通{}非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）{}",
                }
            },
            j_joy_psy_omega = {
                name = "{C:joy_synchro}PSY骨架王Ω",
                text = {
                    {
                        "本卡与另1张{C:attention}小丑牌{}回合结束时除外，",
                        "直至选择盲注",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张{C:blue}普通{}非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）{}",
                }
            },
            j_joy_psy_lambda = {
                name = "{C:joy_link}PSY骨架王λ",
                text = {
                    {
                        "{C:joy_normal}“PSY骨架”{}效果无需除外{C:joy_normal}“PSY骨架驱动者”{}即可生效",
                    },
                    {
                        "当{C:joy_normal}念动力族{} {C:joy_synchro}同调{}怪兽从除外区返回时，向{C:joy_spell}额外牌组{}添加{C:attention}#1#张{C:joy_normal}“PSY骨架”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}小丑牌{}，",
                    "不包括{C:joy_token}衍生物{}",
                }
            },
            j_joy_psy_circuit = {
                name = "{C:joy_spell}PSY骨架回路",
                text = {
                    {
                        "每次召唤{C:joy_synchro}同调{}怪兽时，{C:money}+$#1#{}金钱",
                    },
                    {
                        "{C:joy_normal}念动力族{} {C:joy_synchro}同调{}怪兽召唤时变为{C:dark_edition}负片{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_psy = "PSY骨架",
        }
    }
}