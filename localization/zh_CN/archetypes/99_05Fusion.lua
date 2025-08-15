-- 文件 3：99_05Fusion.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_mudragon = {
                name = "{C:joy_fusion}沼泽泥龙王",
                text = {
                    {
                        "持有期间，可视为任意{C:attention}素材{C:attention}参与{C:joy_fusion}融合{C:attention}，",
                        "并可视为任意{C:attention}属性{C:attention}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{C:attention}且稀有度不同",
                }
            },
            j_joy_garura = {
                name = "{C:joy_fusion}共鸣生命翼 迦楼拉",
                text = {
                    {
                        "{C:attention}+#1#{C:attention}手牌上限"
                    },
                    {
                        "若作为{C:attention}素材{C:attention}使用，永久获得{C:attention}+#2#{C:attention}手牌上限"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2张小丑牌{C:attention}同名不同稀有度",
                }
            },
        }
    },
}