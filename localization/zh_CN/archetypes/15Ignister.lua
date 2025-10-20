return {
    descriptions = {
        Joker = {
            j_joy_ignis_achichi = {
                name = "{C:joy_effect}辣辣妖@火灵天星",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "获得时生成{C:attention}#2#{}张{C:blue}普通{}{C:joy_normal}主卡组",
                        "{C:joy_normal}“@火灵天星”{}{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_ignis_pikari = {
                name = "{C:joy_effect}闪闪妖@火灵天星",
                text = {
                    {
                        "回合结束获得{C:money}+$#1#{}",
                    },
                    {
                        "获得时生成{C:attention}#2#{}张随机{C:tarot}塔罗牌",
                        "{C:inactive}(需有空位)",
                    },
                }
            },
            j_joy_ignis_hiyari = {
                name = "{C:joy_effect}冰冰妖@火灵天星",
                text = {
                    {
                        "{C:attention}+#1#{}手牌上限",
                    },
                    {
                        "每回合1次，可{C:attention}解放 #2#{}张{C:joy_normal}电子界{}",
                        "以生成{C:attention}#3#{}张{C:green}罕见{}{C:joy_normal}主卡组“@火灵天星”",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "若拥有{C:joy_normal}“@火灵天星”{}则免费",
                    },
                }
            },
            j_joy_ignis_bururu = {
                name = "{C:joy_effect}抖抖妖@火灵天星",
                text = {
                    {
                        "获得时将{C:attention}#1#{}张{C:joy_normal}“@火灵天星”{}送入{C:attention}墓地",
                    },
                    {
                        "作为{C:joy_normal}电子界{}召唤{C:attention}素材{}时，",
                        "{C:attention}复活 #2#{}张{C:joy_normal}主卡组“@火灵天星”{}{C:dark_edition}负片{}版",
                    },
                }
            },
            j_joy_ignis_doshin = {
                name = "{C:joy_effect}沉沉妖@火灵天星",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "作为{C:joy_normal}电子界{}召唤{C:attention}素材{}时，",
                        "{C:attention}复活 #2#{}张{C:joy_spell}额外卡组{}{C:joy_normal}“@火灵天星”",
                    },
                }
            },
            j_joy_ignis_gatchiri = {
                name = "{C:joy_effect}牢牢妖@火灵天星",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "可作任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "用此牌作{C:attention}素材{}召唤的{C:joy_normal}电子界{}",
                        "获得能力：",
                        "{s:0.9}免疫削弱且{s:0.9,C:attention}不可反转{s:0.9}为里侧",
                    },
                },
                joy_transfer_ability = {
                    "免疫削弱且{C:attention}不可反转{}为里侧"
                }
            },
            j_joy_ignis_gussari = {
                name = "{C:joy_effect}刺刺妖@火灵天星",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "可作任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "用此牌作{C:attention}素材{}召唤的{C:joy_link}连接{}",
                        "获得能力：",
                        "{s:0.9,C:mult}+#1# {s:0.9}倍率（每份召唤{s:0.9,C:attention}素材{}）",
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍率（每份召唤{C:attention}素材{}）",
                    "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                }
            },
            j_joy_ignis_danmari = {
                name = "{C:joy_effect}默默妖@火灵天星",
                text = {
                    {
                        "可作任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "用此牌作{C:attention}素材{}召唤的{C:joy_link}连接{}",
                        "获得能力：",
                        "{s:0.9}选择{s:0.9,C:attention}盲注{}{s:0.9}时降低其要求{s:0.9,C:red}#1#%{}",
                    },
                },
                joy_transfer_ability = {
                    "选择{C:attention}盲注{}时降低其要求{C:red}#1#%{}",
                }
            },
            j_joy_ignis_doyon = {
                name = "{C:joy_effect}郁郁妖@火灵天星",
                text = {
                    {
                        "获得时{C:attention}复活 #1#{}张{C:joy_normal}主卡组“@火灵天星”",
                    },
                    {
                        "作为{C:joy_normal}电子界{}召唤{C:attention}素材{}时，",
                        "将{C:attention}#2#{}张未获得{C:joy_normal}“@火灵天星”{}加入{C:joy_spell}额外卡组",
                    },
                }
            },
            j_joy_ignis_donyoribo = {
                name = "{C:joy_effect}阴云栗仔球@火灵天星",
                text = {
                    {
                        "每购买1张{C:joy_normal}“@火灵天星”{}获得{C:money}+$#1#{}",
                    },
                    {
                        "出售此牌以{C:attention}除外 #2#{}张{C:joy_normal}“@火灵天星”{}",
                        "直到选择{C:attention}盲注{}",
                    },
                }
            },
            j_joy_ignis_backup = {
                name = "{C:joy_effect}备份员@火灵天星",
                text = {
                    {
                        "获得时向{C:attention}#1#{}张随机其他{C:joy_normal}电子界{}添加{C:dark_edition}负片{}",
                    },
                    {
                        "用此牌作{C:attention}素材{}召唤的{C:joy_normal}电子界{}",
                        "若可能则添加{C:dark_edition}负片{}",
                    },
                }
            },
            j_joy_ignis_wizard = {
                name = "{C:joy_effect}男巫@火灵天星",
                text = {
                    {
                        "可{C:attention}解放{}此牌以{C:attention}复活{}最多{C:attention}#1#{}张",
                        "不同名的{C:joy_normal}电子界{}",
                        "若拥有额外卡组召唤的{C:joy_normal}电子界{}，",
                        "额外复活1张{C:joy_normal}“@火灵天星”{}{C:dark_edition}负片{}版",
                    },
                }
            },
            j_joy_ignis_kiruku = {
                name = "{C:joy_effect}连接栗栗@火灵天星",
                text = {
                    {
                        "若拥有额外卡组召唤的{C:joy_normal}电子界{}，出售此牌",
                        "可禁用当前{C:attention}首领盲注{}并将其加入下家商店",
                    },
                }
            },
            j_joy_ignis_linkslayer = {
                name = "{C:joy_effect}连接山猫屠杀者＠伊格尼斯者",
                text = {
                    {
                        "可作任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "作为{C:joy_normal}电子界{}召唤{C:attention}素材{}时，",
                        "永久获得{C:red}+#1#{}弃牌次数",
                    }
                }
            },
            j_joy_ignis_leviathan = {
                name = "{C:joy_ritual}水海龙@火灵天星",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张未获得{C:joy_normal}“@火灵天星”",
                        "加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "每份召唤{C:attention}属性{}使计分牌获得{C:chips}+#2#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#3#{}{C:inactive}筹码)",
                        "用此牌作{C:attention}素材{}的{C:joy_link}连接{}获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "每份召唤{C:attention}属性{}使计分牌获得{C:chips}+#1#{}筹码",
                    "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界{}"
                }
            },
            j_joy_ignis_golem = {
                name = "{C:joy_fusion}地石人@火灵天星",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张未获得{C:joy_normal}“@火灵天星”",
                        "加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "每份召唤{C:attention}属性{}提供{C:attention}+#2#个小丑牌槽",
                        "{C:inactive}(当前 {C:attention}+#3#{}{C:inactive})",
                        "用此牌作{C:attention}素材{}的{C:joy_link}连接{}获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "每份召唤{C:attention}属性{}提供{C:attention}+#1#个小丑牌槽",
                    "{C:inactive}(当前 {C:attention}+#2#{}{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界{}"
                }
            },
            j_joy_ignis_pegasus = {
                name = "{C:joy_synchro}风飞马@火灵天星",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张未获得{C:joy_normal}“@火灵天星”",
                        "加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "{C:green}#2#/#3#{}几率再次触发打出的牌",
                        "每份召唤{C:attention}属性{}提升几率",
                        "用此牌作{C:attention}素材{}的{C:joy_link}连接{}获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#1#/#2#{}几率再次触发打出的牌",
                    "每份召唤{C:attention}属性{}提升几率",
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1+{}张非{C:joy_synchro}调整{}的{C:joy_normal}电子界{}",
                    "{s:0.9,C:inactive}(不含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{}{s:0.9,C:inactive})",
                }
            },
            j_joy_ignis_dragon = {
                name = "{C:joy_xyz}光龙王@火灵天星",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张未获得{C:joy_normal}“@火灵天星”",
                        "加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "回合结束时，每份召唤{C:attention}属性{}使手牌中",
                        "计分牌获得{C:money}+$#2#{}",
                        "{C:inactive}(当前 {C:money}+$#3#{}{C:inactive})",
                        "用此牌作{C:attention}素材{}的{C:joy_link}连接{}获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "回合结束时，每份召唤{C:attention}属性{}使手牌中",
                    "计分牌获得{C:money}+$#1#{}",
                    "{C:inactive}(当前 {C:money}+$#2#{}{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界{}",
                    "{s:0.9,C:inactive}(不含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}、{s:0.9,C:joy_link}连接{}",
                    "{s:0.9,C:inactive}或{s:0.9,C:joy_token}衍生物{s:0.9,C:inactive})"
                }
            },
            j_joy_ignis_phoenix = {
                name = "{C:joy_link}炎凤凰@火灵天星",
                text = {
                    {
                        "召唤时将{C:attention}#1#{}张未获得{C:joy_normal}“@火灵天星”",
                        "加入{C:joy_spell}额外卡组{}",
                    },
                    {
                        "作为{C:joy_normal}电子界{}召唤{C:attention}素材{}时，",
                        "生成{C:attention}#2#{}张{C:dark_edition}负片{}削弱版{C:joy_link}“炎凤凰”{}",
                    },
                    {
                        "每份召唤{C:attention}属性{}使计分牌获得{C:mult}+#3#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#4#{}{C:inactive}倍率)",
                        "用此牌作{C:attention}素材{}的{C:joy_link}连接{}获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "每份召唤{C:attention}属性{}使计分牌获得{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界{}"
                }
            },
            j_joy_ignis_allied = {
                name = "{C:joy_link}协心代码语者@火灵天星",
                text = {
                    {
                        "每张{C:joy_link}连接{}提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "召唤时{C:attention}复活 #3#{}张{C:joy_link}连接{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张{C:joy_link}连接{}"
                }
            },
            j_joy_ignis_infant = {
                name = "{C:joy_link}暗幼童@火灵天星",
                text = {
                    {
                        "召唤时生成{C:attention}#1#{}张{C:joy_spell}“火灵天星“艾”心乐园岛”{}{C:inactive}(需有空位)",
                    },
                    {
                        "视为任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                        "且拥有时视为任意{C:attention}属性{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_normal}电子界{}"
                }
            },
            j_joy_ignis_templar = {
                name = "{C:joy_link}暗骑士@火灵天星",
                text = {
                    {
                        "召唤时{C:attention}复活{}尽可能多不同名的",
                        "{C:joy_normal}“@火灵天星”{}{C:dark_edition}负片{}削弱版",
                    },
                    {
                        "作为{C:joy_normal}电子界{}召唤{C:attention}素材{}时，",
                        "{C:attention}复活 #1#{}张{C:joy_normal}主卡组电子界{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张{C:joy_normal}“@火灵天星”{}"
                }
            },
            j_joy_ignis_arrival = {
                name = "{C:joy_link}电子界到临者@火灵天星",
                text = {
                    {
                        "每份召唤{C:attention}属性{}提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "根据召唤{C:attention}素材{}获得能力：",
                        "{V:1}光属性{V:3}：回合结束{V:2}+$#3#{V:3}",
                        "{V:4}暗属性{V:7}：回合结束生成{V:5}#4#{}{V:6}幻灵牌{V:7} {s:0.9,C:inactive}(需有空位)",
                        "{V:8}水属性{V:10}：{V:9}+#5#{V:10}筹码",
                        "{V:11}炎属性{V:13}：{V:12}+#6#{V:13}倍率",
                        "{V:14}风属性{V:17}：{V:15}#7#/#8#{V:17}几率生成所用{V:16}负片{V:17}版{V:18}幻灵牌",
                        "{V:19}地属性{V:21}：{V:20}+#9#{V:21}手牌上限",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+张{C:joy_normal}电子界{}"
                }
            },
            j_joy_ignis_arrival_divine = {
                name = "{C:joy_link}电子界到临者@火灵天星",
                text = {
                    {
                        "每份召唤{C:attention}属性{}提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "根据召唤{C:attention}素材{}获得能力：",
                        "{V:1}光属性{V:3}：回合结束{V:2}+$#3#{V:3}",
                        "{V:4}暗属性{V:7}：回合结束生成{V:5}#4#{}{V:6}幻灵牌{V:7} {s:0.9,C:inactive}(需有空位)",
                        "{V:8}水属性{V:10}：{V:9}+#5#{V:10}筹码",
                        "{V:11}炎属性{V:13}：{V:12}+#6#{V:13}倍率",
                        "{V:14}风属性{V:17}：{V:15}#7#/#8#{V:17}几率生成所用{V:16}负片{V:17}版{V:18}幻灵牌",
                        "{V:19}地属性{V:21}：{V:20}+#9#{V:21}手牌上限",
                        "{C:joy_divine}神属性{}：降低{C:attention}盲注{}要求{C:red}50%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+张{C:joy_normal}电子界{}"
                }
            },
            j_joy_ignis_ailand = {
                name = "{C:joy_spell}火灵天星“艾”心乐园岛",
                text = {
                    {
                        "用{C:joy_normal}“@火灵天星”{}作{C:attention}素材{}时，",
                        "将{C:attention}#1#{}张{C:joy_normal}主卡组“@火灵天星”{}加入商店",
                    },
                    {
                        "若回合结束时拥有{C:attention}#2#{}种不同{C:attention}属性{}的小丑牌，",
                        "{C:attention}除外{}所有{C:joy_normal}电子界{}直到选择{C:attention}盲注{}",
                        "但削弱所有非{C:joy_normal}电子界{}牌",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ignis = "@火灵天星",
        }
    },
}