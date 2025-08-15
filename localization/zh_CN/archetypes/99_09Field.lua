-- 文件 7：99_09Field.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_chickengame = {
                name = "{C:joy_spell}小鸡游戏",
                text = {
                    {
                        "可提升{C:attention}盲注{C:attention}需求{C:red}#1#%{C:attention}",
                        "换取本回合{C:blue}+#2#{C:attention}出牌次数与{C:red}+#3#{C:attention}弃牌次数"
                    },
                }
            },
            j_joy_fusiongate = {
                name = "{C:joy_spell}融合之门",
                text = {
                    {
                        "击败{C:attention}首领盲注{C:attention}后，将{C:attention}#1#{C:joy_fusion}融合{C:attention}加入{C:joy_spell}额外卡组{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_xyzterritory = {
                name = "{C:joy_spell}超量领域",
                text = {
                    {
                        "回合结束时，每拥有1张{C:joy_xyz}超量{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "每{C:joy_xyz}取除{C:attention}1{C:attention}素材{C:attention}，获得{C:money}+$#3#"
                    },
                }
            },
            j_joy_xyzoverride = {
                name = "{C:joy_spell}超量改写",
                text = {
                    {
                        "每回合限1次，可{C:attention}献祭#1#{C:attention}张小丑牌{C:attention}",
                        "给每张{C:joy_xyz}超量{C:attention}附加{C:attention}#2#{C:attention}素材"
                    },
                }
            },
            j_joy_summonbreaker = {
                name = "{C:joy_spell}召唤断路器",
                text = {
                    {
                        "本回合第3张{C:attention}召唤的小丑牌{C:attention}变为{C:dark_edition}负片{C:attention}并销毁此牌",
                        "{C:inactive}(#1#/#2#)"
                    },
                }
            },
            j_joy_extranet = {
                name = "{C:joy_spell}额外网络",
                text = {
                    {
                        "本回合每{C:attention}召唤{C:attention}1张小丑牌{C:attention}，{C:attention}+#1#{C:attention}手牌上限"
                    },
                }
            },
            j_joy_futurevisions = {
                name = "{C:joy_spell}未来视界",
                text = {
                    {
                        "回合结束时，随机放逐{C:attention}#1#{C:joy_normal}主卡组{C:attention}小丑牌{C:attention}",
                        "直至选择{C:attention}首领盲注{C:attention}，并永久提高其列表{C:green}几率{C:attention}值{C:attention}#2#{C:attention}",
                        "若为{C:joy_normal}“命运女郎”{C:attention}则翻倍"
                    },
                }
            },
            j_joy_midbreaker = {
                name = "{C:joy_spell}魔法中破领域",
                text = {
                    {
                        "在{C:attention}首领盲注{C:attention}期间，所有{C:attention}小丑牌{C:attention}提供{X:mult,C:white}X#1#{C:attention}倍率",
                        "且不会被削弱或{C:attention}盖放"
                    },
                    {
                        "选择{C:attention}小盲注{C:attention}或{C:attention}大盲注{C:attention}时，所有{C:attention}小丑牌{C:attention}被盖放",
                        "回合结束时翻回正面"
                    },
                }
            },
        }
    },
}