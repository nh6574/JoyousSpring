return {
    descriptions = {
        Joker = {
            j_joy_ltwin_lilla = {
                name = "{C:joy_effect}直播☆双子 莉拉",
                text = {
                    {
                        "{C:chips}+#1#{} 筹码",
                    },
                    {
                        "获得时，若未持有，则生成{C:attention}#2#{} {C:joy_effect}“直播☆双子 基斯基尔”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_ltwin_kisikil = {
                name = "{C:joy_effect}直播☆双子 基斯基尔",
                text = {
                    {
                        "{C:mult}+#1#{} 倍率",
                    },
                    {
                        "获得时，若未持有，则生成{C:attention}#2#{} {C:joy_effect}“直播☆双子 莉拉”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
            },
            j_joy_ltwin_lilla_treat = {
                name = "{C:joy_effect}直播☆双子 莉拉的款待",
                text = {
                    {
                        "{C:red}+#1#{} 每回合弃牌次数",
                    },
                    {
                        "若持有{C:joy_normal}“基斯基尔”{}，则免费获得",
                    },
                },
            },
            j_joy_ltwin_lilla_sweet = {
                name = "{C:joy_effect}直播☆双子 莉拉的甜食",
                text = {
                    {
                        "{C:blue}+#1#{} 每回合手牌数",
                    },
                    {
                        "若持有{C:joy_normal}“基斯基尔”{}，则免费获得",
                    },
                },
            },
            j_joy_ltwin_kisikil_frost = {
                name = "{C:joy_effect}直播☆双子 基斯基尔的冰霜",
                text = {
                    {
                        "{C:attention}+#1#{} 手牌上限",
                    },
                    {
                        "若持有{C:joy_normal}“莉拉”{}，则免费获得",
                    },
                },
            },
            j_joy_etwin_kisikil_deal = {
                name = "{C:joy_link}邪恶★双子 基斯基尔的交易",
                text = {
                    {
                        "{C:mult}+#1#{} 倍率",
                        "{C:attention}+#2#{} 手牌上限",
                    },
                    {
                        "当选择{C:attention}盲注{}时，将{C:attention}#3#{} {C:joy_normal}主牌组“莉拉”{}送入{C:attention}墓地{}",
                    },
                    {
                        "作为{C:attention}素材{}用于{C:joy_link}连接{}召唤时，向{C:joy_spell}额外牌组{}添加{C:attention}#4#{} {C:joy_normal}“邪恶★双子”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}“基斯基尔”{}"
                }
            },
            j_joy_etwin_kisikil = {
                name = "{C:joy_link}邪恶★双子 基斯基尔",
                text = {
                    {
                        "{C:mult}+#1#{} 倍率",
                    },
                    {
                        "召唤时，若持有{C:joy_normal}“莉拉”{}，则永久获得{C:attention}+#2#{} 手牌上限",
                    },
                    {
                        "当选择{C:attention}盲注{}时，复活#3#{} {C:joy_link}“邪恶★双子 莉拉”{}（若没有则复活{C:attention}#3#{}",
                        "{C:joy_normal}“莉拉”{}）",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}小丑牌{}，",
                    "包含1只{C:joy_normal}“基斯基尔”{}"
                }
            },
            j_joy_etwin_lilla = {
                name = "{C:joy_link}邪恶★双子 莉拉",
                text = {
                    {
                        "{C:chips}+#1#{} 筹码",
                    },
                    {
                        "召唤时，若持有{C:joy_normal}“基斯基尔”{}，则获得{C:money}+$#2#{} 金钱",
                    },
                    {
                        "当选择{C:attention}盲注{}时，复活#3#{} {C:joy_link}“邪恶★双子 基斯基尔”{}（若没有则复活{C:attention}#3#{}",
                        "{C:joy_normal}“基斯基尔”{}）",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}小丑牌{}，",
                    "包含1只{C:joy_normal}“莉拉”{}"
                }
            },
            j_joy_etwin_kisikil_lilla = {
                name = "{C:joy_effect}邪恶★双子 基斯基尔&莉拉",
                text = {
                    {
                        "每有1只{C:joy_normal}“莉拉”{}在{C:attention}墓地{}，{C:chips}+#1#{} 筹码",
                        "每有1只{C:joy_normal}“基斯基尔”{}在{C:attention}墓地{}，{C:mult}+#2#{} 倍率",
                        "{C:inactive}（当前{C:chips}+#4#{} {C:inactive}筹码{} {C:mult}+#5#{} {C:inactive}倍率）{}",
                        "当选择{C:attention}盲注{}时，每有1只{C:joy_link}连接{}怪兽，{C:red}-#3#{} 弃牌次数",
                    },
                    {
                        "不能被{C:attention}复活{}",
                    },
                },
            },
            j_joy_etwin_sunny = {
                name = "{C:joy_link}邪恶★双子的麻烦 桑妮",
                text = {
                    {
                        "{C:chips}+#1#{} 筹码",
                        "{C:mult}+#2#{} 倍率",
                    },
                    {
                        "回合结束时，{C:attention}返回{}至{C:joy_spell}额外牌组{}并{C:attention}复活{}",
                        "{C:attention}#3#{} {C:joy_link}“邪恶★双子 基斯基尔”{}和{C:attention}#3#{} {C:joy_link}“邪恶★双子 莉拉”{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_link}“邪恶★双子”{}"
                }
            },
            j_joy_ltwin_channel = {
                name = "{C:joy_spell}直播☆双子频道",
                text = {
                    {
                        "在{C:attention}盲注{}期间，你可以{C:attention}解放#1#{}",
                        "{C:joy_normal}“基斯基尔”{}或{C:joy_normal}“莉拉”{} {C:joy_link}连接{}怪兽，以",
                        "{C:attention}翻倍{}当前获得的筹码",
                    },
                    {
                        "{C:attention}复活#2#{} {C:joy_normal}“基斯基尔”{}或{C:joy_normal}“莉拉”{}",
                        "在商店结束时",
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