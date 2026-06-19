return {
    descriptions = {
        Joker = {
            j_joy_dm_dm = {
                name = "{C:joy_normal}黑魔术师",
                text = {
                    {
                        "{E:1}在攻击和守备方面都是最顶尖的魔术师。",
                    }
                }
            },
            j_joy_dm_dmg = {
                name = "{C:joy_effect}黑魔术少女",
                text = {
                    {
                        "{C:attention}墓地{}中每张{C:joy_normal}魔法师族{}提供{C:mult}+#1#{}倍率",
                        "拥有的每张{C:joy_normal}“黑魔术师”{}使此倍率增加{C:mult}+#2#{}",
                        "{C:inactive}（当前{C:mult}+#3#{}{C:inactive}倍率）"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_apprentice = {
                name = "{C:joy_effect}幻想之见习魔导师",
                text = {
                    {
                        "每张{C:joy_normal}魔法师族{}提供{C:mult}+#1#{}倍率"
                    },
                    {
                        "选择{C:attention}首领盲注{}时，你所拥有的",
                        "每张{C:joy_effect}效果{}{C:joy_dark}暗属性{}{C:joy_normal}魔法师族{}",
                        "{C:attention}复活1{}张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "{C:inactive}（无需槽位）",
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_chromagician = {
                name = "{C:joy_effect}年代记魔术师",
                text = {
                    {
                        "每张{C:joy_normal}通常{}{C:attention}卡牌{}提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（衍生物除外）{}"
                    },
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}#2#{}张",
                        "{C:joy_normal}通常{}{C:attention}卡牌{}送入{C:attention}墓地{}"
                    },
                    {
                        "击败{C:attention}首领盲注{}时，",
                        "{C:attention}复活1{}张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "{C:inactive}（无需槽位）",
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_sorceress = {
                name = "{C:joy_effect}年代记女巫",
                text = {
                    {
                        "{C:attention}墓地{}中每张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）"
                    },
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}#3#{}张",
                        "{C:joy_normal}“黑魔术师”{}送入{C:attention}墓地{}"
                    },
                    {
                        "出售此卡，以{C:attention}复活{}所有",
                        "与你拥有的另一张{C:attention}卡牌{}",
                        "具有相同{C:attention}种族{}和{C:attention}属性{}的",
                        "{C:joy_normal}通常{}{C:attention}卡牌{}复制品",
                        "{C:inactive}（无需槽位）",
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_knight = {
                name = "{C:joy_effect}黑魔术骑士",
                text = {
                    {
                        "所有{C:attention}骑士{}再次触发一次",
                        "每张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "增加{C:attention}1{}次再次触发",
                        "{C:inactive}（衍生物除外）{}",
                        "{C:inactive}（当前{C:attention}#1#{}{C:inactive}次再次触发）"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_chaos = {
                name = "{C:joy_effect}混沌之黑魔术师",
                text = {
                    {
                        "每回合一次，你可以{C:attention}解放 #1#{}张{C:tarot}塔罗牌{}，",
                        "以生成{C:attention}墓地{}中{C:attention}1{}张{C:joy_spell}场地魔法{}的复制品"
                    },
                    {
                        "回合结束时将此卡和一张",
                        "{C:joy_effect}效果{}{C:joy_normal}魔法师族{}",
                        "{C:attention}除外{}直至选择{C:attention}盲注{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_darkillusion = {
                name = "{C:joy_effect}黑幻想之魔术师",
                text = {
                    {
                        "每回合一次，你可以{C:attention}解放1{}张{C:tarot}塔罗牌{}，",
                        "以{C:attention}复活1{}张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "并以{C:dark_edition}负片{}状态生成"
                    },
                    {
                        "在{C:attention}#1#{}张{C:tarot}塔罗牌{}被{C:attention}解放{}后，",
                        "将一张随机的{C:joy_spell}场地魔法{}变为{C:dark_edition}负片{}",
                        "{C:inactive}（一旦可行即执行）（#2#/#1#）{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_robe = {
                name = "{C:joy_effect}魔术师之袍",
                text = {
                    {
                        "每回合一次，你可以{C:attention}解放1{}张{C:tarot}塔罗牌{}，",
                        "以生成{C:attention}1{}张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "并获得{C:money}+$#1#{}金钱"
                    },
                    {
                        "若你拥有{C:joy_normal}“黑魔术师”{}，你可以出售此卡，",
                        "以生成{C:attention}1{}张{C:joy_spell}“黑术师的救出”{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_rod = {
                name = "{C:joy_effect}魔术师之杖",
                text = {
                    {
                        "每回合一次，你可以{C:attention}解放1{}张{C:joy_normal}魔法师族{}，",
                        "以生成{C:attention}1{}张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "并获得{C:money}+$#1#{}金钱"
                    },
                    {
                        "若你拥有{C:joy_normal}“黑魔术师”{}，你可以出售此卡，",
                        "以生成{C:attention}1{}张{C:joy_spell}“黑术师的救出”{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_souls = {
                name = "{C:joy_effect}魔术师双魂",
                text = {
                    {
                        "每{C:attention}#2#{}张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "每回合提供{C:attention}+#1#{}手牌上限",
                        "{C:inactive}（衍生物除外）（当前{C:attention}+#3#{C:inactive}）"
                    },
                    {
                        "若你拥有{C:joy_normal}“黑魔术师”{}，你可以出售此卡，",
                        "以生成{C:attention}1{}张{C:joy_spell}“黑术师的救出”{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_valkyria = {
                name = "{C:joy_effect}魔术女武神",
                text = {
                    {
                        "{C:joy_normal}魔法师族{}不能被无效",
                        "或{C:attention}反转{}为里侧表示",
                    },
                    {
                        "每回合一次，当一张{C:attention}消耗牌{}",
                        "被{C:attention}解放{}时，生成{C:attention}1{}张{C:joy_normal}通常{}{C:attention}卡牌{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                },
            },
            j_joy_dm_kuri = {
                name = "{C:joy_effect}魔术栗子球",
                text = {
                    {
                        "若你拥有{C:joy_normal}“黑魔术师”{}和{C:joy_effect}“黑魔术少女”{}，",
                        "防止{C:red}死亡{}然后销毁自身",
                        "{C:joy_effect}“黑术栗子球”{}的这个能力每局游戏只能使用一次"
                    },
                    {
                        "若本局游戏中已使用过上一项能力，",
                        "你可以出售此卡，向{C:joy_spell}额外卡组{}添加一张",
                        "{C:attention}召唤条件{}中记载了",
                        "{C:joy_normal}“黑魔术师”{}或{C:joy_effect}“黑魔术少女”{}的",
                        "{C:joy_fusion}融合{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_conjurer = {
                name = "{C:joy_effect}次元施法者",
                text = {
                    {
                        "你可以出售此卡，每有1张",
                        "其他{C:joy_normal}魔法师族{}便抽{C:attention}1{}张牌"
                    },
                    {
                        "免费获得，且若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_mahad = {
                name = "{C:joy_effect}守护神官 马哈德",
                text = {
                    {
                        "每张{C:joy_normal}“黑魔术师”{}提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "底注结束时生成{C:attention}1{}张{C:joy_normal}“黑魔术师”{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_mana = {
                name = "{C:joy_effect}守护神官 玛娜",
                text = {
                    {
                        "每张{C:joy_effect}“黑魔术少女”{}提供{X:chips,C:white}X#1#{}筹码"
                    },
                    {
                        "在{C:attention}#2#{}张{C:tarot}塔罗牌{}被{C:attention}解放{}后",
                        "生成{C:attention}1{}张{C:joy_normal}“黑魔术少女”{}{C:inactive}（#3#/#2#）{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_timaeus = {
                name = "{C:joy_effect}合体龙 蒂迈欧",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向{C:joy_spell}额外卡组{}添加一张",
                        "{C:attention}召唤条件{}中记载了",
                        "{C:joy_normal}“黑魔术师”{}或{C:joy_effect}“黑魔术少女”{}的",
                        "{C:joy_fusion}融合{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_fusion}融合{}",
                        "获得以下效果：",
                        "{s:0.9}其召唤所用每张{C:joy_normal}通常{}{s:0.9,C:attention}卡牌{}",
                        "{s:0.9}提供{C:mult}+#1#{s:0.9}倍率",
                    },
                },
                joy_transfer_ability = {
                    "其召唤所用每张{C:joy_normal}通常{}{C:attention}卡牌{}",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                }
            },
            j_joy_dm_warlock = {
                name = "{C:joy_effect}黑魔导执行官",
                text = {
                    {
                        "每回合一次，你可以{C:attention}解放1{}张",
                        "{C:joy_normal}通常{}或{C:joy_spell}场地魔法{}{C:attention}卡牌{}，",
                        "以立即完成{C:attention}盲注{}需求的{C:attention}#1#%{}",
                        "若{C:attention}解放{}了{C:joy_normal}“黑魔术师”{}则改为{C:attention}#2#%{}"
                    },
                    {
                        "若你拥有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_dm_blackchaos = {
                name = "{C:joy_ritual}黑混沌之魔术师",
                text = {
                    {
                        "{C:mult}+#1#{}倍率"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}魔法师族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_blackchaosmax = {
                name = "{C:joy_ritual}黑混沌之魔术师·黑导沌极魔导",
                text = {
                    {
                        "你可以{C:attention}解放{}所有{C:joy_normal}通常{}{C:attention}卡牌{}，",
                        "本底注中禁用所有{C:attention}盲注{}效果",
                    },
                    {
                        "底注结束时生成{C:attention}1{}张",
                        "{C:spectral}幻灵牌{}",
                        "{C:inactive}（必须有槽位）"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}魔法师族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_chaosritual = {
                name = "{C:joy_ritual}混沌之魔术师",
                text = {
                    {
                        "在{C:attention}#1#{}张{C:tarot}塔罗牌{}被消耗",
                        "或{C:attention}解放{}后，向{C:joy_link}副卡组{}",
                        "添加一张{C:joy_normal}魔法师族{}{C:joy_ritual}仪式{}{C:inactive}（#2#/#1#）{}"
                    },
                    {
                        "{C:joy_normal}魔法师族{}同时",
                        "视为{C:joy_normal}通常{}{C:attention}卡牌{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}魔法师族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_illusion = {
                name = "{C:joy_ritual}混沌之幻想魔术师",
                text = {
                    {
                        "此卡{C:attention}上场{}时，用于其召唤的",
                        "每张{C:joy_normal}魔法师族{}生成",
                        "一张{C:dark_edition}负片{}{C:joy_normal}“黑魔术师”{}"
                    },
                    {
                        "你可以出售此卡，以生成",
                        "{C:joy_effect}“黑术师双魂”{}、{C:joy_effect}“黑术师之杖”{}",
                        "或{C:joy_effect}“黑术师之袍”{}中的一张"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张以上{C:joy_normal}魔法师族{}",
                    "或{C:joy_normal}通常{}{C:attention}卡牌{}",
                    "无需槽位"
                }
            },
            j_joy_dm_amulet = {
                name = "{C:joy_fusion}咒符龙",
                text = {
                    {
                        "本局游戏中每张被{C:attention}除外{}的",
                        "{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）"
                    },
                    {
                        "选择{C:attention}盲注{}时，{C:attention}复活1{}张",
                        "{C:joy_normal}通常{}魔法师族{}，",
                        "若如此做，则{C:attention}复活1{}张",
                        "{C:joy_effect}效果{}{C:joy_normal}魔法师族{}",
                        "{C:inactive}（无需槽位）{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "+ {C:attention}1{}张{C:joy_normal}龙族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_timaeusmagical = {
                name = "{C:joy_fusion}合体魔龙 蒂迈欧",
                text = {
                    {
                        "本局游戏中每张被{C:attention}解放{}的",
                        "{C:tarot}塔罗牌{}、{C:joy_spell}场地魔法{}或{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "底注结束时销毁{C:attention}1{}张{C:joy_trap}对手{}卡牌",
                        "并获得{C:money}+$#3#{}金钱"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "或{C:joy_effect}“黑魔术少女”{}",
                    "+ {C:attention}1{}张{C:joy_normal}龙族{}",
                    "或{C:joy_normal}魔法师族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_cavalry = {
                name = "{C:joy_fusion}超魔导骑士-黑魔导骑兵",
                text = {
                    {
                        "本局游戏中每张被{C:attention}解放{}的",
                        "{C:tarot}塔罗牌{}提供{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）"
                    },
                    {
                        "选择{C:attention}盲注{}时，生成{C:attention}#3#{}张",
                        "{C:joy_normal}通常{}战士族{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "+ {C:attention}1{}张{C:joy_normal}战士族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_dragonknight = {
                name = "{C:joy_fusion}龙骑士 黑魔术师",
                text = {
                    {
                        "每张{C:joy_trap}对手{}卡牌",
                        "提供{X:chips,C:white}X#1#{}筹码",
                        "{C:inactive}（当前{X:chips,C:white}X#2#{}{C:inactive}筹码）"
                    },
                    {
                        "选择{C:attention}盲注{}时，生成{C:attention}#3#{}张",
                        "{C:joy_normal}通常{}龙族{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "+ {C:attention}1{}张{C:joy_normal}龙族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_dmgknight = {
                name = "{C:joy_fusion}龙骑士 黑魔术少女",
                text = {
                    {
                        "{C:attention}墓地{}中每张{C:joy_normal}魔法师族{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "选择{C:attention}盲注{}时，将{C:attention}#3#{}张",
                        "{C:joy_normal}通常{}魔法师族{}送入{C:attention}墓地{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_effect}“黑魔术少女”{}",
                    "+ {C:attention}1{}张{C:joy_normal}龙族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_destruction = {
                name = "{C:joy_fusion}毁灭之黑魔术师",
                text = {
                    {
                        "每张{C:joy_normal}通常{}{C:attention}卡牌{}提供{X:chips,C:white}X#1#{}筹码",
                        "{C:inactive}（衍生物除外）{}"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张",
                        "{C:joy_dark}暗属性{}{C:joy_normal}魔法师族{}",
                        "{C:inactive}（“毁灭之黑魔术师”除外）{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "+ {C:attention}1{}张{C:joy_light}光属性{}",
                    "或{C:joy_dark}暗属性{}{C:attention}卡牌{}",
                    "无需槽位"
                }
            },
            j_joy_dm_dragoon = {
                name = "{C:joy_fusion}超魔导龙骑士-真红眼龙骑士",
                text = {
                    {
                        "用于其{C:attention}召唤{}的每张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "若用于其{C:attention}召唤{}的素材中包含",
                        "{C:joy_normal}通常{}{C:attention}龙族{}，",
                        "则禁用所有{C:attention}决战盲注{}的效果"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "+ {C:attention}1{}张以上{C:joy_normal}通常{}{C:attention}卡牌{}",
                    "{C:inactive}（衍生物除外）{}",
                    "无需槽位"
                }
            },
            j_joy_dm_dragoon_alt = {
                name = "{C:joy_fusion}超魔导龙骑士-真红眼龙骑士",
                text = {
                    {
                        "用于其{C:attention}召唤{}的每张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "若用于其{C:attention}召唤{}的素材中包含",
                        "{C:joy_normal}通常{}{C:attention}龙族{}，",
                        "则禁用所有{C:attention}决战盲注{}的效果"
                    },
                    {
                        "若用于其{C:attention}召唤{}的素材中包含",
                        "{C:joy_normal}“真红眼黑龙”{}，",
                        "则回合结束时获得{C:money}+#3#{}金钱"
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "+ {C:attention}1{}张以上{C:joy_normal}通常{}{C:attention}卡牌{}",
                    "{C:inactive}（衍生物除外）{}",
                    "无需槽位"
                }
            },
            j_joy_dm_magicians = {
                name = "{C:joy_fusion}超魔导师-黑魔术师徒",
                text = {
                    {
                        "此卡被{C:attention}解放{}时，",
                        "生成{C:attention}1{}张{C:joy_normal}“黑魔术师”{}和{C:attention}1{}张{C:joy_effect}“黑魔术少女”{}，",
                        "并向商店添加一张{C:attention}召唤条件{}中",
                        "记载了其中之一的{C:joy_fusion}融合{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}“黑魔术师”{}",
                    "或{C:joy_effect}“黑魔术少女”{}",
                    "+ {C:attention}1{}张{C:joy_normal}魔法师族{}",
                    "无需槽位"
                }
            },
            j_joy_dm_ebonillusion = {
                name = "{C:joy_xyz}幻想之黑魔导师",
                text = {
                    {
                        "每个{C:joy_xyz}超量{}{C:attention}素材{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{}{C:mult}+#2#{}{C:inactive}倍率）{}",
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}#3#{}：生成{C:attention}#4#{}张",
                        "{C:joy_normal}通常{}魔法师族{}"
                    },
                    {
                        "当一张{C:tarot}塔罗牌{}被{C:attention}解放{}时，",
                        "{C:attention}附着{}一个{C:attention}素材{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}魔法师族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                }
            },
            j_joy_dm_ebonhigh = {
                name = "{C:joy_xyz}虚空之黑魔导师",
                text = {
                    {
                        "每个{C:joy_xyz}超量{}{C:attention}素材{}",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}（当前{}{C:chips}+#2#{}{C:inactive}筹码）{}",
                    },
                    {
                        "{C:joy_xyz}取除{}{C:attention}#3#{}：生成{C:attention}#4#{}张",
                        "{C:tarot}塔罗牌{}，且本局游戏剩余时间内",
                        "{C:tarot}塔罗牌{}可能出现多次"
                    },
                    {
                        "当一张{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "被{C:attention}解放{}时，{C:attention}附着{}一个{C:attention}素材{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}魔法师族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                }
            },
            j_joy_dm_salvation = {
                name = "{C:joy_spell}魔术师的救出",
                text = {
                    {
                        "若你拥有{C:joy_normal}“黑魔术师”{}和{C:joy_effect}“黑魔术少女”{}，",
                        "回合结束时将所有{C:joy_normal}通常{}{C:attention}卡牌{}",
                        "{C:attention}除外{}直至选择{C:attention}盲注{}",
                    },
                    {
                        "回合结束时{C:attention}复活{}最多{C:attention}1{}张",
                        "{C:joy_normal}“黑魔术师”{}和最多{C:attention}1{}张",
                        "{C:joy_effect}“黑魔术少女”{}",
                        "{C:inactive}（无需槽位）{}"
                    },
                    {
                        "{C:joy_normal}通常{}{C:attention}卡牌{}同时",
                        "视为{C:joy_normal}魔法师族{}"
                    }
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            dm = {
                gameplay = {
                    "这些卡牌围绕支援其他{C:joy_normal}魔法师{}系列以及强化{C:joy_normal}通常{}{C:attention}卡牌{}策略展开！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_dm = "黑魔术师",
            ph_magikuriboh = "被魔术栗子球拯救",
        }
    }
}