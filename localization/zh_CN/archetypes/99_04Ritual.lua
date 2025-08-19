return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}古圣戴 始龙",
                text = {
                    {
                        "出售此卡以禁用当前{C:attention}Boss盲注{}",
                        "并将其添加至下家商店",
                    },
                    {
                        "每使用此能力一次，获得 {X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}合成狼人",
                text = {
                    {
                        "每张在手牌或{C:attention}墓地{}的",
                        "{C:joy_normal}通常{} {C:attention}小丑牌{}使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{}",
                    "或{C:attention}1{}张{C:joy_normal}通常 {C:attention}小丑牌{}",
                }
            },
        }
    },
}