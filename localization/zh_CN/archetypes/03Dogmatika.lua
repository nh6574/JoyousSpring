return {
    descriptions = {
        Joker = {
            j_joy_dogma_ecclesia = {
                name = "{C:joy_effect}教导的圣女 艾克莉西娅",
                text = {
                    {
                        "每售出1张{C:joy_spell}额外卡组{}的{C:attention}小丑牌{}",
                        "获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                },
            },
            j_joy_dogma_fleur = {
                name = "{C:joy_effect}教导的骑士 弗勒德莉丝",
                text = {
                    {
                        "每张{C:joy_normal}「教导」{}提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "若拥有被弱化的{C:joy_spell}额外卡组{}小丑牌则免费",
                    },
                },
            },
            j_joy_dogma_maximus = {
                name = "{C:joy_effect}教导之大神祇官",
                text = {
                    {
                        "选择{C:attention}盲注{}时",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}版",
                        "被弱化的{C:joy_spell}额外卡组{}小丑牌",
                    },
                },
            },
            j_joy_dogma_adin = {
                name = "{C:joy_effect}教导的天启 阿东",
                text = {
                    {
                        "击败{C:attention}首领盲注{}时",
                        "生成{C:attention}#1#{}张非{C:joy_ritual}仪式{}的",
                        "{C:joy_normal}主卡组「教导」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "若拥有被弱化的{C:joy_spell}额外卡组{}小丑牌则免费",
                    },
                },
            },
            j_joy_dogma_theo = {
                name = "{C:joy_effect}教导的铁锤 特奥",
                text = {
                    {
                        "{C:chips}+#1#{}基础筹码",
                        "每张被弱化的{C:joy_spell}额外卡组{}小丑牌",
                        "额外提供{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前{C:chips}+#3#{C:inactive}筹码){}",
                    },
                    {
                        "若拥有被弱化的{C:joy_spell}额外卡组{}小丑牌则免费",
                    },
                },
            },
            j_joy_dogma_ashiyan = {
                name = "{C:joy_effect}教导的神徒",
                text = {
                    {
                        "获得时{C:attention}复活{}",
                        "{C:attention}#1#{}张{C:joy_normal}「教导」{}",
                    },
                    {
                        "击败{C:attention}首领盲注{}时",
                        "商店添加{C:attention}#2#{}张{C:joy_ritual}仪式{}",
                        "{C:joy_normal}「教导」{}",
                    },
                    {
                        "若拥有被弱化的{C:joy_spell}额外卡组{}小丑牌则免费",
                    },
                },
            },
            j_joy_dogma_nexus = {
                name = "{C:joy_effect}教导枢机 神龙四教导",
                text = {
                    {
                        "回合结束时{C:attention}复制{}",
                        "{C:attention}#1#{}张随机{C:joy_spell}额外卡组{}小丑牌{}",
                        "{C:inactive}(复制品将被弱化且{C:dark_edition}负片{}{C:inactive}){}",
                    },
                },
            },
            j_joy_dogma_relic = {
                name = "{C:joy_ritual}凶导的白圣骸",
                text = {
                    {
                        "每{C:attention}#2#{}张被弱化的",
                        "{C:joy_spell}额外卡组{}小丑牌提供{C:attention}+#1#{}手牌上限",
                        "{C:inactive}(当前{C:attention}+#3#{C:inactive}手牌上限){}",
                    },
                    {
                        "墓地中的{C:joy_spell}额外卡组{}小丑牌",
                        "可触发{C:joy_normal}「教导」{}效果{C:inactive}(视为被弱化){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张小丑牌{}",
                    "包含{C:joy_normal}「教导」{}"
                }
            },
            j_joy_dogma_knight = {
                name = "{C:joy_ritual}凶导的白骑士",
                text = {
                    {
                        "每张被弱化的{C:joy_spell}额外卡组{}小丑牌",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率){}",
                    },
                    {
                        "商店中所有{C:joy_spell}额外卡组{}小丑牌",
                        "被弱化且免费",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张小丑牌{}",
                    "包含{C:joy_normal}「教导」{}"
                }
            },
            j_joy_dogma_albazoa = {
                name = "{C:joy_ritual}凶导的白天底",
                text = {
                    {
                        "选择{C:attention}盲注{}时",
                        "将{C:attention}#1#{}张{C:attention}小丑牌{}的副本",
                        "从{C:joy_spell}额外卡组{}送入{C:attention}墓地{}",
                    },
                    {
                        "每张{C:joy_normal}主卡组{}小丑牌",
                        "根据被弱化的{C:joy_spell}额外卡组{}小丑牌数量",
                        "提供额外{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#3#{}{C:inactive}倍率){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}「教导」{}"
                }
            },
            j_joy_dogma_nation = {
                name = "{C:joy_spell}教导国家 教导龙国",
                text = {
                    {
                        "每张被弱化的{C:joy_spell}额外卡组{}小丑牌",
                        "回合结束时提供{C:money}+$#1#{}金钱",
                        "{C:inactive}(当前{C:money}+$#2#{C:inactive}){}",
                    },
                    {
                        "可解放{C:attention}#3#{}张{C:joy_spell}额外卡组{}小丑牌{}",
                        "生成{C:attention}#4#{}张{C:joy_normal}「教导」{}",
                        "{C:inactive}(需有空位){}",
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