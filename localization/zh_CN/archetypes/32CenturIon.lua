return {
    descriptions = {
        Joker = {
            j_joy_centur_primera = {
                name = "{C:joy_effect}重骑士 普莉梅拉",
                text = {
                    {
                        "{C:mult}+#1#{}倍率"
                    },
                    {
                        "若此卡在{C:joy_link}副卡组{}中，",
                        "{C:joy_synchro}同调{}不能被无效或{C:attention}反转{}为里侧表示"
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_effect}“重骑士 普莉梅拉”{}，",
                        "并向商店添加{C:attention}1{}张{C:joy_spell}额外卡组{}{C:joy_normal}“百夫长骑士”{}"
                    }
                }
            },
            j_joy_centur_atrii = {
                name = "{C:joy_effect}龙骑士 阿特莉",
                text = {
                    {
                        "{C:chips}+#1#{}筹码"
                    },
                    {
                        "视为{C:joy_synchro}同调{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_effect}“龙骑士 阿特莉”{}，",
                        "并提供{C:attention}+#2#{}手牌上限直至回合结束"
                    }
                }
            },
            j_joy_centur_chimerea = {
                name = "{C:joy_effect}影骑士 奇美莉亚",
                text = {
                    {
                        "打出一手牌时获得{C:money}+$#1#{}金钱"
                    },
                    {
                        "若此卡在{C:joy_link}副卡组{}中，",
                        "商店中的{C:joy_synchro}同调{}免费"
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_effect}“影骑士 奇美莉亚”{}，",
                        "并向商店添加{C:attention}1{}张{C:joy_normal}主卡组“百夫长骑士”{}"
                    }
                }
            },
            j_joy_centur_trudea = {
                name = "{C:joy_effect}从骑士 特露迪娅",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "若此卡在{C:joy_link}副卡组{}中，",
                        "{C:joy_normal}“百夫长骑士”{}不能被{C:attention}反转{}为里侧表示"
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_effect}“从骑士 特露迪娅”{}，",
                        "并向商店添加{C:attention}1{}张{C:joy_spell}“起立吧百夫长骑士！”{}"
                    }
                }
            },
            j_joy_centur_gargoyle = {
                name = "{C:joy_effect}龙骑兵 石像怪2",
                text = {
                    {
                        "{X:chips,C:white}X#1#{}筹码"
                    },
                    {
                        "若此卡在{C:joy_link}副卡组{}中，",
                        "{C:attention}易腐{}卡牌提供{X:mult,C:white}X#2#{}倍率"
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_effect}“龙骑兵 石像怪2”{}，",
                        "并{C:attention}复活1{}张{C:joy_normal}“百夫长骑士”{}"
                    }
                }
            },
            j_joy_centur_emeth = {
                name = "{C:joy_effect}重骑兵 真理6",
                text = {
                    {
                        "计分手牌中最左侧的卡牌",
                        "再次触发两次"
                    },
                    {
                        "若此卡在{C:joy_link}副卡组{}中，",
                        "{C:attention}墓地{}中每张{C:joy_normal}“百夫长骑士”{}",
                        "使{C:joy_synchro}同调{}提供{C:mult}+#1#{}倍率"
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_effect}“重骑兵 真理6”{}，",
                        "并将{C:attention}2{}张{C:joy_normal}“百夫长骑士”{}送入{C:attention}墓地{}"
                    }
                }
            },
            j_joy_centur_primus = {
                name = "{C:joy_synchro}重骑士 普莉梅拉·普里姆斯",
                text = {
                    {
                        "本局游戏中每张被{C:attention}召唤{}的{C:joy_synchro}同调{}",
                        "使其获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "你可以{C:attention}解放{}此卡",
                        "和另一张{C:joy_synchro}同调{}，",
                        "向{C:joy_spell}额外卡组{}添加{C:attention}2张易腐{}{C:joy_normal}“百夫长骑士”{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                }
            },
            j_joy_centur_auxila = {
                name = "{C:joy_synchro}骑士皇 奥克西拉",
                text = {
                    {
                        "{C:joy_link}副卡组{}中每张卡牌",
                        "使其获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "用作{C:joy_synchro}同调{}的{C:attention}素材{}时，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_normal}主卡组“百夫长骑士”{}，",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张{C:joy_normal}“百夫长骑士”{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                }
            },
            j_joy_centur_legatia = {
                name = "{C:joy_synchro}骑士皇 雷加蒂娅",
                text = {
                    {
                        "将{C:joy_link}副卡组{}中的{C:joy_normal}“百夫长骑士”{}",
                        "视为已拥有进行计分",
                        "{C:inactive,s:0.85}（额外卡组卡牌必须先正确召唤）{}"
                    },
                    {
                        "回合结束时返回{C:joy_spell}额外卡组{}，",
                        "若如此做，本回合即使槽位已满",
                        "也允许跳过{C:joy_link}副卡组{}阶段"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}同调{}{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:joy_synchro}同调{}非{C:joy_synchro}调整{}",
                }
            },
            j_joy_centur_standup = {
                name = "{C:joy_spell}起立吧百夫长骑士！",
                text = {
                    {
                        "每回合一次，将用于召唤的所有卡牌",
                        "以{C:attention}易腐{}状态在{C:joy_link}副卡组{}中生成"
                    },
                    {
                        "若一张卡牌{C:attention}易腐{}失效，",
                        "在{C:joy_link}副卡组{}中生成{C:attention}1张易腐{}{C:joy_normal}“百夫长骑士”{}"
                    }
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            centur = {
                story = {
                    "{C:attention}百夫长骑士帝国{}，得益于一颗巨大魔法陨星的冲击而日益繁荣，但也因此受到了被称为{C:attention}‘暗影’{}的阴暗邪恶力量的威胁。{C:joy_effect}“普莉梅拉”{}，一个常在人后被说闲话的小女孩，与试图让她振作起来的{C:joy_effect}“特露迪娅”{}一起，提议与{C:joy_effect}“真理6”{}组成队伍。{C:attention}«我们要以这支队伍{C:attention}登上顶点！我们要成为{C:attention}最强的骑士！»{}{C:joy_effect}“普莉梅拉”{}和{C:joy_effect}“特露迪娅”{}全心全意地相信着这个目标。",
                },
                gameplay = {
                    "{C:joy_normal}“百夫长骑士”{}将{C:joy_link}副卡组{}变成了另一种力量来源！引入平衡机制后立刻推出一个打破它的主题，正是我们的拿手好戏！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_centur = "百夫长骑士",
        }
    }
}