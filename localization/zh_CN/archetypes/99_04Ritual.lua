-- 文件 2：99_04Ritual.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}远古圣魂 索拉维斯",
                text = {
                    {
                        "出售此牌以跳过当前{C:attention}首领盲注{C:attention}，",
                        "并将其加入下一轮商店"
                    },
                    {
                        "本能力每使用一次，获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{C:attention}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}狼人",
                text = {
                    {
                        "每拥有或在{C:attention}墓地{C:attention}1张{C:joy_normal}普通{C:attention}小丑牌{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{C:attention}",
                    "或{C:attention}1{C:joy_normal}普通{C:attention}小丑牌{C:attention}",
                }
            },
        }
    },
}