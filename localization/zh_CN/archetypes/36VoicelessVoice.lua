return {
    descriptions = {
        Joker = {
            j_joy_voice_lo = {
                name = "{C:joy_effect}肃声的祈祷者 理",
                text = {
                    {
                        "被{C:attention}解放{}时，向商店添加",
                        "{C:attention}#1#{}张{C:joy_light}光属性{}{C:joy_ritual}仪式{}",
                        "并获得一次免费{C:green}重掷{}"
                    },
                    {
                        "视为{C:joy_ritual}仪式{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_ritual}仪式{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时生成{s:0.9,C:attention}1{}张",
                        "{s:0.9}非{C:joy_ritual}仪式{}的{C:joy_normal}“肃声”{}",
                        "{s:0.9,C:inactive}（必须有槽位）"
                    },
                },
                joy_transfer_ability = {
                    "回合结束时生成{C:attention}1{}张",
                    "非{C:joy_ritual}仪式{}的{C:joy_normal}“肃声”{}",
                    "{C:inactive}（必须有槽位）"
                }
            },
            j_joy_voice_saffira = {
                name = "{C:joy_effect}肃声之龙贤姬 萨菲拉",
                text = {
                    {
                        "被{C:attention}解放{}时，在{C:joy_link}副卡组{}中",
                        "生成{C:attention}1{}张{C:joy_light}光属性{}{C:joy_ritual}仪式{}"
                    },
                    {
                        "视为{C:joy_ritual}仪式{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_ritual}仪式{}",
                        "获得以下效果：",
                        "{s:0.9}回合结束时，本回合每张被{C:attention}解放{}的",
                        "{s:0.9,C:joy_light}光属性{}{s:0.9,C:attention}卡牌{}",
                        "{s:0.9}提供{C:money}+$#1#{s:0.9}金钱",
                    },
                },
                joy_transfer_ability = {
                    "回合结束时，本回合每张被{C:attention}解放{}的",
                    "{C:joy_light}光属性{}{C:attention}卡牌{}",
                    "提供{C:money}+$#1#{}金钱",
                    "{C:inactive}（当前{C:money}+$#2#{}{C:inactive}）"
                }
            },
            j_joy_voice_sauravis = {
                name = "{C:joy_effect}肃声的龙贤者 始龙",
                text = {
                    {
                        "被{C:attention}解放{}时，{C:attention}复活1{}张",
                        "{C:joy_light}光属性{}{C:joy_ritual}仪式{}",
                        "并以{C:dark_edition}负片{}状态生成"
                    },
                    {
                        "视为{C:joy_ritual}仪式{}召唤的任何{C:attention}素材{}",
                    },
                    {
                        "使用此卡作为{C:attention}素材{}召唤的{C:joy_ritual}仪式{}",
                        "获得以下效果：",
                        "{s:0.9}本回合每张被{C:attention}解放{}的",
                        "{s:0.9,C:joy_light}光属性{}{s:0.9,C:attention}卡牌{}",
                        "{s:0.9}提供{C:chips}+#1#{s:0.9}筹码",
                    },
                },
                joy_transfer_ability = {
                    "本回合每张被{C:attention}解放{}的",
                    "{C:joy_light}光属性{}{C:attention}卡牌{}",
                    "提供{C:chips}+#1#{}筹码",
                    "{C:inactive}（当前{C:chips}+#2#{}{C:inactive}筹码）"
                }
            },
            j_joy_voice_divine = {
                name = "{C:joy_ritual}肃声之龙神 萨菲拉",
                text = {
                    {
                        "此卡{C:attention}上场{}的回合，{C:attention}墓地{}中",
                        "每张{C:joy_effect}“肃声的祈祷者 理”{}",
                        "提供{C:attention}+#1#{}手牌上限",
                        "{C:inactive}（当前{C:attention}+#2#{}{C:inactive}）"
                    },
                    {
                        "回合结束时获得一个",
                        "{C:attention}启蒙仪式秘密包标签{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2{}张{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
            j_joy_voice_skull = {
                name = "{C:joy_ritual}肃声之守护者 法理守护者",
                text = {
                    {
                        "本回合每张被{C:attention}解放{}的",
                        "{C:joy_light}光属性{}{C:attention}卡牌{}",
                        "提供{C:mult}+#1#{}倍率",
                        "{C:inactive}（当前{C:mult}+#2#{}{C:inactive}倍率）"
                    },
                    {
                        "{C:attention}墓地{}中每张",
                        "{C:joy_effect}“肃声的祈祷者 理”{}",
                        "提供{X:chips,C:white}X#3#{}筹码",
                        "{C:inactive}（当前{X:chips,C:white}X#4#{}{C:inactive}筹码）"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}解放{C:attention}2{}张{C:joy_light}光属性{}{C:attention}卡牌{}"
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            voice = {
                story = {
                    "一位肩负使命的祈祷少女，{C:joy_effect}“理”{}，以及她沉默的守护者，{C:joy_ritual}“法理{C:joy_ritual}守护者”{}。彼此扶持之下，她们克服了重重艰难。而她们的旅程，也一直受到龙神们的守望。",
                },
                gameplay = {
                    "召唤尽可能多的{C:joy_light}光属性{C:joy_ritual}仪式{}卡牌，使它们的效果更强！"
                }
            }
        }
    },
        misc = {
        dictionary = {
            k_joy_archetype_voice = "肃声",
        }
    }
}