return {
    descriptions = {
        Joker = {
            j_joy_zoo_horse = {
                name = "{C:joy_effect}十二兽 马剑",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向商店添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}{C:joy_xyz}超量{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时向商店添加",
                        "{s:0.9,C:attention}1{}张{s:0.9,C:joy_normal}“十二兽”{}"
                    },
                },
                joy_transfer_ability = {
                    "回合结束时向商店添加",
                    "{C:attention}1{}张{C:joy_normal}“十二兽”{}"
                },
            },
            j_joy_zoo_bunny = {
                name = "{C:joy_effect}十二兽 兔铳",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向商店添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}{C:joy_xyz}超量{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时生成{s:0.9,C:attention}1{}张{s:0.9,C:dark_edition}负片{}{s:0.9,C:tarot}塔罗牌{}",
                        "{s:0.9}和{s:0.9,C:attention}2{}张{s:0.9,C:dark_edition}负片{}{s:0.9,C:planet}星球牌{}"
                    },
                },
                joy_transfer_ability = {
                    "回合结束时生成{C:attention}1{}张{C:dark_edition}负片{}{C:tarot}塔罗牌{}",
                    "和{C:attention}2{}张{C:dark_edition}负片{}{C:planet}星球牌{}"
                },
            },
            j_joy_zoo_snake = {
                name = "{C:joy_effect}十二兽 蛇笞",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向商店添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}{C:joy_xyz}超量{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时将自身{C:attention}除外{}",
                        "{s:0.9}直至选择{s:0.9,C:attention}盲注{}"
                    },
                },
                joy_transfer_ability = {
                    "回合结束时将自身{C:attention}除外{}",
                    "直至选择{C:attention}盲注{}"
                },
            },
            j_joy_zoo_rooster = {
                name = "{C:joy_effect}十二兽 鸡拳",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向商店添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}{C:joy_xyz}超量{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}从{s:0.9,C:joy_xyz}超量{}中取除{s:0.9}{s:0.9,C:attention}素材{}时",
                        "{s:0.9}每取除1个素材提供{C:money}+$#1#{s:0.9}金钱"
                    },
                },
                joy_transfer_ability = {
                    "从{C:joy_xyz}超量{}中取除{C:attention}素材{}时",
                    "提供{C:money}+$#1#{}金钱"
                },
            },
            j_joy_zoo_ram = {
                name = "{C:joy_effect}十二兽 羊冲",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向商店添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}{C:joy_xyz}超量{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时{C:attention}复活1{}张{s:0.9,C:joy_normal}“十二兽”{}"
                    },
                },
                joy_transfer_ability = {
                    "回合结束时{C:attention}复活1{}张{C:joy_normal}“十二兽”{}"
                },
            },
            j_joy_zoo_rat = {
                name = "{C:joy_effect}十二兽 鼠骑",
                text = {
                    {
                        "此卡{C:attention}上场{}时，向商店添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}{C:joy_xyz}超量{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}每回合一次，从{s:0.9,C:joy_xyz}超量{}中取除{s:0.9}{s:0.9,C:attention}素材{}时",
                        "{s:0.9}生成{s:0.9,C:attention}1{}张{s:0.9,C:joy_effect}“十二兽 鼠骑”{}"
                    },
                },
                joy_transfer_ability = {
                    "每回合一次，从{C:joy_xyz}超量{}中取除{C:attention}素材{}时",
                    "生成{C:attention}1{}张{C:joy_effect}“十二兽 鼠骑”{}"
                },
            },
            j_joy_zoo_bull = {
                name = "{C:joy_xyz}十二兽 牛犄",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "每回合一次，生成{C:attention}1{}张",
                        "{C:joy_normal}主卡组“十二兽”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "保留所有用于召唤此卡的{C:attention}素材{}中的",
                        "{C:joy_normal}“十二兽”{}{C:attention}转移的效果{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}每张{C:joy_normal}“十二兽”{}提供{X:mult,C:white}X#2#{s:0.9}倍率"
                    },
                },
                joy_transfer_ability = {
                    "每张{C:joy_normal}“十二兽”{}提供{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:joy_normal}“十二兽”{}",
                    "{s:0.9,C:inactive}（若为{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}，转移其素材）",
                }
            },
            j_joy_zoo_dog = {
                name = "{C:joy_xyz}十二兽 狗环",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "每回合一次，",
                        "{C:attention}复活1{}张{C:joy_normal}“十二兽”{}",
                    },
                    {
                        "保留所有用于召唤此卡的{C:attention}素材{}中的",
                        "{C:joy_normal}“十二兽”{}{C:attention}转移的效果{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}本局游戏中每张被{C:attention}复活{}的卡牌",
                        "{s:0.9}提供{C:mult}+#2#{s:0.9}倍率"
                    },
                },
                joy_transfer_ability = {
                    "本局游戏中每张被{C:attention}复活{}的卡牌",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张以上{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:joy_normal}“十二兽”{}",
                    "{s:0.9,C:inactive}（若为{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}，转移其素材）",
                }
            },
            j_joy_zoo_tiger = {
                name = "{C:joy_xyz}十二兽 虎炮",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}全部{}：",
                        "从{C:attention}墓地{}中尽可能多地将",
                        "{C:joy_normal}“十二兽”{}附着于自身",
                        "{C:inactive}（不转移效果）{}"
                    },
                    {
                        "保留所有用于召唤此卡的{C:attention}素材{}中的",
                        "{C:joy_normal}“十二兽”{}{C:attention}转移的效果{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}每个{s:0.9,C:joy_xyz}超量{}{s:0.9,C:attention}素材{}",
                        "{s:0.9}提供{C:mult}+#1#{s:0.9}倍率"
                    },
                },
                joy_transfer_ability = {
                    "每个{C:joy_xyz}超量{}{C:attention}素材{}",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:joy_normal}“十二兽”{}",
                    "{s:0.9,C:inactive}（若为{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}，转移其素材）",
                }
            },
            j_joy_zoo_monkey = {
                name = "{C:joy_xyz}十二兽 猴槌",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "向{C:joy_spell}额外卡组{}添加",
                        "{C:attention}1{}张{C:joy_normal}“十二兽”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "保留所有用于召唤此卡的{C:attention}素材{}中的",
                        "{C:joy_normal}“十二兽”{}{C:attention}转移的效果{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}不能被无效",
                        "{s:0.9}或{C:attention}反转{}为里侧表示"
                    },
                },
                joy_transfer_ability = {
                    "不能被无效",
                    "或{C:attention}反转{}为里侧表示"
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张以上{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:joy_normal}“十二兽”{}",
                    "{s:0.9,C:inactive}（若为{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}，转移其素材）",
                }
            },
j_joy_zoo_dragon = {
                name = "{C:joy_xyz}十二兽 龙枪",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "销毁{C:attention}1{}张随机的{C:joy_trap}对手{}卡牌",
                        "（若无则销毁1张其他随机的{C:attention}卡牌{}），",
                        "若如此做，本回合每个",
                        "{C:joy_xyz}超量{}{C:attention}素材{}提供{X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#3#{}{C:inactive}倍率）"
                    },
                    {
                        "保留所有用于召唤此卡的{C:attention}素材{}中的",
                        "{C:joy_normal}“十二兽”{}{C:attention}转移的效果{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}用作与本章{C:attention}召唤{}的十二兽名称不同的",
                        "{s:0.9,C:joy_normal}“十二兽”{}{s:0.9,C:attention}素材{}时，",
                        "{s:0.9}向商店添加{s:0.9,C:attention}1{}张{s:0.9,C:joy_normal}“十二兽”{}"
                    },
                },
                joy_transfer_ability = {
                    "用作与本章{C:attention}召唤{}的十二兽名称不同的",
                    "{C:joy_normal}“十二兽”{}{C:attention}素材{}时，",
                    "向商店添加{C:attention}1{}张{C:joy_normal}“十二兽”{}"
                },
                joy_summon_conditions = {
                    "{C:attention}4{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:joy_normal}“十二兽”{}",
                    "{s:0.9,C:inactive}（若为{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}，转移其素材）",
                }
            },
            j_joy_zoo_boar = {
                name = "{C:joy_xyz}十二兽 猪弓",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "立即赢得当前的{C:attention}盲注{}"
                    },
                    {
                        "保留所有用于召唤此卡的{C:attention}素材{}中的",
                        "{C:joy_normal}“十二兽”{}{C:attention}转移的效果{}"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_xyz}超量{}",
                        "获得以下效果：",
                        "{s:0.9}本局游戏中每张被{C:attention}召唤{}的{s:0.9,C:joy_xyz}超量{}",
                        "{s:0.9}提供{C:mult}+#2#{s:0.9}倍率"
                    },
                },
                joy_transfer_ability = {
                    "本局游戏中每张被{C:attention}召唤{}的{C:joy_xyz}超量{}",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                },
                joy_summon_conditions = {
                    "{C:attention}5{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:joy_normal}“十二兽”{}",
                    "{s:0.9,C:inactive}（若为{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}，转移其素材）",
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            zoo = {
                story = {
                    "{C:gold}[来自“龙剑士”的故事线]{}",
                },
                gameplay = {
                    "{C:joy_xyz}超量{}{C:attention}召唤{}一只巨型{C:joy_normal}十二兽{}来释放它们真正的力量！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_zoo = "十二兽",
        }
    }
}