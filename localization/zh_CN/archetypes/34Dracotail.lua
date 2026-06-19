return {
    descriptions = {
        Joker = {
            j_joy_dracotail_lukias = {
                name = "{C:joy_effect}星辰枪手 巨蟹魔",
                text = {
                    {
                        "在{C:attention}#1#{}张游戏牌被销毁后",
                        "生成{C:attention}1{}张{C:joy_normal}主卡组“星辰”{}",
                        "{C:inactive}（必须有槽位）（#2#/#1#）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}获得此效果",
                    },
                    {
                        "若每回合的{C:attention}第一手牌{}",
                        "恰好有{C:attention}3{}张牌，",
                        "销毁它们并向商店添加",
                        "一个{C:attention}巨型标准补充包{}"
                    }
                },
                joy_transfer_ability = {
                    "在{C:attention}#1#{}张游戏牌被销毁后",
                    "生成{C:attention}1{}张{C:joy_normal}主卡组“星辰”{}",
                    "{C:inactive}（必须有槽位）（#2#/#1#）",
                }
            },
            j_joy_dracotail_faimena = {
                name = "{C:joy_effect}星辰炮手 宝瓶座",
                text = {
                    {
                        "在{C:attention}#1#{}张游戏牌被销毁后",
                        "向{C:joy_spell}额外卡组{}添加一张{C:joy_normal}“星辰”{}{C:inactive}（#2#/#1#）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}获得此效果",
                    },
                    {
                        "若每回合的{C:attention}第二手牌{}",
                        "恰好有{C:attention}3{}张牌，",
                        "销毁它们并获得{C:attention}2个标准标签{}"
                    }
                },
                joy_transfer_ability = {
                    "在{C:attention}#1#{}张游戏牌被销毁后",
                    "向{C:joy_spell}额外卡组{}添加一张{C:joy_normal}“星辰”{}{C:inactive}（#2#/#1#）",
                }
            },
            j_joy_dracotail_phry = {
                name = "{C:joy_effect}星辰响手 金牛魔",
                text = {
                    {
                        "在{C:attention}#1#{}张游戏牌被销毁后",
                        "{C:attention}复活1{}张{C:joy_normal}“星辰”{}",
                        "{C:inactive}（“星辰响手 金牛魔”或“星辰爪龙 巨蟹摩羯龙魔”除外）（#2#/#1#）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}获得此效果",
                    },
                    {
                        "若每回合的{C:attention}第三手牌{}",
                        "恰好有{C:attention}3{}张牌，",
                        "销毁它们并向牌组添加{C:attention}5{}张",
                        "带有随机{C:attention}版本{}的游戏牌",
                    }
                },
                joy_transfer_ability = {
                    "在{C:attention}#1#{}张游戏牌被销毁后",
                    "{C:attention}复活1{}张{C:joy_normal}“星辰”{}",
                    "{C:inactive}（“星辰响手 金牛魔”或“星辰爪龙 巨蟹摩羯龙魔”除外）（#2#/#1#）",
                }
            },
            j_joy_dracotail_mululu = {
                name = "{C:joy_effect}星辰龙 天蝎龙",
                text = {
                    {
                        "打出一手牌后，使用此卡和打出手牌中的计分牌",
                        "作为素材，{C:attention}变形{}为",
                        "一张随机的{C:joy_normal}“星辰”{}",
                        "{C:inactive}（这视为融合召唤）{}",
                        "以此方式召唤的{C:joy_fusion}融合{}获得以下效果：",
                        "{s:0.9}回合结束时{C:attention}变形{}为{s:0.9,C:joy_effect}“星辰龙 天蝎龙”{}",
                    },
                },
                joy_transfer_ability = {
                    "回合结束时{C:attention}变形{}为{C:joy_effect}“星辰龙 天蝎龙”{}",
                }
            },
            j_joy_dracotail_urgula = {
                name = "{C:joy_effect}星辰龙 狮子龙",
                text = {
                    {
                        "本局游戏中每张被销毁的游戏牌",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}获得此效果",
                    },
                    {
                        "用作{C:attention}素材{}时，",
                        "向牌组添加{C:attention}#3#{}张随机的",
                        "{C:attention}强化{}游戏牌"
                    }
                },
                joy_transfer_ability = {
                    "本局游戏中每张被销毁的游戏牌",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                }
            },
            j_joy_dracotail_pan = {
                name = "{C:joy_effect}星辰龙 魔蝎龙",
                text = {
                    {
                        "本局游戏中每张被销毁的游戏牌",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}获得此效果",
                    },
                    {
                        "用作{C:attention}素材{}时，",
                        "向牌组添加{C:attention}#3#{}张",
                        "带有{C:attention}蜡封{}的随机游戏牌"
                    }
                },
                joy_transfer_ability = {
                    "本局游戏中每张被销毁的游戏牌",
                    "提供{C:chips}+#1#{}筹码",
                    "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）",
                }
            },
            j_joy_dracotail_shaulas = {
                name = "{C:joy_fusion}星辰铗龙 天蝎金牛龙魔",
                text = {
                    {
                        "此卡{C:attention}上场{}时，本局游戏中每张被销毁的游戏牌",
                        "提供{C:money}+$#1#{}金钱",
                        "并向{C:joy_spell}额外卡组{}添加一张{C:joy_normal}“星辰”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}",
                        "获得以下效果：",
                        "{s:0.9}召唤时，将本回合销毁的每张游戏牌的复制品",
                        "{s:0.9}以{C:dark_edition}负片{}状态添加到牌组",
                        "{s:0.9}但它们在回合结束时被移除",
                    },
                },
                joy_transfer_ability = {
                    "召唤时，将本回合销毁的每张游戏牌的复制品",
                    "以{C:dark_edition}负片{}状态添加到牌组",
                    "但它们在回合结束时被移除"
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}魔法师族{} +",
                    "{C:attention}1{}张{C:joy_normal}龙族{} +",
                    "手牌中的{C:attention}2{}张游戏牌"
                }
            },
            j_joy_dracotail_gulamel = {
                name = "{C:joy_fusion}星辰法宫 狮子宝瓶龙魔",
                text = {
                    {
                        "此卡{C:attention}上场{}时，销毁牌组中的{C:attention}#1#{}张牌",
                        "并向{C:joy_spell}额外卡组{}添加一张{C:joy_normal}“星辰”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}",
                        "获得以下效果：",
                        "{s:0.9}召唤时获得{s:0.9,C:attention}2个标准标签{}",
                    },
                },
                joy_transfer_ability = {
                    "召唤时获得{C:attention}2个标准标签{}",
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}魔法师族{} +",
                    "{C:attention}1{}张{C:joy_normal}龙族{} +",
                    "手牌中的{C:attention}2{}张游戏牌"
                }
            },
            j_joy_dracotail_arthalion = {
                name = "{C:joy_fusion}星辰爪龙 巨蟹摩羯龙魔",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向{C:joy_spell}额外卡组{}",
                        "添加一张{C:joy_normal}“星辰”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "根据其召唤所用的{C:attention}素材{}中的游戏牌",
                        "获得效果直至回合结束"
                    }
                },
                joy_extra_effects = {
                    m_bonus = {
                        text_description = {
                            "每张提供{C:chips}+#1#{}筹码"
                        },
                        text = {
                            "{C:chips}+#1#{}筹码"
                        }
                    },
                    m_mult = {
                        text_description = {
                            "每张提供{C:mult}+#1#{}倍率"
                        },
                        text = {
                            "{C:mult}+#1#{}倍率"
                        }
                    },
                    m_wild = {
                        text_description = {
                            "每张在回合结束时",
                            "{C:attention}复活 #1#{}张",
                            "{C:joy_normal}主卡组“星辰”{}"
                        },
                        text = {
                            "回合结束时{C:attention}复活 #1#{}张",
                            "{C:joy_normal}主卡组“星辰”{}"
                        }
                    },
                    m_glass = {
                        text_description = {
                            "额外提供{X:mult,C:white}X#1#{}倍率",
                            "且每张销毁一张随机打出的牌"
                        },
                        text = {
                            "额外提供{X:mult,C:white}X#1#{}倍率",
                            "并销毁{C:attention}#2#{}张随机打出的牌"
                        }
                    },
                    m_steel = {
                        text_description = {
                            "额外提供{X:mult,C:white}X#1#{}倍率",
                            "且每张使手牌中持有的计分牌",
                            "再次触发最多{C:attention}#2#{}次"
                        },
                        text = {
                            "额外提供{X:mult,C:white}X#1#{}倍率",
                            "并使手牌中持有的计分牌",
                            "再次触发最多{C:attention}#2#{}次"
                        }
                    },
                    m_stone = {
                        text_description = {
                            "每张提供{C:chips}+#1#{}筹码"
                        },
                        text = {
                            "{C:chips}+#1#{}筹码"
                        }
                    },
                    m_gold = {
                        text_description = {
                            "打出一手牌时",
                            "每张提供{C:money}+$#1#{}金钱"
                        },
                        text = {
                            "打出一手牌时提供{C:money}+$#1#{}金钱"
                        }
                    },
                    m_lucky = {
                        text_description = {
                            "每张使所有列出的",
                            "{C:green}几率{}{C:attention}翻倍{}"
                        },
                        text = {
                            "所有列出的几率翻{X:green,C:white}X#1#{}倍"
                        }
                    },
                    m_joy_hanafuda = {
                        text_description = {
                            "每张在回合结束时",
                            "生成{C:attention}#1#{}张",
                            "{C:joy_normal}主卡组“花札”{}"
                        },
                        text = {
                            "回合结束时生成{C:attention}#1#{}张",
                            "{C:joy_normal}主卡组“花札”{}"
                        }
                    },
                    e_foil = {
                        text_description = {
                            "每张提供{C:chips}+#1#{}筹码"
                        },
                        text = {
                            "{C:chips}+#1#{}筹码"
                        }
                    },
                    e_holo = {
                        text_description = {
                            "每张提供{C:mult}+#1#{}倍率"
                        },
                        text = {
                            "{C:mult}+#1#{}倍率"
                        }
                    },
                    e_polychrome = {
                        text_description = {
                            "每张额外提供{X:mult,C:white}X#1#{}倍率"
                        },
                        text = {
                            "额外提供{X:mult,C:white}X#1#{}倍率",
                        }
                    },
                    red_seal = {
                        text_description = {
                            "每张使打出手牌中的每张计分牌",
                            "再次触发{C:attention}#1#{}次"
                        },
                        text = {
                            "使打出手牌中的每张计分牌",
                            "再次触发{C:attention}#1#{}次"
                        }
                    },
blue_seal = {
                        text_description = {
                            "每张为打出的牌型",
                            "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                        },
                        text = {
                            "为打出的牌型生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                        }
                    },
                    gold_seal = {
                        text_description = {
                            "打出一手牌时",
                            "每张提供{C:money}+$#1#{}金钱"
                        },
                        text = {
                            "打出一手牌时提供{C:money}+$#1#{}金钱"
                        }
                    },
                    purple_seal = {
                        text_description = {
                            "每张在打出牌时，生成{C:attention}#1#{}张",
                            "{C:dark_edition}负片{}{C:attention}强化{}{C:tarot}塔罗牌{}",
                            "或{C:dark_edition}负片{}{C:attention}蜡封{}{C:spectral}幻灵牌{}"
                        },
                        text = {
                            "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:attention}强化{}{C:tarot}塔罗牌{}",
                            "或{C:dark_edition}负片{}{C:attention}蜡封{}{C:spectral}幻灵牌{}",
                        }
                    },
                    joy_purr_memory_seal = {
                        text_description = {
                            "每张在回合结束时",
                            "{C:attention}复活 #1#{}张",
                            "{C:joy_normal}主卡组“皮尔莉”{}{C:attention}卡牌{}"
                        },
                        text = {
                            "回合结束时{C:attention}复活 #1#{}张",
                            "{C:joy_normal}主卡组“皮尔莉”{}{C:attention}卡牌{}"
                        }
                    }
                },
                joy_summon_conditions = {
                    "手牌中的{C:attention}1{}张以上游戏牌 +",
                    "{C:attention}1{}张以上卡牌{}，",
                    "包含一张{C:joy_normal}“星辰”{}"
                }
            },
            j_joy_dracotail_arthalion_notsummoned = {
                name = "{C:joy_fusion}星辰爪龙 巨蟹摩羯龙魔",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向{C:joy_spell}额外卡组{}",
                        "添加一张{C:joy_normal}“星辰”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "根据其召唤所用的{C:attention}素材{}中的游戏牌",
                        "获得效果直至回合结束",
                        "{C:attention}（查看相关卡牌了解详情！）{}"
                    }
                },
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            dracotail = {
                story = {
                    "曾有一个隐居的观星者部落：{C:attention}星辰{}。他们鲜少离开自己的村落，也不干涉俗世之事，但当扰乱了他们村落安宁的东西出现时，他们便会使用代代相传的秘术，召唤龙族英勇地助其战斗。",
                },
                gameplay = {
                    "本系列与其他修改卡牌的主题搭配效果最佳！你收集得越多，{C:joy_fusion}“巨蟹摩羯龙魔”{}就会变得越强大！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_dracotail = "星辰",
            k_joy_arthalion_effects = "效果"
        }
    }
}