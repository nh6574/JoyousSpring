return {
    descriptions = {
        Joker = {
            j_joy_adaman_analyzer = {
                name = "{C:joy_effect}魔救之分析者",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "每张发掘出的{C:diamonds}方片{}使本回合获得{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#3#{}{C:inactive}筹码)"
                    },
                    {
                        "每轮底注限1次：在打出{C:attention}#5#次包含{C:diamonds}方片{}",
                        "{C:attention}同花{}的牌型后，生成{C:attention}#4#张{C:joy_normal}主卡组岩石{}",
                        "{C:inactive}(需有空位) {C:inactive}(剩余#6#次)"
                    },
                    {
                        "若拥有{C:joy_normal}岩石族{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_adaman_researcher = {
                name = "{C:joy_effect}魔救之探索者",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "每张发掘出的{C:diamonds}方片{}使本回合获得{C:money}+$#2#{}金钱",
                        "{C:inactive}(当前 {C:money}+$#3#{}{C:inactive})"
                    },
                    {
                        "每轮底注限1次：在打出{C:attention}#5#次包含{C:diamonds}方片{}",
                        "{C:attention}同花{}的牌型后，生成{C:attention}#4#张{C:joy_normal}主卡组岩石{}",
                        "{C:inactive}(需有空位) {C:inactive}(剩余#6#次)"
                    },
                    {
                        "若拥有{C:joy_normal}岩石族{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_adaman_seeker = {
                name = "{C:joy_effect}魔救之追求者",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "每张发掘出的{C:diamonds}方片{}使本回合获得{C:mult}+#2#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#3#{}{C:inactive}倍率)"
                    },
                    {
                        "每轮底注限1次：在打出{C:attention}#5#次包含{C:diamonds}方片{}",
                        "{C:attention}同花{}的牌型后，生成{C:attention}#4#张{C:joy_normal}主卡组岩石{}",
                        "{C:inactive}(需有空位) {C:inactive}(剩余#6#次)"
                    },
                    {
                        "若拥有{C:joy_normal}岩石族{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_adaman_crysdragite = {
                name = "{C:joy_effect}魔救之奇石-巨龙晶石",
                text = {
                    {
                        "每张手牌中的{C:diamonds}方片{}使",
                        "每张{C:joy_normal}岩石{}提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "将此卡作为{C:attention}素材{}进行{C:joy_synchro}同调召唤{}时",
                        "召唤怪兽获得以下能力：",
                        "{s:0.9}每张牌组中的{s:0.9,C:diamonds}方片{s:0.9}提供{s:0.9,C:chips}+#1#{s:0.9}筹码"
                    }
                },
                joy_transfer_ability = {
                    "每张牌组中的{C:diamonds}方片{}提供{C:chips}+#1#{}筹码",
                    "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                },
            },
            j_joy_adaman_crysraptite = {
                name = "{C:joy_effect}魔救之奇石-猛禽晶石",
                text = {
                    {
                        "每张手牌中的{C:diamonds}方片{}使",
                        "每张{C:joy_normal}岩石{}提供{C:money}+$#1#{}金钱",
                        "{C:inactive}(当前 {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "将此卡作为{C:attention}素材{}进行{C:joy_synchro}同调召唤{}时",
                        "召唤怪兽获得以下能力：",
                        "{s:0.9}每张牌组中的{s:0.9,C:diamonds}方片{s:0.9}提供{s:0.9,C:money}+$#1#{s:0.9}金钱"
                    }
                },
                joy_transfer_ability = {
                    "每张牌组中的{C:diamonds}方片{}提供{C:money}+$#1#{}金钱",
                    "{C:inactive}(当前 {C:money}+$#2#{}{C:inactive})"
                },
            },
            j_joy_adaman_crysleonite = {
                name = "{C:joy_effect}魔救之奇石-狮子晶石",
                text = {
                    {
                        "每张手牌中的{C:diamonds}方片{}使",
                        "每张{C:joy_normal}岩石{}提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "将此卡作为{C:attention}素材{}进行{C:joy_synchro}同调召唤{}时",
                        "召唤怪兽获得以下能力：",
                        "{s:0.9}每张牌组中的{s:0.9,C:diamonds}方片{s:0.9}提供{s:0.9,C:mult}+#1#{s:0.9}倍率"
                    }
                },
                joy_transfer_ability = {
                    "每张牌组中的{C:diamonds}方片{}提供{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                },
            },
            j_joy_adaman_dragite = {
                name = "{C:joy_synchro}魔救之奇迹-巨龙晶石",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "每张发掘出的{C:diamonds}方片{}使本回合获得{X:chips,C:white}X#2#{}筹码",
                        "若发掘出{C:attention}#1#张或更多则生成{C:attention}#3#张{C:joy_normal}主卡组岩石{}",
                        "{C:inactive}(当前 {X:chips,C:white}X#4#{}{C:inactive}筹码)"
                    },
                    {
                        "打出的{C:diamonds}方片{}永久获得",
                        "手牌持有时间{C:chips}+#5#{}额外筹码"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_normal}岩石族{} {C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
            j_joy_adaman_leonite = {
                name = "{C:joy_synchro}魔救之奇迹-狮子晶石",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "每张发掘出的{C:diamonds}方片{}使本回合获得{X:mult,C:white}X#2#{}倍率",
                        "若发掘出{C:attention}#1#张或更多则生成{C:attention}#3#张{C:joy_normal}主卡组岩石{}",
                        "{C:inactive}(当前 {X:mult,C:white}X#4#{}{C:inactive}倍率)"
                    },
                    {
                        "打出的{C:diamonds}方片{}永久获得",
                        "手牌持有时间{C:mult}+#5#{}额外倍率"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_normal}岩石族{} {C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
            j_joy_adaman_raptite = {
                name = "{C:joy_synchro}魔救之奇迹-猛禽晶石",
                text = {
                    {
                        "{C:attention}发掘{}并检查顶部{C:attention}#1#张牌：",
                        "每张发掘出的{C:diamonds}方片{}获得{C:money}+$#2#{}金钱",
                        "若发掘出{C:attention}#1#张或更多则生成{C:attention}#3#张{C:joy_normal}主卡组岩石{}"
                    },
                    {
                        "打出的{C:diamonds}方片{}永久获得",
                        "回合结束时手牌持有时间{C:money}+$#4#{}额外金钱"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_normal}岩石族{} {C:joy_synchro}调整{} +",
                    "{C:attention}1张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9}或{s:0.9,C:joy_link}连接{s:0.9}外)"
                }
            },
            j_joy_adaman_laputite = {
                name = "{C:joy_spell}魔救之勒皮他晶石",
                text = {
                    {
                        "每张{C:joy_normal}岩石{}提供{C:mult}+#1#{}倍率"
                    },
                    {
                        "选择{C:attention}盲注{}时",
                        "向手牌添加1张随机强化{C:diamonds}方片{}"
                    },
                    {
                        "选择{C:attention}盲注{}时{C:attention}发掘{}的卡牌",
                        "会触发{C:joy_normal}「魔救」{}能力"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_adaman = "魔救",
        }
    }
}