return {
    descriptions = {
        Joker = {
            j_joy_zeus = {
                name = "{C:joy_xyz}天霆号 阿宙斯",
                text = {
                    {
                        "{C:joy_xyz}去除{}{C:attention}#1#{}个素材：减少当前{C:attention}盲注{}要求{C:red}#2#%{}",
                        "但移除牌组所有强化",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:red}稀有{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)",
                    "或{C:attention}1{}张本回合去除过",
                    "{C:attention}素材{}的{C:joy_xyz}超量{}",
                    "{s:0.9,C:inactive}(转移其素材)"
                }
            },
            j_joy_typhon = {
                name = "{C:joy_xyz}灾厄之星 提·丰",
                text = {
                    {
                        "{C:joy_xyz}去除{}{C:attention}#1#{}个素材：本回合每张计分牌",
                        "计分后变为{C:attention}红蜡封{}{C:dark_edition}多彩{}{C:attention}玻璃{}牌",
                        "但减少{C:money}金钱{}{C:red}#2#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:red}稀有{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)",
                    "或{C:attention}1{}张卡牌{}，若本回合",
                    "召唤过{C:attention}2{}张以上卡牌"
                }
            },
            j_joy_85 = {
                name = "{C:joy_xyz}No.85 狂箱",
                text = {
                    {
                        "在{C:attention}盲注{}期间，可{C:joy_xyz}去除{}{C:attention}#1#{}个素材：",
                        "随机应用以下效果之一",
                        "{C:attention}1{}：盲注要求翻倍",
                        "{C:attention}2{}：盲注要求减半",
                        "{C:attention}3{}：本回合{C:attention}+#2#{}点手牌上限",
                        "{C:attention}4{}：永久{C:attention}-#3#{}点手牌上限",
                        "{C:attention}5{}：将下一手牌的计分牌变为",
                        "{C:dark_edition}多彩{}{C:attention}红蜡封幸运{}牌",
                        "{C:attention}6{}：销毁此卡牌",
                    },
                    {
                        "{C:green}#4#/#5#{} 几率选中{C:attention}盲注{}时附加{C:attention}#6#{}个素材"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)"
                }
            },
            j_joy_igniter = {
                name = "{C:joy_xyz}代码点火者",
                text = {
                    {
                        "本轮每召唤1张{C:joy_ritual}仪式{}卡牌",
                        "获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:joy_xyz}去除{}{C:attention}#3#{}个超量素材：将{C:attention}#4#{}张{C:joy_ritual}仪式{}卡牌加入商店",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2只{}{C:joy_normal}电子界{}怪兽",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)"
                }
            },
            j_joy_67 = {
                name = "{C:joy_xyz}No.67 平行骰子天堂锤手",
                text = {
                    {
                        "此卡牌持有{C:joy_xyz}超量素材{}时",
                        "所有{C:green}几率{}翻倍"
                    },
                    {
                        "{C:joy_xyz}去除{}{C:attention}#1#{}个素材：永久提升所有",
                        "{C:attention}卡牌{}的{C:green}几率{}{C:attention}#2#{}到{C:attention}#3#{}点随机值",
                    },
                    {
                        "{C:green}#4#/#5#{} 几率选中{C:attention}盲注{}时附加{C:attention}#6#{}个素材"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张同名稀有度",
                    "{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)"
                }
            },
            j_joy_slacker = {
                name = "{C:joy_xyz}内向尼特魔术师",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "禁用当前激活的{C:attention}盲注{}效果，",
                        "但在商店开始时将金钱设为{C:money}$0{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                }
            },
            j_joy_downerd = {
                name = "{C:joy_xyz}扫兴书呆魔术师",
                text = {
                    {
                        "每有1个{C:joy_xyz}超量{}{C:attention}素材{}额外提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）",
                    },
                    {
                        "当一张{C:tarot}塔罗牌{}被{C:attention}解放{}时，{C:attention}附着{}一个{C:attention}素材{}"
                    },
                    {
                        "回合结束时{C:joy_xyz}取除{}一个{C:attention}素材{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}魔法师族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                    "或 {C:attention}1{}张{C:blue}普通{}{C:joy_xyz}超量{}",
                    "{C:inactive}（转移其素材）{}"
                }
            },
            j_joy_alchemic = {
                name = "{C:joy_xyz}炼金魔术师",
                text = {
                    {
                        "本回合每张被{C:attention}解放{}的{C:tarot}塔罗牌{}额外提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                    },
                    {
                        "此卡{C:attention}上场{}后，本局游戏剩余时间内{C:tarot}塔罗牌{}可出现多次"
                    },
                    {
                        "回合结束时取除一个{C:attention}素材{}，",
                        "当素材数为{C:attention}0{}时销毁自身，",
                        "并生成本回合被{C:attention}解放{}的所有{C:tarot}塔罗牌{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}3{}张{C:joy_normal}魔法师族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                }
            },
            j_joy_phoboscobos = {
                name = "{C:joy_xyz}异端之福波斯科波斯",
                text = {
                    {
                        "{C:joy_xyz}取除{}{C:attention}#1#{}：",
                        "每有1张{C:joy_normal}幻神兽族{}提供{C:attention}1{}次免费{C:green}重掷{}"
                    },
                    {
                        "若使用{C:joy_normal}幻神兽族{}{C:attention}召唤{}，",
                        "则此卡从{C:attention}除外区{}返回时{C:attention}附着{}一个{C:attention}素材{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:blue}普通{}{C:attention}卡牌{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外）",
                }
            },
        }
    },
}