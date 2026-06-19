return {
    descriptions = {
        Joker = {
            j_joy_token_bee = {
                name = "{C:joy_token}骑甲虫衍生物",
                text = {
                    {
                        "此卡牌可作为任意{C:joy_token}衍生物{}使用",
                    },
                },
            },
            j_joy_bee_scout = {
                name = "{C:joy_effect}骑甲虫 侦察虫车兵",
                text = {
                    {
                        "每张{C:joy_normal}昆虫族{}提供{C:mult}+#1#{}倍率",
                    },
                    {
                        "此卡牌{C:attention}上场{}时，尽可能多地生成",
                        "{C:joy_effect}“骑甲虫 侦察虫车兵”{}{C:inactive}（“骑甲虫 侦察虫车兵”自身除外）{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡牌",
                    }
                }
            },
            j_joy_bee_bomber = {
                name = "{C:joy_effect}骑甲虫 鳞粉炸弹兵",
                text = {
                    {
                        "{C:attention}墓地{}中每张{C:joy_normal}昆虫族{}提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "你可以{C:attention}解放1{}张{C:joy_normal}昆虫族{}",
                        "使本回合每张{C:joy_normal}昆虫族{}提供{X:mult,C:white}X#3#{}倍率"
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡牌",
                    }
                }
            },
            j_joy_bee_roller = {
                name = "{C:joy_effect}骑甲虫 突击滚球兵",
                text = {
                    {
                        "回合结束时每张{C:joy_normal}昆虫族{}提供{C:money}+$#1#{}金钱",
                        "{C:inactive}（当前{C:money}+$#2#{}{C:inactive}）"
                    },
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "生成{C:attention}1{}张{C:joy_normal}主卡组“骑甲虫”{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡牌",
                    }
                }
            },
            j_joy_bee_flapper = {
                name = "{C:joy_effect}骑甲虫 轻装振翅兵",
                text = {
                    {
                        "出售此卡牌，向你拥有的一张{C:joy_normal}昆虫族{}",
                        "施加一个{C:dark_edition}版本{}",
                        "{C:inactive}（负片除外）{}"
                    },
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "{C:attention}复活最多2{}张{C:joy_normal}昆虫族{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡牌",
                    }
                }
            },
            j_joy_bee_lancer = {
                name = "{C:joy_effect}骑甲虫 刺螫长枪兵",
                text = {
                    {
                        "你可以从{C:attention}墓地{}中移除所有{C:joy_normal}昆虫族{}{C:inactive}（至少5张）{}，",
                        "向{C:joy_spell}额外卡组{}添加{C:attention}1{}张{C:joy_normal}“骑甲虫”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "将{C:attention}5{}张{C:joy_normal}昆虫族{}送入{C:attention}墓地{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡牌",
                    }
                }
            },
            j_joy_bee_neptune = {
                name = "{C:joy_effect}重骑甲虫 强劲海神独角仙",
                text = {
                    {
                        "回合结束时从{C:attention}墓地{}中移除{C:attention}3{}张{C:joy_normal}昆虫族{}，",
                        "若如此做，则将此卡牌及任意数量的{C:joy_normal}昆虫族{}",
                        "{C:attention}除外{}，直至你剩下一个空的{C:attention}卡牌{}槽位",
                        "并持续至选择{C:attention}盲注{}时"
                    },
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "生成{C:attention}2{}张{C:joy_normal}主卡组“骑甲虫”{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡牌",
                    }
                }
            },
            j_joy_bee_armor = {
                name = "{C:joy_link}骑甲虫 武装犄角兵",
                text = {
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}3{}张{C:joy_normal}昆虫族{}",
                        "送入{C:attention}墓地{}",
                    },
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "将{C:attention}10{}张{C:joy_normal}昆虫族{}送入{C:attention}墓地{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}昆虫族{}",
                    "无需槽位",
                }
            },
            j_joy_bee_atlas = {
                name = "{C:joy_link}大骑甲虫 无敌擎天独角仙",
                text = {
                    {
                        "每张{C:joy_normal}昆虫族{}使其获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "每回合一次，你可以{C:attention}解放1{}张{C:joy_effect}效果{}{C:joy_normal}昆虫族{}，",
                        "尽可能多地生成{C:joy_token}“骑甲虫衍生物”{}",
                        "{C:inactive}（必须有槽位）"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}4{}张{C:joy_normal}昆虫族{}",
                    "无需槽位",
                }
            },
            j_joy_bee_saturnas = {
                name = "{C:joy_fusion}骑甲虫 残酷撒旦独角仙",
                text = {
                    {
                        "当一张{C:joy_normal}昆虫族{}被{C:attention}除外{}时，",
                        "生成{C:attention}1{}张{C:joy_normal}主卡组昆虫族{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "{C:attention}墓地{}中的卡牌对于{C:joy_normal}昆虫族{}的效果",
                        "视为已拥有",
                        "{C:inactive}（仅限原始种族）{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}昆虫族{}",
                    "无需槽位",
                }
            },
            j_joy_bee_hercules = {
                name = "{C:joy_fusion}超骑甲虫 绝对大力独角仙",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "底注结束时{C:attention}复活{}尽可能多的",
                        "不同名称的{C:joy_normal}昆虫族{}",
                        "{C:inactive}（无需槽位）{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}4{}张{C:joy_normal}昆虫族{}",
                    "无需槽位",
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            bee = {
                story = {
                    "曾有一群人，他们如同骑手驾驭坐骑般指挥昆虫，协同行动以扩张领地。他们被称为{C:joy_normal}“骑甲虫”{}，掌握着惊人的军事力量与独特的战术。其中，自然以三只拥有最强力量的巨型甲虫最为出众，自从这些由{C:joy_fusion}“超骑甲虫 {C:joy_fusion}绝对大力独角仙”{}率领的巨型甲虫踏入战场的那一刻起，战斗便已宣告结束。",
                },
                gameplay = {
                    "根据所有已知的空气动力学定律，蜜蜂绝不应该能占据{C:attention}卡牌{}槽位。全力以赴，尽可能多地获取{C:joy_normal}昆虫族{}吧！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_bee = "骑甲虫",
        }
    }
}