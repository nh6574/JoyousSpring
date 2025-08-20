return {
    descriptions = {
        Joker = {
            j_joy_witch_genni = {
                name = "{C:joy_effect}魔女术熟练工",
                text = {
                    {
                        "获得时生成{C:attention}#1#{}张{C:tarot}塔罗牌",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "可{C:attention}解放{}此牌及{C:attention}#2#{}张{C:tarot}塔罗牌",
                        "以生成{C:attention}#3#{}张{C:joy_effect}「魔女术工匠·陶器女巫」{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_witch_potterie = {
                name = "{C:joy_effect}魔女术工匠·陶器女巫",
                text = {
                    {
                        "若消耗区为空，获得时生成{C:attention}#1#{}张{C:tarot}塔罗牌",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "此牌及{C:attention}#2#{}张{C:tarot}塔罗牌{}回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                    {
                        "可{C:attention}解放{}此牌及{C:attention}#3#{}张{C:tarot}塔罗牌",
                        "以生成{C:attention}#4#{}张{C:joy_effect}「魔女术工匠·绘画女巫」{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_witch_pittore = {
                name = "{C:joy_effect}魔女术工匠·绘画女巫",
                text = {
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码)",
                    },
                    {
                        "每回合1次，消耗{C:attention}#4#{}张牌后生成{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}(#5#/#4#) (需有空位)",
                    },
                    {
                        "可{C:attention}解放{}此牌及{C:attention}#6#{}张{C:tarot}塔罗牌",
                        "以生成{C:attention}#7#{}张{C:joy_effect}「魔女术工匠·锻造女巫」{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_witch_schmietta = {
                name = "{C:joy_effect}魔女术工匠·锻造女巫",
                text = {
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "打出本回合{C:attention}第一手牌{}时生成{C:attention}#3#{}张{C:tarot}塔罗牌{}",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "可{C:attention}解放{}此牌及{C:attention}#4#{}张{C:tarot}塔罗牌",
                        "以生成{C:attention}#5#{}张{C:joy_effect}「魔女术工匠·宝石女巫」{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_witch_edel = {
                name = "{C:joy_effect}魔女术工匠·宝石女巫",
                text = {
                    {
                        "每回合1次，打出{C:attention}#2#{}手牌后",
                        "生成{C:attention}#1#{}张{C:joy_effect}「魔女术熟练工」{}{C:inactive}(#3#/#2#) (需有空位)",
                    },
                    {
                        "可{C:attention}解放{}此牌及{C:attention}#4#{}张{C:tarot}塔罗牌",
                        "以生成{C:attention}#5#{}张{C:joy_effect}「魔女术工匠·服装女巫」{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_witch_haine = {
                name = "{C:joy_effect}魔女术工匠·服装女巫",
                text = {
                    {
                        "获得时，本回合每{C:attention}解放{}1张{C:tarot}塔罗牌获得{C:money}+$#1#{}",
                    },
                    {
                        "若打出本回合{C:attention}最后一手牌{}，生成{C:attention}#2#{}张{C:dark_edition}负片{}{C:tarot}塔罗牌{}",
                    },
                    {
                        "可{C:attention}解放{}此牌及{C:attention}#3#{}张{C:tarot}塔罗牌",
                        "以生成{C:attention}#4#{}张{C:joy_effect}「魔女术师傅·玻璃女巫」{}",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_witch_verre = {
                name = "{C:joy_effect}魔女术师傅·玻璃女巫",
                text = {
                    {
                        "获得时，生成本回合所有{C:attention}解放{}{C:tarot}塔罗牌{}{C:dark_edition}负片{}版",
                    },
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                }
            },
            j_joy_witch_aruru = {
                name = "{C:joy_effect}魔女术人偶·阿鲁鲁女神",
                text = {
                    {
                        "本回合每{C:attention}解放{}1张{C:tarot}塔罗牌提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "拥有此牌时使用的{C:tarot}塔罗牌{}",
                        "视为{C:attention}解放{}以触发能力",
                    },
                    {
                        "若拥有{C:joy_normal}「魔女术」{}则免费",
                    },
                }
            },
            j_joy_witch_vicemadame = {
                name = "{C:joy_fusion}魔女术代理师傅",
                text = {
                    {
                        "{C:tarot}奥术包{}免费",
                    },
                    {
                        "{C:joy_normal}「魔女术」{}筹码与倍率不每回合重置",
                    },
                    {
                        "每回合1次，使用{C:attention}#2#{}张{C:tarot}塔罗牌{}后",
                        "生成{C:attention}#1#{}张{C:joy_effect}「魔女术熟练工」{}{C:inactive}(#3#/#2#) (需有空位)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}魔法师",
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