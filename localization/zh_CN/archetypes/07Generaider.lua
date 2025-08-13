return {
    descriptions = {
        Joker = {
            j_joy_token_generaider = {
                name = "{C:joy_token}星遗物衍生物",
                text = {
                    {
                        "本卡可作为任意{C:joy_token}衍生物{}使用",
                    },
                },
            },
            j_joy_generaider_loptr = {
                name = "{C:joy_effect}星遗物之影 洛普特",
                text = {
                    {
                        "击败首领盲注时自毁，生成{C:joy_spell}“星遗物的宝札”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_generaider_vala = {
                name = "{C:joy_effect}星遗物之巫女 瓦拉",
                text = {
                    {
                        "获得时，将{C:attention}#1#张{C:red}史诗{} {C:joy_normal}主牌组“星遗物”{}",
                        "送入{C:attention}墓地{}",
                    },
                    {
                        "击败首领盲注时自毁，",
                        "{C:attention}复活#2#张{C:red}史诗{} {C:joy_normal}“星遗物”{}",
                        "并生成{C:attention}#3#张{C:joy_effect}“星遗物之影 洛普特”{}",
                        "{C:inactive}（需有栏位）",
                    },
                },
            },
            j_joy_generaider_harr = {
                name = "{C:joy_effect}星遗物之岚 哈尔",
                text = {
                    {
                        "你可以{C:attention}解放#1#张{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}魔法师族{} {C:attention}小丑牌{}",
                        "以无效当前首领盲注的效果",
                    },
                },
            },
            j_joy_generaider_nidhogg = {
                name = "{C:joy_effect}星遗物之冰 尼德霍格",
                text = {
                    {
                        "你可以{C:attention}解放#1#张其他{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}幻龙族{} {C:attention}小丑牌{}",
                        "以本回合再次触发每张计分牌的效果",
                    },
                },
            },
            j_joy_generaider_frodi = {
                name = "{C:joy_effect}星遗物之剑 弗洛迪",
                text = {
                    {
                        "你可以{C:attention}解放{}任意数量的其他{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}战士族{} {C:attention}小丑牌{}",
                        "以本回合获得等量的手牌上限",
                    },
                },
            },
            j_joy_generaider_utgarda = {
                name = "{C:joy_effect}星遗物之幻 乌特加德",
                text = {
                    {
                        "你可以{C:attention}解放#1#张{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}岩石族{} {C:attention}小丑牌{}",
                        "以将消耗区的1张卡除外",
                        "直至选择盲注",
                    },
                },
            },
            j_joy_generaider_mardel = {
                name = "{C:joy_effect}星遗物之光 玛德尔",
                text = {
                    {
                        "每回合1次，你可{C:attention}解放#1#张{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}植物族{} {C:attention}小丑牌{}，生成{C:attention}#2#张",
                        "{C:blue}普通{}或{C:green}稀有{} {C:joy_normal}“星遗物”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_generaider_dovelgus = {
                name = "{C:joy_effect}星遗物之铁 多弗格斯",
                text = {
                    {
                        "每回合1次，你可{C:attention}解放#1#张其他{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}机械族{} {C:attention}小丑牌{}",
                        "以使每张{C:joy_normal}“星遗物”{}和{C:joy_normal}机械族{}怪兽",
                        "本回合提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_generaider_naglfar = {
                name = "{C:joy_effect}星遗物之火 纳吉尔法",
                text = {
                    {
                        "你可以{C:attention}解放#1#张{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}兽战士族{} {C:attention}小丑牌{}",
                        "以在本次盲注中获得{C:blue}+#2#{}手牌数和{C:red}+#3#{}弃牌次数",
                    },
                },
            },
            j_joy_generaider_hela = {
                name = "{C:joy_effect}星遗物之冥 海拉",
                text = {
                    {
                        "你可以{C:attention}解放#1#张{C:joy_normal}“星遗物”{}",
                        "和/或{C:joy_normal}不死族{} {C:attention}小丑牌{}，以{C:attention}复活#2#张",
                        "{C:red}史诗{} {C:joy_normal}“星遗物”{} {C:attention}小丑牌{}作为{C:dark_edition}负片{}",
                    },
                },
            },
            j_joy_generaider_jormungandr = {
                name = "{C:joy_xyz}星遗物之永恒 尤蒙刚德",
                text = {
                    {
                        "每有1个{C:joy_xyz}超量素材{}，{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "{C:joy_xyz}取除{} {C:attention}#3#{}个素材：永久",
                        "获得{C:attention}+#4#{}手牌上限",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:red}史诗{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}（超量、连接怪兽{}",
                    "{s:0.9,C:inactive}或衍生物除外）{}"
                }
            },
            j_joy_generaider_laevatein = {
                name = "{C:joy_xyz}星遗物之影 莱瓦汀",
                text = {
                    {
                        "{C:joy_xyz}取除{} {C:attention}#1#{}个素材：销毁所有其他{C:attention}小丑牌{}，并",
                        "生成1张{C:joy_xyz}“星遗物之永恒 尤蒙刚德”{}，",
                        "将墓地中所有卡作为{C:joy_xyz}超量素材{}装备给它",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:red}史诗{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}（超量、连接怪兽{}",
                    "{s:0.9,C:inactive}或衍生物除外）{}"
                }
            },
            j_joy_generaider_boss_stage = {
                name = "{C:joy_spell}星遗物的宝札",
                text = {
                    {
                        "持有本卡期间，每解放1张卡，{C:joy_normal}“星遗物”{}各提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                    },
                    {
                        "选择盲注时，尽可能生成{C:joy_token}“星遗物衍生物”{}",
                        "{C:inactive}（“星遗物”视为负片）{}",
                    },
                    {
                        "每回合1次，你可{C:attention}解放#3#张",
                        "{C:joy_token}“星遗物衍生物”{}，生成{C:attention}#4#张",
                        "未持有的{C:red}史诗{} {C:joy_normal}主牌组“星遗物”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_generaider = "星遗物",
        }
    }
}