return {
    descriptions = {
        JoyousSpringTutorial = {
            welcome = {
                name = "欢迎来到{C:joy_mod}JoyousSpring{}！",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "嗨，你好！感谢你游玩JoyousSpring！",
                                "这个模组试图在{C:attention}Balatro{}中重现",
                                "现代{C:joy_effect}游戏王{}卡组的体验。"
                            },
                            {
                                "不需要了解该卡牌游戏，",
                                "还会有更多像这样的弹窗来解释机制。",
                                "你可以在模组菜单中重新阅读它们或完全禁用，",
                                "以及查看所有重要关键词的术语表。",
                                " ",
                                "如果有什么不清楚的地方请告诉我，以便我改进！"
                            },
                            {
                                "请务必查看模组菜单中的配置！",
                                "{C:joy_effect,button:joy_open_config,u:joy_effect}（或点击这里！）"
                            },
                        }
                    },
                },
            },
            extra_deck = {
                name = "{C:joy_spell}额外卡组{}",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "{C:joy_spell}额外卡组{}存放着必须",
                                "通过{C:attention}召唤{}才能上场使用的特殊{C:attention}卡牌{}。"
                            },
                            {
                                "要从{C:joy_spell}额外卡组{}中{C:attention}召唤{}一张{C:attention}卡牌{}，",
                                "请查看其{C:attention}提示信息{}中的{C:attention}召唤条件{}，",
                                "然后点击它并按下“召唤”，选择需要销毁的所需卡牌。"
                            },
                            {
                                "{C:joy_ritual}仪式{}{C:attention}卡牌{}不会进入{C:joy_spell}额外卡组{}，",
                                "而是直接从商店中召唤！"
                            },
                        }
                    },
                },
            },
            graveyard = {
                name = "{C:joy_trap}墓地{}与{C:joy_trap}除外区{}",
                text = {
                    {
                        name = "墓地",
                        text = {
                            {
                                "{C:attention}墓地{}是{C:joy_normal}怪兽{}{C:attention}卡牌{}",
                                "被销毁后所去的地方。"
                            },
                            {
                                "这些{C:attention}卡牌{}会失去在场上的所有属性，",
                                "但可以被其他检查{C:attention}墓地{}或{C:attention}复活{}卡牌的效果使用。"
                            },
                            {
                                "{C:joy_spell}特殊{}{C:attention}卡牌{}必须先被{C:attention}召唤{}过",
                                "才能被{C:attention}复活{}。"
                            },
                        }
                    },
                    {
                        name = "除外区",
                        text = {
                            {
                                "部分{C:attention}卡牌{}有能力暂时离开{C:attention}卡牌{}槽位",
                                "直到指定时间，或使其他卡牌如此做，",
                                "包括{C:attention}消耗牌{}和{C:attention}游戏牌{}。",
                                "这被称为{C:attention}除外{}。"
                            },
                            {
                                "这些卡牌即使槽位已满也会返回，",
                                "类似于{C:dark_edition}负片{}卡牌。"
                            },
                            {
                                "卡牌在其他效果触发前返回，且通常在",
                                "所有其他效果触发后被{C:attention}除外{}。"
                            },
                        }
                    },
                },
            },
            side_deck = {
                name = "{C:joy_link}副卡组{}",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "{C:joy_link}副卡组{}可以在回合之间存放{C:attention}卡牌{}。",
                                "这可以腾出槽位来生成或购买更多{C:attention}卡牌{}，",
                                "并允许长期规划策略。"
                            },
                            {
                                "你可以在{C:joy_link}副卡组{}界面中将{C:attention}卡牌{}",
                                "拖拽到相应区域，但你可以随时查看和出售",
                                "存放的{C:attention}卡牌{}。"
                            },
                            {
                                "在{C:joy_link}副卡组{}界面中，你可以使用存放的",
                                "{C:attention}卡牌{}进行{C:attention}召唤{}，并进行{C:joy_ritual}仪式{}{C:attention}召唤{}。",
                                "{C:inactive}（未上场过的特殊卡牌不能以这种方式使用）{}"
                            },
                        }
                    },
                },
            },
            blinds = {
                name = "{C:joy_mod}盲注{}与{C:joy_trap}对手{}",
                text = {
                    {
                        name = "JoyousSpring盲注",
                        text = {
                            {
                                "来自{C:joy_mod}JoyousSpring{}的{C:attention}首领盲注{}拥有",
                                "特殊特性。"
                            },
                            {
                                "部分盲注的效果可能持续整个{C:attention}底注{}，",
                                "由出现在牌组顶部的一张卡牌指示。"
                            },
                            {
                                "当输给本模组的{C:attention}盲注{}时，你的{C:joy_trap}对手{}",
                                "会获得一张特殊卡牌，以额外生命为代价给你一个永久减益。",
                                "每{C:attention}底注{}只能触发一次，且仅在",
                                "该{C:attention}盲注{}的效果激活时触发。"
                            },
                        }
                    },
                    {
                        name = "对手",
                        text = {
                            {
                                "{C:joy_trap}对手{}卡牌会进入{C:joy_trap}对手{}区域。",
                                "该区域最多只能存放{C:attention}5{}张卡牌，但如果",
                                "添加了额外的卡牌，最旧的卡牌会被销毁。",
                                "{C:inactive}（效果可能会修改此上限）{}"
                            },
                            {
                                "当你输给{C:attention}盲注{}时，",
                                "它们会向此区域添加不利卡牌。"
                            },
                            {
                                "此区域中的卡牌不能被出售、移动",
                                "或为效果而选择，除非另有规定。"
                            },
                        }
                    },
                },
            },
            secret_pack = {
                name = "{C:joy_mod}自选包{}与{C:joy_mod}保密包{}",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "每个商店都会出现{C:joy_mod}自选包{}",
                                "包含{C:attention}4{}个可以打开的{C:joy_mod}保密包{}。"
                            },
                            {
                                "{C:joy_mod}保密包{}包含特定主题的{C:attention}卡牌{}，",
                                "让你更容易瞄准特定策略，",
                                "或为你当前情况找到有用的{C:attention}卡牌{}。"
                            },
                            {
                                "你可以通过按下{C:attention}D{}键查看{C:joy_mod}保密包{}",
                                "所包含的{C:attention}卡牌{}并查看相关卡牌。"
                            },
                        }
                    },
                },
            },
            card_attributes = {
                name = "{C:joy_normal}怪兽{}{C:attention}卡牌{}",
                text = {
                    {
                        name = "基本信息",
                        text = {
                            {
                                "{C:joy_normal}怪兽{}{C:attention}卡牌{}是来自{C:joy_mod}JoyousSpring{}的{C:attention}卡牌{}。",
                                "它们具有源自{C:joy_effect}游戏王{}集换式卡牌游戏的不同特性。"
                            },
                            {
                                "对于大多数此类{C:attention}卡牌{}，你可以通过按下{C:attention}D{}键",
                                "查看{C:red}相关卡牌{}（例如它们所属的系列），",
                                "并可以通过按下{C:attention}G{}键在描述中查看关键词的{C:red}术语表{}。"
                            },
                            {
                                "如果一张卡牌有{C:attention}转移{}的效果{ C:inactive}（见术语表）{}，",
                                "你可以按下{C:attention}T{}键在效果页面之间切换。",
                                " ",
                                "如果一张卡牌有异画，你可以按下{C:attention}A{}键更改它们，",
                                "或在模组设置中更改默认画作。"
                            },
                            {
                                "如果一张卡牌有{C:attention}发动{}的效果",
                                "{C:inactive}（文本中写有“可以发动”或“取除”）{}，",
                                "那么你需要点击该卡牌并按下按钮来使用它。"
                            },
                        }
                    },
                    {
                        name = "卡牌类型",
                        text = {
                            {
                                "{C:joy_normal}怪兽{}{C:attention}卡牌{}大致分为",
                                "三种类型：非{C:joy_spell}特殊{}、{C:joy_spell}特殊{}和{C:joy_spell}场地魔法{}。"
                            },
                            {
                                "非{C:joy_spell}特殊{}{C:attention}卡牌{}的行为大多与其他{C:attention}卡牌{}类似。",
                                " ",
                                "{C:joy_spell}特殊{}{C:attention}卡牌{}必须通过{C:attention}召唤{}才能上场，",
                                "包括{C:joy_ritual}仪式{}、{C:joy_fusion}融合{}、{C:joy_synchro}同调{}、{C:joy_xyz}超量{}和{C:joy_link}连接{}。",
                                " ",
                                "{C:joy_spell}场地魔法{}会进入{C:joy_spell}场地魔法{}区域，且除非另有规定，",
                                "不计入已拥有的{C:attention}卡牌{}。"
                            },
                            {
                                "与普通{C:attention}卡牌{}不同，{C:joy_normal}怪兽{}{C:attention}卡牌{}的效果",
                                "在{C:attention}背面表示{}时无法生效，但你仍可以看到它们的信息。",
                            }
                        }
                    },
                    {
                        name = "怪兽特性",
                        text = {
                            {
                                "除了效果文本外，{C:joy_normal}怪兽{}{C:attention}卡牌{}",
                                "还有可以在描述框中看到的其他特性。"
                            },
                            {
                                "{C:joy_normal}怪兽{}{C:attention}卡牌{}通常是带有效果的{C:joy_effect}效果{}{C:attention}卡牌{}，",
                                "但有时也可能是{C:joy_normal}通常{}{C:attention}卡牌{}，",
                                "即没有效果、通常不会在商店中出现的{C:attention}卡牌{}。"
                            },
                            {
                                "它们还可以拥有{C:joy_normal}属性{}（例如{C:joy_dark}暗属性{}）",
                                "和{C:joy_normal}种族{}（例如{C:joy_normal}魔法师族{}）。",
                                " ",
                                "这些对效果很重要，但除此之外不影响游戏玩法，",
                                "除了{C:joy_normal}幻神兽族{}具有在{C:attention}盲注{}前",
                                "被{C:attention}除外{}的固有特性。"
                            }
                        }
                    },
                    {
                        name = "怪兽特性（续）",
                        text = {
                            {
                                "以下是{C:joy_normal}怪兽{}{C:attention}卡牌{}可以拥有的其他特性：",
                                "{C:joy_trap}陷阱{}，每回合固有地{C:attention}反转{}；",
                                "{C:joy_pendulum}灵摆{}，可以用作{C:attention}消耗牌{}；",
                                "{C:joy_effect}反转{}，在{C:attention}反转{}为表侧表示时有效果；",
                                "以及/或者{C:joy_synchro}调整{}，用于{C:joy_synchro}同调{}{C:attention}召唤{}。"
                            },
                            {
                                "名称也是一个重要的细节，",
                                "例如，一张卡牌如果名称中包含{C:joy_normal}“半龙女仆”{}，",
                                "则被视为{C:joy_normal}“半龙女仆”{}{C:attention}卡牌{}。"
                            },
                            {
                                "再次强调，如果任何时候有任何不清楚的地方，你可以按下{C:attention}G{}键",
                                "查看{C:attention}卡牌{}的术语表，并且你可以在模组菜单中",
                                "阅读所有教程和术语表。",
                                " ",
                                "祝你好运！"
                            }
                        }
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            joy_tutorial_disable = "不再显示",
        }
    }
}