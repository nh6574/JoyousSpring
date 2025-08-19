return {
    descriptions = {
        Joker = {
            j_joy_paleo_canadia = {
                name = "{C:joy_trap}伯吉斯异兽·加拿大虫",
                text = {
                    {
                        "每{C:attention}反转{}1张小丑牌获得{C:mult}+#1#{}倍率",
                        "{s:0.9,C:inactive}(即使里侧状态也生效)",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活 #3#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_dino = {
                name = "{C:joy_trap}伯吉斯异兽·高足杯虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：此牌及{C:attention}#1#{}张其他{C:joy_trap}陷阱{}回合结束时{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}并{C:attention}复活 #2#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_eldonia = {
                name = "{C:joy_trap}伯吉斯异兽·伊尔东钵",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合{C:chips}+#1#{}筹码",
                        "并{C:attention}复活 #2#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_hallu = {
                name = "{C:joy_trap}伯吉斯异兽·怪诞虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合{C:mult}+#1#{}倍率",
                        "并{C:attention}复活 #2#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_lean = {
                name = "{C:joy_trap}伯吉斯异兽·林乔利虫",
                text = {
                    {
                        "每{C:attention}反转{}1张小丑牌获得{C:chips}+#1#{}筹码",
                        "{s:0.9,C:inactive}(即使里侧状态也生效)",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码)",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活 #3#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_marrella = {
                name = "{C:joy_trap}伯吉斯异兽·马尔三叶形虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活 #1#{}张{C:joy_normal}「伯吉斯异兽」 ",
                        "并将{C:attention}#2#{}张{C:joy_trap}陷阱{}{C:joy_normal}「伯吉斯异兽」{}送入{C:attention}墓地",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_oleno = {
                name = "{C:joy_trap}伯吉斯异兽·拟油栉虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合{C:red}弃牌次数+#1#{}",
                        "并{C:attention}复活 #2#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_pikaia = {
                name = "{C:joy_trap}伯吉斯异兽·皮卡虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合{C:attention}手牌上限+#1#{}",
                        "并{C:attention}复活 #2#{}张{C:joy_normal}「伯吉斯异兽」",
                    },
                    {
                        "免疫削弱",
                    },
                }
            },
            j_joy_paleo_cambro = {
                name = "{C:joy_link}伯吉斯异兽·寒武耙虾",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张{C:joy_xyz}超量{}{C:joy_normal}「伯吉斯异兽」{}加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "{C:joy_normal}「伯吉斯异兽」{}{C:attention}复活{}其他牌为{C:dark_edition}负片{}版",
                    },
                    {
                        "免疫削弱",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}「伯吉斯异兽」{}",
                }
            },
            j_joy_paleo_anomalo = {
                name = "{C:joy_xyz}伯吉斯异兽·奇虾",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}素材：本回合获得{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#3#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_trap}陷阱{}反转表侧时，向此牌附加{C:attention}#4# {C:joy_xyz}素材{}",
                    },
                    {
                        "免疫削弱",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3+{}张{C:joy_trap}陷阱{}",
                }
            },
            j_joy_paleo_opa = {
                name = "{C:joy_xyz}伯吉斯异兽·欧巴宾海蝎",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}素材：生成{C:attention}#2#{}张{C:joy_normal}主卡组「伯吉斯异兽」{}",
                        "{C:inactive}(需有空位)"
                    },
                    {
                        "选择{C:attention}盲注{}时{C:joy_trap}陷阱{}自动{C:attention}反转{}为表侧",
                    },
                    {
                        "免疫削弱",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_water}水属性{}{C:attention}小丑牌{}",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_paleo = "伯吉斯异兽",
        }
    }
}