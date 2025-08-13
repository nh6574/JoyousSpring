return {
    descriptions = {
        Joker = {
            j_joy_adaman_analyzer = {
                name = "{C:joy_effect}护灵机·分析者",
                text = {
                    {
                        "{C:attention}发掘{}并查看牌顶{C:attention}#1#张：",
                        "本回合计分牌每有1张{C:diamonds}方块{}额外{C:chips}+#2#{}筹码",
                        "每发掘1张{C:diamonds}方块{}再额外{C:chips}+#2#{}筹码",
                        "{C:inactive}（当前{C:chips}+#3#{} {C:inactive}筹码）"
                    },
                    {
                        "每底注1次，在{C:attention}#5#次包含{C:diamonds}方块同花{}的出牌后",
                        "生成{C:attention}#4#张{C:joy_normal}主牌组岩石{}",
                        "{C:inactive}（需有栏位）（剩余#6#次）{}"
                    },
                    {
                        "若持有{C:joy_normal}岩石{C:attention}小丑牌{}，则免费获得"
                    },
                }
            },
            j_joy_adaman_researcher = {
                name = "{C:joy_effect}护灵机·研究员",
                text = {
                    {
                        "{C:attention}发掘{}并查看牌顶{C:attention}#1#张：",
                        "本回合计分牌每有1张{C:diamonds}方块{}额外{C:money}+$#2#{}",
                        "每发掘1张{C:diamonds}方块{}再额外{C:money}+$#2#{}",
                        "{C:inactive}（当前{C:money}+$#3#{} {C:inactive}）"
                    },
                    {
                        "每底注1次，在{C:attention}#5#次包含{C:diamonds}方块同花{}的出牌后",
                        "生成{C:attention}#4#张{C:joy_normal}主牌组岩石{}",
                        "{C:inactive}（需有栏位）（剩余#6#次）{}"
                    },
                    {
                        "若持有{C:joy_normal}岩石{C:attention}小丑牌{}，则免费获得"
                    },
                }
            },
            j_joy_adaman_seeker = {
                name = "{C:joy_effect}护灵机·探索者",
                text = {
                    {
                        "{C:attention}发掘{}并查看牌顶{C:attention}#1#张：",
                        "本回合计分牌每有1张{C:diamonds}方块{}额外{C:mult}+#2#{}倍数",
                        "每发掘1张{C:diamonds}方块{}再额外{C:mult}+#2#{}倍数",
                        "{C:inactive}（当前{C:mult}+#3#{} {C:inactive}倍数）"
                    },
                    {
                        "每底注1次，在{C:attention}#5#次包含{C:diamonds}方块同花{}的出牌后",
                        "生成{C:attention}#4#张{C:joy_normal}主牌组岩石{}",
                        "{C:inactive}（需有栏位）（剩余#6#次）{}"
                    },
                    {
                        "若持有{C:joy_normal}岩石{C:attention}小丑牌{}，则免费获得"
                    },
                }
            },
            j_joy_adaman_crysdragite = {
                name = "{C:joy_effect}护灵晶体·龙石",
                text = {
                    {
                        "每有1张手牌{C:diamonds}方块{}，",
                        "每有1张{C:joy_normal}岩石{}额外{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）"
                    },
                    {
                        "以本卡为{C:attention}素材{}召唤的{C:joy_synchro}同调{}怪兽获得以下能力：",
                        "{s:0.9,C:chips}+#1#{s:0.9}筹码×牌组中{s:0.9,C:diamonds}方块{s:0.9}数量"
                    }
                },
                joy_transfer_ability = {
                    "每有1张牌组{C:diamonds}方块{}，{C:chips}+#1#{}筹码",
                    "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）"
                },
            },
            j_joy_adaman_crysraptite = {
                name = "{C:joy_effect}护灵晶体·翼石",
                text = {
                    {
                        "每有1张手牌{C:diamonds}方块{}，",
                        "每有1张{C:joy_normal}岩石{}额外{C:money}+$#1#{}",
                        "{C:inactive}（当前{C:money}+$#2#{} {C:inactive}）"
                    },
                    {
                        "以本卡为{C:attention}素材{}召唤的{C:joy_synchro}同调{}怪兽获得以下能力：",
                        "{s:0.9,C:money}回合结束+$#1#{s:0.9}×牌组中{s:0.9,C:diamonds}方块{s:0.9}数量"
                    }
                },
                joy_transfer_ability = {
                    "回合结束{C:money}+$#1#{}×牌组中{C:diamonds}方块{}数量",
                    "{C:inactive}（当前{C:money}+$#2#{} {C:inactive}）"
                },
            },
            j_joy_adaman_crysleonite = {
                name = "{C:joy_effect}护灵晶体·狮石",
                text = {
                    {
                        "每有1张手牌{C:diamonds}方块{}，",
                        "每有1张{C:joy_normal}岩石{}额外{C:mult}+#1#{}倍数",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍数）"
                    },
                    {
                        "以本卡为{C:attention}素材{}召唤的{C:joy_synchro}同调{}怪兽获得以下能力：",
                        "{s:0.9,C:mult}+#1#{s:0.9}倍数×牌组中{s:0.9,C:diamonds}方块{s:0.9}数量"
                    }
                },
                joy_transfer_ability = {
                    "每有1张牌组{C:diamonds}方块{}，{C:mult}+#1#{}倍数",
                    "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍数）"
                },
            },
            j_joy_adaman_dragite = {
                name = "{C:joy_synchro}护灵龙·龙石",
                text = {
                    {
                        "{C:attention}发掘{}并查看牌顶{C:attention}#1#张：",
                        "本回合每发掘1张{C:diamonds}方块{}{X:chips,C:white}X#2#{}额外筹码",
                        "若发掘{C:attention}#1#张或以上，则生成{C:attention}#3#张{C:joy_normal}主牌组岩石{}",
                        "{C:inactive}（当前{X:chips,C:white}X#4#{} {C:inactive}筹码）"
                    },
                    {
                        "被计分的{C:diamonds}方块{}永久获得",
                        "手牌中时额外{C:chips}+#5#{}筹码"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}岩石{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）"
                }
            },
            j_joy_adaman_leonite = {
                name = "{C:joy_synchro}护灵龙·狮石",
                text = {
                    {
                        "{C:attention}发掘{}并查看牌顶{C:attention}#1#张：",
                        "本回合每发掘1张{C:diamonds}方块{}{X:mult,C:white}X#2#{}额外倍数",
                        "若发掘{C:attention}#1#张或以上，则生成{C:attention}#3#张{C:joy_normal}主牌组岩石{}",
                        "{C:inactive}（当前{X:mult,C:white}X#4#{} {C:inactive}倍数）"
                    },
                    {
                        "被计分的{C:diamonds}方块{}永久获得",
                        "手牌中时额外{C:mult}+#5#{}倍数"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}岩石{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）"
                }
            },
            j_joy_adaman_raptite = {
                name = "{C:joy_synchro}护灵龙·翼石",
                text = {
                    {
                        "{C:attention}发掘{}并查看牌顶{C:attention}#1#张：",
                        "每发掘1张{C:diamonds}方块{}{C:money}+$#2#{}",
                        "若发掘{C:attention}#1#张或以上，则生成{C:attention}#3#张{C:joy_normal}主牌组岩石{}"
                    },
                    {
                        "被计分的{C:diamonds}方块{}永久获得",
                        "回合结束时手牌中额外{C:money}+$#4#{}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}岩石{C:joy_synchro}同调{} +",
                    "{C:attention}1{}张非{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）"
                }
            },
            j_joy_adaman_laputite = {
                name = "{C:joy_spell}护灵石·拉普提特",
                text = {
                    {
                        "每有1张{C:joy_normal}岩石{}{C:mult}+#1#{}倍数"
                    },
                    {
                        "选择盲注时向手牌添加1张随机已强化{C:diamonds}方块{}"
                    },
                    {
                        "选择盲注时发掘的所有牌",
                        "均按{C:joy_normal}“护灵机”{}能力结算"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_adaman = "护灵机",
        }
    }
}