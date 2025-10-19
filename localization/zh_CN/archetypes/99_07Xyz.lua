return {
    descriptions = {
        Joker = {
            j_joy_zeus = {
                name = "{C:joy_xyz}天霆号 阿宙斯",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}个素材：减少当前{C:attention}盲注{}要求{C:red}#2#%{}",
                        "但移除牌组所有强化",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:red}稀有{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{} {s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)",
                    "或{C:attention}1{}张本回合去除过",
                    "{C:attention}素材{}的{C:joy_xyz}超量{}",
                    "{s:0.9,C:inactive}(转移其素材)"
                }
            },
            j_joy_typhon = {
                name = "{C:joy_xyz}灾厄之星 提·丰",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}个素材：本回合每张计分牌",
                        "计分后变为{C:attention}红蜡封{} {C:dark_edition}多彩{} {C:attention}玻璃{}牌",
                        "但减少{C:money}金钱{} {C:red}#2#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张{C:red}稀有{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{} {s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)",
                    "或{C:attention}1{}张小丑牌{}，若本回合",
                    "召唤过{C:attention}2{}张以上小丑牌"
                }
            },
            j_joy_85 = {
                name = "{C:joy_xyz}No.85 狂箱",
                text = {
                    {
                        "在{C:attention}盲注{}期间，可{C:joy_xyz}去除{} {C:attention}#1#{}个素材：",
                        "随机应用以下效果之一",
                        "{C:attention}1{}：盲注要求翻倍",
                        "{C:attention}2{}：盲注要求减半",
                        "{C:attention}3{}：本回合{C:attention}+#2#{}点手牌上限",
                        "{C:attention}4{}：永久{C:attention}-#3#{}点手牌上限",
                        "{C:attention}5{}：将下一手牌的计分牌变为",
                        "{C:dark_edition}多彩{} {C:attention}红蜡封幸运{}牌",
                        "{C:attention}6{}：销毁此卡",
                    },
                    {
                        "{C:green}#4#/#5#{} 几率选中{C:attention}盲注{}时附加{C:attention}#6#{}个素材"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:blue}普通{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)"
                }
            },
            j_joy_67 = {
                name = "{C:joy_xyz}No.67 平行骰子天堂锤手",
                text = {
                    {
                        "此卡持有{C:joy_xyz}超量素材{}时",
                        "所有{C:green}几率{}翻倍"
                    },
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}个素材：永久提升所有",
                        "{C:attention}小丑牌{}的{C:green}几率{} {C:attention}#2#{}到{C:attention}#3#{}点随机值",
                    },
                    {
                        "{C:green}#4#/#5#{}几率选中{C:attention}盲注{}时附加{C:attention}#6#{}个素材"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{}张同名稀有度的{C:attention}小丑牌{}",                 
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)"
                }
            },
            j_joy_igniter = {
                name = "{C:joy_xyz}代码点火员",
                text = {
                    {
                        "本局每次{C:joy_ritual}仪式{}召唤给与{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{} {C:inactive}倍率)"
                    },
                    {
                        "{C:joy_xyz}去除{} {C:attention}#3#{}: 将{C:attention}#4#{}张{C:joy_ritual}仪式{}加入商店",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_normal}电子界{}",	   
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)"
                }
            },
        }
    },
}