return {
    descriptions = {
        Joker = {
            j_joy_sub_fiendess = {
                name = "{C:joy_effect}影依恶魔 菲恩黛丝",
                text = {
                    {
                        "每回合1次，你可以{C:attention}翻面{}本卡",
                        "与另1张{C:attention}小丑牌{}为里侧",
                        "以{C:attention}复活#1#张{C:joy_normal}“影依”{}并使其为{C:dark_edition}负片{}",
                    },
                }
            },
            j_joy_sub_defender = {
                name = "{C:joy_effect}影依守护者",
                text = {
                    {
                        "每有1张{C:joy_normal}“影依”{}或里侧{C:attention}小丑牌{}，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）{}",
                    },
                    {
                        "出售本卡以{C:attention}全部翻面为表侧{}",
                    },
                }
            },
            j_joy_sub_archer = {
                name = "{C:joy_effect}影依弓手",
                text = {
                    {
                        "每底注1次，你可以{C:attention}翻面{}本卡",
                        "与另1张{C:attention}小丑牌{}为里侧",
                        "以生成{C:attention}#1#张{C:dark_edition}负片{} {C:blue}普通{}或",
                        "{C:green}稀有{} {C:joy_normal}“影依”{}",
                    },
                }
            },
            j_joy_sub_warrior = {
                name = "{C:joy_effect}影依战士",
                text = {
                    {
                        "你可以{C:attention}解放{}本卡与另1张{C:attention}小丑牌{}",
                        "以{C:attention}复活#1#张{C:joy_normal}“影依巨兽”{}或{C:joy_normal}“影依”{}，若无前者",
                    },
                    {
                        "{C:joy_effect}反转{}：将{C:attention}#2#张{C:joy_normal}“影依巨兽”{}送入{C:attention}墓地{}",
                    },
                }
            },
            j_joy_sub_guru = {
                name = "{C:joy_effect}影依导师",
                text = {
                    {
                        "盲注期间每回合1次，",
                        "你可以{C:attention}翻面{}本卡与{C:attention}#1#张其他{C:attention}小丑牌{}：",
                        "本回合，本卡每有1张{C:attention}里侧}{C:joy_normal}小丑牌{}提供{X:mult,C:white}X#2#{}倍率",
                        "每有1张{C:attention}表侧}{C:joy_normal}小丑牌{}提供{C:attention}+#3#{}手牌上限",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                    {
                        "{C:joy_effect}反转{}：生成{C:attention}#4#张{C:blue}普通{}或{C:green}稀有{} {C:joy_normal}“影依”{}",
                        "{C:inactive}（需有栏位）",
                    },
                    {
                        "选择盲注时{C:attention}翻面为表侧{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_stygo = {
                name = "{C:joy_effect}影依巨兽 斯提古·克拉肯",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合每有1张里侧卡提供{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "击败首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_drago = {
                name = "{C:joy_effect}影依巨兽 德拉古舍利",
                text = {
                    {
                        "{C:joy_effect}反转{}：为1张{C:joy_normal}“影依”{}或里侧{C:attention}小丑牌{}附加随机版本",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "击败首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_uma = {
                name = "{C:joy_effect}影依巨兽 乌玛斯特里克斯",
                text = {
                    {
                        "{C:joy_effect}反转{}：回合结束时{C:attention}除外#1#张其他{C:attention}小丑牌{}",
                        "直至选择盲注",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "击败首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_phos = {
                name = "{C:joy_effect}影依巨兽 磷光冰川",
                text = {
                    {
                        "每有1张{C:joy_normal}“影依”{}或{C:joy_normal}水族{}在{C:attention}墓地{}，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）{}",
                    },
                    {
                        "{C:joy_effect}反转{}：将{C:attention}#3#张{C:joy_normal}“影依”{}送入{C:attention}墓地{}",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "击败首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_volt = {
                name = "{C:joy_effect}影依巨兽 伏尔特勒里克",
                text = {
                    {
                        "每有1张里侧卡，{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "{C:joy_effect}反转{}：将手中所有卡{C:attention}翻面为里侧{}（并洗牌）",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "选择首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_stala = {
                name = "{C:joy_effect}影依巨兽 斯塔拉格莫",
                text = {
                    {
                        "{C:joy_effect}反转{}：抽{C:attention}#1#张里侧卡",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "选择首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_speleo = {
                name = "{C:joy_effect}影依巨兽 斯佩勒幽灵",
                text = {
                    {
                        "每有1张卡被{C:attention}翻面{}，本卡获得{X:mult,C:white}X#1#{}倍率",
                        "{s:0.9,C:inactive}（即使里侧也获得）",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "{C:joy_effect}反转{}：将所有其他{C:attention}小丑牌{}翻面为表侧",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "击败首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_ultra = {
                name = "{C:joy_effect}影依巨兽 乌拉特拉玛弗斯",
                text = {
                    {
                        "每有1张里侧卡，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）{}",
                    },
                    {
                        "{C:joy_effect}反转{}：将所有其他{C:attention}小丑牌{}翻面为里侧",
                    },
                    {
                        "获得时{C:attention}翻面为里侧{}",
                        "击败首领盲注时{C:attention}翻面{}",
                        "{s:0.9,C:inactive}（即使里侧也生效）",
                    },
                }
            },
            j_joy_sub_befiendess = {
                name = "{C:joy_link}影依巨兽 恶魔菲恩黛丝",
                text = {
                    {
                        "每有1个{C:attention}素材{}用于其召唤，{C:chips}+#1#{}筹码，",
                        "每有1张{C:joy_normal}“影依”{}被用作素材，{C:mult}+#2#{}倍率",
                        "{C:inactive}（当前{C:chips}+#3#{} {C:inactive}筹码与{C:mult}+#4#{} {C:inactive}倍率）{}",
                    },
                    {
                        "每回合1次，你可{C:attention}翻面",
                        "{C:attention}#5#张小丑牌{}以生成{C:attention}#6#张{C:joy_normal}“影依巨兽”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:joy_effect}反转{}或",
                    "里侧{C:attention}小丑牌{}"
                }
            },
            j_joy_sub_city = {
                name = "{C:joy_spell}潜藏之城",
                text = {
                    {
                        "每回合1次，你可{C:attention}翻面一张{C:attention}小丑牌{}",
                    },
                    {
                        "当{C:joy_normal}怪兽{} {C:attention}小丑牌{}被{C:attention}翻面为里侧{}时，",
                        "或非{C:joy_normal}怪兽{} {C:attention}小丑牌{}被{C:attention}翻面为表侧{}时，",
                        "{C:money}+$#1#{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_sub = "影依",
        }
    }
}