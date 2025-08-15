return {
    descriptions = {
        Joker = {
            j_joy_witch_genni = {
                name = "{C:joy_effect}魔女术工匠·杰妮",
                text = {
                    {
                        "获得时生成{C:attention}#1#张{C:tarot}塔罗牌{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "你可以{C:attention}解放{}本卡与{C:attention}#2#张{C:tarot}塔罗牌{}",
                        "以生成{C:attention}#3#张{C:joy_effect}“魔女术工匠·波特莉”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_witch_potterie = {
                name = "{C:joy_effect}魔女术工匠·波特莉",
                text = {
                    {
                        "若消耗区为空，获得时生成{C:attention}#1#张{C:tarot}塔罗牌{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "本卡与{C:attention}#2#张{C:tarot}塔罗牌{}回合结束时{C:attention}除外{}",
                        "直至选择盲注",
                    },
                    {
                        "你可以{C:attention}解放{}本卡与{C:attention}#3#张{C:tarot}塔罗牌{}",
                        "以生成{C:attention}#4#张{C:joy_effect}“魔女术工匠·皮托蕾”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_witch_pittore = {
                name = "{C:joy_effect}魔女术工匠·皮托蕾",
                text = {
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌{}，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）",
                    },
                    {
                        "每回合1次，使用{C:attention}#4#张消耗牌后生成{C:attention}#3#张{C:tarot}塔罗牌{}",
                        "{C:inactive}（#5#/#4#）（需有栏位）{}",
                    },
                    {
                        "你可以{C:attention}解放{}本卡与{C:attention}#6#张{C:tarot}塔罗牌{}",
                        "以生成{C:attention}#7#张{C:joy_effect}“魔女术工匠·施米塔”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_witch_schmietta = {
                name = "{C:joy_effect}魔女术工匠·施米塔",
                text = {
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌{}，{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）",
                    },
                    {
                        "回合第一手牌打出时生成{C:attention}#3#张{C:tarot}塔罗牌{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "你可以{C:attention}解放{}本卡与{C:attention}#4#张{C:tarot}塔罗牌{}",
                        "以生成{C:attention}#5#张{C:joy_effect}“魔女术工匠·艾黛尔”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_witch_edel = {
                name = "{C:joy_effect}魔女术工匠·艾黛尔",
                text = {
                    {
                        "每回合1次，打出{C:attention}#2#手牌后生成{C:attention}#1#张{C:joy_effect}“魔女术工匠·杰妮”{}",
                        "{C:inactive}（#3#/#2#）（需有栏位）{}",
                    },
                    {
                        "你可以{C:attention}解放{}本卡与{C:attention}#4#张{C:tarot}塔罗牌{}",
                        "以生成{C:attention}#5#张{C:joy_effect}“魔女术工匠·海涅”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_witch_haine = {
                name = "{C:joy_effect}魔女术工匠·海涅",
                text = {
                    {
                        "获得时，本回合每{C:attention}解放{}1张{C:tarot}塔罗牌{}，{C:money}+$#1#{}",
                    },
                    {
                        "若为回合最后一手牌，生成{C:attention}#2#张{C:dark_edition}负片{C:tarot}塔罗牌{}",
                    },
                    {
                        "你可以{C:attention}解放{}本卡与{C:attention}#3#张{C:tarot}塔罗牌{}",
                        "以生成{C:attention}#4#张{C:joy_effect}“魔女术大匠·维蕾”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_witch_verre = {
                name = "{C:joy_effect}魔女术大匠·维蕾",
                text = {
                    {
                        "获得时将本回合{C:attention}解放{}的所有{C:tarot}塔罗牌{}作为{C:dark_edition}负片{}再现",
                    },
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌{}{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）",
                    },
                }
            },
            j_joy_witch_aruru = {
                name = "{C:joy_effect}魔女术傀儡·阿露露",
                text = {
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌{}{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）",
                    },
                    {
                        "持有期间使用的{C:tarot}塔罗牌{}计入解放数量",
                    },
                    {
                        "若持有{C:joy_normal}“魔女术”{}则免费获得",
                    },
                }
            },
            j_joy_witch_vicemadame = {
                name = "{C:joy_fusion}魔女术代理大匠",
                text = {
                    {
                        "{C:tarot}奥秘补充包{}免费",
                    },
                    {
                        "{C:joy_normal}“魔女术”{}筹码与倍率每回合不重置",
                    },
                    {
                        "每回合1次，使用{C:attention}#2#张{C:tarot}塔罗牌{}后生成{C:attention}#1#张{C:joy_effect}“魔女术工匠·杰妮”{}",
                        "{C:inactive}（#3#/#2#）（需有栏位）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{C:joy_normal}魔法师族{}",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_witch = "魔女术",
        }
    }
}