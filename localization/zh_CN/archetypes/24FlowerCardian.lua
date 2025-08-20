return {
    descriptions = {
        Joker = {
            j_joy_cardian_pine = {
                name = "{C:joy_effect}花札卫-松",
                text = {
                    {
                        "打出的{C:joy_link}正月{}和{C:joy_link}二月{} {C:attention}花札牌{}",
                        "每张提供{C:mult}+#1#{}倍率（每张持有或{C:attention}墓地{}中的{C:joy_normal}「花札卫」{}）",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#3#张牌：",
                        "{s:0.9}- {s:0.9,C:spades}黑桃{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}正月{s:0.9}或{s:0.9,C:joy_link}二月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_effect}「花札卫-松上鹤」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至{s:0.9,C:attention}BOSS盲注{s:0.9}）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_crane = {
                name = "{C:joy_effect}花札卫-松上鹤",
                text = {
                    {
                        "手牌中的{C:joy_link}正月{}和{C:joy_link}二月{} {C:attention}花札牌{}",
                        "每张提供{C:mult}+#1#{}倍率"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#2#张牌：",
                        "{s:0.9}- {s:0.9,C:spades}黑桃{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}正月{s:0.9}或{s:0.9,C:joy_link}二月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#4#张",
                        "{s:0.9,C:joy_effect}「花札卫-松」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_cherry = {
                name = "{C:joy_effect}花札卫-樱",
                text = {
                    {
                        "打出的{C:joy_link}三月{}和{C:joy_link}四月{} {C:attention}花札牌{}",
                        "每张提供{C:mult}+#1#{}倍率（每张持有或{C:attention}墓地{}中的{C:joy_normal}「花札卫」{}）",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#3#张牌：",
                        "{s:0.9}- {s:0.9,C:hearts}红心{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}三月{s:0.9}或{s:0.9,C:joy_link}四月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_effect}「花札卫-樱上幕帘」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至{s:0.9,C:attention}BOSS盲注{s:0.9}）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_curtain = {
                name = "{C:joy_effect}花札卫-樱上幕帘",
                text = {
                    {
                        "手牌中的{C:joy_link}三月{}和{C:joy_link}四月{} {C:attention}花札牌{}",
                        "每张提供{C:mult}+#1#{}倍率"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#2#张牌：",
                        "{s:0.9}- {s:0.9,C:hearts}红心{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}三月{s:0.9}或{s:0.9,C:joy_link}四月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#4#张",
                        "{s:0.9,C:joy_effect}「花札卫-樱」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_butterfly = {
                name = "{C:joy_effect}花札卫-牡丹上蝴蝶",
                text = {
                    {
                        "打出的{C:joy_link}六月{} {C:attention}花札牌{}提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#2#张牌：",
                        "{s:0.9}- {s:0.9,C:joy_link}六月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}- {s:0.9,C:joy_link}光属性{s:0.9}花札{s:0.9}：向{s:0.9,C:joy_spell}额外卡组{s:0.9}",
                        "{s:0.9}添加{s:0.9,C:attention}#4#{s:0.9}张{s:0.9,C:joy_normal}「花札卫」{s:0.9} {C:inactive}(需有空位)",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_normal}「花札卫」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_boar = {
                name = "{C:joy_effect}花札卫-萩间猪",
                text = {
                    {
                        "打出的{C:joy_link}七月{} {C:attention}花札牌{}提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#2#张牌：",
                        "{s:0.9}- {s:0.9,C:joy_link}七月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}- {s:0.9,C:joy_link}光属性{s:0.9}花札{s:0.9}：向{s:0.9,C:joy_spell}额外卡组{s:0.9}",
                        "{s:0.9}添加{s:0.9,C:attention}#4#{s:0.9}张{s:0.9,C:joy_normal}「花札卫」{s:0.9} {C:inactive}(需有空位)",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_normal}「花札卫」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_zebra = {
                name = "{C:joy_effect}花札卫-芒",
                text = {
                    {
                        "打出的{C:joy_link}八月{}和{C:joy_link}九月{} {C:attention}花札牌{}",
                        "每张提供{C:money}+$#1#{}金钱（每张持有或{C:attention}墓地{}中的{C:joy_normal}「花札卫」{}）",
                        "{C:inactive}(当前 {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#3#张牌：",
                        "{s:0.9}- {s:0.9,C:clubs}梅花{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}八月{s:0.9}或{s:0.9,C:joy_link}九月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_effect}「花札卫-芒上月」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至{s:0.9,C:attention}BOSS盲注{s:0.9}）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_moon = {
                name = "{C:joy_effect}花札卫-芒上月",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "{s:0.9}- {s:0.9,C:clubs}梅花{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}八月{s:0.9}或{s:0.9,C:joy_link}九月{s:0.9}花札{s:0.9}：每张发掘出的",
                        "{s:0.9,C:attention}花札牌{s:0.9}抽{s:0.9,C:attention}#2#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#3#张",
                        "{s:0.9,C:joy_effect}「花札卫-芒」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_deer = {
                name = "{C:joy_effect}花札卫-枫间鹿",
                text = {
                    {
                        "打出的{C:joy_link}十月{} {C:attention}花札牌{}提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#2#张牌：",
                        "{s:0.9}- {s:0.9,C:joy_link}十月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}- {s:0.9,C:joy_link}光属性{s:0.9}花札{s:0.9}：在商店添加{s:0.9,C:attention}#4#{s:0.9}张",
                        "{s:0.9,C:joy_normal}「花札卫」{s:0.9}",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_normal}「花札卫」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_willow = {
                name = "{C:joy_effect}花札卫-柳",
                text = {
                    {
                        "打出的{C:joy_link}十一月{} {C:attention}花札牌{}",
                        "每张提供{C:money}+$#1#{}金钱（每张持有或{C:attention}墓地{}中的{C:joy_normal}「花札卫」{}）",
                        "{C:inactive}(当前 {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#3#张牌：",
                        "{s:0.9}- {s:0.9,C:attention}人头牌{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}十一月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_effect}「花札卫-柳间小野道风」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至{s:0.9,C:attention}BOSS盲注{s:0.9}）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_calligrapher = {
                name = "{C:joy_effect}花札卫-柳间小野道风",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "{s:0.9}- {s:0.9,C:attention}人头牌{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}十一月{s:0.9}花札{s:0.9}：{s:0.9,C:attention}复活 #2#{s:0.9}张{s:0.9,C:joy_normal}「花札卫」",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#3#张",
                        "{s:0.9,C:joy_effect}「花札卫-柳」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_paulownia = {
                name = "{C:joy_effect}花札卫-桐",
                text = {
                    {
                        "打出的{C:joy_link}五月{}和{C:joy_link}十二月{} {C:attention}花札牌{}",
                        "每张提供{C:mult}+#1#{}倍率（每张持有或{C:attention}墓地{}中的{C:joy_normal}「花札卫」{}）",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#3#张牌：",
                        "{s:0.9}- {s:0.9,C:diamonds}方片{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}五月{s:0.9}或{s:0.9,C:joy_link}十二月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#5#张",
                        "{s:0.9,C:joy_effect}「花札卫-桐上凤凰」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至{s:0.9,C:attention}BOSS盲注{s:0.9}）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_phoenix = {
                name = "{C:joy_effect}花札卫-桐上凤凰",
                text = {
                    {
                        "手牌中的{C:joy_link}五月{}和{C:joy_link}十二月{} {C:attention}花札牌{}",
                        "每张提供{C:mult}+#1#{}倍率"
                    },
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#3#张牌：",
                        "{s:0.9}- {s:0.9,C:diamonds}方片{s:0.9}：转化为随机{s:0.9,C:attention}花札牌{s:0.9}",
                        "{s:0.9}- {s:0.9,C:joy_link}五月{s:0.9}或{s:0.9,C:joy_link}十二月{s:0.9}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}否则销毁自身并生成{s:0.9,C:attention}#4#张",
                        "{s:0.9,C:joy_effect}「花札卫-桐」{s:0.9}（{s:0.9,C:attention}除外{s:0.9}至回合结束）"
                    },
                    {
                        "若持有其他{C:joy_normal}「花札卫」{}",
                        "可在无空位时从商店获取，且",
                        "回合结束时生成{C:attention}1张{C:joy_spell}「花之盛宴」{}"
                    }
                }
            },
            j_joy_cardian_boardefly = {
                name = "{C:joy_synchro}花札卫-猪鹿蝶",
                text = {
                    {
                        "打出{C:attention}花札{}牌型时",
                        "为每张计分牌添加随机{C:attention}蜡封{}"
                    },
                    {
                        "若回合最后牌型为{C:attention}花札{}",
                        "回合结束时根据该牌型打出的{C:joy_link}兽族{}花札牌数量",
                        "{C:attention}除外 #1#张小丑牌{}",
                        "直到选择{C:attention}盲注{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "本局打出过{C:attention}5张{C:joy_link}兽族{}",
                    "{C:attention}花札牌{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
            j_joy_cardian_moonflower = {
                name = "{C:joy_synchro}花札卫-月花见",
                text = {
                    {
                        "首次抽牌时，每张{C:joy_normal}「花札卫」{}",
                        "额外抽{C:attention}#1#张牌"
                    },
                    {
                        "打出{C:attention}花札{}牌型时",
                        "所有{C:attention}花札牌{}均计分",
                        "然后抽取等同于计分牌数量的牌"
                    },
                    {
                        "可作为任何{C:attention}素材{}用于{C:joy_synchro}同调召唤{}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "本局打出过{C:attention}3张{C:joy_mod}菊上杯{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
            j_joy_cardian_lightshower = {
                name = "{C:joy_synchro}花札卫-五光",
                text = {
                    {
                        "每张{C:joy_normal}「花札卫」{}提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "{C:joy_mod}柳间小野道风{}和{C:joy_mod}菊上杯{} {C:attention}花札牌{}",
                        "始终计分并提供{X:mult,C:white}X#2#{}倍率"
                    },
                    {
                        "打出{C:attention}花札{}牌型时",
                        "将牌组中{C:attention}#3#张随机未强化牌",
                        "转化为随机{C:attention}花札牌{}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "本局打出过{C:attention}3张{C:joy_link}光属性{}",
                    "{C:attention}花札牌{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
            j_joy_cardian_lightflare = {
                name = "{C:joy_synchro}花札卫-雨四光",
                text = {
                    {
                        "每张发掘出的{C:attention}花札牌{}提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}花札牌{}视为所有{C:joy_link}月份{}和{C:joy_link}种类{}",
                        "用于其他{C:joy_normal}「花札卫」{}能力，且视为所有花色",
                        "并不受{C:attention}盲注{}弱化影响"
                    },
                    {
                        "若打出牌型包含{C:attention}雨四光{}、{C:attention}月花见{}",
                        "或{C:attention}赤短青短{}",
                        "{C:attention}复活 #3#张{C:dark_edition}负片{}的{C:joy_normal}「花札卫」{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "本局打出过{C:attention}5张{C:joy_link}光属性{}",
                    "{C:attention}花札牌{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
        },
        Planet = {
            c_joy_cardian_koikoi = {
                name = "{C:joy_spell}超来来",
                text = {
                    "所有{C:attention}花札{}牌型",
                    "等级提升1级"
                },
            },
        },
        Tarot = {
            c_joy_cardian_gathering = {
                name = "{C:joy_spell}花之盛宴",
                text = {
                    "将所选卡牌",
                    "强化为{C:attention}#1#张花札牌"
                },
            },
        },
        Enhanced = {
            m_joy_hanafuda = {
                name = "花札牌",
                text = {
                    {
                        "打出相同{C:joy_link}月份{}的另一张花札牌时",
                        "或打出{C:attention}花札{}牌型时提供{C:mult}+#4#{}倍率"
                    },
                    {
                        "{C:joy_mod}#1#",
                        "{C:joy_link}#2#{} / {C:joy_link}#3#",
                    }
                }
            },
            m_joy_hanafuda_chaff = {
                name = "花札牌",
                text = {
                    {
                        "{C:mult}+#4#{}倍率",
                        "在{C:attention}花札{}牌型中始终计分"
                    },
                    {
                        "{C:joy_mod}#1#",
                        "{C:joy_link}#2#{} / {C:joy_link}#3#",
                    }
                }
            },
            m_joy_hanafuda_fake = {
                name = "花札牌",
                text = {
                    {
                        "打出相同{C:joy_link}月份{}的另一张牌时提供{C:mult}+20{}/{C:mult}10{}/{C:mult}5{}倍率",
                        "或在{C:attention}花札{}牌型中计分",
                        "若为{C:joy_link}杂牌{}则提供{C:mult}+1{}倍率",
                        "并在{C:attention}花札{}牌型中计分",
                        "{C:inactive}(月份/种类随机)"
                    }
                }
            }
        },
        Back = {
            b_joy_hanafuda = {
                name = "{C:joy_spell}叠花之术",
                text = {
                    "开局获得",
                    "所有随机",
                    "{C:attention,T:m_joy_hanafuda}花札牌{}"
                }
            }
        },
        Sleeve = {
            sleeve_joy_hanafuda = {
                name = "{C:joy_spell}花札牌组",
                text = {
                    "开局获得",
                    "所有随机",
                    "{C:attention,T:m_joy_hanafuda}花札牌{}"
                }
            },
            sleeve_joy_hanafuda_alt = {
                name = "{C:joy_spell}花札牌套",
                text = {
                    "开局获得所有{C:attention,T:m_joy_hanafuda}花札牌{}",
                    "而非随机牌，额外获得",
                    "{C:joy_mod}菊上杯"
                }
            },
        },
        Other = {
            joy_tooltip_koikoihand = {
                name = "花札牌型",
                text = {
                    "{C:attention}花札牌{}的组合"
                },
            }
        },
    },
    misc = {
        poker_hands = {
            joy_cardian_chaff = "杂牌",
            joy_cardian_ribbons = "短册",
            joy_cardian_blueribbon = "青短",
            joy_cardian_redpoem = "赤短",
            joy_cardian_redpoemblueribbon = "赤短青短",
            joy_cardian_animals = "兽族",
            joy_cardian_boardefly = "猪鹿蝶",
            joy_cardian_flowerviewing = "花见酒",
            joy_cardian_moonviewing = "月花见",
            joy_cardian_moonflowerviewing = "花月见",
            joy_cardian_lightwave = "四光",
            joy_cardian_lightshower = "五光",
            joy_cardian_lightshow = "四光",
            joy_cardian_lightflare = "雨四光",
        },
        poker_hand_descriptions = {
            joy_cardian_chaff = {
                "5张{C:joy_link}杂牌{} {C:attention}花札牌{}",
                "（或{C:joy_mod}菊上杯{}）"
            },
            joy_cardian_ribbons = {
                "5张{C:joy_link}短册 {C:attention}花札牌{}",
            },
            joy_cardian_blueribbon = {
                "{C:joy_mod}牡丹上绶{}、{C:joy_mod}菊上绶{}",
                "和{C:joy_mod}枫上绶{} {C:attention}花札牌{}",
                "至多2张未计分牌"
            },
            joy_cardian_redpoem = {
                "{C:joy_mod}松上绶{}、{C:joy_mod}樱上绶{}",
                "和{C:joy_mod}梅上绶{} {C:attention}花札牌{}",
                "至多2张未计分牌"
            },
            joy_cardian_redpoemblueribbon = {
                "任意5张：{C:joy_mod}牡丹上绶{}、{C:joy_mod}菊上绶{}、",
                "{C:joy_mod}枫上绶{}、{C:joy_mod}松上绶{}、",
                "{C:joy_mod}樱上绶{}或{C:joy_mod}梅上绶{} {C:attention}花札牌{}",
            },
            joy_cardian_animals = {
                "5张{C:joy_link}兽族{} {C:attention}花札牌{}",
            },
            joy_cardian_boardefly = {
                "{C:joy_mod}萩间猪{}、{C:joy_mod}鹿上枫{}",
                "和{C:joy_mod}蝶上牡丹{} {C:attention}花札牌{}",
                "至多2张{C:joy_link}兽族{}花札牌",
                "和/或至多2张未计分牌"
            },
            joy_cardian_flowerviewing = {
                "至多5张{C:joy_mod}菊上杯{}和",
                "{C:joy_mod}樱上幕帘{} {C:attention}花札牌{}",
                "至多3张未计分牌"
            },
            joy_cardian_moonviewing = {
                "至多5张{C:joy_mod}菊上杯{}和",
                "{C:joy_mod}芒上月{} {C:attention}花札牌{}",
                "至多3张未计分牌"
            },
            joy_cardian_moonflowerviewing = {
                "牌型包含{C:attention}月花见{}和{C:attention}花见酒{}",
                "至多2张未计分牌"
            },
            joy_cardian_lightwave = {
                "3张不同月份的{C:joy_link}光属性{} {C:attention}花札牌{}",
                "{C:inactive}(除柳间小野道风)"
            },
            joy_cardian_lightshower = {
                "4张不同月份的{C:joy_link}光属性{} {C:attention}花札牌{}",
                "包含{C:joy_mod}柳间小野道风"
            },
            joy_cardian_lightshow = {
                "4张不同月份的{C:joy_link}光属性{} {C:attention}花札牌{}",
                "{C:inactive}(除柳间小野道风)"
            },
            joy_cardian_lightflare = {
                "5张不同{C:joy_link}月份{}的{C:joy_link}光属性{} {C:attention}花札牌{}",
            },
        },
        dictionary = {
            k_joy_archetype_cardian = "花札卫",
            k_joy_all_koikoi_hands = "所有花札牌型",
            k_joy_hanafuda_month = "月份",
            k_joy_hanafuda_type = "种类",
            --#region Months
            k_joy_hanafuda_january = "正月",
            k_joy_hanafuda_february = "二月",
            k_joy_hanafuda_march = "三月",
            k_joy_hanafuda_april = "四月",
            k_joy_hanafuda_may = "五月",
            k_joy_hanafuda_june = "六月",
            k_joy_hanafuda_july = "七月",
            k_joy_hanafuda_august = "八月",
            k_joy_hanafuda_september = "九月",
            k_joy_hanafuda_october = "十月",
            k_joy_hanafuda_november = "十一月",
            k_joy_hanafuda_december = "十二月",
            --#endregion
            --#region Types
            k_joy_hanafuda_light = "光属性",
            k_joy_hanafuda_animal = "兽族",
            k_joy_hanafuda_ribbon = "短册",
            k_joy_hanafuda_chaff = "杂牌",
            --#endregion
            --#region Names
            ["k_joy_hanafuda_Pine with Crane"] = "松上鹤",
            ["k_joy_hanafuda_Pine with Ribbon"] = "松上绶",
            ["k_joy_hanafuda_Pine"] = "松",

            ["k_joy_hanafuda_Plum Blossom with White-eye"] = "梅上目白",
            ["k_joy_hanafuda_Plum Blossom with Ribbon"] = "梅上绶",
            ["k_joy_hanafuda_Plum Blossom"] = "梅",

            ["k_joy_hanafuda_Cherry Blossom with Curtain"] = "樱上幕帘",
            ["k_joy_hanafuda_Cherry Blossom with Ribbon"] = "樱上绶",
            ["k_joy_hanafuda_Cherry Blossom"] = "樱",

            ["k_joy_hanafuda_Wisteria with Cuckoo"] = "藤上杜鹃",
            ["k_joy_hanafuda_Wisteria with Ribbon"] = "藤上绶",
            ["k_joy_hanafuda_Wisteria"] = "藤",

            ["k_joy_hanafuda_Water Iris with Bridge"] = "菖蒲上桥",
            ["k_joy_hanafuda_Water iris with Ribbon"] = "菖蒲上绶",
            ["k_joy_hanafuda_Water iris"] = "菖蒲",

            ["k_joy_hanafuda_Peony with Butterfly"] = "牡丹上蝴蝶",
            ["k_joy_hanafuda_Peony with Ribbon"] = "牡丹上绶",
            ["k_joy_hanafuda_Peony"] = "牡丹",

            ["k_joy_hanafuda_Clover with Boar"] = "萩间猪",
            ["k_joy_hanafuda_Clover with Ribbon"] = "猪上绶",
            ["k_joy_hanafuda_Clover"] = "猪",

            ["k_joy_hanafuda_Zebra Grass with Moon"] = "芒上月",
            ["k_joy_hanafuda_Zebra Grass with Geese"] = "芒上雁",
            ["k_joy_hanafuda_Zebra Grass"] = "芒",

            ["k_joy_hanafuda_Chrysanthemum with Sake"] = "菊上杯",
            ["k_joy_hanafuda_Chrysanthemum with Ribbon"] = "菊上绶",
            ["k_joy_hanafuda_Chrysanthemum"] = "菊",

            ["k_joy_hanafuda_Maple with Deer"] = "枫间鹿",
            ["k_joy_hanafuda_Maple with Ribbon"] = "枫上绶",
            ["k_joy_hanafuda_Maple"] = "枫",

            ["k_joy_hanafuda_Willow with Calligrapher"] = "柳间小野道风",
            ["k_joy_hanafuda_Willow with Swallow"] = "柳上燕",
            ["k_joy_hanafuda_Willow with Ribbon"] = "柳上绶",
            ["k_joy_hanafuda_Willow"] = "柳",

            ["k_joy_hanafuda_Paulownia with Phoenix"] = "桐上凤凰",
            ["k_joy_hanafuda_Paulownia"] = "桐",
            --#endregion
        }
    }
}