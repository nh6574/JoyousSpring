return {
    descriptions = {
        Joker = {
            j_joy_danger_jack = {
                name = "{C:joy_effect}未界域的鹿角兔",
                text = {
                    {
                        "本局每触发{C:joy_normal}「未界域」{}能力时获得{C:chips}+#1#{}筹码",
                        "选择{C:attention}盲注{}时额外获得{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#3#{}{C:inactive}筹码)"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "生成{C:attention}#4#张{C:joy_normal}「未界域」{}卡牌",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_danger_tsuch = {
                name = "{C:joy_effect}未界域的槌子蛇",
                text = {
                    {
                        "本局每触发{C:joy_normal}「未界域」{}能力时获得{C:mult}+#1#{}倍率",
                        "选择{C:attention}盲注{}时额外获得{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#3#{}{C:inactive}倍率)"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "生成{C:attention}#4#张{C:joy_normal}「未界域」{}卡牌",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_danger_chup = {
                name = "{C:joy_effect}未界域的卓柏卡布拉",
                text = {
                    {
                        "回合结束时获得{C:money}+$#1#{}金钱",
                        "选择{C:attention}盲注{}时提升{C:money}#2#{}金钱"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "{C:attention}复活 #3#张{C:joy_normal}「未界域」{}"
                    },
                }
            },
            j_joy_danger_moth = {
                name = "{C:joy_effect}未界域的天蛾人",
                text = {
                    {
                        "{C:red}+#1#{}次弃牌机会",
                        "选择{C:attention}盲注{}时提升{C:red}#2#{}次"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "{C:attention}复活 #3#张{C:joy_normal}「未界域」{}"
                    },
                }
            },
            j_joy_danger_dog = {
                name = "{C:joy_effect}未界域的狼人",
                text = {
                    {
                        "降低{C:attention}盲注{}要求{C:red}#1#%{}",
                        "选择{C:attention}盲注{}时提升{C:red}#2#%{}",
                        "{s:0.9,C:inactive}(最高25%)"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "在商店添加{C:attention}#3#张{C:joy_normal}「未界域」{}"
                    },
                }
            },
            j_joy_danger_ness = {
                name = "{C:joy_effect}未界域的尼斯水怪",
                text = {
                    {
                        "{C:attention}+#1#{}手牌上限",
                        "选择{C:attention}盲注{}时提升{C:attention}#2#{}"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "在商店添加{C:attention}#3#张{C:joy_normal}「未界域」{}"
                    },
                }
            },
            j_joy_danger_big = {
                name = "{C:joy_effect}未界域的大脚怪",
                text = {
                    {
                        "本局每触发{C:joy_normal}「未界域」{}能力时获得{X:mult,C:white}X#1#{}倍率",
                        "选择{C:attention}盲注{}时额外获得{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#3#{}{C:inactive}倍率)"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "销毁所有其他{C:attention}小丑牌{}",
                        "并为每张生成{C:joy_normal}「未界域」{}卡牌",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_danger_ogo = {
                name = "{C:joy_effect}未界域的奥古布古",
                text = {
                    {
                        "{C:chips}+#1#{}筹码（{C:attention}墓地{}中每张{C:joy_normal}「未界域」{}）",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "将{C:attention}#3#张{C:joy_normal}「未界域」{}送入{C:attention}墓地{}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_danger_thunder = {
                name = "{C:joy_effect}未界域的雷鸟",
                text = {
                    {
                        "本局每触发{C:joy_normal}「未界域」{}能力时获得{X:chips,C:white}X#1#{}筹码",
                        "选择{C:attention}盲注{}时额外获得{X:chips,C:white}X#2#{}筹码",
                        "{C:inactive}(当前 {X:chips,C:white}X#3#{}{C:inactive}筹码)"
                    },
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "{C:inactive}(包含自身)"
                    },
                    {
                        "被{C:joy_normal}「未界域」{}能力销毁时",
                        "销毁{C:attention}#4#张其他{C:attention}小丑牌{}和所有{C:attention}消耗牌{}",
                        "并为每张销毁的{C:attention}消耗牌{}",
                        "在商店添加1张{C:joy_normal}「未界域」{}"
                    },
                }
            },
            j_joy_danger_realm = {
                name = "{C:joy_spell}未界域-幽魔里亚大陆",
                text = {
                    {
                        "选择{C:attention}盲注{}时销毁1张随机{C:attention}小丑牌{}",
                        "并获得{C:money}+$#1#{}金钱"
                    },
                    {
                        "{C:joy_normal}「未界域」{}的{C:attention}复活{}和生成效果",
                        "会生成{C:dark_edition}全息{}卡牌"
                    },
                }
            },
            j_joy_danger_disorder = {
                name = "{C:joy_spell}激动的未界域",
                text = {
                    {
                        "{C:mult}+#1#{}倍率（{C:attention}墓地{}中每张{C:joy_normal}「未界域」{}）",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "生成{C:attention}#3#张{C:joy_normal}「未界域」{}",
                        "{C:inactive}(需有空位)"
                    },
                    {
                        "所有非{C:joy_normal}「未界域」{}卡牌会被弱化"
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_danger = "未界域",
        }
    }
}