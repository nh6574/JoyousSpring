-- 文件 11：99_02Trap.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_quantumcat = {
                name = "{C:joy_trap}量子猫",
                text = {
                    {
                        "{C:chips}+#1#{C:attention}筹码"
                    },
                    {
                        "持有期间，可视为任意{C:attention}类型{C:attention}与任意{C:attention}属性{C:attention}"
                    },
                }
            },
            j_joy_anguish = {
                name = "{C:joy_trap}痛苦雕像",
                text = {
                    {
                        "{C:joy_effect}反转{C:attention}：每有1张{C:joy_trap}陷阱{C:attention}，获得{C:money}+$#1#{C:attention}"
                    },
                    {
                        "{C:joy_trap}陷阱{C:attention}不会被削弱",
                        "{C:inactive}(盖放时也生效)"
                    },
                }
            },
            j_joy_tiki_curse = {
                name = "{C:joy_trap}诅咒提基",
                text = {
                    {
                        "每有1张{C:joy_trap}陷阱{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                }
            },
            j_joy_tiki_soul = {
                name = "{C:joy_trap}灵魂提基",
                text = {
                    {
                        "每有1张{C:joy_trap}陷阱{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                }
            },
            j_joy_zoma = {
                name = "{C:joy_trap}幽灵 佐玛",
                text = {
                    {
                        "出售此牌，使{C:attention}盲注{C:attention}需求每{C:attention}翻转{C:attention}1次降低{C:red}#1#%{C:attention}",
                        "{C:inactive}(当前{C:red}#2#%{C:inactive})"
                    },
                }
            },
            j_joy_zoma_earthbound = {
                name = "{C:joy_trap}地缚幽灵 佐玛",
                text = {
                    {
                        "每{C:attention}翻转{C:attention}1次，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "出售此牌，使{C:attention}盲注{C:attention}需求每{C:attention}翻转{C:attention}1次降低{C:red}#3#%{C:attention}",
                        "{C:inactive}(当前{C:red}#4#%{C:inactive})"
                    },
                }
            },
            j_joy_finished = {
                name = "{C:joy_trap}你已终结",
                text = {
                    {
                        "若拥有{C:attention}#1#{C:attention}张或更多小丑牌{C:attention}，获得{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                    {
                        "可{C:attention}献祭{C:attention}此牌及所有其他{C:attention}小丑牌{C:attention}直接获胜"
                    },
                }
            },
            j_joy_apophis = {
                name = "{C:joy_trap}阿波菲斯化身",
                text = {
                    {
                        "{C:mult}+#1#{C:attention}倍率"
                    },
                }
            },
            j_joy_azurune = {
                name = "{C:joy_trap}天使雕像 苍蓝",
                text = {
                    {
                        "本局每{C:attention}召唤{C:attention}1张小丑牌{C:attention}，获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
                    },
                }
            },
            j_joy_crukra = {
                name = "{C:joy_trap}十字军 爬虫",
                text = {
                    {
                        "每有1张{C:joy_link}连接{C:attention}，提供{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                }
            },
        }
    },
}