return {
    descriptions = {
        Joker = {
            j_joy_psy_driver = {
                name = "{C:joy_normal}PSY骨架驱动者",
                text = {
                    {
                        "{E:1}装备名为为「PSY骨架」的自律增幅器{}",
                        "{E:1}驾驭闪电与安全部队作战的念动力士兵{}",
                    },
                },
            },
            j_joy_psy_alpha = {
                name = "{C:joy_effect}PSY骨架装备·α",
                text = {
                    {
                        "获得时生成{C:attention}#1#{}张{C:joy_normal}「PSY骨架驱动者」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}除外{}1张{C:joy_normal}「PSY骨架驱动者」{}",
                        "直到回合结束，使手牌所有牌",
                        "提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_beta = {
                name = "{C:joy_effect}PSY骨架装备·β",
                text = {
                    {
                        "获得时生成{C:attention}#1#{}张{C:joy_normal}「PSY骨架驱动者」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}除外{}1张{C:joy_normal}「PSY骨架驱动者」{}",
                        "直到回合结束，使所有计分牌",
                        "提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_gamma = {
                name = "{C:joy_effect}PSY骨架装备·γ",
                text = {
                    {
                        "获得时生成{C:attention}#1#{}张{C:joy_normal}「PSY骨架驱动者」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}除外{}1张{C:joy_normal}「PSY骨架驱动者」{}",
                        "直到回合结束，使所有小丑牌",
                        "各提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_delta = {
                name = "{C:joy_effect}PSY骨架装备·δ",
                text = {
                    {
                        "获得时生成{C:attention}#1#{}张{C:joy_normal}「PSY骨架驱动者」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}除外{}1张{C:joy_normal}「PSY骨架驱动者」{}",
                        "直到回合结束，使消耗牌区所有",
                        "{C:tarot}塔罗牌{}各提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_epsilon = {
                name = "{C:joy_effect}PSY骨架装备·ε",
                text = {
                    {
                        "获得时生成{C:attention}#1#{}张{C:joy_normal}「PSY骨架驱动者」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}除外{}1张{C:joy_normal}「PSY骨架驱动者」{}",
                        "直到回合结束，使消耗牌区所有",
                        "{C:planet}星球牌{}各提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_psy_multithreader = {
                name = "{C:joy_effect}PSY骨架多线人",
                text = {
                    {
                        "此牌视为{C:joy_normal}「PSY骨架驱动者」{}",
                        "用于{C:joy_normal}「PSY骨架」{}效果",
                    },
                    {
                        "从{C:attention}除外{}返回时生成{C:attention}#1#{}张",
                        "{C:joy_normal}主卡组「PSY骨架」{C:joy_effect}效果{}小丑牌",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_psy_zeta = {
                name = "{C:joy_synchro}PSY骨架王·Ζ",
                text = {
                    {
                        "此牌和消耗牌区{C:attention}#1#{}张牌",
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:blue}普通{}非调整",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_omega = {
                name = "{C:joy_synchro}PSY骨架王·Ω",
                text = {
                    {
                        "此牌和另1张小丑牌",
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:blue}普通{}非调整",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_lambda = {
                name = "{C:joy_link}PSY骨架王·Λ",
                text = {
                    {
                        "{C:joy_normal}「PSY骨架」{}效果无需",
                        "{C:attention}除外{} {C:joy_normal}「PSY骨架驱动者」{}即可生效",
                    },
                    {
                        "当{C:joy_normal}念动力族{}小丑牌从{C:attention}除外{}返回时",
                        "将{C:attention}#1#{}张{C:joy_normal}「PSY骨架」{}加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张小丑牌",
                    "除{C:joy_token}衍生物{}外",
                }
            },
            j_joy_psy_circuit = {
                name = "{C:joy_spell}PSY骨架回路",
                text = {
                    {
                        "每次召唤{C:joy_synchro}同调{}时获得{C:money}+$#1#{}金钱",
                    },
                    {
                        "{C:joy_normal}念动力族{} {C:joy_synchro}同调{}",
                        "召唤时变为{C:dark_edition}负片{}版",
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