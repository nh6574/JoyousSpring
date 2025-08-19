return {
    descriptions = {
        Joker = {
            j_joy_lab_clock = {
                name = "{C:joy_effect}白银之城的狂时钟",
                text = {
                    {
                        "可解放{}此牌{C:attention}反转{}",
                        "手牌{C:attention}#1#{}张随机牌{C:inactive}(并洗牌){}",
                        "使其计分时永久获得{C:mult}+#2#{}倍率",
                        "并尽可能{C:attention}复活 #3#{}张{C:blue}普通{}{C:joy_normal}「拉比林斯迷宫」{}",
                        "{C:inactive}(「白银之城的狂时钟」除外){}",
                    },
                }
            },
            j_joy_lab_stovie = {
                name = "{C:joy_effect}白银之城的火吹炉",
                text = {
                    {
                        "可解放{}此牌和另1张小丑牌",
                        "{C:attention}反转{}手牌{C:attention}#1#{}张随机牌{C:inactive}(并洗牌){}",
                        "使其计分时永久获得{C:chips}+#2#{}筹码",
                        "若解放了{C:joy_normal}恶魔族{}则获得{C:money}+$#3#{}金钱",
                    },
                }
            },
            j_joy_lab_changdra = {
                name = "{C:joy_effect}白银之城的龙饰灯",
                text = {
                    {
                        "可解放{}此牌和另1张小丑牌",
                        "{C:attention}反转{}手牌{C:attention}#1#{}张随机牌{C:inactive}(并洗牌){}",
                        "使其计分时永久获得{C:money}+$#2#{}金钱",
                        "若解放了{C:joy_normal}恶魔族{}则生成{C:attention}#3#{}个随机标签",
                    },
                }
            },
            j_joy_lab_ariane = {
                name = "{C:joy_effect}白银之城的召使 阿里亚娜",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "下个{C:attention}盲注{}增加{C:attention}+#2#{}手牌上限",
                        "每张持有期间{C:attention}反转{}的游戏牌",
                    },
                    {
                        "若持有期间{C:attention}反转{}了{C:attention}#3#{}张或更多牌",
                        "下个商店添加{C:green}罕见{}{C:joy_normal}「拉比林斯迷宫」{}",
                        "{s:0.9,C:inactive}(本回合已反转#4#张)",
                    },
                }
            },
            j_joy_lab_arianna = {
                name = "{C:joy_effect}白银城的召使 阿里安娜",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "下个{C:attention}盲注{}增加{C:attention}+#2#{}手牌上限",
                        "每张持有期间{C:attention}反转{}的游戏牌",
                    },
                    {
                        "若持有期间{C:attention}反转{}了{C:attention}#3#{}张或更多牌",
                        "下个商店添加{C:blue}普通{}{C:joy_normal}「拉比林斯迷宫」{}",
                        "{s:0.9,C:inactive}(本回合已反转#4#张)",
                    },
                }
            },
            j_joy_lab_arias = {
                name = "{C:joy_effect}白银之城的执事 阿里亚斯",
                text = {
                    {
                        "持有期间每张{C:attention}反转{}的游戏牌",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码){}",
                    },
                    {
                        "若持有期间{C:attention}反转{}了{C:attention}#3#{}张或更多牌",
                        "下个商店添加{C:red}稀有{}{C:joy_normal}「拉比林斯迷宫」{}",
                        "{s:0.9,C:inactive}(本回合已反转#4#张)",
                    },
                    {
                        "若拥有{C:joy_normal}「拉比林斯迷宫」{}则免费",
                    },
                }
            },
            j_joy_lab_archfiend = {
                name = "{C:joy_effect}白银之城的魔神像",
                text = {
                    {
                        "墓地每张{C:joy_normal}恶魔族{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "当游戏牌被{C:attention}反转{}时",
                        "{C:attention}反转{}手牌1张随机牌{C:inactive}(并洗牌){}",
                    },
                }
            },
            j_joy_lab_lovely = {
                name = "{C:joy_effect}白银之城的拉比林斯",
                text = {
                    {
                        "有{C:green}#1#/#2#{}几率抽到{C:attention}反转{}牌",
                        "每张{C:joy_normal}恶魔族{}提高几率",
                    },
                    {
                        "每张被{C:attention}反转{}的牌提供{C:mult}+#3#{}倍率",
                        "{C:inactive}(当前{C:mult}+#4#{}{C:inactive}倍率){}",
                    },
                }
            },
            j_joy_lab_lady = {
                name = "{C:joy_effect}迷宫城的白银姬",
                text = {
                    {
                        "每张被{C:attention}反转{}的牌",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "非{C:joy_trap}陷阱{}的{C:joy_normal}恶魔族{}",
                        "{C:attention}反转{}时仍可触发非发动效果",
                        "{s:0.9,C:inactive}(包括此牌)",
                    },
                }
            },
            j_joy_lab_labyrinth = {
                name = "{C:joy_spell}白银之迷宫城",
                text = {
                    {
                        "每张{C:attention}反转的小丑牌{}提供{C:money}+$#1#{}金钱",
                    },
                    {
                        "当游戏牌被{C:attention}反转{}时，有{C:green}#2#/#3#{}几率",
                        "{C:attention}反转{}手牌{C:attention}#4#{}张牌{C:inactive}(并洗牌){}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_lab = "拉比林斯迷宫",
        }
    }
}