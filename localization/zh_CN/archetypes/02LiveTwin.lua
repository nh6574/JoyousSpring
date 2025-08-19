return {
    descriptions = {
        Joker = {
            j_joy_ltwin_lilla = {
                name = "{C:joy_effect}直播☆双子 璃拉",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "获得时若未拥有{C:joy_effect}「直播☆双子 姬丝基勒」{}",
                        "生成{C:attention}#2#{}张该牌",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_ltwin_kisikil = {
                name = "{C:joy_effect}直播☆双子 姬丝基勒",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "获得时若未拥有{C:joy_effect}「直播☆双子 璃拉」{}",
                        "生成{C:attention}#2#{}张该牌",
                        "{C:inactive}(需有空位){}",
                    },
                },
            },
            j_joy_ltwin_lilla_treat = {
                name = "{C:joy_effect}直播☆双子 璃拉·糖果",
                text = {
                    {
                        "每回合{C:red}+#1#{}次弃牌",
                    },
                    {
                        "若拥有「姬丝基勒」则免费",
                    },
                },
            },
            j_joy_ltwin_lilla_sweet = {
                name = "{C:joy_effect}直播☆双子 璃拉·甜蜜",
                text = {
                    {
                        "每回合{C:blue}+#1#{}次出牌",
                    },
                    {
                        "若拥有「姬丝基勒」则免费",
                    },
                },
            },
            j_joy_ltwin_kisikil_frost = {
                name = "{C:joy_effect}直播☆双子 姬丝基勒·霜精",
                text = {
                    {
                        "{C:attention}+#1#{}手牌上限",
                    },
                    {
                        "若拥有「璃拉」则免费",
                    },
                },
            },
            j_joy_etwin_kisikil_deal = {
                name = "{C:joy_link}邪恶★双子 姬丝基勒·交易",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                        "{C:attention}+#2#{}手牌上限",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "将{C:attention}#3#{}张主卡组「璃拉」送入{C:attention}墓地{}",
                    },
                    {
                        "作为{C:joy_link}连接{}素材使用时",
                        "将{C:attention}#4#{}张{C:joy_normal}「邪恶★双子」加入{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}「姬丝基勒」{}"
                }
            },
            j_joy_etwin_kisikil = {
                name = "{C:joy_link}邪恶★双子 姬丝基勒",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "召唤时若拥有「璃拉」",
                        "永久增加{C:attention}+#2#{}手牌上限",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "复活{C:attention}#3#{}张{C:joy_link}「邪恶★双子 璃拉」{}",
                        "{C:inactive}(若无则复活{C:attention}#3#{}张「璃拉」{})",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}小丑牌{}",
                    "包含{C:joy_normal}「姬丝基勒」{}"
                }
            },
            j_joy_etwin_lilla = {
                name = "{C:joy_link}邪恶★双子 璃拉",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "召唤时若拥有「姬丝基勒」",
                        "获得{C:money}+$#2#{}金钱",
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "复活{C:attention}#3#{}张{C:joy_link}「邪恶★双子 姬丝基勒」{}",
                        "{C:inactive}(若无则复活{C:attention}#3#{}张「姬丝基勒」{})",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}小丑牌{}",
                    "包含{C:joy_normal}「璃拉」{}"
                }
            },
            j_joy_etwin_kisikil_lilla = {
                name = "{C:joy_effect}邪恶★双子星 姬丝基勒&璃拉",
                text = {
                    {
                        "墓地中每张「璃拉」提供{C:chips}+#1#{}筹码",
                        "墓地中每张「姬丝基勒」提供{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前{C:chips}+#4#{}{C:inactive}筹码 {C:mult}+#5#{}{C:inactive}倍率){}",
                        "选择{C:attention}盲注{}时，每张{C:joy_link}连接{}牌减少{C:red}#3#{}次弃牌",
                    },
                    {
                        "无法被{C:attention}复活{}",
                    },
                },
            },
            j_joy_etwin_sunny = {
                name = "{C:joy_link}邪恶★双子克星 麻烦·桑妮",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                        "{C:mult}+#2#{}倍率",
                    },
                    {
                        "回合结束时{C:attention}返回{}至{C:joy_spell}额外卡组{}",
                        "并{C:attention}复活{}",
                        "{C:attention}#3#{}张{C:joy_link}「邪恶★双子 姬丝基勒」{}和{C:attention}#3#{}张{C:joy_link}「邪恶★双子 璃拉」{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_link}「邪恶★双子」{}"
                }
            },
            j_joy_ltwin_channel = {
                name = "{C:joy_spell}直播☆双子频道",
                text = {
                    {
                        "在{C:attention}盲注{}阶段，可解放{C:attention}#1#{}张",
                        "{C:joy_normal}「姬丝基勒」或「璃拉」{C:joy_link}连接{}牌",
                        "使当前筹码{C:attention}翻倍{}",
                    },
                    {
                        "商店结束时{C:attention}复活{}",
                        "{C:attention}#2#{}张「姬丝基勒」或「璃拉」",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ltwin = "直播☆双子",
        }
    }
}