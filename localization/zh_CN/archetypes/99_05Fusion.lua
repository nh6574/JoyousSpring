return {
    descriptions = {
        Joker = {
            j_joy_mudragon = {
                name = "{C:joy_fusion}沼地的泥龙王",
                text = {
                    {
                        "作为{C:joy_fusion}融合{}的{C:attention}素材{}时",
                        "视为任意素材，在场时视为任意{C:attention}属性{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{}不同稀有度的卡牌",
                }
            },
            j_joy_garura = {
                name = "{C:joy_fusion}共命之翼 迦楼罗",
                text = {
                    {
                        "{C:attention}+#1#{}点手牌上限",
                    },
                    {
                        "若用作{C:attention}素材{}，永久获得",
                        "{C:attention}+#2#{}点手牌上限",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张{}同名稀有度",
                    "但不同名称的卡牌",
                }
            },
            j_joy_quintet = {
                name = "{C:joy_fusion}五阵魔术师",
                text = {
                    {
                        "将接下来{C:attention}#1#{}轮的结算奖励{C:attention}翻倍{}，",
                        "然后{C:red}销毁{}自身"
                    },
                    {
                        "若用不同名称的{C:attention}卡牌{}{C:attention}召唤{}，",
                        "则立即赢得所有{C:attention}盲注{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{}张{C:joy_normal}魔法师族{}",
                }
            },
            j_joy_mysterion = {
                name = "{C:joy_fusion}奥秘之龙冠",
                text = {
                    {
                        "本局游戏中每张被销毁的游戏牌提供{C:mult}+#1#{}倍率",
                        "本局游戏中每张被{C:attention}除外{}的卡牌减少{C:mult}-#2#{}倍率",
                        "{C:inactive}（当前{C:mult}+#3#{}{C:inactive}倍率）（最低+0）"
                    },
                    {
                        "每回合一次，你可以将{C:attention}1{}张{C:joy_normal}龙族{}或{C:joy_normal}魔法师族{}{C:attention}除外{}直至选择{C:attention}盲注{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}魔法师族{}",
                    "+ {C:attention}1{}张{C:joy_normal}龙族{}"
                }
            },
            j_joy_secreterion = {
                name = "{C:joy_fusion}圣秘之龙骑士",
                text = {
                    {
                        "本局游戏中每张被销毁的游戏牌提供{C:mult}+#1#{}倍率",
                        "本局游戏中每张被{C:attention}复活{}的卡牌减少{C:mult}-#2#{}倍率",
                        "{C:inactive}（当前{C:mult}+#3#{}{C:inactive}倍率）（最低+0）"
                    },
                    {
                        "每回合一次，你可以{C:attention}复活1{}张{C:joy_normal}龙族{}或{C:joy_normal}魔法师族{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}龙族{}",
                    "+ {C:attention}1{}张{C:joy_normal}魔法师族{}"
                }
            },
            j_joy_acespades = {
                name = "{C:joy_fusion}A{C:joy_fusion,f:joy_font}★{C:joy_fusion}黑桃之猜大小剑士",
                text = {
                    {
                        "根据打出手牌中的计分牌获得倍率：",
                        "{C:attention}红桃2{}、{C:attention}红桃10{}或{C:attention}红桃J{}提供{C:mult}+#1#{}倍率",
                        "{C:attention}黑桃2{}、{C:attention}黑桃10{}、{C:attention}黑桃J{}、{C:attention}方片6{}或{C:attention}黑桃A{}提供{C:mult}+#2#{}倍率",
                        "{C:attention}梅花2{}、{C:attention}梅花10{}或{C:attention}梅花J{}减少{C:mult}-#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#3#{}{C:inactive}倍率）（最低+0）"
                    },
                    {
                        "你可以{C:attention}解放{}手牌中任意选中的{C:attention}黑桃A{}，",
                        "每张将此卡的当前倍率{C:attention}翻倍{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:red}稀有{}{C:attention}卡牌{}",
                    "+ {C:attention}1{}张里侧表示的{C:blue}普通{}{C:attention}卡牌{}"
                }
            },
        }
    },
}