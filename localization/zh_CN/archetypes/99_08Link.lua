return {
    descriptions = {
        Joker = {
            j_joy_apollousa = {
                name = "{C:joy_link}召命之神弓-阿波罗萨",
                text = {
                    {
                        "每用作召唤的{C:attention}素材{}使此卡{C:mult}+#1#{}倍率",
                        "每回合减少{C:red}#2#{}点",
                        "{C:inactive}(当前 {C:mult}+#3#{}{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{}不同名称小丑牌",
                }
            },
            j_joy_beyond = {
                name = "{C:joy_link}轨迹之魔术师",
                text = {
                    {
                        "每张本局游戏消耗的",
                        "{C:joy_pendulum}灵摆{}使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "消耗{C:attention}#4#{}张后生成{C:attention}#3#{}张{C:joy_pendulum}灵摆{}",
                        "{C:inactive}(#5#/#4#) (需有空位)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{},",
                    "包含{C:joy_pendulum}灵摆{}"
                }
            },
            j_joy_exceed = {
                name = "{C:joy_link}奇迹之魔导剑士",
                text = {
                    {
                        "每张本局游戏消耗的{C:joy_pendulum}灵摆{}",
                        "获得 {X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "首次击败{C:attention}Boss盲注{}时，生成{C:attention}#3#{}张",
                        "{C:dark_edition}负片{} {C:joy_normal}主卡组{} {C:joy_pendulum}灵摆{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张小丑牌{},",
                    "包含{C:joy_pendulum}灵摆{}"
                }
            },
            j_joy_linkuriboh = {
                name = "{C:joy_link}连接栗子球",
                text = {
                    {
                        "出售此卡以禁用当前{C:attention}Boss盲注{}",
                        "但{C:money}金钱{}归零",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:blue}普通{} {C:attention}小丑牌",
                }
            },
            j_joy_linguriboh = {
                name = "{C:joy_link}连环栗子球",
                text = {
                    {
                        "出售此卡以禁用当前{C:attention}Boss盲注{}",
                        "但若非以{C:joy_normal}「@火灵天星」{}为{C:attention}素材{}召唤",
                        "则减少{C:attention}#1#{}点手牌上限",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}电子界族",
                }
            },
            j_joy_ipmasq = {
                name = "{C:joy_link}I：P伪装舞会莱娜",
                text = {
                    {
                        "选中{C:attention}盲注{}时{C:attention}变身{}为随机{C:joy_link}连接{}",
                        "{C:inactive}(视为使用2素材的连接召唤){}",
                        "以此法召唤的{C:joy_link}连接{}获得以下效果：",
                        "{s:0.9}回合结束时{s:0.9,C:attention}变身{s:0.9}为{s:0.9,C:joy_link}「梦幻崩影 独角兽」{s:0.9}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_effect}效果 {C:attention}小丑牌{}",
                },
                joy_transfer_ability = {
                    "回合结束时{C:attention}变身{}为{C:joy_link}「梦幻崩影 独角兽」{}",
                }
            },
            j_joy_spknight = {
                name = "{C:joy_link}S：P小夜",
                text = {
                    {
                        "回合结束时{C:attention}除外{}自身和{C:attention}#1#{}张其他{C:attention}小丑牌{}",
                        "直到选择{C:attention}Boss盲注{}",
                        "或以{C:attention}2{}张{C:joy_spell}额外卡组{} {C:attention}小丑牌{}为{C:attention}素材{}召唤时",
                        "直到选择{C:attention}盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_effect}效果 {C:attention}小丑牌{}",
                }
            },
            j_joy_progleo = {
                name = "{C:joy_link}逐行狮",
                text = {
                    {
                        "回合结束时{C:attention}除外 #1#{}张相邻",
                        "{C:attention}小丑牌{}直到选择{C:attention}Boss盲注{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:attention}小丑牌{},",
                    "{C:joy_token}衍生物{}除外"
                }
            },
            j_joy_raster = {
                name = "{C:joy_link}光栅狮虎",
                text = {
                    {
                        "每张在{C:attention}墓地{}的{C:joy_link}连接{}使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "可{C:attention}解放{}所有其他{C:attention}小丑牌{}",
                        "使{C:attention}盲注{}要求每张减少{C:red}#3#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{}张{C:attention}小丑牌{},",
                    "{C:joy_token}衍生物{}除外"
                }
            },
        }
    },
}