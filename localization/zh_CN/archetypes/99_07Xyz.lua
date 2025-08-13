-- 文件 5：99_07Xyz.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_zeus = {
                name = "{C:joy_xyz}武库机 天霆宙斯",
                text = {
                    {
                        "{C:joy_xyz}取除{C:attention}#1#{C:attention}素材：当前{C:attention}盲注{C:attention}需求降低{C:red}#2#%{C:attention}",
                        "但移除牌组中所有强化"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{C:red}稀有{C:attention}小丑牌{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})",
                    "或{C:attention}1{C:joy_xyz}超量{C:attention}本回合曾{C:joy_xyz}取除{C:attention}素材",
                    "{s:0.9,C:inactive}(继承其素材)"
                }
            },
            j_joy_typhon = {
                name = "{C:joy_xyz}超星斩 TY-PHON 天危",
                text = {
                    {
                        "{C:joy_xyz}取除{C:attention}#1#{C:attention}素材：本回合计分牌结算后",
                        "全部变为{C:attention}红蜡封{C:dark_edition}多彩{C:attention}玻璃牌",
                        "但{C:money}金钱{C:attention}减少{C:red}#2#%{C:attention}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{C:red}稀有{C:attention}小丑牌{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})",
                    "或本回合已{C:attention}召唤{C:attention}≥2张小丑牌{C:attention}"
                }
            },
            j_joy_85 = {
                name = "{C:joy_xyz}编号85 疯狂之箱",
                text = {
                    {
                        "{C:attention}盲注{C:attention}期间可{C:joy_xyz}取除{C:attention}#1#{C:attention}素材：",
                        "随机触发以下1种效果",
                        "{C:attention}1：{C:attention}盲注{C:attention}需求翻倍",
                        "{C:attention}2：{C:attention}盲注{C:attention}需求减半",
                        "{C:attention}3：本回合{C:attention}+#2#{C:attention}手牌上限",
                        "{C:attention}4：永久{C:attention}-#3#{C:attention}手牌上限",
                        "{C:attention}5：下1手牌计分牌变为{C:dark_edition}多彩{C:attention}红蜡封幸运A",
                        "{C:attention}6：销毁此牌"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#4#/#5#几率给此牌附加{C:attention}#6#{C:attention}素材"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{C:blue}普通{C:attention}小丑牌{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})"
                }
            },
            j_joy_67 = {
                name = "{C:joy_xyz}编号67 双骰粉碎者",
                text = {
                    {
                        "此牌有{C:joy_xyz}超量素材{C:attention}时，所有列表{C:green}几率{C:attention}翻倍"
                    },
                    {
                        "{C:joy_xyz}取除{C:attention}#1#{C:attention}素材：永久随机提高所有{C:attention}小丑牌{C:attention}列表{C:green}几率{C:attention}值{C:attention}#2#~#3#"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#4#/#5#几率给此牌附加{C:attention}#6#{C:attention}素材"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{C:attention}稀有度相同的小丑牌{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})"
                }
            },
        }
    },
}