return {
    descriptions = {
        Joker = {
            j_joy_danger_jack = {
                name = "{C:joy_effect}危险！？ 杰克罗素梗？",
                text = {
                    {
                        "每有1次本回合触发的「危险！」{}破坏效果，{C:chips}+#1#{}筹码，",
                        "选择{C:attention}盲注{}时{C:chips}+#2#{}筹码，",
                        "{C:inactive}（当前{C:chips}+#3#{C:inactive}筹码）",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，生成{C:attention}#4张「危险！」{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_danger_tsuch = {
                name = "{C:joy_effect}危险！？ 槌之子？",
                text = {
                    {
                        "每有1次本回合触发的「危险！」{}破坏效果，{C:mult}+#1#{}倍数，",
                        "选择{C:attention}盲注{}时{C:mult}+#2#{}倍数",
                        "{C:inactive}（当前{C:mult}+#3#{C:inactive}倍数）",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，生成{C:attention}#4张「危险！」{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_danger_chup = {
                name = "{C:joy_effect}危险！ 卓柏卡布拉！",
                text = {
                    {
                        "回合结束时{C:money}+$#1#{}",
                        "选择{C:attention}盲注{}时增加{C:money}#2#{}",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，{C:attention}复活#3张「危险！」{}",
                    },
                }
            },
            j_joy_danger_moth = {
                name = "{C:joy_effect}危险！  mothman！",
                text = {
                    {
                        "弃牌次数{C:red}+#1#{}",
                        "选择{C:attention}盲注{}时增加{C:red}#2#{}",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，{C:attention}复活#3张「危险！」{}",
                    },
                }
            },
            j_joy_danger_dog = {
                name = "{C:joy_effect}危险！  狗人！",
                text = {
                    {
                        "降低{C:attention}盲注{}要求{C:red}#1#%{}",
                        "选择{C:attention}盲注{}时增加{C:red}#2#%{}",
                        "{s:0.9,C:inactive}（上限25%）",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，向商店添加{C:attention}#3张「危险！」{}",
                    },
                }
            },
            j_joy_danger_ness = {
                name = "{C:joy_effect}危险！  尼斯湖水怪！",
                text = {
                    {
                        "手牌上限{C:attention}+#1#{}",
                        "选择{C:attention}盲注{}时增加{C:attention}#2#{}",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，向商店添加{C:attention}#3张「危险！」{}",
                    },
                }
            },
            j_joy_danger_big = {
                name = "{C:joy_effect}危险！  大脚怪！",
                text = {
                    {
                        "每有1次本回合触发的「危险！」{}破坏效果，倍数{C:white,X:mult}X#1#{}，",
                        "选择{C:attention}盲注{}时倍数{C:white,X:mult}X#2#{}",
                        "{C:inactive}（当前{C:white,X:mult}X#3#{C:inactive}倍数）",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，销毁所有其他{C:attention}小丑牌{}",
                        "并为每只被销毁的小丑牌生成1张{C:joy_normal}「危险！」{}",
                        "{C:inactive}（需有栏位）"
                    },
                }
            },
            j_joy_danger_ogo = {
                name = "{C:joy_effect}危险！  奥戈波戈！",
                text = {
                    {
                        "每有1张「危险！」{}在{C:attention}墓地{}，{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{C:inactive}筹码）",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，将{C:attention}#3张「危险！」{}送入{C:attention}墓地{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_danger_thunder = {
                name = "{C:joy_effect}危险！  雷鸟！",
                text = {
                    {
                        "每有1次本回合触发的「危险！」{}破坏效果，筹码倍数{C:white,X:chips}X#1#{}，",
                        "选择{C:attention}盲注{}时筹码倍数{C:white,X:chips}X#2#{}",
                        "{C:inactive}（当前{C:white,X:chips}X#3#{C:inactive}筹码）",
                    },
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}（包括自身）",
                    },
                    {
                        "被「危险！」{}效果销毁时，销毁{C:attention}#4张其他小丑牌{}和所有{C:attention}消耗牌{}",
                        "并为每只被销毁的{C:attention}消耗牌{}向商店添加1张{C:joy_normal}「危险！」{}"
                    },
                }
            },
            j_joy_danger_realm = {
                name = "{C:joy_spell}危险领域！",
                text = {
                    {
                        "选择{C:attention}盲注{}时，销毁1张随机{C:attention}小丑牌{}",
                        "并获得{C:money}+$#1#{}",
                    },
                    {
                        "{C:joy_normal}「危险！」{}的{C:attention}复活{}和生成效果生成的卡牌为{C:dark_edition}彩色{}",
                    },
                }
            },
            j_joy_danger_disorder = {
                name = "{C:joy_spell}危险！  骚乱！  混乱！",
                text = {
                    {
                        "每有1张「危险！」{}在{C:attention}墓地{}，{C:mult}+#1#{}倍数",
                        "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍数）",
                    },
                    {
                        "选择{C:attention}盲注{}时，生成{C:attention}#3张「危险！」{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "所有非「危险！」{}小丑牌被弱化",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_danger = "危险！",
        }
    }
}