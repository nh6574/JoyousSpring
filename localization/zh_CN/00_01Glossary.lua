return {
    descriptions = {
        Other = {
            joy_face_down = {
                name = "里侧表示",
                text = {
                    "无法使用或发动效果",
                    "且对于能力而言视为空白卡牌",
                    "除非另有规定",
                    "{C:inactive}（版本仍适用）",
                },
            },
            joy_tooltip_related = {
                name = "相关卡牌",
                text = {
                    "按{C:attention}D{}键查看",
                    "相关卡牌",
                },
            },
            joy_tooltip_glossary = {
                name = "术语表",
                text = {
                    "按{C:attention}G{}键查看",
                    "术语表",
                },
            },
            joy_tooltip_alt_art = {
                name = "切换卡画",
                text = {
                    "按{C:attention}A{}键切换",
                    "不同卡画",
                    "{C:inactive,s:0.8}（仅限此卡牌）"
                },
            },
            joy_tooltip_transferred = {
                name = "转移",
                text = {
                    "按{C:attention}T{}键切换",
                    "主效果与",
                    "转移的效果之间的显示",
                },
            },
            joy_tooltip_pendulum_joker = {
                name = "灵摆卡牌",
                text = {
                    "可作为消耗牌使用",
                    "{s:0.15} ",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_spell}特殊{}{s:0.9,C:inactive}卡牌必须先",
                    "{s:0.9,C:inactive}正确召唤）"
                },
            },
            joy_tooltip_illusion_joker = {
                name = "幻神兽族卡牌",
                text = {
                    "具有此{C:attention}原始种族{}的{C:attention}卡牌{}",
                    "会在选择{C:attention}盲注{}时被{C:attention}除外{}",
                    "直至回合结束",
                },
            },
            joy_tooltip_trap = {
                name = "陷阱卡牌",
                text = {
                    "上场时{C:attention}反转{}",
                    "并在每个回合结束时反转",
                },
            },
            joy_tooltip_no_shop = {
                name = "不可购买",
                text = {
                    "无法从商店获得",
                    "也无法通过非{C:attention}怪兽{}效果获得",
                },
            },
            joy_tooltip_sidedecksummon = {
                name = "位于副卡组",
                text = {
                    "此卡牌当前",
                    "在{C:joy_link}副卡组{}中"
                }
            },
            joy_tooltip_sidedecknotsummoned = {
                name = "未召唤",
                text = {
                    "此卡牌尚未{C:attention}上场{}",
                    "必须先被{C:attention}召唤{}"
                }
            }
        },
    },
    misc = {
        dictionary = {
            k_joy_glossary = "术语表",
        },
        joyous_spring = {
            monster = {
                name = "[{C:joy_normal}怪兽{}卡牌]",
                text = {
                    "来自{C:joy_mod}JoyousSpring{}的{C:attention}卡牌{}",
                }
            },
            normal = {
                name = "[{C:joy_normal}通常{}卡牌]",
                text = {
                    "没有效果的{C:joy_normal}主卡组{}{C:attention}卡牌{}",
                    "通常不会在商店中出现",
                    " ",
                    "描述中可能包含风味文字"
                },
            },
            effect = {
                name = "[{C:joy_effect}效果{}卡牌]",
                text = {
                    "带有效果的{C:joy_normal}怪兽{}{C:attention}卡牌{}",
                    "大多数属于此类别",
                },
            },
            maindeck = {
                name = "[{C:joy_normal}主卡组{}卡牌]",
                text = {
                    "{C:joy_normal}通常{}、非{C:joy_spell}额外卡组{}的{C:joy_effect}效果{}、",
                    "以及{C:joy_ritual}仪式{}{C:attention}卡牌{}",
                },
            },
            pendulum = {
                name = "[{C:joy_pendulum}灵摆{}卡牌]",
                text = {
                    "也可用作消耗牌的{C:attention}卡牌{}",
                    " ",
                    "{C:joy_spell}特殊{}{C:attention}卡牌{}必须先被正确{C:attention}召唤{}"
                },
            },
            fieldspell = {
                name = "[{C:joy_spell}场地魔法{}卡牌]",
                text = {
                    "放置在{C:joy_spell}场地魔法{}区域",
                    "不能被{C:attention}复活{}，且对于能力而言不计为已拥有的{C:attention}卡牌{}{C:inactive}（除非另有规定）{}"
                },
            },
            token = {
                name = "[{C:joy_token}衍生物{}卡牌]",
                text = {
                    "由效果生成的{C:joy_normal}通常{}{C:attention}卡牌{}",
                    "生成时可能被赋予效果，但仍视为{C:joy_normal}通常{}{C:attention}卡牌{}",
                    " ",
                    "{C:joy_token}衍生物{}不会进入{C:attention}墓地{}"
                },
            },

            graveyard = {
                name = "[墓地]",
                text = {
                    "简称{C:attention}GY{}",
                    "当一张{C:joy_normal}怪兽{}{C:attention}卡牌{}被出售、销毁",
                    "或用于{C:attention}召唤{}时，它们会进入{C:attention}墓地{}",
                    "并失去所有强化效果"
                },
            },
            revive = {
                name = "[复活]",
                text = {
                    "从{C:attention}墓地{}中{C:red}随机{}取出一张满足指定条件的卡牌并生成",
                    "必须有槽位，且可能附带随机版本{C:inactive}（除非另有规定）{}",
                    " ",
                    "未被正确{C:attention}召唤{}的{C:joy_spell}特殊{}{C:attention}卡牌{}无法复活",
                    "{C:attention}复活{}的卡牌售价为{C:money}$1"
                },
            },
            send = {
                name = "[送入墓地]",
                text = {
                    "将{C:red}随机{}满足指定条件的卡牌添加到{C:attention}墓地{}",
                },
            },

            extradeck = {
                name = "[{C:joy_spell}额外卡组{}]",
                text = {
                    "存放{C:joy_spell}额外卡组{}{C:attention}卡牌{}",
                    "此区域的卡牌不计为{C:attention}已拥有{}",
                    " ",
                    "卡牌可能从{C:attention}卡牌{}槽位返回{C:joy_spell}额外卡组{}",
                    "此时它们必须再次被{C:attention}召唤{}才能上场"
                },
            },
            extradeck_joker = {
                name = "[{C:joy_spell}额外卡组{}卡牌]",
                text = {
                    "从商店获得时放入{C:joy_spell}额外卡组{}",
                    "它们通过销毁其召唤条件中列出的卡牌来上场",
                    " ",
                    "包括{C:joy_fusion}融合{}、{C:joy_synchro}同调{}、{C:joy_xyz}超量{}和{C:joy_link}连接{}{C:attention}卡牌{}",
                    "{C:attention}召唤{}的卡牌售价等于其成本"
                },
            },
            special = {
                name = "[{C:joy_spell}特殊{}卡牌]",
                text = {
                    "必须首先通过销毁其召唤条件中列出的卡牌",
                    "来{C:attention}召唤{}的{C:attention}卡牌{}",
                    "也可能通过效果上场，但不视为正确{C:attention}召唤{}",
                    " ",
                    "包括{C:joy_ritual}仪式{}、{C:joy_fusion}融合{}、{C:joy_synchro}同调{}、{C:joy_xyz}超量{}和{C:joy_link}连接{}{C:attention}卡牌{}",
                },
            },
            summon = {
                name = "[召唤]",
                text = {
                    "为了上场，{C:joy_spell}特殊{}{C:attention}卡牌{}可以通过销毁",
                    "其召唤条件中列出的卡牌来{C:attention}召唤{}",
                    "以此方式上场的{C:attention}卡牌{}被称为正确{C:attention}召唤{}",
                    "要{C:attention}召唤{}一张卡牌，你必须在{C:attention}素材{}被销毁后",
                    "有槽位{C:inactive}（除非另有规定）{}",
                },
            },
            material = {
                name = "[素材]",
                text = {
                    "用于{C:attention}召唤{}一张{C:attention}卡牌{}的卡牌",
                },
            },
            all_materials = {
                name = "[任意素材]",
                text = {
                    "具有此属性的卡牌可以替代{C:attention}召唤{}所需的任何素材",
                    " ",
                    "每次{C:attention}召唤{}只能使用一张具有此属性的卡牌"
                },
            },
            transfer = {
                name = "[转移的效果]",
                text = {
                    "某些卡牌可能使{C:attention}卡牌{}获得额外效果，通常是在用作{C:attention}素材{}时",
                    "如果一张带有转移效果的{C:attention}卡牌{}被用于{C:attention}召唤{}，",
                    "它{C:red}不会{}转移这些效果{C:inactive}（除非另有规定）{}",
                    " ",
                    "悬停在{C:attention}卡牌{}上时按{C:attention}T{}键查看其转移的效果"
                },
            },

            ritual = {
                name = "[{C:joy_ritual}仪式{}卡牌]",
                text = {
                    "不进{C:joy_spell}额外卡组{}的{C:joy_spell}特殊{}{C:attention}卡牌{}",
                    "而是直接从商店{C:attention}召唤{}",
                    "无法购买，但可以免费添加到{C:joy_link}副卡组{}",
                    " ",
                    "用于{C:joy_ritual}仪式{}的{C:attention}素材{}视为{C:attention}解放{}",
                    "且即使里侧表示，其属性也会被检查"
                },
            },
            fusion = {
                name = "[{C:joy_fusion}融合{}卡牌]",
                text = {
                    "必须首先从{C:joy_spell}额外卡组{}中{C:attention}召唤{}的{C:joy_spell}特殊{}{C:attention}卡牌{}",
                    " ",
                    "用于{C:joy_fusion}融合{}的{C:attention}素材{}",
                    "即使里侧表示，其属性也会被检查"
                },
            },
            synchro = {
                name = "[{C:joy_synchro}同调{}卡牌]",
                text = {
                    "必须首先从{C:joy_spell}额外卡组{}中{C:attention}召唤{}的{C:joy_spell}特殊{}{C:attention}卡牌{}",
                    " ",
                    "{C:joy_synchro}调整{}通常作为{C:attention}素材{}被要求",
                    "{C:joy_xyz}超量{}和{C:joy_link}连接{}不能用作{C:attention}素材{}{C:inactive}（除非另有规定）{}"
                },
            },
            xyz = {
                name = "[{C:joy_xyz}超量{}卡牌]",
                text = {
                    "必须首先从{C:joy_spell}额外卡组{}中{C:attention}召唤{}的{C:joy_spell}特殊{}{C:attention}卡牌{}",
                    " ",
                    "它们初始拥有的{C:joy_xyz}超量{}{C:attention}素材{}数量等于{C:attention}召唤{}时使用的{C:attention}素材{}数量",
                    "{C:joy_xyz}超量{}、{C:joy_link}连接{}和{C:joy_token}衍生物{}不能用作{C:attention}素材{}{C:inactive}（除非另有规定）{}",
                    "若指定，用于召唤其他{C:joy_xyz}超量{}的{C:joy_xyz}超量{}可以转移其{C:joy_xyz}超量{}{C:attention}素材{}",
                },
            },
            link = {
                name = "[{C:joy_link}连接{}卡牌]",
                text = {
                    "必须首先从{C:joy_spell}额外卡组{}中{C:attention}召唤{}的{C:joy_spell}特殊{}{C:attention}卡牌{}",
                    " ",
                    "{C:joy_link}连接{}不能被{C:attention}反转{}为里侧表示"
                },
            },

            tuner = {
                name = "[{C:joy_synchro}调整{}卡牌]",
                text = {
                    "用作{C:joy_synchro}同调{}{C:attention}召唤{}的{C:attention}素材{}",
                },
            },
            xyz_material = {
                name = "[{C:joy_xyz}超量{} 素材]",
                text = {
                    "{C:joy_xyz}超量{}初始拥有的计数器数量",
                    "等于其{C:attention}召唤{}时使用的{C:attention}素材{}数量"
                },
            },
            detach = {
                name = "[{C:joy_xyz}取除{}]",
                text = {
                    "为发动效果移除{C:joy_xyz}超量{}{C:attention}素材{}",
                    " ",
                    "“{C:joy_xyz}取除{}{C:attention}X{}” 意味着该卡牌可以{C:attention}发动{}一个",
                    "需要移除那么多计数器的效果"
                },
            },
            attach = {
                name = "[{C:joy_xyz}附着{}]",
                text = {
                    "向卡牌添加{C:joy_xyz}超量{}{C:attention}素材{}",
                    " ",
                    "{C:joy_xyz}超量{}{C:attention}素材{}可能直接被能力添加，",
                    "或者它们可能{C:attention}附着{}另一张卡牌，此时该卡牌会从原位置移除，",
                    "但不计为{C:attention}召唤素材{}且不{C:attention}转移{}效果"
                },
            },
            counter = {
                name = "[计数器]",
                text = {
                    "某些卡牌可能拥有放置在卡牌上的计数器",
                    "并被能力使用"
                },
            },

            facedown = {
                name = "[里侧表示]",
                text = {
                    "{C:attention}反转{}的{C:joy_normal}怪兽{}{C:attention}卡牌{}无法使用其效果{C:inactive}（除非另有规定）{}",
                    "且对于能力和{C:attention}召唤{}而言视为空白{C:attention}卡牌{}{C:inactive}（仪式和融合除外）{}",
                    " ",
                    "{C:joy_link}连接{}不能变为里侧表示",
                    "{C:attention}版本{}仍然适用"
                }
            },
            flip = {
                name = "[{C:joy_effect}反转{}卡牌]",
                text = {
                    "{C:joy_effect}反转{}{C:attention}卡牌{}拥有{C:joy_effect}反转{}效果，",
                    "当它被{C:attention}反转{}为表侧表示时触发，",
                    "效果持续至下一个回合结束{C:inactive}（除非另有规定）{}",
                    "所有{C:joy_effect}反转{}效果每回合只能触发一次",
                    " ",
                    "{C:red}注意{}：卡牌由效果反转，而非手动"
                },
            },
            trap = {
                name = "[{C:joy_trap}陷阱{}卡牌]",
                text = {
                    "上场时和每个回合结束时{C:attention}反转{}",
                },
            },

            banish = {
                name = "[除外]",
                text = {
                    "卡牌离开区域，暂时进入{C:attention}除外区{}直至指定时间",
                    "即使没有槽位，它们也能返回{C:inactive}（除非另有规定）{}",
                    " ",
                    "{C:attention}被除外{}的卡牌在所有其他效果激活前返回",
                },
            },
            illusion_joker = {
                name = "[{C:joy_normal}幻神兽族{}卡牌]",
                text = {
                    "具有此{C:attention}原始种族{}的{C:attention}卡牌{}",
                    "会在选择{C:attention}盲注{}时被{C:attention}除外{}直至回合结束",
                },
            },

            activated = {
                name = "[发动效果]",
                text = {
                    "描述中写有“可以发动”的卡牌拥有满足条件后可以发动的效果",
                    "“{C:joy_xyz}取除{}{C:attention}X{}” 能力也被视为发动效果",
                    " ",
                    "要发动效果，请点击{C:green}出售{}按钮下方的按钮"
                },
            },
            tribute = {
                name = "[解放]",
                text = {
                    "能力可能{C:attention}解放{}并销毁卡牌",
                    "这与其他被销毁的卡牌类似，但可能与其他能力相关"
                },
            },
            transform = {
                name = "[变形]",
                text = {
                    "将一张{C:attention}卡牌{}变为另一张",
                    "保留所有强化效果",
                }
            },
            excavate = {
                name = "[发掘]",
                text = {
                    "展示牌组顶端的卡牌，数量不超过卡牌上标注的最大值",
                    "每张卡牌可以{C:attention}检查{}所发掘的顶端{C:attention}X{}张卡牌，",
                    "或发掘直至翻到特定卡牌",
                    " ",
                    "若未指定，则在选择{C:attention}盲注{}时触发",
                }
            },
            column = {
                name = "[列]",
                text = {
                    "场上区域的卡牌根据其占据的槽位处于不同的{C:attention}列{}中，",
                    "最左边的槽位为{C:attention}第1列{}",
                    " ",
                    "如果卡牌相对于其区域占据相同的位置，",
                    "则称它们处于同一{C:attention}列{}",
                    "（即最左边的打出的牌和最左边的{C:attention}卡牌{}都处于同一{C:attention}第1列{}）"
                }
            },

            opponent = {
                name = "[{C:joy_trap}对手{} 卡牌]",
                text = {
                    "放置在{C:joy_trap}对手{}区域",
                    "如果该区域超过容量，最旧的非{C:dark_edition}负片{}卡牌将被销毁",
                    "这些卡牌不计为已拥有"
                }
            },
            blinds = {
                name = "[{C:joy_mod}JoyousSpring{} 盲注]",
                text = {
                    "本模组的{C:attention}盲注{}具有特殊属性",
                    "某些{C:attention}盲注{}可能拥有持续整个底注的效果",
                    " ",
                    "输给这些{C:attention}盲注{}中的任何一个",
                    "（包括同底注中具有持续效果的前置{C:attention}盲注{}）",
                    "将不会导致{C:red}游戏结束{}，而是在{C:joy_trap}对手{}区域中生成一张特殊卡牌",
                    "每个{C:attention}盲注{}只会发生一次，之后该{C:attention}盲注{}会被无效",
                }
            },
            blind_card = {
                name = "[盲注卡牌]",
                text = {
                    "与{C:attention}盲注{}相关的特殊{C:joy_trap}对手{}卡牌",
                }
            },

            sidedeck = {
                name = "[{C:joy_link}副卡组{}]",
                text = {
                    "允许在回合之间保存{C:attention}卡牌{}",
                    "如果{C:joy_link}副卡组{}有槽位，卡牌可以直接购买到其中",
                    " ",
                    "在{C:joy_link}副卡组{}阶段拖拽{C:attention}卡牌{}",
                    "可在区域间移动它们，或将其用作{C:attention}召唤{}的{C:attention}素材{}",
                }
            },

            enter = {
                name = "[上场]",
                text = {
                    "一张{C:attention}卡牌{}首次被添加到{C:attention}卡牌{}槽位",
                    "或{C:joy_spell}场地魔法{}区域时，称为上场",
                    "也适用于{C:joy_trap}对手{}卡牌首次被添加到{C:joy_trap}对手{}区域",
                    " ",
                    "这包括购买非{C:joy_spell}特殊{}{C:attention}卡牌{}、{C:attention}召唤{}{C:joy_spell}特殊{}{C:attention}卡牌{}、",
                    "将卡牌从{C:joy_link}副卡组{}首次移动到场上区域、",
                    "生成或{C:attention}复活{}一张卡牌，以及{C:attention}变形{}为一张卡牌",
                },
            },
            modifier = {
                name = "[强化效果]",
                text = {
                    "{C:attention}版本{}、{C:attention}强化{}或{C:attention}蜡封{}"
                }
            },
            no_shop = {
                name = "[不可购买]",
                text = {
                    "此卡牌无法从商店或非{C:attention}怪兽{}效果中获得",
                },
            },
        }
    },
}