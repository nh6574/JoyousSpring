return {
    descriptions = {
        Joker = {
            j_joy_paleo_canadia = {
                name = "{C:joy_trap}古生物·加拿大",
                text = {
                    {
                        "每有1张{C:attention}小丑牌{C:attention}被翻转{}，{C:mult}+#1#{}倍数",
                        "{s:0.9,C:inactive}（即使背面表示也能获得）",
                        "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍数）",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活#3张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_dino = {
                name = "{C:joy_trap}古生物·三叶虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：这张卡和{C:attention}#1张其他陷阱小丑牌{}于回合结束时除外{}，",
                        "直至{C:attention}盲注{}被选择，并{C:attention}复活#2张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_eldonia = {
                name = "{C:joy_trap}古生物·埃迪卡拉",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合{C:chips}+#1#{}筹码",
                        "并{C:attention}复活#2张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_hallu = {
                name = "{C:joy_trap}古生物· hallucigenia",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合{C:mult}+#1#{}倍数",
                        "并{C:attention}复活#2张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_lean = {
                name = "{C:joy_trap}古生物·Leanchoilia",
                text = {
                    {
                        "每有1张{C:attention}小丑牌{C:attention}被翻转{}，{C:chips}+#1#{}筹码",
                        "{s:0.9,C:inactive}（即使背面表示也能获得）",
                        "{C:inactive}（当前{C:chips}+#2#{C:inactive}筹码）",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活#3张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_marrella = {
                name = "{C:joy_trap}古生物·马尔拉",
                text = {
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活#1张「古生物」{} ",
                        "并将{C:attention}#2张陷阱「古生物」{}送入{C:attention}墓地{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_oleno = {
                name = "{C:joy_trap}古生物· olenoides",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合弃牌次数{C:red}+#1#{}",
                        "并{C:attention}复活#2张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_pikaia = {
                name = "{C:joy_trap}古生物·皮卡虫",
                text = {
                    {
                        "{C:joy_effect}反转{}：本回合手牌上限{C:attention}+#1#{}",
                        "并{C:attention}复活#2张「古生物」{}",
                    },
                    {
                        "不会被弱化",
                    },
                }
            },
            j_joy_paleo_cambro = {
                name = "{C:joy_link}古生物·寒武纪",
                text = {
                    {
                        "召唤时，将{C:attention}#1张「古生物」超量{}小丑牌加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "{C:joy_normal}「古生物」{}的{C:attention}复活{}效果生成的卡牌为{C:dark_edition}负片{}",
                    },
                    {
                        "不会被弱化",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{C:joy_normal}「古生物」{}",
                }
            },
            j_joy_paleo_anomalo = {
                name = "{C:joy_xyz}古生物·奇虾",
                text = {
                    {
                        "{C:joy_xyz}取除{C:attention}#1个素材{}：本回合倍数{C:white,X:mult}X#2#{}",
                        "{C:inactive}（当前{C:white,X:mult}X#3#{C:inactive}倍数）",
                    },
                    {
                        "当1张{C:joy_trap}陷阱{}被翻转至表侧表示时，",
                        "给这张卡附着{C:attention}#4个超量素材{}",
                    },
                    {
                        "不会被弱化",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张以上{C:joy_trap}陷阱{}",
                }
            },
            j_joy_paleo_opa = {
                name = "{C:joy_xyz}古生物·欧巴宾海蝎",
                text = {
                    {
                        "{C:joy_xyz}取除{C:attention}#1个素材{}：生成{C:attention}#2张主卡组「古生物」{}",
                        "{C:inactive}（需有栏位）"
                    },
                    {
                        "选择{C:attention}盲注{}时，{C:joy_trap}陷阱{}被{C:attention}翻转{}至表侧表示",
                    },
                    {
                        "不会被弱化",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{C:joy_water}水属性{C:attention}小丑牌{}",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_paleo = "古生物",
        }
    }
}