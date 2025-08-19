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
                    "{C:attention}2张{}不同稀有度的小丑牌",
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
                    "但不同名称的小丑牌",
                }
            },
        }
    },
}