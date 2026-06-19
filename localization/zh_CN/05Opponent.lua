return {
    descriptions = {
        joy_Opponent = {
            --#region 效果
            opp_joy_dimensionshifter = {
                name = "{C:joy_effect}次元吸引者",
                text = {
                    "每个商店中购买的第一张{C:attention}卡牌{}",
                    "被{C:attention}除外{}直至底注结束"
                }
            },
            opp_joy_droll = {
                name = "{C:joy_effect}小丑与锁鸟",
                text = {
                    "每个商店只能购买",
                    "一件物品",
                    "{C:inactive}（优惠券除外）"
                }
            },
            opp_joy_kurikara = {
                name = "{C:joy_effect}俱利伽罗天童",
                text = {
                    "底注结束时随机{C:attention}解放{}一张",
                    "稀有度最高的{C:attention}卡牌{}",
                    "并{C:attention}复活{}一张",
                    "相同稀有度但名称不同的",
                    "{C:attention}卡牌{}（若可能）"
                }
            },
            opp_joy_nibiru = {
                name = "{C:joy_effect}原始生命态 尼比鲁",
                text = {
                    "在第{C:attention}5{}次召唤之后",
                    "{C:attention}召唤{}的卡牌立即",
                    "被{C:attention}解放{}{C:inactive}（#1#/5）"
                }
            },
            opp_joy_theia = {
                name = "{C:joy_effect}原始生命态 忒伊亚",
                text = {
                    "若你拥有另一张{C:red}稀有{}{C:attention}卡牌{}，",
                    "则{C:attention}解放{}{C:attention}上场{}的{C:red}稀有{}{C:attention}卡牌{}"
                }
            },
            opp_joy_parasiteparacide = {
                name = "{C:joy_effect}寄生虫 帕拉赛德",
                text = {
                    "{X:mult,C:white}X#1#{}倍率"
                }
            },
            opp_joy_parasiteparanoid = {
                name = "{C:joy_effect}寄生虫 帕拉诺伊德",
                text = {
                    "所有{C:attention}卡牌{}",
                    "视为{C:joy_normal}昆虫族{}"
                }
            },
            --#endregion
            --#region 魔法
            opp_joy_bookofeclipse = {
                name = "{C:joy_spell}日全食之书",
                text = {
                    "{C:attention}卡牌{}不能{C:attention}反转{}为表侧表示"
                }
            },
            opp_joy_bookoflunareclipse = {
                name = "{C:joy_spell}月全食之书",
                text = {
                    "每回合{C:attention}反转2张卡牌{}"
                }
            },
            opp_joy_bookofmoon = {
                name = "{C:joy_spell}月之书",
                text = {
                    "回合结束时{C:attention}反转{}一张",
                    "{C:attention}卡牌{}为里侧表示"
                }
            },
            opp_joy_bookoftaiyou = {
                name = "{C:joy_spell}太阳之书",
                text = {
                    "{C:attention}卡牌{}不能{C:attention}反转{}为里侧表示"
                }
            },
            opp_joy_cosmiccyclone = {
                name = "{C:joy_spell}宇宙旋风",
                text = {
                    "选择{C:attention}盲注{}时{C:attention}除外{}一张",
                    "{C:joy_spell}场地魔法{}直至{C:attention}首领盲注{}开始"
                }
            },
            opp_joy_drnm = {
                name = "{C:joy_spell}暗之护封剑",
                text = {
                    "每回合随机无效一张",
                    "{C:green}罕见{}{C:attention}卡牌{}",
                    "直至回合结束"
                }
            },
            opp_joy_forchalice = {
                name = "{C:joy_spell}禁忌的圣杯",
                text = {
                    "每回合无效一张不同的{C:joy_effect}效果{}{C:attention}卡牌{}",
                    "但该{C:attention}卡牌{}提供{X:mult,C:white}X#1#{}倍率"
                }
            },
            opp_joy_fordress = {
                name = "{C:joy_spell}禁忌的圣衣",
                text = {
                    "打出手牌中的计分牌提供{X:chips,C:white}X#1#{}筹码",
                    "但游戏牌不能被无效"
                }
            },
            opp_joy_fordroplet = {
                name = "{C:joy_spell}禁忌的一滴",
                text = {
                    "每回合在{C:joy_effect}效果{}、{C:joy_trap}陷阱{}",
                    "或{C:joy_spell}场地魔法{}{C:attention}卡牌{}中轮换无效",
                    "{C:inactive}（当前：#1#）{}"
                }
            },
            opp_joy_forlance = {
                name = "{C:joy_spell}禁忌的圣枪",
                text = {
                    "所有{C:joy_effect}效果{}{C:attention}卡牌{}提供{X:mult,C:white}X#1#{}倍率",
                    "但它们不能被{C:attention}反转{}为里侧表示",
                    "或被无效"
                }
            },
            opp_joy_forscript = {
                name = "{C:joy_spell}禁忌的圣典",
                text = {
                    "{C:dark_edition}版本{}不生效"
                }
            },
            opp_joy_harpiesfeatherduster = {
                name = "{C:joy_spell}鹰身女妖的羽毛扫",
                text = {
                    "减少{C:attention}1{}个{C:joy_spell}场地魔法{}槽位"
                }
            },
            opp_joy_lightningstorm = {
                name = "{C:joy_spell}闪电风暴",
                text = {
                    "底注结束时销毁所有{C:joy_spell}场地魔法{}",
                    "若无则销毁所有{C:attention}卡牌{}"
                }
            },
            opp_joy_necrovalley = {
                name = "{C:joy_spell}王家长眠之谷",
                text = {
                    "{C:attention}卡牌{}不能被{C:attention}复活{}"
                }
            },
            opp_joy_senetswitch = {
                name = "{C:joy_spell}位置移动",
                text = {
                    "每回合随机将一张{C:attention}卡牌{}",
                    "{C:attention}锁定{}在左侧直至回合结束"
                }
            },
            opp_joy_superpoly = {
                name = "{C:joy_spell}超融合",
                text = {
                    "不能召唤{C:attention}卡牌{}",
                    "除非是{C:joy_fusion}融合{}"
                }
            },
            opp_joy_terminalworld = {
                name = "{C:joy_spell}终端世界",
                text = {
                    "无法选择",
                    "{C:attention}大盲注{}"
                }
            },
            opp_joy_terminalworldnext = {
                name = "{C:joy_spell}终端世界二代",
                text = {
                    "{C:attention}卡牌{}槽位",
                    "减少{C:attention}2{}个"
                }
            },
            opp_joy_ultimateslayer = {
                name = "{C:joy_spell}究极捕食",
                text = {
                    "只能{C:attention}召唤{}",
                    "{V:1}#1#{}张{C:attention}卡牌{}"
                }
            },
            --#endregion
            --#region 陷阱
            opp_joy_chaindisappearance = {
                name = "{C:joy_trap}连锁除外",
                text = {
                    "每次{C:attention}召唤{}一张{C:attention}卡牌{}时，",
                    "{C:attention}除外{}所有其他与其{C:attention}种族{}",
                    "或{C:attention}属性{}相同的卡牌直至回合结束"
                }
            },
            opp_joy_chaindispel = {
                name = "{C:joy_trap}连锁解咒",
                text = {
                    "{C:joy_effect}反转{}：销毁所有名称相同的{C:attention}卡牌{}",
                    "（保留一张）",
                    "{C:inactive}（包括场地魔法）"
                }
            },
            opp_joy_chainhole = {
                name = "{C:joy_trap}连锁空穴",
                text = {
                    "选择{C:attention}盲注{}时，除外所有",
                    "名称相同的{C:attention}卡牌{}（保留一张）",
                    "直至回合结束",
                    "{C:inactive}（包括场地魔法）"
                }
            },
            opp_joy_evenly = {
                name = "{C:joy_trap}颉颃胜负",
                text = {
                    "选择{C:attention}盲注{}时，",
                    "一张{C:attention}卡牌{}被{C:attention}除外{}",
                    "直至选择下一个{C:attention}盲注{}"
                }
            },
            opp_joy_imperialironwall = {
                name = "{C:joy_trap}王宫的铁壁",
                text = {
                    "卡牌不能被{C:attention}除外{}"
                }
            },
            opp_joy_imperialorder = {
                name = "{C:joy_trap}王宫的敕命",
                text = {
                    "每回合{C:joy_spell}场地魔法{}被无效",
                    "直至回合结束"
                }
            },
            opp_joy_imperm = {
                name = "{C:joy_trap}无限泡影",
                text = {
                    "每回合无效一张非{C:joy_trap}陷阱{}的",
                    "{C:joy_effect}效果{}{C:attention}卡牌{}",
                    "直至回合结束"
                }
            },
            opp_joy_lightforcesword = {
                name = "{C:joy_trap}光之封札剑",
                text = {
                    "每手打出的牌将{C:attention}1{}张计分牌",
                    "{C:attention}除外{}直至底注结束"
                }
            },
            opp_joy_macrocosmos = {
                name = "{C:joy_trap}大宇宙",
                text = {
                    "没有卡牌被",
                    "送入{C:attention}墓地{}"
                }
            },
            opp_joy_redreboot = {
                name = "{C:joy_trap}红色重启",
                text = {
                    "每回合无效一张{C:joy_trap}陷阱{}",
                    "直至回合结束"
                }
            },
            --#endregion
        },
    },
    misc = {
        dictionary = {
            k_joy_opponent = "对手",
            k_joy_opponentcards = "对手卡牌",
            --#region 卡牌专用
            k_joy_ultimateslayer_type = "[盲注销毁的召唤类型]"
            --#endregion
        }
    }
}