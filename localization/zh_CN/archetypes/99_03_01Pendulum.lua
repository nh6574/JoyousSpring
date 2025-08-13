-- 文件 12：99_03_01Pendulum.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_foucault = {
                name = "{C:joy_pendulum_normal}傅科摆炮",
                joy_consumable = {
                    "尽可能多地生成{C:planet}地球星球牌{C:attention}",
                    "{C:inactive}(需有空位)"
                },
                text = {
                    {
                        "{E:1}穿越时空的机械生命体，但记忆……大部分已丢失。原因是什么？数据拒绝被干扰？{E:1}"
                    },
                }
            },
            j_joy_hallo = {
                name = "{C:joy_pendulum_normal}哈哈骷髅",
                joy_consumable = {
                    "永久随机提高所有{C:attention}小丑牌{C:attention}列表{C:green}几率{C:attention}值{C:attention}#1#~#2#"
                },
                text = {
                    {
                        "{E:1}哈哈，脑是蜡，{E:1}",
                        "{E:1}内脏掏空，脑袋空空。{E:1}",
                        "{E:1}寻糖与软糖，{E:1}",
                        "{E:1}小心背后与糖果袋。{E:1}"
                    },
                }
            },
            j_joy_eccentrick = {
                name = "{C:joy_pendulum_effect}魔装邪星 偏倚",
                joy_consumable = {
                    "最多销毁{C:attention}#1#{C:attention}张选中牌"
                },
                text = {
                    {
                        "本局每销毁1张游戏牌，获得{C:mult}+#2#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#3#{C:inactive}倍率)"
                    },
                },
            },
            j_joy_pendulumoon = {
                name = "{C:joy_pendulum_effect}灵摆月",
                joy_consumable = {
                    "复活{C:attention}#1#{C:joy_pendulum}灵摆{C:attention}并设为{C:dark_edition}负片"
                },
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时，将{C:attention}#2#{C:joy_pendulum}灵摆{C:attention}送入墓地"
                    },
                    {
                        "无法被{C:attention}复活{C:attention}"
                    },
                },
            },
            j_joy_pandora = {
                name = "{C:joy_pendulum_effect}潘多拉宝盒",
                joy_consumable = {
                    "随机给予1张{C:joy_pendulum}灵摆{C:attention}随机{C:dark_edition}版本"
                },
                text = {
                    {
                        "若{C:joy_spell}额外卡组{C:attention}为空，选择{C:attention}盲注{C:attention}时{C:blue}+#1#{C:attention}出牌次数"
                    },
                }
            },
            j_joy_anchamoufrite = {
                name = "{C:joy_pendulum_effect}安卡莫弗岩",
                joy_consumable = {
                    "{C:attention}盲注{C:attention}期间额外抽{C:attention}#1#{C:attention}张牌"
                },
                text = {
                    {
                        "若{C:joy_spell}额外卡组{C:attention}为空，选择{C:attention}盲注{C:attention}时{C:attention}+#2#{C:attention}手牌上限"
                    },
                }
            },
            j_joy_zany = {
                name = "{C:joy_pendulum_effect}疯狂斑马",
                joy_consumable = {
                    "若使用后拥有{C:attention}#1#{C:attention}张或更少小丑牌{C:attention}，",
                    "永久减少{C:red}#2#{C:attention}小丑牌{C:attention}槽位，",
                    "并使所有{C:attention}小丑牌{C:attention}获得{C:dark_edition}多彩{C:attention}"
                },
                text = {
                    {
                        "若拥有{C:attention}#1#{C:attention}张或更少小丑牌{C:attention}，获得{X:mult,C:white}X#3#{C:attention}倍率"
                    },
                }
            },
            j_joy_pendulumucho = {
                name = "{C:joy_pendulum_effect}灵摆多多",
                joy_consumable = {
                    "复活{C:attention}#1#{C:joy_pendulum}灵摆{C:attention}"
                },
                text = {
                    {
                        "获得时复活{C:attention}#2#{C:joy_pendulum}灵摆{C:attention}"
                    },
                    {
                        "无法被{C:attention}复活{C:attention}"
                    },
                }
            },
            j_joy_moissa = {
                name = "{C:joy_pendulum_effect}彗星将 莫伊萨骑士",
                joy_consumable = {
                    "将{C:attention}#1#{C:joy_pendulum}灵摆{C:attention}加入商店"
                },
                text = {
                    {
                        "每购买1张{C:joy_pendulum}灵摆{C:attention}，获得{C:chips}+#2#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#3#{C:inactive}筹码)"
                    },
                }
            },
            j_joy_pmcaptor = {
                name = "{C:joy_pendulum_effect}P.M.捕捉者",
                joy_consumable = {
                    "复活{C:attention}#1#{C:joy_pendulum}灵摆{C:attention}",
                    "{C:inactive}(不含“P.M.捕捉者”)"
                },
                text = {
                    {
                        "{C:joy_normal}不死族{C:attention}不会被削弱",
                        "非{C:joy_trap}陷阱{C:joy_normal}不死族{C:attention}不会被盖放"
                    },
                }
            },
            j_joy_metrognome = {
                name = "{C:joy_pendulum_effect}都市节拍器",
                joy_consumable = {
                    "生成{C:attention}#1#{C:attention}张与最多相同稀有度的{C:joy_pendulum}灵摆{C:attention}",
                    "{C:inactive}(需有空位)(多种时随机)"
                },
                text = {
                    {
                        "每与最多相同稀有度{C:joy_pendulum}灵摆{C:attention}共享的牌，获得{C:mult}+#2#{C:attention}倍率"
                    },
                }
            },
            j_joy_bozu = {
                name = "{C:joy_pendulum_effect}雨法师",
                joy_consumable = {
                    "随机{C:joy_normal}怪兽{C:attention}小丑牌{C:attention}继承此牌当前筹码与倍率"
                },
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时，每有1张{C:joy_spell}额外卡组{C:attention}牌，获得{C:chips}+#1#{C:attention}筹码",
                        "每有1个空{C:joy_spell}额外卡组{C:attention}槽位，获得{C:mult}+#2#{C:attention}倍率",
                        "{C:inactive}(当前{C:chips}+#3#{C:inactive}筹码与{C:mult}+#4#{C:inactive}倍率)"
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{}筹码{C:mult}+#2#{}倍率"
                }
            },
            j_joy_disablaster = {
                name = "{C:joy_pendulum_effect}否定要塞 失效炮",
                joy_consumable = {
                    "此牌{C:attention}小丑牌{C:attention}能力每提升1次计分倍率，获得{C:money}+$#1#{C:attention}",
                    "{C:inactive}(当前{C:money}+$#2#{C:inactive})"
                },
                text = {
                    {
                        "若此{C:attention}列{C:attention}未打出牌，获得{X:mult,C:white}X#3#{C:attention}倍率",
                        "{C:inactive}(列号越高倍率越低)",
                        "{C:inactive}(当前在{C:attention}#4#{C:inactive}列)"
                    },
                }
            },
        }
    },
}