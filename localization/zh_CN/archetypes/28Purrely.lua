return {
    descriptions = {
        Joker = {
            j_joy_purr_purrely = {
                name = "{C:joy_effect}纯爱妖精",
                text = {
                    {
                        "{C:attention}发掘{}并检查牌顶的{C:attention}#1#{}张：",
                        "向每张没有蜡封的卡牌添加一个{C:attention}回忆蜡封{}",
                    },
                    {
                        "你可以销毁一张选中的带有{C:attention}回忆蜡封{}的游戏牌，",
                        "将本卡牌{C:attention}变形{}为对应的{C:joy_normal}“亲历纯爱妖精”{}{C:joy_xyz}超量{}",
                        "{C:inactive}（这视为1个素材的超量召唤）",
                    }
                }
            },
            j_joy_purr_purrelyly = {
                name = "{C:joy_effect}纯爱妖精·夜妖精",
                text = {
                    {
                        "获得时及回合结束时，",
                        "生成{C:attention}#1#{}张{C:planet}“我的纯爱妖精朋友”{}",
                    },
                    {
                        "若牌组中存在带有{C:attention}回忆蜡封{}的卡牌，",
                        "则选择{C:attention}盲注{}时{C:attention}发掘{}直到翻到一张，",
                        "将复制品加入牌组，并将本卡牌{C:attention}变形{}",
                        "为对应蜡封的{C:joy_normal}“亲历纯爱妖精”{}{C:joy_xyz}超量{}",
                        "{C:inactive}（这视为1个素材的超量召唤）",
                    }
                }
            },
            j_joy_purr_eplump = {
                name = "{C:joy_xyz}亲历纯爱妖精·丰满妖精",
                text = {
                    {
                        "计分手牌中每张带有{C:attention}美味蜡封{}的卡牌",
                        "根据计分牌型中不同花色的数量{C:attention}#1#{}次再次触发",
                        "牌组中每有{C:attention}#3#{}个{C:attention}美味蜡封{}增加{C:attention}#2#{}次"
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}#4#{}：",
                        "随机{C:attention}除外{} #5#{}张{C:joy_normal}“纯爱妖精”{}",
                        "直至选择{C:attention}盲注{}"
                    },
                    {
                        "若此卡牌没有素材，",
                        "则在底注结束时{C:attention}变形{}为{C:joy_effect}“纯爱妖精”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}天使族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）"
                }
            },
            j_joy_purr_ebeauty = {
                name = "{C:joy_xyz}亲历纯爱妖精·美丽妖精",
                text = {
                    {
                        "计分手牌中每张带有{C:attention}可爱蜡封{}的卡牌",
                        "根据计分牌型中不同花色的数量{C:attention}#1#{}次再次触发",
                        "牌组中每有{C:attention}#3#{}个{C:attention}可爱蜡封{}增加{C:attention}#2#{}次"
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}#4#{}：",
                        "你可以{C:attention}解放{} #5#{}张{C:planet}星球牌{}",
                        "在商店中获得{C:attention}#6#{}次免费重掷"
                    },
                    {
                        "若此卡牌没有素材，",
                        "则在底注结束时{C:attention}变形{}为{C:joy_effect}“纯爱妖精”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}天使族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）"
                }
            },
            j_joy_purr_ehappiness = {
                name = "{C:joy_xyz}亲历纯爱妖精·幸福妖精",
                text = {
                    {
                        "计分手牌中每张带有{C:attention}快乐蜡封{}的卡牌",
                        "根据计分牌型中不同花色的数量{C:attention}#1#{}次再次触发",
                        "牌组中每有{C:attention}#3#{}个{C:attention}快乐蜡封{}增加{C:attention}#2#{}次"
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}#4#{}：",
                        "每回合一次，生成{C:attention}#5#{}张",
                        "{C:joy_normal}主卡组“纯爱妖精”{}"
                    },
                    {
                        "若此卡牌没有素材，",
                        "则在底注结束时{C:attention}变形{}为{C:joy_effect}“纯爱妖精”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}天使族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）"
                }
            },
            j_joy_purr_enoir = {
                name = "{C:joy_xyz}亲历纯爱妖精·黑暗妖精",
                text = {
                    {
                        "计分手牌中每张带有{C:attention}瞌睡蜡封{}的卡牌",
                        "根据计分牌型中不同花色的数量{C:attention}#1#{}次再次触发",
                        "牌组中每有{C:attention}#3#{}个{C:attention}瞌睡蜡封{}增加{C:attention}#2#{}次"
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}#4#{}：",
                        "{C:attention}发掘{}并检查牌组顶端的卡牌，",
                        "将其变为手牌中选中的一张卡牌"
                    },
                    {
                        "若此卡牌没有素材，",
                        "则在底注结束时{C:attention}变形{}为{C:joy_effect}“纯爱妖精·夜妖精”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}天使族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）"
                }
            },
            j_joy_purr_exhappiness = {
                name = "{C:joy_xyz}历练纯爱妖精·幸福妖精",
                text = {
                    {
                        "带有{C:attention}回忆蜡封{}的计分卡牌提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}一半{C:inactive}（向上取整）{}：",
                        "本回合{C:planet}“我的纯爱妖精朋友”{}使用时",
                        "提供其出售时的能力"
                    },
                    {
                        "回合结束时生成等同于你拥有的",
                        "不同名称的{C:joy_normal}“纯爱妖精”{}数量的",
                        "{C:dark_edition}负片{}{C:planet}“我的纯爱妖精朋友”{}，此外，若此卡牌没有素材，",
                        "则{C:attention}变形{}为{C:joy_effect}“纯爱妖精”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{}张{C:joy_normal}天使族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或{C:attention}1{}张{C:joy_normal}天使族{}{C:joy_xyz}超量{}",
                    "{s:0.9,C:inactive}（转移其素材）",
                }
            },
            j_joy_purr_exnoir = {
                name = "{C:joy_xyz}历练纯爱妖精·黑暗妖精",
                text = {
                    {
                        "带有{C:attention}回忆蜡封{}的计分卡牌提供{X:chips,C:white}X#1#{}筹码"
                    },
                    {
                        "{C:joy_normal}“纯爱妖精”{}的效果使游戏牌",
                        "再次触发的次数翻倍"
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}一半{C:inactive}（向上取整）{}：",
                        "本回合手牌中{C:attention}回忆蜡封{}的效果",
                        "如同被计分一般触发"
                    },
                    {
                        "若此卡牌没有素材，",
                        "则在回合结束时{C:attention}变形{}为{C:joy_effect}“纯爱妖精·夜妖精”{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{}张{C:joy_normal}天使族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或{C:attention}1{}张{C:joy_normal}天使族{}{C:joy_xyz}超量{}",
                    "{s:0.9,C:inactive}（转移其素材）",
                }
            },
            j_joy_purr_street = {
                name = "{C:joy_spell}流浪纯爱妖精小径",
                text = {
                    {
                        "启用{C:attention}纯爱妖精跳越！？{}牌型"
                    },
                    {
                        "{C:joy_normal}“纯爱妖精”{}以及带有{C:attention}回忆蜡封{}的卡牌",
                        "不会被无效"
                    },
                    {
                        "当{C:planet}“我的纯爱妖精朋友”{}将要施加蜡封时",
                        "向随机一张{C:joy_xyz}超量{}附着{C:attention}#1#{}个素材",
                        "{C:inactive}（即使已施加过）{}"
                    },
                    {
                        "每回合一次，如果你整个牌组中有{C:attention}#2#{}张或更多",
                        "带有{C:attention}回忆蜡封{}的卡牌，",
                        "你可以将{C:joy_xyz}“亲历纯爱妖精·幸福妖精”{}",
                        "或{C:joy_xyz}“亲历纯爱妖精·黑暗妖精”{}{C:attention}变形{}为对应的{C:joy_normal}“历练纯爱妖精”{}",
                        "{C:inactive}（这视为超量召唤，并转移包括自身在内的所有素材）{}"
                    }
                }
            },
        },
        Planet = {
            c_joy_purr_friend = {
                name = "{C:joy_spell}我的纯爱妖精朋友",
                text = {
                    {
                        "({V:1}级.#1#{}) 升级",
                        "{C:attention}#2#",
                        "{C:mult}+#3#{}倍率 和",
                        "{C:chips}+#4#{}筹码",
                    },
                    {
                        "出售时，向手牌中",
                        "一张选中的卡牌施加",
                        "一个{C:attention}回忆蜡封{}"
                    }
                },
            }
        },
        Spectral = {
            c_joy_purr_happy = {
                name = "{C:joy_spell}纯爱妖精快乐回忆",
                text = {
                    {
                        "生成{C:attention}1{}张{C:joy_effect}“纯爱妖精”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "向手牌中最多{C:attention}5{}张",
                        "选中的{C:hearts}红桃{}添加一个{C:attention}快乐蜡封{}"
                    },
                    {
                        "你拥有的一张随机{C:joy_xyz}超量{}{C:attention}卡牌{}",
                        "获得以下效果：",
                        "{s:0.9}打出手牌中的每张计分牌根据{s:0.9,C:joy_xyz}超量{s:0.9}{s:0.9,C:attention}素材{}数量再次触发",
                        "{s:0.9} ",
                        "{s:0.9}回合结束时{C:attention}取除{}1个素材{s:0.9}",
                    }
                },
                joy_transfer_ability = {
                    "打出手牌中的每张计分牌根据",
                    "每个{C:joy_xyz}超量{}{C:attention}素材{}再次触发1次",
                    " ",
                    "回合结束时{C:attention}取除{}1个素材",
                }
            },
c_joy_purr_sleepy = {
                name = "{C:joy_spell}纯爱妖精瞌睡回忆",
                text = {
                    {
                        "生成{C:attention}1{}张{C:joy_effect}“纯爱妖精·夜妖精”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "向手牌中最多{C:attention}5{}张",
                        "选中的{C:clubs}梅花{}添加一个{C:attention}瞌睡蜡封{}"
                    },
                    {
                        "你拥有的一张随机{C:joy_xyz}超量{}{C:attention}卡牌{}",
                        "获得以下效果：",
                        "{s:0.9}选择{C:attention}盲注{}时，本回合根据每个{s:0.9,C:joy_xyz}超量{s:0.9}{s:0.9,C:attention}素材{}",
                        "{s:0.9}提供{C:attention}+1{}手牌上限",
                        "{s:0.9} ",
                        "{s:0.9}回合结束时{C:attention}取除{}1个素材{s:0.9}",
                    }
                },
                joy_transfer_ability = {
                    "选择{C:attention}盲注{}时，本回合根据每个",
                    "{C:joy_xyz}超量{}{C:attention}素材{}提供{C:attention}+1{}手牌上限",
                    " ",
                    "回合结束时{C:attention}取除{}1个素材",
                }
            },
            c_joy_purr_pretty = {
                name = "{C:joy_spell}纯爱妖精可爱回忆",
                text = {
                    {
                        "生成{C:attention}1{}张{C:joy_effect}“纯爱妖精”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "向手牌中最多{C:attention}5{}张",
                        "选中的{C:diamonds}方片{}添加一个{C:attention}可爱蜡封{}"
                    },
                    {
                        "你拥有的一张随机{C:joy_xyz}超量{}{C:attention}卡牌{}",
                        "获得以下效果：",
                        "{s:0.9}当一张卡牌被{C:attention,s:0.9}解放{}时，",
                        "{s:0.9}附着{C:attention}1{}个{C:joy_xyz}超量{}{C:attention}素材{}",
                        "{s:0.9} ",
                        "{s:0.9}回合结束时{C:attention}取除{}1个素材{s:0.9}",
                    }
                },
                joy_transfer_ability = {
                    "当一张卡牌被{C:attention}解放{}时，",
                    "附着{C:attention}1{}个{C:joy_xyz}超量{}{C:attention}素材{}",
                    " ",
                    "回合结束时{C:attention}取除{}1个素材",
                }
            },
            c_joy_purr_delicious = {
                name = "{C:joy_spell}纯爱妖精美味回忆",
                text = {
                    {
                        "生成{C:attention}1{}张{C:joy_effect}“纯爱妖精”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "向手牌中最多{C:attention}5{}张",
                        "选中的{C:spades}黑桃{}添加一个{C:attention}美味蜡封{}"
                    },
                    {
                        "你拥有的一张随机{C:joy_xyz}超量{}{C:attention}卡牌{}",
                        "获得以下效果：",
                        "{s:0.9}本卡牌根据每个{s:0.9,C:joy_xyz}超量{s:0.9}{s:0.9,C:attention}素材{}",
                        "{s:0.9}提供{C:mult}+#1#{}倍率",
                        "{s:0.9} ",
                        "{s:0.9}回合结束时{C:attention}取除{}1个素材{s:0.9}",
                    }
                },
                joy_transfer_ability = {
                    "本卡牌根据每个{C:joy_xyz}超量{}{C:attention}素材{}",
                    "提供{C:mult}+#1#{}倍率",
                    " ",
                    "回合结束时{C:attention}取除{}1个素材",
                }
            },
        },
        Other = {
            joy_purr_memory_seal = {
                name = "回忆蜡封",
                text = {
                    "根据花色改变效果：",
                    "{C:hearts}红桃{}：{C:attention}快乐{}",
                    "{C:clubs}梅花{}：{C:attention}瞌睡{}",
                    "{C:diamonds}方片{}：{C:attention}可爱{}",
                    "{C:spades}黑桃{}：{C:attention}美味{}"
                }
            },
            joy_purr_memory_seal_happy = {
                name = "快乐蜡封",
                text = {
                    "{C:green}#1#/#2#{}几率在计分时",
                    "生成一张{C:joy_effect}“纯爱妖精”{}",
                    "{C:inactive}（必须有槽位）",
                    " ",
                    "计分时提供{C:mult}+#3#{}倍率",
                    "每有一张其他不同花色的卡牌",
                    "增加{C:mult}+#3#{}倍率",
                    " ",
                    "适用于基础{C:hearts}红桃{}"
                }
            },
            joy_purr_memory_seal_sleepy = {
                name = "瞌睡蜡封",
                text = {
                    "{C:green}#1#/#2#{}几率在计分时",
                    "生成一张{C:joy_effect}“纯爱妖精·夜妖精”{}",
                    "{C:inactive}（必须有槽位）",
                    " ",
                    "计分时提供{C:chips}+#4#{}筹码",
                    "每有一张其他不同花色的卡牌",
                    "增加{C:chips}+#4#{}筹码",
                    " ",
                    "适用于基础{C:clubs}梅花{}"
                }
            },
            joy_purr_memory_seal_pretty = {
                name = "可爱蜡封",
                text = {
                    "{C:green}#1#/#2#{}几率在计分时",
                    "生成一张{C:joy_effect}“纯爱妖精”{}",
                    "{C:inactive}（必须有槽位）",
                    " ",
                    "计分时提供{C:money}+$#5#{}金钱",
                    "每有一张其他不同花色的卡牌",
                    "增加{C:money}+$#5#{}金钱",
                    " ",
                    "适用于基础{C:diamonds}方片{}"
                }
            },
            joy_purr_memory_seal_delicious = {
                name = "美味蜡封",
                text = {
                    "{C:green}#1#/#2#{}几率在计分时",
                    "生成一张{C:joy_effect}“纯爱妖精”{}",
                    "{C:inactive}（必须有槽位）",
                    " ",
                    "{C:green}#6#/#7#{}几率在计分时",
                    "生成一张{C:planet}“我的纯爱妖精朋友”{}",
                    "每有一张其他不同花色的卡牌",
                    "增加几率",
                    " ",
                    "适用于基础{C:spades}黑桃{}"
                }
            },
            joy_purr_memory_seal_inactive = {
                name = "回忆蜡封",
                text = {
                    "没有效果"
                }
            },
        },
        JoyPokerHand = { -- TODO: 如未使用则删除
            phd_joy_purr_yeap = {
                name = "纯爱妖精跳越！？",
                text = {
                    "4张或更多不同花色的卡牌",
                },
            }
        }
    },
    JoyousSpring = {
        Blurbs = {
            purr = {
                story = {
                    "一座时尚的小镇，有着色彩缤纷的房屋、咖啡馆与商店。在这座淡彩色的小镇中，生活着{C:joy_normal}“纯爱妖精”{}们，它们与人们共同生活，与男孩女孩们一同成长。",
                },
                gameplay = {
                    "忘掉同花，尝试在一手牌中打出尽可能多的花色吧！这些毛茸茸的小家伙与其他能触发额外{C:attention}牌型{}的主题搭配起来效果极佳！"
                }
            }
        }
    },
    misc = {
        poker_hands = {
            joy_purr_yeap = "纯爱妖精跳越！？"
        },
        poker_hand_descriptions = {
            joy_purr_yeap = {
                "4张或更多不同花色的卡牌",
                "{C:inactive}（必须由能力启用）"
            }
        },
        labels = {
            joy_purr_memory_seal = "回忆蜡封",
        },
        dictionary = {
            k_joy_archetype_purr = "纯爱妖精",
        }
    }
}