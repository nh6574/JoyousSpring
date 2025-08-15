return {
    descriptions = {
        Joker = {
            j_joy_lab_clock = {
                name = "{C:joy_effect}迷宫布谷钟",
                text = {
                    {
                        "你可以{C:attention}解放本卡，",
                        "将手牌中{C:attention}#1#张随机牌翻面为里侧（洗牌），",
                        "该牌被计分时永久获得{C:mult}+#2#{}倍率，",
                        "然后{C:attention}复活#3张{C:blue}普通{C:joy_normal}“迷宫”{}（除“迷宫布谷钟”外，需有栏位）"
                    }
                }
            },
            j_joy_lab_stovie = {
                name = "{C:joy_effect}迷宫炖锅托比",
                text = {
                    {
                        "你可以{C:attention}解放本卡与另1张小丑牌，",
                        "将手牌中{C:attention}#1#张随机牌翻面为里侧（洗牌），",
                        "该牌被计分时永久获得{C:chips}+#2#{}筹码，",
                        "若解放了{C:joy_normal}恶魔族{}则额外{C:money}+$#3#"
                    }
                }
            },
            j_joy_lab_changdra = {
                name = "{C:joy_effect}迷宫烛台",
                text = {
                    {
                        "你可以{C:attention}解放本卡与另1张小丑牌，",
                        "将手牌中{C:attention}#1#张随机牌翻面为里侧（洗牌），",
                        "该牌被计分时永久获得{C:money}+$#2#，",
                        "若解放了{C:joy_normal}恶魔族{}则生成{C:attention}#3#个随机标签"
                    }
                }
            },
            j_joy_lab_ariane = {
                name = "{C:joy_effect}迷宫侍从·阿丽安",
                text = {
                    {
                        "{C:mult}+#1#{}倍率"
                    },
                    {
                        "本回合每将1张打出的牌{C:attention}翻面{}，",
                        "下次盲注手牌上限{C:attention}+#2#"
                    },
                    {
                        "若本回合翻面{C:attention}#3#张或以上，",
                        "下次商店添加1张{C:green}稀有{C:joy_normal}“迷宫”{}",
                        "{s:0.9,C:inactive}（本回合已翻面#4#张）"
                    }
                }
            },
            j_joy_lab_arianna = {
                name = "{C:joy_effect}迷宫侍从·阿丽安娜",
                text = {
                    {
                        "{C:chips}+#1#{}筹码"
                    },
                    {
                        "本回合每将1张打出的牌{C:attention}翻面{}，",
                        "下次盲注手牌上限{C:attention}+#2#"
                    },
                    {
                        "若本回合翻面{C:attention}#3#张或以上，",
                        "下次商店添加1张{C:blue}普通{C:joy_normal}“迷宫”{}",
                        "{s:0.9,C:inactive}（本回合已翻面#4#张）"
                    }
                }
            },
            j_joy_lab_arias = {
                name = "{C:joy_effect}迷宫管家·阿里亚斯",
                text = {
                    {
                        "每将1张打出的牌{C:attention}翻面{}{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）"
                    },
                    {
                        "若本回合翻面{C:attention}#3#张或以上，",
                        "下次商店添加1张{C:red}史诗{C:joy_normal}“迷宫”{}",
                        "{s:0.9,C:inactive}（本回合已翻面#4#张）"
                    },
                    {
                        "若持有{C:joy_normal}“迷宫”{}则免费获得"
                    }
                }
            },
            j_joy_lab_archfiend = {
                name = "{C:joy_effect}迷宫大恶魔",
                text = {
                    {
                        "每有1张{C:joy_normal}恶魔族{}在{C:attention}墓地}{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）"
                    },
                    {
                        "每当1张打出的牌被{C:attention}翻面{}，",
                        "随机将手牌中1张牌翻面为里侧（洗牌）"
                    }
                }
            },
            j_joy_lab_lovely = {
                name = "{C:joy_effect}银城可爱迷宫",
                text = {
                    {
                        "抽牌时{C:green}#1#/#2#{}几率将牌翻面为里侧",
                        "每有1张{C:joy_normal}恶魔族{}，几率提升"
                    },
                    {
                        "每有1张牌被{C:attention}翻面为里侧}{C:mult}+#3#{}倍率",
                        "{C:inactive}（当前{C:mult}+#4#{} {C:inactive}倍率）"
                    }
                }
            },
            j_joy_lab_lady = {
                name = "{C:joy_effect}银城迷宫贵妇人",
                text = {
                    {
                        "每有1张牌被{C:attention}翻面{}{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）"
                    },
                    {
                        "里侧{C:joy_normal}非陷阱恶魔族{}可使用",
                        "自身未激活的能力（包括本卡）"
                    }
                }
            },
            j_joy_lab_labyrinth = {
                name = "{C:joy_spell}迷宫迷宫",
                text = {
                    {
                        "每将1张小丑牌{C:attention}翻面{}{C:money}+$#1#{}"
                    },
                    {
                        "每当1张打出的牌被{C:attention}翻面{}{C:green}#2#/#3#{}几率",
                        "将手牌中1张随机牌翻面为里侧（洗牌）"
                    }
                }
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_lab = "迷宫"
        }
    }
}