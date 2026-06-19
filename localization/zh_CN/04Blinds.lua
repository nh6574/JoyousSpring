return {
    descriptions = {
        Blind = {
            --#region 效果
            bl_joy_dimensionshifter = {
                name = "{C:joy_effect}次元吸引者",
                text = {
                    "本底注中{C:attention}上场{}的",
                    "{C:attention}卡牌{}",
                    "被{C:attention}除外{}直至",
                    "底注结束"
                }
            },
            bl_joy_droll = {
                name = "{C:joy_effect}小丑与锁鸟",
                text = {
                    "每个商店只能购买",
                    "一件物品",
                    "{C:inactive}（优惠券除外）"
                }
            },
            bl_joy_kurikara = {
                name = "{C:joy_effect}俱利伽罗天童",
                text = {
                    "随机{C:attention}解放{}一张",
                    "稀有度最高的{C:attention}卡牌{}",
                    "并{C:attention}复活{}一张",
                    "相同稀有度但名称不同的",
                    "{C:attention}卡牌{}（若可能）"
                }
            },
            bl_joy_nibiru = {
                name = "{C:joy_effect}原始生命态 尼比鲁",
                text = {
                    "本底注中{C:attention}召唤{}的",
                    "卡牌立即",
                    "被{C:attention}解放{}"
                }
            },
            bl_joy_theia = {
                name = "{C:joy_effect}原始生命态 忒伊亚",
                text = {
                    "{C:red}稀有{}{C:attention}卡牌{}",
                    "被{C:attention}解放{}"
                }
            },
            bl_joy_parasiteparacide = {
                name = "{C:joy_effect}寄生虫 帕拉赛德",
                text = {
                    "一张特殊的{C:joy_trap}对手{}卡牌",
                    "可能会出现在商店中",
                    "并立即购买自身"
                }
            },
            bl_joy_parasiteparanoid = {
                name = "{C:joy_effect}寄生虫 帕拉诺伊德",
                text = {
                    "本底注中所有",
                    "{C:attention}卡牌{}",
                    "视为{C:joy_normal}昆虫族{}"
                }
            },
            --#endregion
            --#region 魔法
            bl_joy_bookofeclipse = {
                name = "{C:joy_spell}日全食之书",
                text = {
                    "将所有{C:attention}卡牌{}",
                    "{C:joy_effect}反转{}为里侧表示",
                    "回合结束时将所有{C:attention}卡牌{}",
                    "{C:joy_effect}反转{}为表侧表示",
                    "且每张{C:attention}+1{}永久手牌上限"
                }
            },
            bl_joy_bookoflunareclipse = {
                name = "{C:joy_spell}月全食之书",
                text = {
                    "本底注中每回合",
                    "{C:attention}反转2张卡牌{}",
                    "回合结束时将所有{C:attention}卡牌{}",
                    "{C:attention}反转{}为表侧表示"
                }
            },
            bl_joy_bookofmoon = {
                name = "{C:joy_spell}月之书",
                text = {
                    "本底注中每回合",
                    "{C:attention}反转{}一张{C:attention}卡牌{}为里侧表示"
                }
            },
            bl_joy_bookoftaiyou = {
                name = "{C:joy_spell}太阳之书",
                text = {
                    "本底注中{C:joy_effect}反转{}{C:attention}卡牌{}",
                    "不能{C:attention}反转{}"
                }
            },
            bl_joy_cosmiccyclone = {
                name = "{C:joy_spell}宇宙旋风",
                text = {
                    "将一张{C:joy_spell}场地魔法{}",
                    "{C:attention}除外{}直至回合结束"
                }
            },
            bl_joy_drnm = {
                name = "{C:joy_spell}暗之护封剑",
                text = {
                    "所有{C:green}罕见{}{C:attention}卡牌{}",
                    "被无效"
                }
            },
            bl_joy_forchalice = {
                name = "{C:joy_spell}禁忌的圣杯",
                text = {
                    "无效一张{C:joy_effect}效果{}{C:attention}卡牌{}",
                    "但该{C:attention}卡牌{}",
                    "提供{X:mult,C:white}X#1#{}倍率"
                }
            },
            bl_joy_fordress = {
                name = "{C:joy_spell}禁忌的圣衣",
                text = {
                    "打出手牌中的计分牌",
                    "提供{X:chips,C:white}X#1#{}筹码"
                }
            },
            bl_joy_fordroplet = {
                name = "{C:joy_spell}禁忌的一滴",
                text = {
                    "无效一张{C:joy_effect}效果{}{C:attention}卡牌{}、",
                    "一张{C:joy_trap}陷阱{}{C:attention}卡牌{}和",
                    "一张{C:joy_spell}场地魔法{}"
                }
            },
            bl_joy_forlance = {
                name = "{C:joy_spell}禁忌的圣枪",
                text = {
                    "所有{C:joy_effect}效果{}{C:attention}卡牌{}",
                    "提供{X:mult,C:white}X#1#{}倍率"
                }
            },
            bl_joy_forscript = {
                name = "{C:joy_spell}禁忌的圣典",
                text = {
                    "移除{C:joy_effect}效果{}{C:attention}卡牌{}上的",
                    "所有{C:dark_edition}版本{}"
                }
            },
            bl_joy_harpiesfeatherduster = {
                name = "{C:joy_spell}鹰身女妖的羽毛扫",
                text = {
                    "销毁所有",
                    "{C:joy_spell}场地魔法{}"
                }
            },
            bl_joy_lightningstorm = {
                name = "{C:joy_spell}闪电风暴",
                text = {
                    "销毁所有",
                    "{C:joy_spell}场地魔法{}",
                    "若无则销毁",
                    "所有{C:attention}卡牌{}"
                }
            },
            bl_joy_necrovalley = {
                name = "{C:joy_spell}王家长眠之谷",
                text = {
                    "本底注中{C:attention}卡牌{}",
                    "不能被{C:attention}复活{}"
                }
            },
            bl_joy_senetswitch = {
                name = "{C:joy_spell}位置移动",
                text = {
                    "本底注中不能移动",
                    "{C:attention}卡牌{}"
                }
            },
            bl_joy_superpoly = {
                name = "{C:joy_spell}超融合",
                text = {
                    "使用你拥有的素材",
                    "随机召唤一张",
                    "{C:joy_fusion}融合{} [待定]"
                }
            },
            bl_joy_terminalworld = {
                name = "{C:joy_spell}终端世界",
                text = {
                    "无法选择",
                    "{C:attention}大盲注{}"
                }
            },
            bl_joy_terminalworldnext = {
                name = "{C:joy_spell}终端世界二代",
                text = {
                    "本底注中减少",
                    "{C:attention}2{}个{C:attention}卡牌{}槽位"
                }
            },
            bl_joy_ultimateslayer = {
                name = "{C:joy_spell}究极捕食",
                text = {
                    "销毁一张{C:joy_spell}额外卡组{}{C:attention}卡牌{}",
                    "若可能，向{C:joy_spell}额外卡组{}添加一张",
                    "相同召唤类型的{C:attention}卡牌{}"
                }
            },
            --#endregion
            --#region 陷阱
            bl_joy_chaindisappearance = {
                name = "{C:joy_trap}连锁除外",
                text = {
                    "本底注中每次{C:attention}召唤{}",
                    "{C:attention}卡牌{}时，",
                    "{C:attention}除外{}所有其他",
                    "与其{C:attention}种族{}",
                    "或{C:attention}属性{}相同的卡牌",
                    "直至底注结束"
                }
            },
            bl_joy_chaindispel = {
                name = "{C:joy_trap}连锁解咒",
                text = {
                    "销毁所有",
                    "名称相同的{C:attention}卡牌{}",
                    "{C:inactive}（包括场地魔法）"
                }
            },
            bl_joy_chainhole = {
                name = "{C:joy_trap}连锁空穴",
                text = {
                    "除外所有",
                    "名称相同的{C:attention}卡牌{}",
                    "直至回合结束",
                    "{C:inactive}（包括场地魔法）"
                }
            },
            bl_joy_evenly = {
                name = "{C:joy_trap}颉颃胜负",
                text = {
                    "选择一张{C:attention}卡牌{}",
                    "{C:attention}除外{}所有其他卡牌",
                    "直至回合结束",
                    "{C:inactive}（衍生物除外）{} [待定]"
                }
            },
            bl_joy_imperialironwall = {
                name = "{C:joy_trap}王宫的铁壁",
                text = {
                    "本底注中卡牌",
                    "不能被{C:attention}除外{}"
                }
            },
            bl_joy_imperialorder = {
                name = "{C:joy_trap}王宫的敕命",
                text = {
                    "{C:joy_spell}场地魔法{}被无效"
                }
            },
            bl_joy_imperm = {
                name = "{C:joy_trap}无限泡影",
                text = {
                    "每回合无效一张非{C:joy_trap}陷阱{}的",
                    "{C:joy_effect}效果{}{C:attention}卡牌{}"
                }
            },
            bl_joy_lightforcesword = {
                name = "{C:joy_trap}光之封札剑",
                text = {
                    "本底注中每手打出的牌",
                    "将{C:attention}1{}张计分牌{C:attention}除外{}",
                    "直至底注结束"
                }
            },
            bl_joy_macrocosmos = {
                name = "{C:joy_trap}大宇宙",
                text = {
                    "本底注中没有卡牌",
                    "被送入{C:attention}墓地{}"
                }
            },
            bl_joy_redreboot = {
                name = "{C:joy_trap}红色重启",
                text = {
                    "{C:joy_trap}陷阱{}被无效"
                }
            },
            --#endregion
        }
    },
    misc = {
        dictionary = {
            k_joy_saved_by_blind = "盲注被对手偷走了",
            k_joy_disabled_cap = "已禁用"
        }
    }
}