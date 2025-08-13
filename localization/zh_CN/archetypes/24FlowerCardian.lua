-- 文件 1：24FlowerCardian.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_cardian_pine = {
                name = "{C:joy_effect}花札卫-松",
                text = {
                    {
                        "计分牌中包含{C:joy_link}一月{C:attention}和{C:joy_link}二月{C:attention}花札牌",
                        "每拥有或在{C:attention}墓地{C:joy_normal}“花札卫”{C:attention}1{C:joy_normal}张，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#3#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:spades}黑桃{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}一月{s:0.9}或{s:0.9,C:joy_link}二月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-松与鹤”{s:0.9}被放逐至{s:0.9,C:attention}首领盲注"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_crane = {
                name = "{C:joy_effect}花札卫-松与鹤",
                text = {
                    {
                        "手牌中每有一张{C:joy_link}一月{C:attention}或{C:joy_link}二月{C:attention}花札牌",
                        "获得{C:mult}+#1#{C:attention}倍率"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#2#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:spades}黑桃{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}一月{s:0.9}或{s:0.9,C:joy_link}二月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#4#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-松”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_cherry = {
                name = "{C:joy_effect}花札卫-樱",
                text = {
                    {
                        "计分牌中包含{C:joy_link}三月{C:attention}和{C:joy_link}四月{C:attention}花札牌",
                        "每拥有或在{C:attention}墓地{C:joy_normal}“花札卫”{C:attention}1{C:joy_normal}张，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#3#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:hearts}红桃{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}三月{s:0.9}或{s:0.9,C:joy_link}四月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-樱与幕”{s:0.9}被放逐至{s:0.9,C:attention}首领盲注"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_curtain = {
                name = "{C:joy_effect}花札卫-樱与幕",
                text = {
                    {
                        "手牌中每有一张{C:joy_link}三月{C:attention}或{C:joy_link}四月{C:attention}花札牌",
                        "获得{C:mult}+#1#{C:attention}倍率"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#2#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:hearts}红桃{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}三月{s:0.9}或{s:0.9,C:joy_link}四月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#4#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-樱”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_butterfly = {
                name = "{C:joy_effect}花札卫-牡丹与蝶",
                text = {
                    {
                        "计分牌中包含{C:joy_link}六月{C:attention}花札牌获得{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#2#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:joy_link}六月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}- {s:0.9,C:joy_link}光牌{s:0.9,C:attention}花札{s:0.9}：将{s:0.9,C:attention}#4#{s:0.9}{s:0.9,C:joy_normal}“花札卫”{s:0.9}",
                        "{s:0.9}加入{s:0.9,C:joy_spell}额外卡组{s:0.9}{s:0.9,C:inactive}(需有空位)",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_normal}“花札卫”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_boar = {
                name = "{C:joy_effect}花札卫-苜蓿与猪",
                text = {
                    {
                        "计分牌中包含{C:joy_link}七月{C:attention}花札牌获得{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#2#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:joy_link}七月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}- {s:0.9,C:joy_link}光牌{s:0.9,C:attention}花札{s:0.9}：将{s:0.9,C:attention}#4#{s:0.9}{s:0.9,C:joy_normal}“花札卫”{s:0.9}",
                        "{s:0.9}加入{s:0.9,C:joy_spell}额外卡组{s:0.9}{s:0.9,C:inactive}(需有空位)",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_normal}“花札卫”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_zebra = {
                name = "{C:joy_effect}花札卫-芒",
                text = {
                    {
                        "计分牌中包含{C:joy_link}八月{C:attention}和{C:joy_link}九月{C:attention}花札牌",
                        "每拥有或在{C:attention}墓地{C:joy_normal}“花札卫”{C:attention}1{C:joy_normal}张，获得{C:money}+$#1#{C:attention}金钱",
                        "{C:inactive}(当前{C:money}+$#2#{C:inactive})"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#3#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:clubs}梅花{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}八月{s:0.9}或{s:0.9,C:joy_link}九月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-芒与月”{s:0.9}被放逐至{s:0.9,C:attention}首领盲注"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_moon = {
                name = "{C:joy_effect}花札卫-芒与月",
                text = {
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#1#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:clubs}梅花{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}八月{s:0.9}或{s:0.9,C:joy_link}九月{s:0.9,C:attention}花札{s:0.9}：每发掘1张{s:0.9,C:attention}花札{s:0.9}牌抽{s:0.9,C:attention}#2#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#3#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-芒”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_deer = {
                name = "{C:joy_effect}花札卫-枫与鹿",
                text = {
                    {
                        "计分牌中包含{C:joy_link}十月{C:attention}花札牌获得{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#2#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:joy_link}十月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}- {s:0.9,C:joy_link}光牌{s:0.9,C:attention}花札{s:0.9}：将{s:0.9,C:attention}#4#{s:0.9}{s:0.9,C:joy_normal}“花札卫”{s:0.9}加入商店",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_normal}“花札卫”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_willow = {
                name = "{C:joy_effect}花札卫-柳",
                text = {
                    {
                        "计分牌中包含{C:joy_link}十一月{C:attention}花札牌",
                        "每拥有或在{C:attention}墓地{C:joy_normal}“花札卫”{C:attention}1{C:joy_normal}张，获得{C:money}+$#1#{C:attention}金钱",
                        "{C:inactive}(当前{C:money}+$#2#{C:inactive})"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#3#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:attention}人头牌{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}十一月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-柳与书”{s:0.9}被放逐至{s:0.9,C:attention}首领盲注"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_calligrapher = {
                name = "{C:joy_effect}花札卫-柳与书",
                text = {
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#1#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:attention}人头牌{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}十一月{s:0.9,C:attention}花札{s:0.9}：复活{s:0.9,C:attention}#2#{s:0.9}{s:0.9,C:joy_normal}“花札卫”{s:0.9}",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#3#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-柳”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_paulownia = {
                name = "{C:joy_effect}花札卫-桐",
                text = {
                    {
                        "计分牌中包含{C:joy_link}五月{C:attention}和{C:joy_link}十二月{C:attention}花札牌",
                        "每拥有或在{C:attention}墓地{C:joy_normal}“花札卫”{C:attention}1{C:joy_normal}张，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#3#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:diamonds}方块{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}五月{s:0.9}或{s:0.9,C:joy_link}十二月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#4#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#5#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-桐与凰”{s:0.9}被放逐至{s:0.9,C:attention}首领盲注"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_phoenix = {
                name = "{C:joy_effect}花札卫-桐与凰",
                text = {
                    {
                        "手牌中每有一张{C:joy_link}五月{C:attention}或{C:joy_link}十二月{C:attention}花札牌",
                        "获得{C:mult}+#1#{C:attention}倍率"
                    },
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶的{C:attention}#3#{C:attention}张：",
                        "{s:0.9}- {s:0.9,C:diamonds}方块{s:0.9}：将其全部变成随机{s:0.9,C:attention}花札{s:0.9}牌",
                        "{s:0.9}- {s:0.9,C:joy_link}五月{s:0.9}或{s:0.9,C:joy_link}十二月{s:0.9,C:attention}花札{s:0.9}：抽{s:0.9,C:attention}#3#{s:0.9}张牌",
                        "{s:0.9}否则，销毁自身并生成{s:0.9,C:attention}#4#{s:0.9}",
                        "{s:0.9,C:joy_effect}“花札卫-桐”{s:0.9}被放逐至回合结束"
                    },
                    {
                        "若你已拥有其他{C:joy_normal}“花札卫”{C:attention}，",
                        "即使无空位也可从商店获得，且",
                        "回合结束时生成{C:attention}1{C:joy_spell}“花合”"
                    }
                }
            },
            j_joy_cardian_boardefly = {
                name = "{C:joy_synchro}花札卫-猪鹿蝶",
                text = {
                    {
                        "若打出的牌为{C:attention}猪鹿蝶{C:attention}牌型，",
                        "为所有计分牌随机添加一种{C:attention}蜡封"
                    },
                    {
                        "若本回合最后一手牌为{C:attention}猪鹿蝶{C:attention}牌型，",
                        "回合结束时放逐{C:attention}#1#{C:attention}张小丑牌",
                        "直至选择{C:attention}盲注{C:attention}",
                        "每计分1张{C:joy_link}动物{C:attention}花札牌放逐1张"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "本局游戏中打出{C:attention}5{C:joy_link}动物{C:attention}花札牌后",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_cardian_moonflower = {
                name = "{C:joy_synchro}花札卫-花月观",
                text = {
                    {
                        "第一手牌抽牌时，每拥有1个{C:joy_normal}“花札卫”{C:attention}额外抽{C:attention}#1#{C:attention}张"
                    },
                    {
                        "若打出的牌为{C:attention}猪鹿蝶{C:attention}牌型，",
                        "所有{C:attention}花札{C:attention}牌均计分",
                        "随后再抽等量的牌"
                    },
                    {
                        "可视为{C:attention}素材{C:attention}参与{C:joy_synchro}同步{C:attention}召唤"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "本局游戏中打出{C:attention}3{C:joy_mod}菊杯{C:attention}后",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_cardian_lightshower = {
                name = "{C:joy_synchro}花札卫-光雨",
                text = {
                    {
                        "每个{C:joy_normal}“花札卫”{C:attention}提供{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                    {
                        "打出的{C:joy_mod}柳与书{C:attention}与{C:joy_mod}菊杯{C:attention}花札牌",
                        "必定计分并额外给予{X:mult,C:white}X#2#{C:attention}倍率"
                    },
                    {
                        "若打出的牌为{C:attention}猪鹿蝶{C:attention}牌型，",
                        "将牌组中{C:attention}#3#{C:attention}张未强化牌",
                        "随机变成{C:attention}花札{C:attention}牌"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "本局游戏中打出{C:attention}3{C:joy_link}光牌{C:attention}花札牌后",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_cardian_lightflare = {
                name = "{C:joy_synchro}花札卫-光闪",
                text = {
                    {
                        "每发掘1张{C:attention}花札{C:attention}牌获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "{C:attention}花札{C:attention}牌被视为所有{C:joy_link}月份{C:attention}与{C:joy_link}类型{C:attention}",
                        "以触发其他{C:joy_normal}“花札卫”{C:attention}能力，同时",
                        "被视为所有花色且不受{C:attention}盲注{C:attention}削弱"
                    },
                    {
                        "若打出的牌包含{C:attention}光闪{C:attention}、{C:attention}花月观{C:attention}",
                        "或{C:attention}赤短与青短{C:attention}，",
                        "则{C:attention}复活#3#{C:joy_normal}“花札卫”{C:attention}并赋予{C:dark_edition}负片"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "本局游戏中打出{C:attention}5{C:joy_link}光牌{C:attention}花札牌后",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
        },
        Planet = {
            c_joy_cardian_koikoi = {
                name = "{C:joy_spell}超级来来",
                text = {
                    "所有{C:attention}猪鹿蝶{C:attention}牌型",
                    "等级+1"
                },
            },
        },
        Tarot = {
            c_joy_cardian_gathering = {
                name = "{C:joy_spell}花合",
                text = {
                    "将选中的{C:attention}#1#{C:attention}张",
                    "牌强化为{C:attention}花札{C:attention}牌"
                },
            },
        },
        Enhanced = {
            m_joy_hanafuda = {
                name = "花札",
                text = {
                    {
                        "与相同{C:joy_link}月份{C:attention}的{C:attention}花札{C:attention}牌共同计分",
                        "或在{C:attention}猪鹿蝶{C:attention}牌型中获得{C:mult}+#4#{C:attention}倍率"
                    },
                    {
                        "{C:joy_mod}#1#",
                        "{C:joy_link}#2#{C:attention} / {C:joy_link}#3#"
                    }
                }
            },
            m_joy_hanafuda_chaff = {
                name = "花札",
                text = {
                    {
                        "{C:mult}+#4#{C:attention}倍率",
                        "在{C:attention}猪鹿蝶{C:attention}牌型中必定计分"
                    },
                    {
                        "{C:joy_mod}#1#",
                        "{C:joy_link}#2#{C:attention} / {C:joy_link}#3#"
                    }
                }
            },
            m_joy_hanafuda_fake = {
                name = "花札",
                text = {
                    {
                        "与相同{C:joy_link}月份{C:attention}的牌共同计分",
                        "或在{C:attention}猪鹿蝶{C:attention}牌型中获得{C:mult}+20{C:attention}/{C:mult}10{C:attention}/{C:mult}5{C:attention}倍率",
                        "若为{C:joy_link}カス{C:attention}则{C:mult}+1{C:attention}倍率且在{C:attention}猪鹿蝶{C:attention}牌型中必定计分",
                        "{C:inactive}(月份/类型随机)"
                    }
                }
            }
        },
        Back = {
            b_joy_hanafuda = {
                name = "{C:joy_spell}花札牌组",
                text = {
                    "开局获得",
                    "全部随机",
                    "{C:attention,T:m_joy_hanafuda}花札{C:attention}牌"
                }
            }
        },
        Sleeve = {
            sleeve_joy_hanafuda = {
                name = "{C:joy_spell}再花化",
                text = {
                    "开局获得",
                    "全部随机",
                    "{C:attention,T:m_joy_hanafuda}花札{C:attention}牌"
                }
            },
            sleeve_joy_hanafuda_alt = {
                name = "{C:joy_spell}再花化",
                text = {
                    "开局获得全部{C:attention,T:m_joy_hanafuda}花札{C:attention}牌",
                    "而非随机牌，并额外获得",
                    "{C:joy_mod}菊杯"
                }
            },
        },
        Other = {
            joy_tooltip_koikoihand = {
                name = "猪鹿蝶牌型",
                text = {
                    "由{C:attention}花札{C:attention}牌组成的组合"
                },
            }
        },
    },
    misc = {
        poker_hands = {
            joy_cardian_chaff = "カス",
            joy_cardian_ribbons = "短册",
            joy_cardian_blueribbon = "青短",
            joy_cardian_redpoem = "赤短",
            joy_cardian_redpoemblueribbon = "赤短与青短",
            joy_cardian_animals = "动物",
            joy_cardian_boardefly = "猪鹿蝶",
            joy_cardian_flowerviewing = "花见",
            joy_cardian_moonviewing = "月见",
            joy_cardian_moonflowerviewing = "花月见",
            joy_cardian_lightwave = "光波",
            joy_cardian_lightshower = "光雨",
            joy_cardian_lightshow = "光演",
            joy_cardian_lightflare = "光闪",
        },
        poker_hand_descriptions = {
            joy_cardian_chaff = {
                "5张{C:joy_link}カス{C:attention}花札牌",
                "(或{C:joy_mod}菊杯)"
            },
            joy_cardian_ribbons = {
                "5张{C:joy_link}短册{C:attention}花札牌",
            },
            joy_cardian_blueribbon = {
                "{C:joy_mod}牡丹短册{C:attention}、{C:joy_mod}菊短册{C:attention}",
                "与{C:joy_mod}枫短册{C:attention}花札牌",
                "可含最多2张未计分牌"
            },
            joy_cardian_redpoem = {
                "{C:joy_mod}松短册{C:attention}、{C:joy_mod}梅短册{C:attention}",
                "与{C:joy_mod}樱短册{C:attention}花札牌",
                "可含最多2张未计分牌"
            },
            joy_cardian_redpoemblueribbon = {
                "任选5张{C:joy_mod}牡丹短册{C:attention}、{C:joy_mod}菊短册{C:attention}、",
                "{C:joy_mod}枫短册{C:attention}、{C:joy_mod}松短册{C:attention}、",
                "{C:joy_mod}梅短册{C:attention}或{C:joy_mod}樱短册{C:attention}花札牌"
            },
            joy_cardian_animals = {
                "5张{C:joy_link}动物{C:attention}花札牌"
            },
            joy_cardian_boardefly = {
                "{C:joy_mod}苜蓿猪{C:attention}、{C:joy_mod}枫鹿{C:attention}",
                "与{C:joy_mod}牡丹蝶{C:attention}花札牌",
                "可含最多2张{C:joy_link}动物{C:attention}花札牌",
                "及/或最多2张未计分牌"
            },
            joy_cardian_flowerviewing = {
                "最多5张{C:joy_mod}菊杯{C:attention}与",
                "{C:joy_mod}樱幕{C:attention}花札牌",
                "可含最多3张未计分牌"
            },
            joy_cardian_moonviewing = {
                "最多5张{C:joy_mod}菊杯{C:attention}与",
                "{C:joy_mod}芒月{C:attention}花札牌",
                "可含最多3张未计分牌"
            },
            joy_cardian_moonflowerviewing = {
                "手牌同时包含{C:attention}月见{C:attention}与{C:attention}花见{C:attention}",
                "可含最多2张未计分牌"
            },
            joy_cardian_lightwave = {
                "3张不同月份的{C:joy_link}光牌{C:attention}花札牌",
                "{C:inactive}(不含柳与书)"
            },
            joy_cardian_lightshower = {
                "4张不同月份的{C:joy_link}光牌{C:attention}花札牌，",
                "需含{C:joy_mod}柳与书"
            },
            joy_cardian_lightshow = {
                "4张不同月份的{C:joy_link}光牌{C:attention}花札牌",
                "{C:inactive}(不含柳与书)"
            },
            joy_cardian_lightflare = {
                "5张不同{C:joy_link}月份{C:attention}的{C:joy_link}光牌{C:attention}花札牌"
            },
        },
        dictionary = {
            k_joy_archetype_cardian = "花札卫",
            k_joy_all_koikoi_hands = "全部猪鹿蝶牌型",
            k_joy_hanafuda_month = "月份",
            k_joy_hanafuda_type = "类型",
            --#region Months
            k_joy_hanafuda_january = "一月",
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
            k_joy_hanafuda_light = "光牌",
            k_joy_hanafuda_animal = "动物",
            k_joy_hanafuda_ribbon = "短册",
            k_joy_hanafuda_chaff = "カス",
            --#endregion
            --#region Names
            ["k_joy_hanafuda_Pine with Crane"] = "松与鹤",
            ["k_joy_hanafuda_Pine with Ribbon"] = "松短册",
            ["k_joy_hanafuda_Pine"] = "松",

            ["k_joy_hanafuda_Plum Blossom with White-eye"] = "梅与莺",
            ["k_joy_hanafuda_Plum Blossom with Ribbon"] = "梅短册",
            ["k_joy_hanafuda_Plum Blossom"] = "梅",

            ["k_joy_hanafuda_Cherry Blossom with Curtain"] = "樱与幕",
            ["k_joy_hanafuda_Cherry Blossom with Ribbon"] = "樱短册",
            ["k_joy_hanafuda_Cherry Blossom"] = "樱",

            ["k_joy_hanafuda_Wisteria with Cuckoo"] = "藤与杜鹃",
            ["k_joy_hanafuda_Wisteria with Ribbon"] = "藤短册",
            ["k_joy_hanafuda_Wisteria"] = "藤",

            ["k_joy_hanafuda_Water Iris with Bridge"] = "菖蒲与桥",
            ["k_joy_hanafuda_Water iris with Ribbon"] = "菖蒲短册",
            ["k_joy_hanafuda_Water iris"] = "菖蒲",

            ["k_joy_hanafuda_Peony with Butterfly"] = "牡丹与蝶",
            ["k_joy_hanafuda_Peony with Ribbon"] = "牡丹短册",
            ["k_joy_hanafuda_Peony"] = "牡丹",

            ["k_joy_hanafuda_Clover with Boar"] = "苜蓿与猪",
            ["k_joy_hanafuda_Clover with Ribbon"] = "苜蓿短册",
            ["k_joy_hanafuda_Clover"] = "苜蓿",

            ["k_joy_hanafuda_Zebra Grass with Moon"] = "芒与月",
            ["k_joy_hanafuda_Zebra Grass with Geese"] = "芒与雁",
            ["k_joy_hanafuda_Zebra Grass"] = "芒",

            ["k_joy_hanafuda_Chrysanthemum with Sake"] = "菊与杯",
            ["k_joy_hanafuda_Chrysanthemum with Ribbon"] = "菊短册",
            ["k_joy_hanafuda_Chrysanthemum"] = "菊",

            ["k_joy_hanafuda_Maple with Deer"] = "枫与鹿",
            ["k_joy_hanafuda_Maple with Ribbon"] = "枫短册",
            ["k_joy_hanafuda_Maple"] = "枫",

            ["k_joy_hanafuda_Willow with Calligrapher"] = "柳与书",
            ["k_joy_hanafuda_Willow with Swallow"] = "柳与燕",
            ["k_joy_hanafuda_Willow with Ribbon"] = "柳短册",
            ["k_joy_hanafuda_Willow"] = "柳",

            ["k_joy_hanafuda_Paulownia with Phoenix"] = "桐与凰",
            ["k_joy_hanafuda_Paulownia"] = "桐",
            --#endregion
        }
    }
}