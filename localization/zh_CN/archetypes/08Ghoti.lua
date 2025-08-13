return {
    descriptions = {
        Joker = {
            j_joy_fish_keaf = {
                name = "{C:joy_effect}鬼鱼 幽影凯夫",
                text = {
                    {
                        "回合结束时除外，",
                        "直至选择盲注，并{X:mult,C:white}复活#1#张{C:joy_synchro}同调{}怪兽",
                    },
                },
            },
            j_joy_fish_paces = {
                name = "{C:joy_effect}鬼鱼 光辉佩斯",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "回合结束时除外，",
                        "直至选择盲注",
                    },
                },
            },
            j_joy_fish_shif = {
                name = "{C:joy_effect}鬼鱼 妖精希夫",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "回合结束时除外，",
                        "直至选择盲注",
                    },
                },
            },
            j_joy_fish_zep = {
                name = "{C:joy_effect}鬼鱼 红玉泽普",
                text = {
                    {
                        "回合结束时除外，",
                        "直至选择盲注，并{X:mult,C:white}复活#1#张{C:joy_normal}主牌组{} {C:joy_normal}“鬼鱼”{}",
                    },
                },
            },
            j_joy_fish_ixeep = {
                name = "{C:joy_effect}鬼鱼 预兆伊克西普",
                text = {
                    {
                        "回合结束时除外，",
                        "直至选择首领盲注，并生成{C:attention}#1#张{C:joy_normal}主牌组{} {C:joy_normal}“鬼鱼”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_fish_eanoc = {
                name = "{C:joy_effect}鬼鱼 哨兵伊安诺克",
                text = {
                    {
                        "回合结束时除外，",
                        "直至选择盲注",
                    },
                    {
                        "从除外区返回{C:attention}#2#次后，向{C:joy_spell}额外牌组{}添加{C:attention}#1#张{C:joy_normal}“鬼鱼”{}",
                        "{C:inactive}（需有栏位）（#3#/#2#）{}",
                    },
                },
            },
            j_joy_fish_psiics = {
                name = "{C:joy_effect}鬼鱼 月光普西克斯",
                text = {
                    {
                        "回合结束时除外，",
                        "直至选择首领盲注，并将{C:attention}#1#张{C:joy_synchro}同调{} {C:attention}小丑牌{}作为{C:dark_edition}负片{}复活",
                    },
                },
            },
            j_joy_fish_snopios = {
                name = "{C:joy_effect}鬼鱼 暗影斯诺皮奥斯",
                text = {
                    {
                        "本卡与消耗区的{C:attention}#1#张卡回合结束时除外，",
                        "直至选择盲注",
                    },
                    {
                        "从除外区返回{C:attention}#2#次后，生成{C:joy_spell}“最遥远、最深邃的海底”{}",
                        "{C:inactive}（需有栏位）（#3#/#2#）{}",
                    },
                },
            },
            j_joy_fish_arionpos = {
                name = "{C:joy_synchro}鬼鱼 巨蛇阿里昂波斯",
                text = {
                    {
                        "本局每除外1张卡，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）{}",
                    },
                    {
                        "回合结束时除外，",
                        "直至选择盲注，并向{C:joy_spell}额外牌组{}添加{C:attention}#3#张{C:joy_normal}“鬼鱼”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}鱼族{} {C:joy_synchro}同调{} +",
                    "{C:attention}1{}张非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）{}",
                }
            },
            j_joy_fish_askaan = {
                name = "{C:joy_synchro}鬼鱼 双角阿斯卡安",
                text = {
                    {
                        "本局每除外1张卡，{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "本卡与1张非{C:joy_normal}“鬼鱼”{}的{C:attention}小丑牌{}回合结束时除外，",
                        "直至选择盲注",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张{C:red}史诗{}非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）{}",
                }
            },
            j_joy_fish_guoglim = {
                name = "{C:joy_synchro}鬼鱼 枪兵古奥格利姆",
                text = {
                    {
                        "本局每除外1张卡，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "召唤时，尽可能复活不同的{C:joy_normal}鱼族{} {C:attention}小丑牌{}",
                    },
                    {
                        "回合结束时除外，",
                        "直至选择盲注",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张{C:red}史诗{}非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）{}",
                }
            },
            j_joy_fish_deepbeyond = {
                name = "{C:joy_synchro}深渊彼岸的鬼鱼",
                text = {
                    {
                        "本卡与所有其他非{C:joy_normal}“鬼鱼”{}的{C:attention}小丑牌{}回合结束时除外，",
                        "直至选择盲注",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}鱼族{} {C:joy_synchro}同调{} +",
                    "{C:attention}1{}张{C:red}史诗{}非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）{}",
                }
            },
            j_joy_fish_depths = {
                name = "{C:joy_spell}最遥远、最深邃的海底",
                text = {
                    {
                        "每有1张卡被{C:attention}除外，{C:money}+$#1#{}金钱",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_fish = "鬼鱼",
        }
    }
}