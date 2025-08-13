return {
    descriptions = {
        Joker = {
            j_joy_invoked_aleister = {
                name = "{C:joy_effect}召唤僧 艾克佐迪亚",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为1张{C:joy_normal}「召唤兽」{}",
                        "{C:inactive}（视为融合召唤）",
                    },
                    {
                        "以这张卡为{C:attention}素材{}召唤的{C:joy_fusion}融合{}小丑牌获得以下效果：",
                        "{s:0.9,C:chips}+#2#{s:0.9}筹码，每有1只本回合召唤的{s:0.9,C:joy_fusion}融合{s:0.9}小丑牌",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{}筹码，每有1只本回合召唤的{C:joy_fusion}融合{}小丑牌",
                    "{C:inactive}（当前{C:chips}+#2#{C:inactive}筹码）"
                }
            },
            j_joy_invoked_madness = {
                name = "{C:joy_link}召唤僧 疯狂艾克佐迪亚",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为1张{C:joy_normal}「召唤兽」{}",
                        "{C:inactive}（视为融合召唤）",
                    },
                    {
                        "作为{C:attention}素材{}用于{C:joy_fusion}融合{}召唤时，",
                        "生成{C:attention}#2张{C:joy_spell}「魔法熔化」{}",
                        "{C:inactive}（需有栏位）",
                    },
                    {
                        "以这张卡为{C:attention}素材{}召唤的{C:joy_fusion}融合{}小丑牌获得以下效果：",
                        "{s:0.9,C:mult}+#3#{s:0.9}倍数，每有1只本回合召唤的{s:0.9,C:joy_fusion}融合{s:0.9}小丑牌",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{}，",
                    "且类型和属性不同"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍数，每有1只本回合召唤的{C:joy_fusion}融合{}小丑牌",
                    "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍数）"
                }
            },
            j_joy_invoked_caliga = {
                name = "{C:joy_fusion}召唤兽 卡利古拉",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "每有1只本回合被{C:attention}献祭{}的{C:attention}小丑牌{}，倍数{C:white,X:mult}X#2#{}",
                        "{C:inactive}（当前{C:white,X:mult}X#3#{C:inactive}倍数）{}",
                    },
                    {
                        "「怪兽补充包」价格降低{C:money}$#4#{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1张{C:joy_dark}暗属性{C:attention}小丑牌{}",
                    "{s:0.8,C:inactive}（献祭非怪兽时为随机概率）"
                },
                joy_transfer_ability = {
                    "每有1只本回合被{C:attention}献祭{}的{C:attention}小丑牌{}，倍数{C:white,X:mult}X#1#{}",
                    "{C:inactive}（当前{C:white,X:mult}X#2#{C:inactive}倍数）{}",
                    " ",
                    "「怪兽补充包」价格降低{C:money}$#3#{}"
                }
            },
            j_joy_invoked_raidjin = {
                name = "{C:joy_fusion}召唤兽 雷电",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "每有1只本回合被{C:attention}翻转{}的{C:attention}小丑牌{}，倍数{C:white,X:mult}X#2#{}",
                        "{C:inactive}（当前{C:white,X:mult}X#3#{C:inactive}倍数）{}",
                    },
                    {
                        "选择{C:attention}盲注{}时，{C:attention}翻转#4张其他随机小丑牌{}至表侧表示",
                        "回合结束时，{C:attention}翻转#4张其他随机小丑牌{}至背面表示",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1张{C:joy_wind}风属性{C:attention}小丑牌{}",
                    "{s:0.8,C:inactive}（献祭非怪兽时为随机概率）"
                },
                joy_transfer_ability = {
                    "每有1只本回合被{C:attention}翻转{}的{C:attention}小丑牌{}，倍数{C:white,X:mult}X#1#{}",
                    "{C:inactive}（当前{C:white,X:mult}X#2#{C:inactive}倍数）{}",
                    " ",
                    "选择{C:attention}盲注{}时，{C:attention}翻转#3张其他随机小丑牌{}至表侧表示",
                    "回合结束时，{C:attention}翻转#3张其他随机小丑牌{}至背面表示",
                }
            },
            j_joy_invoked_cocytus = {
                name = "{C:joy_fusion}召唤兽 刻耳柏洛斯",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "降低{C:attention}盲注{}要求{C:red}#2#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1张{C:joy_water}水属性{C:attention}小丑牌{}",
                    "{s:0.8,C:inactive}（献祭非怪兽时为随机概率）"
                },
                joy_transfer_ability = {
                    "降低{C:attention}盲注{}要求{C:red}#1#%{}",
                }
            },
            j_joy_invoked_purgatorio = {
                name = "{C:joy_fusion}召唤兽 普尔加托里奥",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "每只{C:joy_fusion}融合{}小丑牌提供倍数{C:white,X:mult}X#2#{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1张{C:joy_fire}炎属性{C:attention}小丑牌{}",
                    "{s:0.8,C:inactive}（献祭非怪兽时为随机概率）"
                },
                joy_transfer_ability = {
                    "每只{C:joy_fusion}融合{}小丑牌提供倍数{C:white,X:mult}X#1#{}",
                }
            },
            j_joy_invoked_mage = {
                name = "{C:joy_fusion}召唤兽 墨丘利",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "{C:mult}+#2#{}倍数",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1张{C:joy_earth}地属性{C:attention}小丑牌{}",
                    "{s:0.8,C:inactive}（献祭非怪兽时为随机概率）"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍数",
                }
            },
            j_joy_invoked_mechaba = {
                name = "{C:joy_fusion}召唤兽 美加巴",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "本回合售出{C:attention}#2#张卡{}后，无效{C:attention}首领盲注{}效果",
                        "{C:inactive}（#3#/#2#）",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1张{C:joy_light}光属性{C:attention}小丑牌{}",
                    "{s:0.8,C:inactive}（献祭非怪兽时为随机概率）"
                },
                joy_transfer_ability = {
                    "本回合售出{C:attention}#1张卡{}后，无效{C:attention}首领盲注{}效果",
                    "{C:inactive}（#2#/#1#）"
                }
            },
            j_joy_invoked_augo = {
                name = "{C:joy_fusion}召唤兽 奥古斯都",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "每有1只{C:joy_fusion}融合{}小丑牌在{C:attention}墓地{}，倍数{C:white,X:mult}X#2#{}",
                        "{C:inactive}（当前{C:white,X:mult}X#3#{C:inactive}倍数）{}",
                    },
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}#4张非「召唤兽」融合{}小丑牌{}送入{C:attention}墓地{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1只融合{}小丑牌",
                    "{s:0.8,C:inactive}（优先于其他条件）",
                },
                joy_transfer_ability = {
                    "每有1只{C:joy_fusion}融合{}小丑牌在{C:attention}墓地{}，倍数{C:white,X:mult}X#1#{}",
                    "{C:inactive}（当前{C:white,X:mult}X#2#{C:inactive}倍数）{}",
                    " ",
                    "选择{C:attention}盲注{}时，将{C:attention}#3张非「召唤兽」融合{}小丑牌{}送入{C:attention}墓地{}",
                }
            },
            j_joy_invoked_elysium = {
                name = "{C:joy_fusion}召唤兽 厄里斯",
                text = {
                    {
                        "可{C:attention}献祭#1张其他小丑牌{}",
                        "将这张卡{C:attention}变形{}为{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "获得{C:attention}墓地{}中每只不同{C:joy_normal}「召唤兽」{}的效果",
                    },
                    {
                        "视为任意{C:attention}素材{}用于{C:joy_fusion}融合{}召唤，",
                        "且在拥有时视为任意{C:attention}属性{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}献祭1只已召唤的",
                    "非融合{}小丑牌",
                    "{s:0.8,C:inactive}（优先于其他条件）",
                }
            },
            j_joy_invoked_meltdown = {
                name = "{C:joy_spell}魔法熔化",
                text = {
                    {
                        "可{C:attention}献祭#1只融合{}小丑牌{}以生成{C:attention}#2张{C:joy_effect}「召唤僧 艾克佐迪亚」{}",
                    },
                    {
                        "每有1只本回合召唤的{C:joy_fusion}融合{}小丑牌，倍数{C:white,X:mult}X#3#{}",
                        "{C:inactive}（当前{C:white,X:mult}X#4#{C:inactive}倍数）{}",
                    },
                    {
                        "{C:joy_fusion}融合{}小丑牌不会被翻转或弱化",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_invoked = "召唤兽",
        }
    }
}