return {
    descriptions = {
        Joker = {
            j_joy_wasp_pin = {
                name = "{C:joy_effect}蜂军-必中之大头针蜂",
                text = {
                    {
                        "每张{C:joy_normal}“蜂军”{}提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "此卡{C:attention}上场{}时，生成{C:attention}1{}张",
                        "{C:joy_effect}“蜂军-必中之大头针蜂”{}{C:inactive}（“蜂军-必中之大头针蜂”自身除外）{}",
                    },
                    {
                        "免费获得，且若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_wasp_dart = {
                name = "{C:joy_effect}蜂军-追击之飞镖蜂",
                text = {
                    {
                        "用作{C:attention}素材{}时，",
                        "生成{C:attention}1{}张{C:joy_normal}主卡组昆虫族{}",
                    },
                    {
                        "视为{C:joy_synchro}同调{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "免费获得，且若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_wasp_sting = {
                name = "{C:joy_effect}蜂军-毒针之针刺蜂",
                text = {
                    {
                        "你可以{C:attention}解放1{}张{C:joy_normal}昆虫族{}，",
                        "在商店中获得一次免费重掷"
                    },
                    {
                        "此卡{C:attention}上场{}时，向{C:joy_spell}额外卡组{}",
                        "添加{C:attention}1{}张{C:joy_normal}“蜂军”{}",
                        "{C:inactive}（必须有槽位）"
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_wasp_twinbow = {
                name = "{C:joy_effect}蜂军-连击之双弩蜂",
                text = {
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "向商店添加{C:attention}2{}张{C:joy_effect}“蜂军-连击之双弩蜂”{}",
                    },
                    {
                        "视为{C:joy_synchro}同调{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_wasp_arbalest = {
                name = "{C:joy_effect}蜂军-急射之钢弩蜂",
                text = {
                    {
                        "此卡{C:attention}上场{}时，",
                        "{C:attention}复活1{}张{C:joy_normal}昆虫族{}",
                    },
                    {
                        "视为{C:joy_synchro}同调{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    }
                }
            },
            j_joy_wasp_rapier = {
                name = "{C:joy_effect}蜂军-猛击之细剑蜂",
                text = {
                    {
                        "视为{C:joy_synchro}同调{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "若你拥有另一张{C:joy_normal}昆虫族{}，",
                        "则即使没有槽位也可从商店获得此卡",
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得以下效果：",
                        "{s:0.9}每张打出的牌有{C:green}#1#/#2#{s:0.9}几率再次触发",
                        "{s:0.9}每张{C:joy_normal}昆虫族{}增加几率"
                    },
                },
                joy_transfer_ability = {
                    "每张打出的牌有{C:green}#1#/#2#{}几率再次触发",
                    "每张{C:joy_normal}昆虫族{}增加几率"
                }
            },
            j_joy_wasp_azusa = {
                name = "{C:joy_synchro}蜂军-灵弓之梓弓蜂",
                text = {
                    {
                        "选择{C:attention}盲注{}时，每张{C:joy_normal}昆虫族{}",
                        "使{C:attention}盲注{}需求降低{C:red}#1#%{}{C:inactive}（最高50%）{}",
                        "{C:inactive}（当前 #2#%）"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时将自身{C:attention}除外{}",
                        "{s:0.9}直至选择{s:0.9,C:attention}盲注{}"
                    },
                },
                joy_transfer_ability = {
                    "回合结束时将自身{C:attention}除外{}",
                    "直至选择{C:attention}盲注{}"
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}的{C:joy_normal}昆虫族{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                    "无需槽位",
                }
            },
            j_joy_wasp_halberd = {
                name = "{C:joy_synchro}蜂军-突击之钩镰枪蜂",
                text = {
                    {
                        "{C:joy_normal}昆虫族{}{C:joy_spell}特殊{}{C:attention}卡牌{}",
                        "提供{X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得以下效果：",
                        "{s:0.9}每张{C:joy_normal}昆虫族{}提供{C:mult}+#1#{s:0.9}倍率"
                    },
                },
                joy_transfer_ability = {
                    "每张{C:joy_normal}昆虫族{}提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}昆虫族{}{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                    "无需槽位",
                }
            },
            j_joy_wasp_sachi = {
                name = "{C:joy_synchro}蜂军-神事弓之幸矢蜂",
                text = {
                    {
                        "用作{C:joy_normal}昆虫族{}的{C:attention}素材{}时，",
                        "每张{C:joy_normal}昆虫族{}提供{C:money}+$#1#{}金钱"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得以下效果：",
                        "{s:0.9}底注结束时，{s:0.9,C:attention}墓地{}中每张{s:0.9,C:joy_normal}昆虫族{}",
                        "{s:0.9}提供{C:money}+$#2#{s:0.9}金钱"
                    },
                },
                joy_transfer_ability = {
                    "底注结束时，{C:attention}墓地{}中每张{C:joy_normal}昆虫族{}",
                    "提供{C:money}+$#1#{}金钱",
                    "{C:inactive}（当前{C:money}+$#2#{}{C:inactive}）"
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}昆虫族{}{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                    "无需槽位",
                }
            },
            j_joy_wasp_hama = {
                name = "{C:joy_synchro}蜂军-降魔弓之破魔矢蜂",
                text = {
                    {
                        "{C:mult}+#1#{}倍率",
                        "若使用{C:joy_synchro}同调{}作为{C:attention}素材{}召唤，",
                        "则额外提供{V:1}+#2#{V:2}倍率"
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得以下效果：",
                        "{s:0.9}{C:mult}+#3#{s:0.9}倍率"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#3#{}倍率"
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}昆虫族{}{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非{C:joy_synchro}调整{}的{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                    "无需槽位",
                }
            },
            j_joy_wasp_ballista = {
                name = "{C:joy_synchro}蜂军-决战之巨弩炮蜂",
                text = {
                    {
                        "本局游戏中每张被{C:attention}除外{}的{C:joy_normal}昆虫族{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得此效果"
                    },
                    {
                        "回合结束时将所有{C:joy_normal}“蜂军”{}",
                        "{C:attention}除外{}直至选择{C:attention}盲注{}"
                    },
                },
                joy_transfer_ability = {
                    "本局游戏中每张被{C:attention}除外{}的{C:joy_normal}昆虫族{}",
                    "提供{C:mult}+#1#{}倍率",
                    "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）",
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}昆虫族{}{C:joy_synchro}调整{} +",
                    "{C:attention}2{}张非{C:joy_synchro}调整{}",
                    "包含一张{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                    "无需槽位",
                }
            },
            j_joy_wasp_partisan = {
                name = "{C:joy_synchro}蜂军-革命之大游击阔头枪蜂",
                text = {
                    {
                        "本局游戏中每张被{C:attention}除外{}的{C:joy_normal}昆虫族{}",
                        "使其获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）",
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_normal}昆虫族{}",
                        "获得此效果"
                    },
                    {
                        "用作{C:attention}素材{}时，向{C:joy_spell}额外卡组{}添加",
                        "每种{C:joy_normal}“蜂军”{}{C:joy_synchro}同调{}各{C:attention}1{}张",
                        "{C:inactive}（“蜂军-革命之大游击阔头枪蜂”除外）{}",
                        "{C:inactive}（无需槽位）"
                    },
                },
                joy_transfer_ability = {
                    "本局游戏中每张被{C:attention}除外{}的{C:joy_normal}昆虫族{}",
                    "使其获得{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}（当前{X:mult,C:white}X#2#{}{C:inactive}倍率）"
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}昆虫族{}{C:joy_synchro}调整{} +",
                    "{C:attention}3{}张以上非{C:joy_synchro}调整{}",
                    "包含一张{C:joy_synchro}同调{}",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外）",
                    "无需槽位",
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            wasp = {
                gameplay = {
                    "根据所有已知的航空定——哦，这是同样的套路……",
                    "它们也支持{C:joy_synchro}同调{}{C:attention}召唤{}！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_wasp = "蜂军",
        }
    }
}