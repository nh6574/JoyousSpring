return {
    descriptions = {
        Joker = {
            j_joy_token_generaider = {
                name = "{C:joy_token}王战团队衍生物",
                text = {
                    {
                        "此牌可视为任意{C:joy_token}衍生物{}",
                    },
                },
            },
            j_joy_generaider_loptr = {
                name = "{C:joy_effect}王战之影 洛普特",
                text = {
                    {
                        "击败{C:attention}首领盲注{}时销毁自身",
                        "生成{C:joy_spell}「王战的舞台」{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_generaider_vala = {
                name = "{C:joy_effect}王战之咒 伐拉",
                text = {
                    {
                        "获得时将{C:attention}#1#{}张{C:red}稀有{}",
                        "主卡组「王战」送入{C:attention}墓地{}",
                    },
                    {
                        "击败{C:attention}首领盲注{}时销毁自身",
                        "{C:attention}复活 #2#{}张{C:red}稀有{}「王战」{}",
                        "并生成{C:attention}#3#{}张{C:joy_effect}「王战之影 洛普特」{}",
                        "{C:inactive}(需有空位)",
                    },
                },
            },
            j_joy_generaider_harr = {
                name = "{C:joy_effect}轰界王战 哈尔王",
                text = {
                    {
                        "可解放{C:attention}#1#{}张{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}魔法师族{}小丑牌",
                        "无效当前{C:attention}首领盲注{}",
                    },
                },
            },
            j_joy_generaider_nidhogg = {
                name = "{C:joy_effect}冰界王战 尼德霍格王",
                text = {
                    {
                        "可解放{C:attention}#1#{}张其他{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}幻龙族{}小丑牌",
                        "使所有计分牌再次触发",
                    },
                },
            },
            j_joy_generaider_frodi = {
                name = "{C:joy_effect}剑界王战 弗罗德王",
                text = {
                    {
                        "可解放{}任意数量其他{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}战士族{}小丑牌",
                        "获得等量手牌上限",
                    },
                },
            },
            j_joy_generaider_utgarda = {
                name = "{C:joy_effect}虚界王战 乌特加德王",
                text = {
                    {
                        "可解放{C:attention}#1#{}张{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}岩石族{}小丑牌",
                        "将消耗牌区的1张牌{C:attention}除外{}",
                        "直到选择{C:attention}盲注{}",
                    },
                },
            },
            j_joy_generaider_mardel = {
                name = "{C:joy_effect}光界王战 玛多尔女王",
                text = {
                    {
                        "每回合可解放{C:attention}#1#{}张{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}植物族{}小丑牌生成{C:attention}#2#{}张",
                        "{C:blue}普通{}或{C:green}罕见{}「王战」{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_generaider_dovelgus = {
                name = "{C:joy_effect}铁界王战 矮人联合王",
                text = {
                    {
                        "每回合可解放{C:attention}#1#{}张其他{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}机械族{}小丑牌",
                        "使所有{C:joy_normal}「王战」{}和{C:joy_normal}机械族{}",
                        "提供{X:mult,C:white}X#2#{}倍率",
                    },
                },
            },
            j_joy_generaider_naglfar = {
                name = "{C:joy_effect}炎界王战 纳吉尔法王",
                text = {
                    {
                        "可解放{C:attention}#1#{}张{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}兽战士族{}小丑牌",
                        "获得{C:blue}+#2#{}出牌次数和{C:red}+#3#{}弃牌次数",
                    },
                },
            },
            j_joy_generaider_hela = {
                name = "{C:joy_effect}死界王战 赫尔女王",
                text = {
                    {
                        "可解放{C:attention}#1#{}张{C:joy_normal}「王战」{}",
                        "和/或{C:joy_normal}不死族{}小丑牌{C:attention}复活 #2#{}张",
                        "{C:red}稀有{}「王战」{}为{C:dark_edition}负片{}版",
                    },
                },
            },
            j_joy_generaider_jormungandr = {
                name = "{C:joy_xyz}永界王战 欧姆刚德王",
                text = {
                    {
                        "每个{C:joy_xyz}超量素材{}提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "{C:joy_xyz}去除{} {C:attention}#3#{}个素材：永久",
                        "增加{C:attention}+#4#{}手牌上限",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:red}稀有{}小丑牌",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})"
                }
            },
            j_joy_generaider_laevatein = {
                name = "{C:joy_xyz}影界王战 雷瓦汀王",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}个素材：销毁所有其他小丑牌",
                        "并生成{C:joy_xyz}「永界王战 欧姆刚德王」{}",
                        "将墓地所有牌作为其{C:joy_xyz}超量素材{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5{}张{C:red}稀有{}小丑牌",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})"
                }
            },
            j_joy_generaider_boss_stage = {
                name = "{C:joy_spell}王战的舞台",
                text = {
                    {
                        "每张{C:joy_normal}「王战」{}根据持有期间",
                        "解放的牌数提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "尽可能生成{C:joy_token}「王战团队衍生物」{}",
                        "{C:inactive}(「王战」视为负片版){}",
                    },
                    {
                        "每回合可解放{C:attention}#3#{}张",
                        "{C:joy_token}「王战团队衍生物」{}生成{C:attention}#4#{}张",
                        "未拥有的{C:red}稀有{}主卡组「王战」{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_generaider = "王战",
        }
    }
}