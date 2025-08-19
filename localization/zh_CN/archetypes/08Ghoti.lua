return {
    descriptions = {
        Joker = {
            j_joy_fish_keaf = {
                name = "{C:joy_effect}魊影之胧 基夫",
                text = {
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}并",
                        "{C:attention}复活 #1#{}张{C:joy_synchro}同调{}小丑牌",
                    },
                },
            },
            j_joy_fish_paces = {
                name = "{C:joy_effect}魊影之灯 佩西斯",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
            },
            j_joy_fish_shif = {
                name = "{C:joy_effect}魊影的妖精 希夫",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
            },
            j_joy_fish_zep = {
                name = "{C:joy_effect}魊影的红玉 泽普",
                text = {
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}并",
                        "{C:attention}复活 #1#{}张主卡组「魊影」{}",
                    },
                },
            },
            j_joy_fish_ixeep = {
                name = "{C:joy_effect}魊影之兆 伊克西普",
                text = {
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}首领盲注{}并生成{C:attention}#1#{}张",
                        "主卡组「魊影」{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_fish_eanoc = {
                name = "{C:joy_effect}魊影的守人 伊诺克",
                text = {
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                    {
                        "从{C:attention}除外{}返回#2#{}次后",
                        "将{C:attention}#1#{}张{C:joy_normal}「魊影」{}加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_psiics = {
                name = "{C:joy_effect}魊影的月夜 赛克斯",
                text = {
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}首领盲注{}并复活{C:attention}#1#{}张",
                        "{C:joy_synchro}调整{}小丑牌为{C:dark_edition}负片{}版",
                    },
                },
            },
            j_joy_fish_snopios = {
                name = "{C:joy_effect}魊影的阴影 斯诺皮奥斯",
                text = {
                    {
                        "此牌和消耗牌区{C:attention}#1#{}张牌",
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                    {
                        "从{C:attention}除外{}返回#2#{}次后",
                        "生成{C:joy_spell}「最远方的宇宙」{}",
                        "{C:inactive}(需有空位) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_arionpos = {
                name = "{C:joy_synchro}魊影的大蛇 阿里翁波斯",
                text = {
                    {
                        "本局游戏每张{C:attention}除外{}牌",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码){}",
                    },
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}并",
                        "将{C:attention}#3#{}张{C:joy_normal}「魊影」{}加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}鱼族{} {C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非调整",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_askaan = {
                name = "{C:joy_synchro}魊影的双角 阿斯坎",
                text = {
                    {
                        "本局游戏每张{C:attention}除外{}牌",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "此牌和1张非「魊影」小丑牌",
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:red}稀有{}非调整",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_guoglim = {
                name = "{C:joy_synchro}魊影的死棘 古奥格利姆",
                text = {
                    {
                        "本局游戏每张{C:attention}除外{}牌",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "召唤时尽可能复活所有不同{C:joy_normal}鱼族{}",
                        "{C:attention}小丑牌",
                    },
                    {
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:red}稀有{}非调整",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_deepbeyond = {
                name = "{C:joy_synchro}最远方的魊影",
                text = {
                    {
                        "此牌和所有非「魊影」小丑牌",
                        "回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}鱼族{} {C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:red}稀有{}非调整",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_depths = {
                name = "{C:joy_spell}最远方的宇宙",
                text = {
                    {
                        "每次有牌{C:attention}除外{}时",
                        "获得{C:money}+$#1#{}金钱",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_fish = "魊影",
        }
    }
}