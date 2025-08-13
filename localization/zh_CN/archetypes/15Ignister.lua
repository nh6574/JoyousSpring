return {
    descriptions = {
        Joker = {
            j_joy_ignis_achichi = {
                name = "{C:joy_effect}阿智智@火灵天星",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "获得时生成{C:attention}#2#张{C:blue}普通{} {C:joy_normal}主牌组",
                        "{C:joy_normal}“@火灵天星”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_ignis_pikari = {
                name = "{C:joy_effect}皮卡莉@火灵天星",
                text = {
                    {
                        "回合结束{C:money}+$#1#{}",
                    },
                    {
                        "获得时生成{C:attention}#2#张随机{C:tarot}塔罗牌{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                }
            },
            j_joy_ignis_hiyari = {
                name = "{C:joy_effect}希亚莉@火灵天星",
                text = {
                    {
                        "{C:attention}+#1#{}手牌上限",
                    },
                    {
                        "每回合1次，你可{C:attention}解放#2#张{C:joy_normal}电子界族{}",
                        "以生成{C:attention}#3#张{C:green}稀有{} {C:joy_normal}主牌组“@火灵天星”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "若持有{C:joy_normal}“@火灵天星”{}则免费获得",
                    },
                }
            },
            j_joy_ignis_bururu = {
                name = "{C:joy_effect}布鲁鲁@火灵天星",
                text = {
                    {
                        "获得时将{C:attention}#1#张{C:joy_normal}“@火灵天星”{}送入{C:attention}墓地{}",
                    },
                    {
                        "作为{C:joy_normal}电子界族{}的{C:attention}素材{}被召唤时",
                        "{C:attention}复活#2#张{C:joy_normal}主牌组“@火灵天星”{}并使其为{C:dark_edition}负片{}",
                    },
                }
            },
            j_joy_ignis_doshin = {
                name = "{C:joy_effect}道真@火灵天星",
                text = {
                    {
                        "{C:chips}+#1#{}筹码",
                    },
                    {
                        "作为{C:joy_normal}电子界族{}的{C:attention}素材{}被召唤时",
                        "{C:attention}复活#2#张{C:joy_spell}额外牌组{C:joy_normal}“@火灵天星”{}",
                    },
                }
            },
            j_joy_ignis_gatchiri = {
                name = "{C:joy_effect}加齐利@火灵天星",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率",
                    },
                    {
                        "可作为任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "以本卡作为{C:attention}素材{}召唤的{C:joy_normal}电子界族{}获得以下能力：",
                        "{s:0.9}无法被弱化或{s:0.9,C:attention}翻面为里侧",
                    },
                },
                joy_transfer_ability = {
                    "无法被弱化或{C:attention}翻面为里侧"
                }
            },
            j_joy_ignis_gussari = {
                name = "{C:joy_effect}古萨利@火灵天星",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                    },
                    {
                        "可作为任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "以本卡作为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得以下能力：",
                        "{s:0.9,C:mult}+#1# {s:0.9}倍率×用于其召唤的{s:0.9,C:attention}素材 {s:0.9}数量",
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍率×用于其召唤的{C:attention}素材{}数量",
                    "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）"
                }
            },
            j_joy_ignis_danmari = {
                name = "{C:joy_effect}旦玛丽@火灵天星",
                text = {
                    {
                        "可作为任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                    },
                    {
                        "以本卡作为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得以下能力：",
                        "{s:0.9}选择盲注时{s:0.9,C:attention}盲注{s:0.9}需求降低{s:0.9,C:red}#1#%{}",
                    },
                },
                joy_transfer_ability = {
                    "选择盲注时{C:attention}盲注{}需求降低{C:red}#1#%{}"
                }
            },
            j_joy_ignis_doyon = {
                name = "{C:joy_effect}道勇@火灵天星",
                text = {
                    {
                        "获得时{C:attention}复活#1#张{C:joy_normal}主牌组“@火灵天星”{}",
                    },
                    {
                        "作为{C:joy_normal}电子界族{}的{C:attention}素材{}被召唤时",
                        "向{C:joy_spell}额外牌组{}添加{C:attention}#2#张未持有的{C:joy_normal}“@火灵天星”{}",
                    },
                }
            },
            j_joy_ignis_donyoribo = {
                name = "{C:joy_effect}夜盗火灵@火灵天星",
                text = {
                    {
                        "每购买1张{C:joy_normal}“@火灵天星”{}，{C:money}+$#1#{}",
                    },
                    {
                        "出售本卡以{C:attention}除外#2#张{C:joy_normal}“@火灵天星”{}",
                        "直至选择盲注",
                    },
                }
            },
            j_joy_ignis_backup = {
                name = "{C:joy_effect}备份火灵@火灵天星",
                text = {
                    {
                        "获得时为{C:attention}#1#张随机其他{C:joy_normal}电子界族{}添加{C:dark_edition}负片{}",
                    },
                    {
                        "作为{C:attention}素材{}被召唤的{C:joy_normal}电子界族{}若可能",
                        "则额外获得{C:dark_edition}负片{}",
                    },
                }
            },
            j_joy_ignis_wizard = {
                name = "{C:joy_effect}巫术火灵@火灵天星",
                text = {
                    {
                        "你可以{C:attention}解放{}本卡以{C:attention}复活{}最多{C:attention}#1#张",
                        "名称不同的{C:joy_normal}电子界族{}",
                        "若你持有已召唤的{C:joy_spell}额外牌组{C:joy_normal}电子界族{}，",
                        "则额外{C:attention}复活#1#张{C:joy_normal}“@火灵天星”{}并使其为{C:dark_edition}负片{}",
                    },
                }
            },
            j_joy_ignis_kiruku = {
                name = "{C:joy_effect}奇露露@火灵天星",
                text = {
                    {
                        "若你持有已召唤的{C:joy_spell}额外牌组{C:joy_normal}电子界族{}，",
                        "出售本卡可禁用当前{C:attention}首领盲注{}",
                        "并将其加入下一家商店",
                    },
                }
            },
            j_joy_ignis_leviathan = {
                name = "{C:joy_ritual}水龙@火灵天星",
                text = {
                    {
                        "召唤时向{C:joy_spell}额外牌组{}添加{C:attention}#1#张未持有的{C:joy_normal}“@火灵天星”{}",
                    },
                    {
                        "计分牌根据用于其召唤的{C:attention}属性{}数量获得{C:chips}+#2#{}筹码",
                        "{C:inactive}（当前{C:chips}+#3#{} {C:inactive}筹码）{}",
                        "以本卡为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "计分牌根据用于其召唤的{C:attention}属性{}数量获得{C:chips}+#1#{}筹码",
                    "{C:inactive}（当前{C:chips}+#2#{} {C:inactive}筹码）{}",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界族{}"
                }
            },
            j_joy_ignis_golem = {
                name = "{C:joy_fusion}土傀儡@火灵天星",
                text = {
                    {
                        "召唤时向{C:joy_spell}额外牌组{}添加{C:attention}#1#张未持有的{C:joy_normal}“@火灵天星”{}",
                    },
                    {
                        "根据用于其召唤的{C:attention}属性{}数量{C:attention}+#2#小丑牌{}栏位",
                        "{C:inactive}（当前{C:attention}+#3#{C:inactive}栏位）{}",
                        "以本卡为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "根据用于其召唤的{C:attention}属性{}数量{C:attention}+#1#小丑牌{}栏位",
                    "{C:inactive}（当前{C:attention}+#2#{C:inactive}栏位）{}",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界族{}"
                }
            },
            j_joy_ignis_pegasus = {
                name = "{C:joy_synchro}风飞马@火灵天星",
                text = {
                    {
                        "召唤时向{C:joy_spell}额外牌组{}添加{C:attention}#1#张未持有的{C:joy_normal}“@火灵天星”{}",
                    },
                    {
                        "打出的牌有{C:green}#2#/#3#{}几率再次触发",
                        "几率随用于其召唤的{C:attention}属性{}数量增加",
                        "以本卡为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "打出的牌有{C:green}#1#/#2#{}几率再次触发",
                    "几率随用于其召唤的{C:attention}属性{}数量增加",
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}同调{} +",
                    "{C:attention}1+张非{C:joy_synchro}调整{C:joy_normal}电子界族{}",
                    "{s:0.9,C:inactive}（超量或连接怪兽除外）",
                }
            },
            j_joy_ignis_dragon = {
                name = "{C:joy_xyz}光龙@火灵天星",
                text = {
                    {
                        "召唤时向{C:joy_spell}额外牌组{}添加{C:attention}#1#张未持有的{C:joy_normal}“@火灵天星”{}",
                    },
                    {
                        "回合结束时若手牌中持有计分牌",
                        "每张根据用于其召唤的{C:attention}属性{}数量获得{C:money}+$#2#{}",
                        "{C:inactive}（当前{C:money}+$#3#{C:inactive}）{}",
                        "以本卡为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "手牌中持有的计分牌根据用于其召唤的{C:attention}属性{}数量获得{C:money}+$#1#{}",
                    "{C:inactive}（当前{C:money}+$#2#{C:inactive}）{}",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界族{}",
                    "{s:0.9,C:inactive}（超量、连接",
                    "{s:0.9,C:inactive}或衍生物除外）"
                }
            },
            j_joy_ignis_phoenix = {
                name = "{C:joy_link}火凤凰@火灵天星",
                text = {
                    {
                        "召唤时向{C:joy_spell}额外牌组{}添加{C:attention}#1#张未持有的{C:joy_normal}“@火灵天星”{}",
                    },
                    {
                        "作为{C:joy_normal}电子界族{}的{C:attention}素材{}被召唤时",
                        "生成{C:attention}#2#张{C:dark_edition}负片被弱化{C:joy_link}“火凤凰@火灵天星”{}",
                    },
                    {
                        "计分牌根据用于其召唤的{C:attention}属性{}数量获得{C:mult}+#3#{}倍率",
                        "{C:inactive}（当前{C:mult}+#4#{} {C:inactive}倍率）{}",
                        "以本卡为{C:attention}素材{}召唤的{C:joy_link}连接{}怪兽获得此能力",
                    },
                },
                joy_transfer_ability = {
                    "计分牌根据用于其召唤的{C:attention}属性{}数量获得{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{} {C:inactive}倍率）{}",
                },
                joy_summon_conditions = {
                    "{C:attention}2+张{C:joy_normal}电子界族{}"
                }
            },
            j_joy_ignis_allied = {
                name = "{C:joy_link}同盟码语者@火灵天星",
                text = {
                    {
                        "每有1张{C:joy_link}连接{}{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "召唤时{C:attention}复活#3#张{C:joy_link}连接{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张{C:joy_link}连接{}"
                }
            },
            j_joy_ignis_infant = {
                name = "{C:joy_link}黑暗幼灵@火灵天星",
                text = {
                    {
                        "召唤时生成{C:attention}#1#张{C:joy_spell}“火灵A.I.乐园”{}",
                        "{C:inactive}（需有栏位）{}",
                    },
                    {
                        "可作为任意{C:attention}素材{}用于{C:joy_link}连接{}召唤",
                        "持有期间视为任意{C:attention}属性{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1张{C:joy_normal}电子界族{}"
                }
            },
            j_joy_ignis_templar = {
                name = "{C:joy_link}黑暗圣骑@火灵天星",
                text = {
                    {
                        "召唤时尽可能复活名称不同的{C:joy_normal}“@火灵天星”{}",
                        "使其为{C:dark_edition}负片{}并被弱化",
                    },
                    {
                        "作为{C:joy_normal}电子界族{}的{C:attention}素材{}被召唤时",
                        "{C:attention}复活#1#张{C:joy_normal}主牌组电子界族{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3张{C:joy_normal}“@火灵天星”{}"
                }
            },
            j_joy_ignis_arrival = {
                name = "{C:joy_link}降临电子界@火灵天星",
                text = {
                    {
                        "每有1种用于其召唤的{C:attention}属性{}{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "根据用于其召唤的{C:attention}素材{}获得以下能力",
                        "{V:1}光{V:3}：{V:2}回合结束+$#3#{V:3}",
                        "{V:4}暗{V:7}：回合结束生成{V:5}#4#{V:6}幻灵{V:7} {s:0.9,C:inactive}（需有栏位）",
                        "{V:8}水{V:10}：{V:9}+#5#{V:10}筹码",
                        "{V:11}火{V:13}：{V:12}+#6#{V:13}倍率",
                        "{V:14}风{V:17}：{V:15}#7#/#8#{V:17}几率生成使用过的{V:16}负片幻灵{V:17}",
                        "{V:19}地{V:21}：{V:20}+#9#{V:21}手牌上限",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+张{C:joy_normal}电子界族{}"
                }
            },
            j_joy_ignis_arrival_divine = {
                name = "{C:joy_link}降临电子界@火灵天星",
                text = {
                    {
                        "每有1种用于其召唤的{C:attention}属性{}{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "根据用于其召唤的{C:attention}素材{}获得以下能力",
                        "{V:1}光{V:3}：{V:2}回合结束+$#3#{V:3}",
                        "{V:4}暗{V:7}：回合结束生成{V:5}#4#{V:6}幻灵{V:7} {s:0.9,C:inactive}（需有栏位）",
                        "{V:8}水{V:10}：{V:9}+#5#{V:10}筹码",
                        "{V:11}火{V:13}：{V:12}+#6#{V:13}倍率",
                        "{V:14}风{V:17}：{V:15}#7#/#8#{V:17}几率生成使用过的{V:16}负片幻灵{V:17}",
                        "{V:19}地{V:21}：{V:20}+#9#{V:21}手牌上限",
                        "{C:joy_divine}神{V:22}：选择盲注时盲注需求降低{C:red}50%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+张{C:joy_normal}电子界族{}"
                }
            },
            j_joy_ignis_ailand = {
                name = "{C:joy_spell}火灵A.I.乐园",
                text = {
                    {
                        "当{C:joy_normal}“@火灵天星”{}被用作{C:attention}素材{}时",
                        "向商店添加{C:attention}#1#张{C:joy_normal}主牌组“@火灵天星”{}",
                    },
                    {
                        "若回合结束时持有{C:attention}#2#种不同{C:attention}属性{}的{C:attention}小丑牌{}，",
                        "则将{C:attention}所有{C:joy_normal}电子界族{}除外直至选择盲注",
                        "并弱化所有非{C:joy_normal}电子界族{}",
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