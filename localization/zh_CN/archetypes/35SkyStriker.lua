return {
    descriptions = {
        Joker = {
            j_joy_token_striker = {
                name = "{C:joy_token}闪刀姬衍生物",
                text = {
                    {
                        "此卡可作为任意{C:joy_token}衍生物{}使用",
                    },
                },
            },
            j_joy_striker_raye = {
                name = "{C:joy_effect}闪刀姬-零衣",
                text = {
                    {
                        "{C:planet}天体补充包{}中的卡牌可以",
                        "保存到消耗品区域"
                    },
                    {
                        "你可以{C:attention}解放1{}张{C:planet}星球牌{}",
                        "将此卡{C:attention}变形{}为对应的",
                        "{C:joy_normal}“闪刀姬”{}{C:joy_link}连接{}",
                        "{C:inactive}（这视为连接召唤）",
                        "以此方式召唤的{C:joy_link}连接{}获得以下效果：",
                        "{s:0.9}若打出的手牌包含",
                        "{s:0.9,C:attention}[对应被解放星球牌的牌型]{}，",
                        "{s:0.9}则提供{X:mult,C:white}X#1#{s:0.9}倍率",
                        "{s:0.9} ",
                        "{s:0.9}回合结束时{C:attention}变形{}为{s:0.9,C:joy_effect}“闪刀姬-零衣”{}",
                        " ",
                        "{s:0.9}使用此卡作为{s:0.9,C:attention}素材{}召唤的{s:0.9,C:joy_normal}“闪刀姬”{}",
                        "{s:0.9}也会转移此效果"
                    },
                },
                joy_transfer_ability = {
                    "若打出的手牌包含",
                    "{C:attention}#2#{}，",
                    "则提供{X:mult,C:white}X#1#{}倍率",
                    " ",
                    "回合结束时{C:attention}变形{}为{C:joy_effect}“闪刀姬-零衣”{}",
                    " ",
                    "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}“闪刀姬”{}",
                    "也会转移此效果"
                }
            },
            j_joy_striker_roze = {
                name = "{C:joy_effect}闪刀姬-露世",
                text = {
                    {
                        "每个商店添加{C:attention}1{}个{C:planet}天体补充包{}",
                    },
                    {
                        "此卡{C:attention}上场{}时，若未拥有{C:joy_effect}“闪刀姬-零衣”{}",
                        "则生成{C:attention}1{}张，否则向{C:joy_spell}额外卡组{}",
                        "添加{C:attention}1{}张{C:joy_normal}“闪刀姬”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_link}连接{}",
                        "获得以下效果：",
                        "{s:0.9}本局游戏中每张被{C:attention}解放{}的{C:planet}星球牌{}",
                        "{s:0.9}提供{C:mult}+#1#{s:0.9}倍率",
                        "{s:0.9} ",
                        "{s:0.9}回合结束时{C:attention}复活1{}张{s:0.9,C:joy_effect}“闪刀姬-零衣”{}"
                    },
                },
                joy_transfer_ability = {
                    "本局游戏中每张被{C:attention}解放{}的{C:planet}星球牌{}",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                    " ",
                    "回合结束时{C:attention}复活1{}张{C:joy_effect}“闪刀姬-零衣”{}"
                }
            },
            j_joy_striker_hamp = {
                name = "{C:joy_effect}闪术兵器-汉普",
                text = {
                    {
                        "拥有此卡时使用的{C:planet}星球牌{}",
                        "对效果而言视为被{C:attention}解放{}",
                    },
                    {
                        "本局游戏中每张被{C:attention}召唤{}的{C:joy_link}连接{}",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）",
                    }
                }
            },
            j_joy_striker_aileron = {
                name = "{C:joy_effect}艾乐隆",
                text = {
                    {
                        "若打出的手牌包含所拥有的",
                        "{C:joy_normal}“闪刀姬”{}{C:joy_link}连接{}",
                        "所对应{C:planet}星球牌{}的牌型，",
                        "则提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "出售此卡以生成",
                        "{C:attention}#2#{}张{C:planet}星球牌{}"
                    }
                }
            },
            j_joy_striker_cyanos = {
                name = "{C:joy_effect}未来之柱-奇亚诺丝",
                text = {
                    {
                        "击败{C:attention}首领盲注{}时",
                        "生成{C:attention}1{}张{C:joy_effect}“闪刀姬-露世”{}"
                    },
                    {
                        "出售此卡以生成",
                        "{C:attention}#2{}个流星标签{}"
                    }
                }
            },
            j_joy_striker_ciela = {
                name = "{C:joy_effect}慈爱之贤者-西埃拉",
                text = {
                    {
                        "此卡{C:attention}上场{}时",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                    },
                    {
                        "你可以销毁此卡，在{C:joy_trap}对手{}区域中",
                        "生成{C:attention}1{}张{C:joy_effect}“慈爱之贤者-西埃拉”{}"
                    }
                }
            },
            j_joy_striker_akash = {
                name = "{C:joy_effect}武之贤者-阿卡丝",
                text = {
                    {
                        "此卡{C:attention}上场{}时",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                    },
                    {
                        "你可以销毁此卡，在{C:joy_trap}对手{}区域中",
                        "生成{C:attention}1{}张{C:joy_effect}“武之贤者-阿卡丝”{}"
                    }
                }
            },
            j_joy_striker_himmel = {
                name = "{C:joy_effect}智之贤者-希默尔",
                text = {
                    {
                        "此卡{C:attention}上场{}时",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                    },
                    {
                        "你可以销毁此卡，在{C:joy_trap}对手{}区域中",
                        "生成{C:attention}1{}张{C:joy_effect}“智之贤者-希默尔”{}"
                    }
                }
            },
            j_joy_striker_areazero = {
                name = "{C:joy_spell}闪刀空域-零区",
                text = {
                    {
                        "{C:planet}星球牌{}可能出现",
                        "多次"
                    },
                    {
                        "打出一手牌且你拥有{C:joy_link}连接{}时，",
                        "生成{C:attention}1{}张被无效的{C:dark_edition}负片{}",
                        "{C:planet}星球牌{}对应此牌型"
                    },
                    {
                        "此卡被出售或{C:attention}解放{}时，",
                        "生成{C:attention}1{}张{C:joy_effect}“闪刀姬-零衣”{}"
                    }
                }
            },
            j_joy_striker_hayate = {
                name = "{C:joy_link}闪刀姬-飒天",
                text = {
                    {
                        "本回合每张被{C:attention}解放{}的{C:planet}星球牌{}",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）",
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#3#/3）{}：",
                        "本回合剩余时间内，每弃置一种牌型",
                        "便生成{C:attention}1{}张对应的{C:planet}星球牌{}",
                        "{C:inactive}（必须有槽位）"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张非{C:joy_wind}风属性{}{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}地球{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_kagari = {
                name = "{C:joy_link}闪刀姬-燎里",
                text = {
                    {
                        "本回合每张被{C:attention}解放{}的{C:planet}星球牌{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#3#/3）{}：",
                        "将此卡{C:attention}上场{}前本回合被{C:attention}解放{}的",
                        "所有{C:planet}星球牌{}以{C:dark_edition}负片{}状态生成",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张非{C:joy_fire}炎属性{}{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}火星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_shizuku = {
                name = "{C:joy_link}闪刀姬-雫空",
                text = {
                    {
                        "回合结束时，本回合每张被{C:attention}解放{}的{C:planet}星球牌{}",
                        "提供{C:money}+$#1#{}金钱",
                        "{C:inactive}（当前{C:money}+$#2#{}{C:inactive}）",
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#3#/3）{}：",
                        "回合结束时，为本回合召唤的每张",
                        "{C:joy_normal}“闪刀姬”{}生成一张对应的",
                        "{C:dark_edition}负片{}{C:planet}星球牌{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张非{C:joy_water}水属性{}{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}海王星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_kaina = {
                name = "{C:joy_link}闪刀姬-魁奈",
                text = {
                    {
                        "将所有拥有的{C:planet}星球牌{}变为{C:dark_edition}负片{}，",
                        "然后此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#1#/3）{}：",
                        "本回合剩余时间内，为拥有的每种不同",
                        "被{C:attention}解放{}的{C:planet}星球牌{}所对应的牌型{C:attention}升级{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张非{C:joy_earth}地属性{}{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}金星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
j_joy_striker_amatsu = {
                name = "{C:joy_link}试号闪刀姬-天津",
                text = {
                    {
                        "你可以{C:attention}解放{}一张{C:joy_normal}“闪刀姬”{}{C:joy_link}连接{}",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#2#/3）{}：",
                        "{C:attention}复活1{}张{C:joy_normal}“闪刀姬”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}冥王星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_zeke = {
                name = "{C:joy_link}闪刀姬-泽克",
                text = {
                    {
                        "此卡{C:attention}上场{}时，将除{C:planet}星球牌{}外的",
                        "所有{C:attention}消耗牌{}{C:attention}除外{}直至选择{C:attention}盲注{}，",
                        "若如此做，生成{C:attention}1{}张{C:dark_edition}负片{}",
                        "{C:joy_token}“闪刀姬衍生物”{}"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#1#/3）{}：",
                        "回合结束时将所有{C:joy_normal}“闪刀姬”{}",
                        "{C:attention}除外{}直至选择{C:attention}盲注{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}卡牌{}，",
                    "包含一张{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}木星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_azalea = {
                name = "{C:joy_link}闪刀姬-阿泽莉娅",
                text = {
                    {
                        "在{C:attention}盲注{}期间每张{C:planet}星球牌{}",
                        "被{C:attention}解放{}时抽一张牌"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "你可以{C:attention}解放1{}张{C:tarot}塔罗牌{}",
                        "将此卡{C:attention}变形{}为",
                        "{C:joy_link}“闪刀姬-阿泽莉娅·节制”{}",
                        "{C:inactive}（这视为连接召唤）{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_light}光属性{}和/或",
                    "{C:joy_dark}暗属性{}{C:attention}卡牌{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}天王星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
j_joy_striker_azaleatemp = {
                name = "{C:joy_link}闪刀姬-阿泽莉娅·节制",
                text = {
                    {
                        "此卡{C:attention}上场{}时，本局游戏中每张",
                        "使用的{C:tarot}女祭司{}使其售价增加",
                        "{C:money}+$#1#{}金钱",
                        "{C:inactive}（当前{C:money}+$#2#{}{C:inactive}）"
                    },
                    {
                        "此卡{C:attention}上场{}时，向{C:joy_spell}额外卡组{}",
                        "添加{C:attention}1{}张{C:joy_normal}“闪刀姬”{}",
                        "{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#3#/3）{}：",
                        "本回合剩余时间内，每当一张{C:planet}星球牌{}",
                        "被{C:attention}解放{}时，生成{C:attention}1{}张",
                        "{C:dark_edition}负片{}{C:tarot}女祭司{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}卡牌{}，",
                    "包含一张{C:joy_link}连接{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_camellia = {
                name = "{C:joy_link}闪刀姬-卡米丽娅",
                text = {
                    {
                        "选择{C:attention}盲注{}时，尽可能多地生成",
                        "你使用次数最多的牌型所对应的",
                        "{C:planet}星球牌{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:spectral}幻灵牌{}",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{}{C:planet}星球牌{}",
                        "并在{C:joy_trap}对手{}区域中生成一张",
                        "{C:joy_normal}“闪刀姬”{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_effect}效果{}{C:attention}卡牌{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}土星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_zero = {
                name = "{C:joy_link}闪刀姬=零露",
                text = {
                    {
                        "每种牌型等级超过{C:attention}1{}的部分",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#3#/3）{}：",
                        "生成{C:attention}1{}张{C:joy_effect}“闪刀姬-露世”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}“闪刀姬”{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}水星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_combined = {
                name = "{C:joy_link}合体术式-交闪零式",
                text = {
                    {
                        "{C:attention}墓地{}中每张{C:joy_normal}“闪刀姬”{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}#1#{}张",
                        "{C:joy_normal}“闪刀姬”{}送入{C:attention}墓地{}"
                    },
                    {
                        "一次，你可以{C:attention}解放1{}张{C:planet}星球牌{}，",
                        "若本回合已{C:attention}解放{}了{C:attention}3{}张或以上{C:inactive}（#3#/3）{}：",
                        "出售此卡以{C:attention}复活1{}张",
                        "{C:joy_effect}“闪刀姬-零衣”{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_light}光属性{}和/或",
                    "{C:joy_dark}暗属性{}{C:attention}卡牌{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放一张{C:attention}模组{}{C:planet}星球牌{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
            j_joy_striker_spectra = {
                name = "{C:joy_link}闪术兵器-斯佩克特拉",
                text = {
                    {
                        "若打出的手牌包含{C:attention}五条{}、",
                        "{C:attention}葫芦{}或{C:attention}同花五条{}，",
                        "则提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张随机{C:planet}星球牌{}",
                        "{s:0.9,C:inactive}（必须有槽位）",
                        "并向{C:joy_spell}额外卡组{}添加{C:attention}1{}张",
                        "{C:joy_normal}“闪刀姬”{}{s:0.9,C:inactive}（若可能，非本回合召唤的）{}",
                    },
                    {
                        "你可以{C:attention}解放{}所有{C:planet}星球牌{}{C:inactive}（至少3张）{}",
                        "使{C:attention}盲注{}需求降低{C:red}#2#%{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张{C:attention}卡牌{}，",
                    "包含一张{C:joy_link}连接{}",
                    "或使用{C:joy_effect}“闪刀姬-零衣”{}",
                    "{C:attention}解放{C:planet}冥王星X{}、",
                    "{C:planet}谷神星{}或{C:planet}阋神星{}",
                    "{C:inactive}（每回合只能召唤一次）{}"
                }
            },
        },
        joy_Opponent = {
            opp_joy_striker_ciela = {
                name = "{C:joy_effect}慈爱之贤者-西埃拉",
                text = {
                    {
                        "{C:green}#1#/#2#{}几率根据被{C:attention}解放{}的{C:planet}星球牌{}",
                        "{C:attention}升级{}对应的牌型",
                    }
                }
            },
            opp_joy_striker_akash = {
                name = "{C:joy_effect}武之贤者-阿卡丝",
                text = {
                    {
                        "回合结束时{C:attention}复活1{}张",
                        "本回合被{C:attention}解放{}的{C:joy_link}连接{}"
                    }
                }
            },
            opp_joy_striker_himmel = {
                name = "{C:joy_effect}智之贤者-希默尔",
                text = {
                    {
                        "回合结束时生成{C:attention}2{}张随机的",
                        "本回合被{C:attention}解放{}的{C:planet}星球牌{}"
                    }
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            striker = {
                story = {
                    "{C:joy_spell}“闪刀机”{}，以先进技术开发而成，旨在对抗某个强大的军事帝国。被托付了操控这些武器的关键——{C:joy_normal}“闪刀姬”{}——的少女，名为{C:joy_effect}“零衣”{}，为了守护故乡而在战场上驰骋。",
                },
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_striker = "闪刀姬",
            k_joy_archetype_striker_ace = "闪刀姬",
            k_joy_modded_hand = "模组牌型", -- As in, poker hands from mods
        }
    }
}