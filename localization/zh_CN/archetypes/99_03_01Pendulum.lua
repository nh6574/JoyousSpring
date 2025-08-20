return {
    descriptions = {
        Joker = {
            j_joy_foucault = {
                name = "{C:joy_pendulum_normal}傅科魔炮石",
                joy_consumable = {
                    "尽可能生成{C:planet}地球{}",
                    "{C:inactive}(需有空位)"
                },
                text = {
                    {
                        "{E:1} 在时空中游荡的机械化生命体，{}",
                        "{E:1} 但记忆…大咅…分已丢失。{}",
                        " 厂…因是亻…么？",
                        "{E:1} 数据巨…绝衤干…涉…？{}",
                    },
                }
            },
            j_joy_hallo = {
                name = "{C:joy_pendulum_normal}万万圣",
                joy_consumable = {
                    "永久提升所有{C:attention}小丑牌{}的{C:green}几率{}",
                    "随机增加{C:attention}#1#{}到{C:attention}#2#{}点"
                },
                text = {
                    {
                        "{E:1} 喂喂，喂喂，脑如蜡堆，",
                        "{E:1} 肚肠空空，脑壳透风。",
                        "{E:1} 寻糖觅果，如痴如醉，",
                        "{E:1} 当心背后——糖果将危！"
                    },
                }
            },
            j_joy_eccentrick = {
                name = "{C:joy_pendulum_effect}古怪恶魔",
                joy_consumable = {
                    "销毁最多{C:attention}#1#{}张选定牌",
                },
                text = {
                    {
                        "每张本局游戏销毁的游戏牌{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#3#{}{C:inactive}倍率)",
                    },
                },
            },
            j_joy_pendulumoon = {
                name = "{C:joy_pendulum_effect}灵摆月之魔法师",
                joy_consumable = {
                    "{C:attention}复活 #1#{}张{C:joy_pendulum}灵摆{}为{C:dark_edition}负片{}",
                },
                text = {
                    {
                        "选中{C:attention}盲注{}时，将{C:attention}#2#{}张",
                        "{C:joy_pendulum}灵摆{}送入{C:attention}墓地{}"
                    },
                    {
                        "不可被{C:attention}复活{}",
                    },
                },
            },
            j_joy_pandora = {
                name = "{C:joy_pendulum_effect}潘德拉宝具箱",
                joy_consumable = {
                    "给予随机{C:joy_pendulum}灵摆{}随机{C:dark_edition}版本{}"
                },
                text = {
                    {
                        "{C:blue}+#1#{}点出牌次数，当选中{C:attention}盲注{}时",
                        "若{C:joy_spell}额外卡组{}无卡"
                    },
                }
            },
            j_joy_anchamoufrite = {
                name = "{C:joy_pendulum_effect}迷彩光书签",
                joy_consumable = {
                    "在{C:attention}盲注{}期间，额外抽取{C:attention}#1#{}张牌"
                },
                text = {
                    {
                        "{C:attention}+#2#{}点手牌上限，当选中{C:attention}盲注{}时",
                        "若{C:joy_spell}额外卡组{}无卡"
                    },
                }
            },
            j_joy_zany = {
                name = "{C:joy_pendulum_effect}横条邪斑马",
                joy_consumable = {
                    "若拥有{C:attention}#1#张或更少小丑牌{}（使用后）",
                    "永久失去{C:red}#2#{}个{C:attention}小丑牌槽位{}",
                    "并使所有{C:attention}小丑牌{}变为{C:dark_edition}多彩{}"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{}倍率，若拥有{C:attention}#1#张或更少小丑牌{}",
                    },
                }
            },
            j_joy_pendulumucho = {
                name = "{C:joy_pendulum_effect}灵摆多福鸟",
                joy_consumable = {
                    "{C:attention}复活 #1#{}张{C:joy_pendulum}灵摆{}",
                },
                text = {
                    {
                        "获取时{C:attention}复活 #2#{}张{C:joy_pendulum}灵摆{}",
                    },
                    {
                        "不可被{C:attention}复活{}",
                    },
                }
            },
            j_joy_moissa = {
                name = "{C:joy_pendulum_effect}彗圣之将-翌夜之莫桑石骑士",
                joy_consumable = {
                    "向商店添加{C:attention}#1#{}张{C:joy_pendulum}灵摆{}"
                },
                text = {
                    {
                        "每购买一张{C:joy_pendulum}灵摆{}，此卡获得{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#3#{}{C:inactive}筹码)",
                    },
                }
            },
            j_joy_pmcaptor = {
                name = "{C:joy_pendulum_effect}P.M.捕获者",
                joy_consumable = {
                    "{C:attention}复活 #1#{}张{C:joy_pendulum}灵摆{}",
                    "{C:inactive}(「P.M.捕获者」除外)"
                },
                text = {
                    {
                        "{C:joy_normal}不死族{}不可被弱化",
                        "非{C:joy_trap}陷阱{}的{C:joy_normal}不死族{}不可被{C:attention}翻开{}",
                    },
                }
            },
            j_joy_metrognome = {
                name = "{C:joy_pendulum_effect}节拍器地精灵",
                joy_consumable = {
                    "生成{C:attention}#1#{}张持有量最多的{C:joy_pendulum}灵摆{}",
                    "{C:inactive}(需有空位)(多个时随机)"
                },
                text = {
                    {
                        "每张持有量最多的{C:joy_pendulum}灵摆{}",
                        "此卡{C:mult}+#2#{}倍率",
                    },
                }
            },
            j_joy_bozu = {
                name = "{C:joy_pendulum_effect}雨天虹娃",
                joy_consumable = {
                    "随机{C:joy_normal}怪兽{} {C:attention}小丑牌{}获得",
                    "此卡当前的筹码和倍率"
                },
                text = {
                    {
                        "选中{C:attention}盲注{}时，每张{C:joy_spell}额外卡组{}卡牌",
                        "获得{C:chips}+#1#{}筹码，每空位获得{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前 {C:chips}+#3#{}{C:inactive}筹码和{C:mult}+#4#{}{C:inactive}倍率)",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{}筹码 {C:mult}+#2#{}倍率",
                }
            },
            j_joy_disablaster = {
                name = "{C:joy_pendulum_effect}无孔炮塔-无效爆破炮手",
                joy_consumable = {
                    "每此{C:attention}小丑牌{}能力",
                    "提升计分倍率，{C:money}+$#1#{}",
                    "{C:inactive}(当前 {C:money}+$#2#{}{C:inactive})"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{}倍率，若{C:attention}#4#列{}未打出牌",
                        "{C:inactive}(列数越高倍率越低)",
                        "{C:inactive}(当前在{C:attention}#4#列{})",
                    },
                }
            },
        }
    },
}