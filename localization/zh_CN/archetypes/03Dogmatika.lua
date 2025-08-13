return {
    descriptions = {
        Joker = {
            j_joy_dogma_ecclesia = {
                name = "{C:joy_effect}教导的大神官 艾克蕾西娅",
                text = {
                    {
                        "每售出1张{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{} {X:mult,C:white}X#2#{} {C:inactive}倍率){}",
                    },
                },
            },
            j_joy_dogma_fleur = {
                name = "{C:joy_effect}教导的骑士 弗勒德莉丝",
                text = {
                    {
                        "每张{C:joy_normal}\"教导\"{}小丑牌提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "若你拥有1张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，则免费",
                    },
                },
            },
            j_joy_dogma_maximus = {
                name = "{C:joy_effect}教导之大神 艾克姆兹",
                text = {
                    {
                        "选择{C:attention}盲注{}时，生成{C:attention}#1#{}张被弱化的{C:dark_edition}负片{}版{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}",
                    },
                },
            },
            j_joy_dogma_adin = {
                name = "{C:joy_effect}教导的天使 艾典",
                text = {
                    {
                        "击败{C:attention}首领盲注{}时，生成{C:attention}#1#{}张非{C:joy_ritual}仪式{}的{C:joy_normal}主牌组\"教导\"{}小丑牌",
                        "{C:inactive}(必须有空位){}",
                    },
                    {
                        "若你拥有1张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，则免费",
                    },
                },
            },
            j_joy_dogma_theo = {
                name = "{C:joy_effect}教导的铁腕 提欧",
                text = {
                    {
                        "{C:chips}+#1#{}筹码，",
                        "每张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}额外提供{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前{} {C:chips}+#3# {C:inactive}筹码){}",
                    },
                    {
                        "若你拥有1张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，则免费",
                    },
                },
            },
            j_joy_dogma_ashiyan = {
                name = "{C:joy_effect}教导的圣女 艾希娅",
                text = {
                    {
                        "{C:attention}复活#1#{}张{C:joy_normal}\"教导\"{}小丑牌{}",
                    },
                    {
                        "击败{C:attention}首领盲注{}时，将{C:attention}#2#{}张{C:joy_ritual}仪式{}版{C:joy_normal}\"教导\"{}小丑牌加入商店",
                    },
                    {
                        "若你拥有1张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，则免费",
                    },
                },
            },
            j_joy_dogma_nexus = {
                name = "{C:joy_effect}教导的枢机 纽克斯",
                text = {
                    {
                        "回合结束时，{C:attention}复制#1#{}张随机的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}",
                        "{C:inactive}(复制出的牌将被弱化和变为{C:dark_edition}负片{}{C:inactive}){}",
                    },
                },
            },
            j_joy_dogma_relic = {
                name = "{C:joy_ritual}教导的白圣骸",
                text = {
                    {
                        "每{C:attention}#2#{}张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，{C:attention}+#1#{}手牌上限",
                        "{C:inactive}(当前{} {C:attention}+#3# {C:inactive}手牌上限){}",
                    },
                    {
                        "位于{C:attention}墓地{}的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}",
                        "视为被弱化，可用于{C:joy_normal}\"教导\"{}小丑牌的能力{C:inactive}(视为被弱化){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{},",
                    "包括1张{C:joy_normal}\"教导\"{}小丑牌"
                }
            },
            j_joy_dogma_knight = {
                name = "{C:joy_ritual}教导的白骑士",
                text = {
                    {
                        "每张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{} {C:mult}+#2# {C:inactive}倍率){}",
                    },
                    {
                        "商店中所有{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}",
                        "均被弱化且免费",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{},",
                    "包括1张{C:joy_normal}\"教导\"{}小丑牌"
                }
            },
            j_joy_dogma_albazoa = {
                name = "{C:joy_ritual}教导的阿尔巴奏者",
                text = {
                    {
                        "选择{C:attention}盲注{}时，将你{C:joy_spell}额外牌组{}中的每张{C:attention}小丑牌{}各{C:attention}#1#{}张送入{C:attention}墓地{}",
                    },
                    {
                        "每张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}，会使每张{C:joy_normal}主牌组{}的{C:attention}小丑牌{}额外提供{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前{} {X:mult,C:white}X#3#{} {C:inactive}倍率){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{} {C:joy_normal}\"教导\"{}小丑牌"
                }
            },
            j_joy_dogma_nation = {
                name = "{C:joy_spell}教导国家",
                text = {
                    {
                        "回合结束时，每张被弱化的{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}提供{C:money}+$#1#{}金钱",
                        "{C:inactive}(当前{} {C:money}+$#2#{C:inactive}){}",
                    },
                    {
                        "你可以{C:attention}献祭#3#{}张{C:joy_spell}额外牌组{}的{C:attention}小丑牌{}",
                        "以生成{C:attention}#4#{}张{C:joy_normal}\"教导\"{}小丑牌",
                        "{C:inactive}(必须有空位){}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dogma = "教导",
        }
    }
}