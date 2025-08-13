return {
    descriptions = {
        Other = {
            --#region Tooltips
            joy_face_down = {
                name = "背面表示的怪兽",
                text = {
                    "无法使用或发动效果",
                    "且在效果中视为空白小丑牌",
                    "{C:inactive}（另有规定除外）",
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
            joy_tooltip_transferred = {
                name = "转移的效果",
                text = {
                    "按{C:attention}t{}切换",
                    "主效果与",
                    "转移的效果之间的显示",
                },
            },
            joy_tooltip_transform = {
                name = "变形",
                text = {
                    "将一张{C:attention}小丑牌{}变为另一张",
                    "保留所有强化效果",
                },
            },
            joy_tooltip_revive = {
                name = "复活",
                text = {
                    "从{C:attention}墓地{}中随机取出一张卡牌并生成",
                    "必须有栏位，且可能附带",
                    "随机版本（另有规定除外）",
                    "{s:0.9,C:inactive}（{s:0.9,C:joy_spell}特殊{} {s:0.9,C:attention}小丑牌{} {s:0.9,C:inactive}若未正确",
                    "{s:0.9,C:inactive}召唤，以及{s:0.9,C:joy_spell}场地魔法{{s:0.9,C:inactive}无法复活）",
                    "{s:0.9,C:inactive}（复活的小丑牌售价为1）",
                },
            },
            joy_tooltip_extra_deck_joker = {
                name = "额外卡组小丑牌",
                text = {
                    "{C:joy_fusion}融合{}、{C:joy_synchro}同调{}、",
                    "{C:joy_xyz}超量{}和{C:joy_link}连接{} {C:attention}小丑牌{}",
                    "{s:0.9,C:inactive}（额外卡组中的卡牌不视为",
                    "{s:0.9,C:inactive}已拥有，不触发相关效果）",
                },
            },
            joy_tooltip_main_deck_joker = {
                name = "主卡组小丑牌",
                text = {
                    "{C:joy_normal}通常{}、{C:joy_effect}效果{}、",
                    "和{C:joy_ritual}仪式{} {C:attention}小丑牌{}",
                },
            },
            joy_tooltip_special = {
                name = "特殊小丑牌",
                text = {
                    "{C:joy_ritual}仪式{}、{C:joy_fusion}融合{}、{C:joy_synchro}同调{}、",
                    "{C:joy_xyz}超量{}和{C:joy_link}连接{} {C:attention}小丑牌{}",
                },
            },
            joy_tooltip_pendulum_joker = {
                name = "灵摆小丑牌",
                text = {
                    "可作为消耗牌使用",
                    "{C:inactive}（{C:joy_spell}特殊{} {C:inactive}小丑牌必须先",
                    "{C:inactive}正确召唤）",
                },
            },
            joy_tooltip_field_spell_joker = {
                name = "场地魔法小丑牌",
                text = {
                    "进入{C:joy_spell}场地魔法区域{}",
                    "在该区域时，除非另有规定，",
                    "不视为已拥有的{C:attention}小丑牌{}，不触发相关效果",
                },
            },
            joy_tooltip_banish = {
                name = "除外",
                text = {
                    "卡牌暂时消失直至规定时间，",
                    "仅部分效果仍生效。",
                    "即使没有栏位，也能回归",
                },
            },
            joy_tooltip_tribute = {
                name = "祭品",
                text = {
                    "销毁卡牌以发动效果",
                },
            },
            joy_tooltip_excavate = {
                name = "发掘",
                text = {
                    "展示牌组顶端的卡牌",
                    "数量不超过卡牌上标注的最大值",
                    "除非另有规定，在选择{C:attention}盲注{}时触发",
                },
            },
            joy_tooltip_material = {
                name = "素材",
                text = {
                    "用于召唤的卡牌",
                    "{C:inactive}（{}{C:joy_xyz}超量小丑牌{} {C:inactive}初始拥有的计数器数量",
                    "{C:inactive}等于使用的素材数量）{}",
                },
            },
            joy_tooltip_detach = {
                name = "取除",
                text = {
                    "移除一个超量素材计数器",
                    "以发动效果",
                },
            },
            joy_tooltip_token = {
                name = "衍生物",
                text = {
                    "由效果生成的{C:joy_normal}怪兽{}牌",
                    "自身没有任何效果",
                },
            },
            joy_tooltip_flip = {
                name = "反转效果",
                text = {
                    "每回合中，当卡牌被",
                    "{C:attention}反转{}为表侧表示时触发一次，效果持续至",
                    "下一轮结束{C:inactive}（另有规定除外）",
                    "{C:inactive}（卡牌通过效果反转）{}",
                },
            },
            joy_tooltip_trap = {
                name = "陷阱小丑牌",
                text = {
                    "获得时{C:attention}反转{}",
                    "且在每轮结束时反转",
                },
            },
            joy_tooltip_monster = {
                name = "怪兽小丑牌",
                text = {
                    "来自{C:joy_mod}JoyousSpring{}的{C:attention}小丑牌{}",
                },
            },
            joy_tooltip_no_shop = {
                name = "不可购买",
                text = {
                    "无法从商店获得",
                    "也无法通过非{C:attention}怪兽{}效果获得",
                },
            },
            --#endregion
            --#region Glossary
            joy_glossary_monster = {
                name = "",
                text = {
                    "{C:joy_normal,s:1.3}怪兽{} {C:attention,s:1.3}小丑牌{}：本模组中的{C:attention}小丑牌{}",
                },
            },
            joy_glossary_gy = {
                name = "",
                text = {
                    "{C:attention,s:1.3}墓地{}（也简称{C:attention}GY{}）：被出售、销毁或用于{C:attention}召唤{}的{C:joy_normal}怪兽{} {C:attention}小丑牌{}列表。它们会失去所有强化效果。",
                },
            },
            joy_glossary_revive = {
                name = "",
                text = {
                    "{C:attention,s:1.3}复活{}：从{C:attention}墓地{}中随机取出一张卡牌并生成。必须有栏位，且可能附带随机版本（另有规定除外）",
                    "未正确召唤的{C:joy_spell}额外卡组{}和{C:joy_ritual}仪式{} {C:attention}小丑牌{}无法复活",
                    "复活的小丑牌售价为1",
                },
            },
            joy_glossary_banish = {
                name = "",
                text = {
                    "{C:attention,s:1.3}除外{}：卡牌暂时消失直至规定时间，仅部分效果仍生效。",
                    "除非另有规定，即使没有栏位，也能回归",
                    "{C:attention}被除外{}的卡牌在所有其他效果发动前回归",
                },
            },
            joy_glossary_transform = {
                name = "",
                text = {
                    "{C:attention,s:1.3}变形{}：将一张{C:attention}小丑牌{}变为另一张。保留所有强化效果",
                },
            },
            joy_glossary_facedown = {
                name = "",
                text = {
                    "{C:attention,s:1.3}背面表示{}：背面表示的{C:joy_normal}怪兽{} {C:attention}小丑牌{}无法使用其效果（另有规定除外）。{C:joy_link}连接{}牌不能背面表示",
                },
            },
            joy_glossary_maindeck = {
                name = "",
                text = {
                    "{C:joy_normal,s:1.3}主卡组{} {C:attention,s:1.3}小丑牌{}：不属于{C:joy_spell}额外卡组{} {C:attention}小丑牌{}的任何{C:joy_normal}怪兽{} {C:attention}小丑牌{}（参见召唤术语表）",
                },
            },
            joy_glossary_pendulum = {
                name = "",
                text = {
                    "{C:joy_pendulum,s:1.3}灵摆{} {C:attention,s:1.3}小丑牌{}：可同时作为消耗牌使用的{C:attention}小丑牌{}",
                },
            },
            joy_glossary_fieldspell = {
                name = "",
                text = {
                    "{C:joy_spell,s:1.3}场地魔法{}：进入{C:joy_spell}场地魔法{}区域（按{C:joy_spell}额外卡组{}按钮），除此之外与其他{C:attention}小丑牌{}作用相同",
                },
            },
            joy_glossary_extradeck = {
                name = "",
                text = {
                    "{C:joy_spell,s:1.3}额外卡组{} {C:attention,s:1.3}小丑牌{}：从商店获得时放入{C:joy_spell}额外卡组{}。",
                    "使用时，需献祭卡牌上召唤条件中列出的{C:attention}小丑牌{}。",
                    "包括{C:joy_fusion}融合{}、{C:joy_synchro}同调{}、{C:joy_xyz}超量{}和{C:joy_link}连接{} {C:attention}小丑牌{}",
                    "除非另有规定，{C:joy_xyz}超量{}和{C:joy_link}连接{} {C:attention}小丑牌{}不能用于{C:joy_synchro}同调{}和{C:joy_xyz}超量{}召唤",
                    "除非另有规定，{C:joy_token}衍生物{}不能用于{C:joy_xyz}超量{}召唤",
                    "召唤出的小丑牌售价等于其召唤成本",
                },
            },
            joy_glossary_material = {
                name = "",
                text = {
                    "{C:attention,s:1.3}素材{}：用于召唤{C:attention}小丑牌{}的卡牌",
                },
            },
            joy_glossary_detach = {
                name = "",
                text = {
                    "{C:joy_xyz,s:1.3}取除{}：{C:joy_xyz}超量{} {C:attention}小丑牌{}初始拥有的计数器数量等于召唤时使用的素材数量。",
                    "部分效果可能会{C:joy_xyz}取除{}这些计数器，或允许你通过取除来发动某些效果",
                },
            },
            joy_glossary_ritual = {
                name = "",
                text = {
                    "{C:joy_ritual,s:1.3}仪式{} {C:attention,s:1.3}小丑牌{}：不放入{C:joy_spell}额外卡组{}，而是直接从商店召唤。视为{C:joy_normal}主卡组{} {C:attention}小丑牌{}",
                },
            },
            --#endregion
        },
    },
    misc = {
        dictionary = {
            k_joy_glossary = "基础术语表",
            k_joy_summon_glosary = "召唤术语表",
        }
    },
}