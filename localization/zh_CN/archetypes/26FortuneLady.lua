-- 文件 2：26FortuneLady.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_flady_light = {
                name = "{C:joy_effect}命运女郎·光",
                text = {
                    {
                        "回合结束时有{C:green}#1#/#2#几率",
                        "放逐{C:attention}#3#{C:joy_normal}命运女郎",
                        "直到选择{C:attention}盲注"
                    },
                    {
                        "回合结束时获得{C:money}$#4#{C:attention}×分子{C:attention}金钱",
                        "{C:inactive}(上限$C:attention}$#4#{C:attention}×#2#){}",
                        "{C:inactive}(当前{C:money}+$#5#{C:inactive})"
                    },
                    {
                        "每当有牌被{C:attention}放逐{C:attention}时，",
                        "永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#6#"
                    }
                }
            },
            j_joy_flady_fire = {
                name = "{C:joy_effect}命运女郎·火",
                text = {
                    {
                        "有{C:green}#1#/#2#几率",
                        "本回合内使所有其他{C:green}几率{C:attention}翻倍"
                    },
                    {
                        "获得{C:mult}+#3#{C:attention}×命运女郎分子{C:attention}倍率",
                        "{C:inactive}(上限{C:mult}+#3#{C:attention}×#4#){}",
                        "{C:inactive}(当前{C:mult}+#5#{C:inactive}倍率)"
                    },
                    {
                        "回合结束时永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#6#"
                    }
                }
            },
            j_joy_flady_wind = {
                name = "{C:joy_effect}命运女郎·风",
                text = {
                    {
                        "有{C:green}#1#/#2#几率",
                        "为打出的牌生成一张{C:planet}星球牌"
                    },
                    {
                        "每个{C:joy_normal}命运女郎{C:attention}给予{C:chips}+#3#{C:attention}×分子{C:attention}筹码",
                        "{C:inactive}(上限{C:chips}+#3#{C:attention}×分母){}"
                    },
                    {
                        "回合结束时永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#4#",
                        "每有1个{C:joy_normal}命运女郎{C:attention}提高一次"
                    }
                }
            },
            j_joy_flady_water = {
                name = "{C:joy_effect}命运女郎·水",
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#1#/#2#几率",
                        "增加{C:attention}#3#{C:attention}手牌上限",
                        "{C:inactive}(失败时重置手牌上限)(最多+#8#)",
                        "{C:inactive}(当前+C:attention}#4#{C:inactive}手牌上限)"
                    },
                    {
                        "给予{C:chips}+#5#{C:attention}×分子{C:attention}筹码",
                        "{C:inactive}(上限{C:chips}+#5#{C:attention}×#2#){}",
                        "{C:inactive}(当前{C:chips}+#6#{C:inactive}筹码)"
                    },
                    {
                        "回合结束时永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#7#"
                    }
                }
            },
            j_joy_flady_earth = {
                name = "{C:joy_effect}命运女郎·地",
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#1#/#2#几率",
                        "生成{C:attention}#3#{C:attention}张",
                        "{C:joy_normal}主卡组“命运女郎”{C:attention}(需有空位)"
                    },
                    {
                        "本卡分子每永久+1，额外获得{X:mult,C:white}X#4#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#5#{C:inactive}倍率)"
                    },
                    {
                        "本卡分子每永久+1，永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#6#",
                        "{C:inactive}(“命运女郎·地”自身除外){}"
                    }
                }
            },
            j_joy_flady_dark = {
                name = "{C:joy_effect}命运女郎·暗",
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#1#/#2#几率",
                        "复活{C:attention}#3#{C:joy_normal}命运女郎{C:attention}",
                        "(无则复活{C:joy_normal}魔法师{C:attention})"
                    },
                    {
                        "给予{C:mult}+#4#{C:attention}×分子{C:attention}倍率",
                        "{C:inactive}(上限{C:mult}+#4#{C:attention}×#2#){}",
                        "{C:inactive}(当前{C:mult}+#5#{C:inactive}倍率)"
                    },
                    {
                        "回合结束时永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#6#",
                        "每有1个{C:joy_normal}魔法师{C:attention}提高一次"
                    }
                }
            },
            j_joy_flady_past = {
                name = "{C:joy_effect}命运女郎·过去",
                text = {
                    {
                        "回合结束时有{C:green}#1#/#2#几率",
                        "放逐所有{C:joy_normal}魔法师{C:attention}小丑牌",
                        "直到选择{C:attention}盲注"
                    },
                    {
                        "获得{X:mult,C:white}X#3#{C:attention}×分子{C:attention}倍率",
                        "{C:inactive}(上限{X:mult,C:white}X#3#{C:attention}×#2#){}",
                        "{C:inactive}(当前{X:mult,C:white}X#4#{C:inactive}倍率)"
                    },
                    {
                        "每当有牌从放逐区返回时，",
                        "永久提高所有{C:attention}小丑牌{C:attention}的{C:green}几率{C:attention}值{C:attention}#5#"
                    }
                }
            },
            j_joy_flady_every = {
                name = "{C:joy_synchro}命运女郎·一切",
                text = {
                    {
                        "本回合有{C:green}#1#/#2#几率获得{X:mult,C:white}X#3#{C:mult}倍率",
                        "回合结束时有{C:green}#4#/#5#几率放逐{C:attention}#6#{C:joy_normal}命运女郎{C:attention}",
                        "直到选择{C:attention}盲注",
                        "回合结束时有{C:green}#7#/#8#几率获得{C:money}+$#9#{C:attention}",
                        "每计分1张牌有{C:green}#10#/#11#几率永久翻倍",
                        "所有{C:green}几率{C:attention}",
                        "选择{C:attention}盲注{C:attention}时有{C:green}#12#/#13#几率生成{C:attention}#14#{C:joy_normal}命运妖精{C:attention}",
                        "选择{C:attention}盲注{C:attention}时有{C:green}#15#/#16#几率复活{C:attention}#17#{C:joy_normal}命运女郎{C:attention}",
                        "(无则复活{C:joy_normal}魔法师){C:attention}并赋予{C:dark_edition}负片"
                    },
                    {
                        "给予{C:mult}+#18#{C:attention}×分子总和{C:attention}倍率",
                        "{C:inactive}(上限{C:mult}+#18#{C:attention}×#19#{})",
                        "{C:inactive}(当前{C:mult}+#20#{C:inactive}倍率)"
                    },
                    {
                        "每当有牌从放逐区返回时，",
                        "永久翻倍其{C:green}几率{C:attention}值"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:joy_normal}魔法师{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_ffairy_hikari = {
                name = "{C:joy_effect}命运妖精·灯",
                text = {
                    {
                        "每当列表中的{C:green}几率{C:attention}成功时，获得{C:money}+$#1#"
                    },
                    {
                        "每底注限1次，{C:attention}#3#{C:attention}次列表{C:green}几率{C:attention}成功后",
                        "生成{C:attention}#2#{C:joy_normal}主卡组魔法师{C:attention}",
                        "{C:inactive}(#4#/#3#){C:inactive}(需有空位)"
                    },
                    {
                        "若你已拥有{C:joy_normal}“命运女郎”{C:attention}，",
                        "从商店获得时免费且无需空位"
                    }
                }
            },
            j_joy_ffairy_en = {
                name = "{C:joy_effect}命运妖精·炎",
                text = {
                    {
                        "本局游戏中每成功1次列表{C:green}几率{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "有{C:green}#3#/#4#几率",
                        "将每张计分牌变成{C:attention}幸运{C:attention}牌"
                    },
                    {
                        "若你已拥有{C:joy_normal}“命运女郎”{C:attention}，",
                        "从商店获得时免费且无需空位"
                    }
                }
            },
            j_joy_ffairy_hu = {
                name = "{C:joy_effect}命运妖精·风",
                text = {
                    {
                        "本局游戏中每成功1次列表{C:green}几率{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                    {
                        "本卡从放逐区返回后，",
                        "下一次列表{C:green}几率{C:attention}必定成功"
                    },
                    {
                        "若你已拥有{C:joy_normal}“命运女郎”{C:attention}，",
                        "从商店获得时免费且无需空位"
                    }
                }
            },
            j_joy_ffairy_swee = {
                name = "{C:joy_effect}命运妖精·水",
                text = {
                    {
                        "本局游戏中每成功1次列表{C:green}几率{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                    {
                        "若本回合有列表{C:green}几率{C:attention}成功，",
                        "回合结束时放逐本卡与{C:attention}#3#{C:attention}张小丑牌",
                        "直至选择{C:attention}盲注"
                    },
                    {
                        "若你已拥有{C:joy_normal}“命运女郎”{C:attention}，",
                        "从商店获得时免费且无需空位"
                    }
                }
            },
            j_joy_ffairy_chee = {
                name = "{C:joy_effect}命运妖精·地",
                text = {
                    {
                        "本局游戏中每成功1次列表{C:green}几率{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "将所有非{C:joy_normal}魔法师{C:attention}卡牌的列表{C:green}几率{C:attention}分母减半"
                    },
                    {
                        "若你已拥有{C:joy_normal}“命运女郎”{C:attention}，",
                        "从商店获得时免费且无需空位"
                    }
                }
            },
            j_joy_ffairy_ann = {
                name = "{C:joy_effect}命运妖精·暗",
                text = {
                    {
                        "每当列表{C:green}几率{C:attention}成功时，获得{C:money}+$#1#",
                        "并送{C:attention}#2#{C:joy_normal}魔法师{C:attention}至墓地"
                    },
                    {
                        "有{C:green}#3#/#4#几率",
                        "回合结束时放逐自身",
                        "直至选择{C:attention}盲注"
                    },
                    {
                        "若你已拥有{C:joy_normal}“命运女郎”{C:attention}，",
                        "从商店获得时免费且无需空位"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_flady = "命运女郎",
        }
    }
}