return {
    descriptions = {
        Joker = {
            j_joy_spright_blue = {
                name = "{C:joy_effect}喷流精灵",
                text = {
                    {
                        "回合结束时生成{C:attention}#1#{}张",
                        "{C:joy_normal}主卡组{}的{C:joy_normal}\"雷精\"{}",
                        "{C:inactive}(需有空位){}"
                    },
                    {
                        "若拥有{C:green}罕见{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_spright_jet = {
                name = "{C:joy_effect}喷流灵",
                text = {
                    {
                        "选择{C:attention}盲注{}时送墓{C:attention}#1#{}张",
                        "{C:green}罕见{} {C:attention}小丑牌{}"
                    },
                    {
                        "若拥有{C:green}罕见{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_spright_carrot = {
                name = "{C:joy_effect}胡萝卜精灵",
                text = {
                    {
                        "每张{C:green}罕见{} {C:attention}小丑牌{}",
                        "提供{X:mult,C:white}X#1#{}倍{C:attention}倍率{}",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}"
                    },
                    {
                        "若拥有{C:green}罕见{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_spright_red = {
                name = "{C:joy_effect}红精灵",
                text = {
                    {
                        "每张{C:green}罕见{} {C:attention}小丑牌{}",
                        "提供{C:mult}+#1#{} {C:attention}倍率{}",
                        "{C:inactive}(当前{C:mult}+#2#{}{C:inactive}倍率){}"
                    },
                    {
                        "若拥有{C:green}罕见{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_spright_pixies = {
                name = "{C:joy_effect}小妖精",
                text = {
                    {
                        "每张{C:green}罕见{} {C:attention}小丑牌{}",
                        "提供{C:chips}+#1#{} {C:attention}筹码{}",
                        "{C:inactive}(当前{C:chips}+#2#{}{C:inactive}筹码){}"
                    },
                    {
                        "若拥有{C:green}罕见{} {C:attention}小丑牌{}则免费"
                    }
                }
            },
            j_joy_spright_elf = {
                name = "{C:joy_link}雷精灵",
                text = {
                    {
                        "选择{C:attention}盲注{}时{C:attention}复活 #1#{}张",
                        "{C:green}罕见{} {C:attention}小丑牌{}"
                    },
                    {
                        "墓地中的{C:green}罕见{} {C:attention}小丑牌{}",
                        "可触发{C:joy_normal}\"雷精\"{}效果"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:green}罕见{} {C:attention}小丑牌{}"
                }
            },
            j_joy_spright_sprind = {
                name = "{C:joy_link}雷精巨灵",
                text = {
                    {
                        "若用{C:joy_normal}\"雷精\"{}作{C:attention}素材{}召唤",
                        "其他{C:green}罕见{} {C:attention}小丑牌{}变为{C:dark_edition}负片{}",
                        "其余被削弱"
                    },
                    {
                        "{C:joy_xyz}去除{} {C:attention}#1#{}素材后",
                        "将{C:joy_xyz}\"巨大喷流精灵\"{}加入",
                        "{C:joy_spell}额外卡组{}",
                        "{C:inactive}(需有空位){}",
                        "{C:inactive}(#2#/#1#){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:green}罕见{} {C:attention}小丑牌{}",
                    "包含{C:joy_xyz}超量{}"
                }
            },
            j_joy_spright_gigantic = {
                name = "{C:joy_xyz}巨大喷流精灵",
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}1{}素材：生成",
                        "{C:attention}#1#{}张{C:green}罕见{} {C:attention}小丑牌{}",
                        "{C:inactive}(需有空位){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:green}罕见{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive}除外)",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_link}连接{s:0.9,C:inactive}允许)"
                }
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spright = "雷精"
        }
    }
}