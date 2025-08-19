return {
    descriptions = {
        Joker = {
            j_joy_spright_blue = {
                name = "{C:joy_effect}卫星闪灵·蓝色喷流灵",
                text = {
                    {
                        "回合结束时生成{C:attention}#1#{}张",
                        "{C:joy_normal}主卡组「卫星闪灵」{}",
                        "{C:inactive}(需有空位){}",
                    },
                    {
                        "若拥有{C:green}罕见{}小丑牌则免费",
                    },
                },
            },
            j_joy_spright_jet = {
                name = "{C:joy_effect}卫星闪灵·喷流灵",
                text = {
                    {
                        "选择{C:attention}盲注{}时",
                        "将{C:attention}#1#{}张{C:green}罕见{}小丑牌",
                        "送入{C:attention}墓地{}",
                    },
                    {
                        "若拥有{C:green}罕见{}小丑牌则免费",
                    },
                },
            },
            j_joy_spright_carrot = {
                name = "{C:joy_effect}卫星闪灵·萝卜精灵",
                text = {
                    {
                        "每张{C:green}罕见{}小丑牌",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "若拥有{C:green}罕见{}小丑牌则免费",
                    },
                },
            },
            j_joy_spright_red = {
                name = "{C:joy_effect}卫星闪灵·红色精灵",
                text = {
                    {
                        "每张{C:green}罕见{}小丑牌",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "若拥有{C:green}罕见{}小丑牌则免费",
                    },
                },
            },
            j_joy_spright_pixies = {
                name = "{C:joy_effect}卫星闪灵·皮克精队",
                text = {
                    {
                        "每张{C:green}罕见{}小丑牌",
                        "提供{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码){}",
                    },
                    {
                        "若拥有{C:green}罕见{}小丑牌则免费",
                    },
                },
            },
            j_joy_spright_elf = {
                name = "{C:joy_link}卫星闪灵·淘气精灵",
                text = {
                    {
                        "选择{C:attention}盲注{}时",
                        "{C:attention}复活 #1#{}张{C:green}罕见{}小丑牌",
                    },
                    {
                        "墓地中的{C:green}罕见{}小丑牌",
                        "可触发{C:joy_normal}「卫星闪灵」{}效果",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:green}罕见{}小丑牌"
                }
            },
            j_joy_spright_sprind = {
                name = "{C:joy_link}卫星闪灵迅妖龙炮",
                text = {
                    {
                        "若使用{C:joy_normal}「卫星闪灵」{}作为素材召唤",
                        "其他{C:green}罕见{}小丑牌变为{C:dark_edition}负片{}",
                        "其余则被弱化",
                    },
                    {
                        "{C:joy_xyz}去除 #1#个素材{}后",
                        "将{C:joy_xyz}「巨大喷流卫星闪灵」{}加入",
                        "{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位) (#2#/#1#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:green}罕见{}小丑牌",
                    "包含{C:joy_xyz}超量{}"
                }
            },
            j_joy_spright_gigantic = {
                name = "{C:joy_xyz}巨大喷流卫星闪灵",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}1{}个素材：生成",
                        "{C:attention}#1#{}张{C:green}罕见{}小丑牌",
                        "{C:inactive}(需有空位){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:green}罕见{}小丑牌",
                    "{s:0.9,C:inactive}(除{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_link}连接{s:0.9,C:inactive}允许)"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spright = "卫星闪灵",
        }
    }
}