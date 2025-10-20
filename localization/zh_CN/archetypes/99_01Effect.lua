return {
    descriptions = {
        Joker = {
            j_joy_boarder = {
                name = "{C:joy_effect}冲浪检察官",
                text = {
                    {
                        "每张{C:joy_spell}额外卡组{} {C:attention}小丑牌{}使此卡{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:blue}出牌次数{}等于拥有的{C:joy_spell}额外卡组{}类型数 +1",
                        "不可重复出牌类型",
                        "{C:joy_normal}主卡组{} {C:attention}小丑牌{}被弱化",
                        "{C:inactive}(「冲浪检察官」除外)",
                    },
                },
            },
            j_joy_grenmaju = {
                name = "{C:joy_effect}红莲魔兽 塔·伊沙",
                text = {
                    {
                        "每张本局游戏",
                        "被{C:attention}除外{}的卡牌使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)",
                    },
                },
            },
            j_joy_rhino = {
                name = "{C:joy_effect}魔犀族战士",
                text = {
                    {
                        "作为{C:attention}素材{}时，将{C:attention}#1#{}张{C:joy_normal}恶魔{}",
                        "送入{C:attention}墓地{}并{C:attention}复活 #2#{}张{C:joy_normal}恶魔{}"
                    },
                }
            },
            j_joy_tourguide = {
                name = "{C:joy_effect}由魔界到现世的死亡导游",
                text = {
                    {
                        "获取时生成{C:attention}#1#{}张{C:dark_edition}负片{}",
                        "{C:blue}普通{}或{C:green}罕见{} {C:joy_normal}恶魔族{}"
                    },
                }
            },
            j_joy_heavenlyprison = {
                name = "{C:joy_effect}天狱之王",
                text = {
                    {
                        "{X:mult,C:white}X#1#{}倍率，每张{C:joy_trap}陷阱{}",
                        "额外给予 {X:mult,C:white}X#2#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#3#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_trap}陷阱{}不会自动{C:attention}反转{}",
                        "其{C:joy_effect}反转{}效果在选中{C:attention}盲注{}时触发"
                    },
                }
            },
            j_joy_backup = {
                name = "{C:joy_effect}备份秘书",
                text = {
                    {
                        "作为{C:attention}素材{}时，添加{C:attention}#1#{}张",
                        "{C:joy_normal}电子界族{}至{C:joy_spell}额外卡组{}"
                    },
                    {
                        "若拥有{C:joy_normal}电子界族{}则免费"
                    },
                }
            },
            j_joy_wizard = {
                name = "{C:joy_effect}电子界男巫",
                text = {
                    {
                        "每张{C:joy_normal}电子界族{}使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)",
                    },
                    {
                        "若拥有{C:joy_normal}电子界族{}则免费"
                    },
                }
            },
            j_joy_formud = {
                name = "{C:joy_effect}格式弹涂鱼",
                text = {
                    {
                        "作为{C:joy_link}连接{}的{C:attention}素材{}时",
                        "视为任意素材"
                    },
                    {
                        "作为{C:joy_normal}电子界族{}的{C:attention}素材{}时",
                        "生成{C:attention}#1#{}张{C:joy_normal}主卡组{} {C:red}稀有{} {C:joy_normal}电子界族{}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_procession = {
                name = "{C:joy_effect}童妖 茶壶",
                text = {
                    {
                        "每张{C:attention}里侧{}小丑牌给予 {X:mult,C:white}X#1#{}倍率"
                    },
                    {
                        "选中{C:attention}盲注{}时{C:attention}反转{}所有{C:attention}小丑牌{}",
                        "{C:inactive}(「童妖 茶壶」除外)"
                    },
                }
            },
            j_joy_darkcat = {
                name = "{C:joy_effect}白尾黑猫",
                text = {
                    {
                        "{C:mult}+#1#{}倍率"
                    },
                    {
                        "{C:joy_effect}反转{}：向牌组添加{C:attention}#2#{}张",
                        "{C:dark_edition}负片{} {C:attention}幸运{} {C:attention}2{}点牌"
                    },
                }
            },
            j_joy_dekoichi = {
                name = "{C:joy_effect}魔装机关车 迪科伊奇",
                text = {
                    {
                        "{C:mult}+#1#{}倍率，每张{C:joy_normal}通常{}",
                        "{C:attention}小丑牌{}额外 {C:mult}+#2#{}",
                        "{C:inactive}(当前 {C:mult}+#3#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_effect}反转{}：本回合增加{C:attention}+#4#{}点手牌上限",
                        "每张{C:joy_normal}通常{} {C:attention}小丑牌{}额外 {C:attention}+#5#{}点",
                        "然后生成{C:attention}#6#{}张{C:dark_edition}负片{} {C:joy_normal}「魔装货车 博科伊奇」{}"
                    },
                }
            },
            j_joy_bokoichi = {
                name = "{C:joy_normal}魔装货车 博科伊奇",
                text = {
                    {
                        "{E:1}专为迪科伊奇设计的货运车厢，能运送任何货物",
                        "{E:1}但大多数货物都会在途中损坏。",
                    },
                }
            },
            j_joy_desertapir = {
                name = "{C:joy_effect}沙貘",
                text = {
                    {
                        "回合结束时给予 {C:money}+$#1#{}"
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}翻开 #2#{}张随机{C:attention}小丑牌{}"
                    },
                }
            },
            j_joy_searchlight = {
                name = "{C:joy_effect}探照灯人",
                text = {
                    {
                        "{C:mult}+#1#{}倍率，每张{C:attention}翻开{}的",
                        "{C:attention}小丑牌{}额外 {C:mult}+#2#{}",
                        "{s:0.9,C:inactive}(里侧时仍生效)",
                        "{C:inactive}(当前 {C:mult}+#3#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}翻开{}所有{C:attention}小丑牌{}"
                    },
                    {
                        "{C:green}#4#/#5#{} 几率在选中{C:attention}盲注{}时{C:attention}翻开{}"
                    },
                }
            },
            j_joy_sternmystic = {
                name = "{C:joy_effect}严格的老魔术师",
                text = {
                    {
                        "{C:chips}+#1#{}筹码，每张{C:attention}翻开{}的",
                        "游戏牌额外 {C:chips}+#2#{}",
                        "{s:0.9,C:inactive}(里侧时仍生效)",
                        "{C:inactive}(当前 {C:chips}+#3#{}{C:inactive}筹码)",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}翻开{}手牌所有牌"
                    },
                    {
                        "{C:green}#4#/#5#{} 几率在选中{C:attention}盲注{}时{C:attention}翻开{}"
                    },
                }
            },
            j_joy_mof = {
                name = "{C:joy_effect}圣魔术师",
                text = {
                    {
                        "每张{C:joy_spell}场地魔法{}",
                        "在{C:attention}墓地{}中使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)",
                    },
                    {
                        "{C:joy_effect}反转{}：生成{C:attention}#3#{}张{C:dark_edition}负片{}",
                        "{C:joy_spell}场地魔法{}的复制"
                    },
                }
            },
            j_joy_mask = {
                name = "{C:joy_effect}暗之假面",
                text = {
                    {
                        "每张{C:joy_trap}陷阱{}",
                        "在{C:attention}墓地{}中使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "{C:joy_effect}反转{}：{C:attention}复活 #3#{}张{C:joy_trap}陷阱{}"
                    },
                }
            },
            j_joy_angraecum = {
                name = "{C:joy_effect}相爱之彗星兰伞",
                text = {
                    {
                        "获取时{C:attention}复活 #1#{}张非{C:joy_synchro}调整{}",
                        "为{C:dark_edition}负片{}且弱化状态",
                        "并向商店添加{C:attention}#2#{}张{C:joy_synchro}同调{}"
                    },
                }
            },
            j_joy_eater = {
                name = "{C:joy_effect}吞食百万的暴食兽",
                text = {
                    {
                        "每张{C:joy_spell}额外卡组{} {C:attention}小丑牌{}",
                        "{C:attention}除外{}时获得 {X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "回合结束时{C:attention}除外 #3#{}张",
                        "非弱化的{C:joy_spell}额外卡组{} {C:attention}小丑牌{}",
                        "直到选择{C:attention}Boss盲注{}"
                    },
                }
            },
            j_joy_miradora = {
                name = "{C:joy_effect}风之天翼 米拉多羽蛇",
                text = {
                    {
                        "获取时弱化并将{C:attention}#1#{}张随机",
                        "{C:joy_spell}额外卡组{} {C:attention}小丑牌{}转为{C:dark_edition}负片{}"
                    },
                    {
                        "每张弱化的{C:joy_spell}额外卡组{} {C:attention}小丑牌{}",
                        "给予 {X:mult,C:white}X#2#{}倍率"
                    },
                }
            },
            j_joy_beautunaful = {
                name = "{C:joy_effect}鰤子姬",
                text = {
                    {
                        "获取时及从{C:attention}除外区{}返回时",
                        "生成{C:attention}#1#{}张{C:joy_normal}鱼族{}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_leaffish = {
                name = "{C:joy_effect}摇海鱼 枯叶海龙",
                text = {
                    {
                        "选中{C:attention}盲注{}时，将{C:attention}#1#{}张",
                        "{C:joy_normal}主卡组鱼族{}送入{C:attention}墓地{}"
                    },
                    {
                        "出售此卡以{C:attention}复活 #2#{}张{C:joy_normal}鱼族{}",
                        "{C:inactive}(「摇海鱼 枯叶海龙」除外)"
                    },
                }
            },
            j_joy_ringowurm = {
                name = "{C:joy_effect}百檎龙-苹果鳞虫",
                text = {
                    {
                        "作为{C:joy_synchro}同调{}的{C:attention}素材{}时",
                        "生成{C:attention}#1#{}张{C:dark_edition}负片{} {C:joy_synchro}调整{}",
                        "{C:joy_token}「百檎衍生物」{}"
                    },
                    {
                        "若拥有非{C:joy_effect}效果{} {C:attention}小丑牌{}则免费"
                    },
                }
            },
            j_joy_token_ringo = {
                name = "{C:joy_token}百檎衍生物",
                text = {
                    {
                        "此卡可视为任意{C:joy_token}衍生物{}"
                    },
                }
            },
            j_joy_stormshooter = {
                name = "{C:joy_effect}风暴射手",
                text = {
                    {
                        "若在此卡{C:attention}#1#列{}打出未计分牌",
                        "尽可能生成该牌型的{C:planet}星球牌{}",
                        "此卡必须在{C:attention}#1#列{}生效",
                        "{C:inactive}(每回合变化){C:inactive}(当前在{C:attention}#2#列{})",
                    },
                }
            },
            j_joy_ghostbird = {
                name = "{C:joy_effect}魅幽鸟",
                text = {
                    {
                        "此卡{C:attention}#1#列{}的计分牌",
                        "计分后销毁{C:inactive}(当前在{C:attention}#1#列{})"
                    },
                    {
                        "根据{C:attention}列{}获得效果：",
                        "{V:1}1列：此列计分牌{V:1}获得 {C:chips}+#2#{}{V:1}筹码",
                        "{V:1}且不被此效果销毁",
                        "{V:2}3列：此列计分牌{V:2}再次触发两次",
                        "{V:3}5列：此列打出牌{V:3}可参与计分{}"
                    },
                }
            },
            j_joy_tiamaton = {
                name = "{C:joy_effect}铁骑龙 创世母神机",
                text = {
                    {
                        "每张销毁牌获得 {X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#2#{}{C:inactive}倍率)",
                    },
                    {
                        "此卡{C:attention}#3#列{}的计分牌",
                        "计分后销毁{C:inactive}(6+列时销毁所有牌)",
                        "{C:inactive}(当前在{C:attention}#3#列{})"
                    },
                }
            },
            j_joy_zenoguitar = {
                name = "{C:joy_effect}岩带的美技-磷钇矿吉他手",
                text = {
                    {
                        "当此卡被送入{C:attention}墓地{}时",
                        "将{C:attention}#1#{}张{C:joy_normal}岩石族{} {C:attention}小丑牌{}送入{C:attention}墓地{}",
                        "然后{C:attention}复活 #2#{}张{C:joy_normal}岩石族{} {C:attention}小丑牌{}"
                    },
                    {
                        "作为{C:attention}素材{}时，向牌组添加",
                        "{C:attention}#3#张强化{} {C:diamonds}方片{}牌"
                    },
                    {
                        "不可被{C:attention}复活{}"
                    },
                }
            },
            j_joy_revgolem = {
                name = "{C:joy_effect}再生石人",
                text = {
                    {
                        "作为{C:attention}素材{}时，向牌组添加",
                        "{C:attention}#1#{}张带随机{C:attention}蜡封{}的{C:diamonds}方片{}牌",
                        "并生成{C:attention}#2#{}张{C:dark_edition}负片{}弱化{C:joy_effect}「再生石人」{}"
                    }
                }
            },
            j_joy_tackcrusader = {
                name = "{C:joy_effect}阻挡十字军",
                text = {
                    {
                        "每张本局游戏",
                        "{C:attention}发掘{}的{C:diamonds}方片{}牌使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "每回合一次：可{C:attention}解放 #3#{}张{C:joy_normal}岩石族{}",
                        "{C:attention}小丑牌{}以添加{C:attention}#4#张带版本{}的",
                        "{C:diamonds}方片{}牌并翻开所有{C:attention}小丑牌{}"
                    },
                }
            },
            j_joy_doki = {
                name = "{C:joy_effect}怒气土器",
                text = {
                    {
                        "每张本局游戏",
                        "{C:attention}发掘{}的{C:diamonds}方片{}牌使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "每局游戏一次：可{C:attention}解放 #3#{}张{C:joy_normal}岩石族{}",
                        "{C:attention}小丑牌{}以生成{C:attention}#4#{}张",
                        "{C:joy_normal}主卡组岩石族{} {C:attention}小丑牌{}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_blockdragon = {
                name = "{C:joy_effect}积木龙",
                text = {
                    {
                        "每张{C:joy_normal}岩石族{}",
                        "在{C:attention}墓地{}中使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "每张{C:attention}发掘{}的{C:diamonds}方片{}牌",
                        "额外给予 {X:mult,C:white}X#3#{}倍率",
                        "{C:inactive}(当前 {X:mult,C:white}X#4#{}{C:inactive}倍率)"
                    },
                    {
                        "当{C:attention}墓地{}有{C:attention}#5#{}张以上",
                        "{C:joy_normal}岩石族{}时作为{C:attention}素材{}",
                        "生成{C:attention}#6#{}张{C:dark_edition}负片{} {C:blue}普通{}或{C:green}罕见{}",
                        "{C:joy_normal}主卡组岩石族{}但移除{C:attention}墓地{}所有{C:joy_normal}岩石族{}"
                    },
                }
            },
            j_joy_elfobia = {
                name = "{C:joy_effect}异怪之妖精 艾尔佛彼娅",
                text = {
                    {
                        "每张{C:joy_wind}风属性{}",
                        "在{C:attention}墓地{}中使此卡{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive}筹码)"
                    },
                    {
                        "选中{C:attention}Boss盲注{}时，永久提升",
                        "所有{C:joy_wind}风属性{} {C:attention}小丑牌{}的{C:green}几率{} {C:attention}#3#{}"
                    },
                    {
                        "若拥有{C:joy_effect}「神秘之妖精 艾尔菲莉娅」{}",
                        "仅{C:joy_wind}风属性{} {C:attention}小丑牌{}可送入{C:attention}墓地{}"
                    }
                }
            },
            j_joy_elfuria = {
                name = "{C:joy_effect}神神秘之妖精 艾尔菲莉娅",
                text = {
                    {
                        "每张{C:joy_wind}风属性{}",
                        "在{C:attention}墓地{}中使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "选中{C:attention}Boss盲注{}时，向每张",
                        "{C:joy_xyz}超量{}附加{C:attention}#3#个素材{}"
                    },
                    {
                        "若拥有{C:joy_effect}「异怪之妖精 艾尔佛彼娅」{}",
                        "商店仅出现{C:joy_wind}风属性{} {C:attention}小丑牌{}",
                    }
                }
            },
            j_joy_lindbloom = {
                name = "{C:joy_effect}龙胆花鳞虫",
                text = {
                    {
                        "若{C:attention}小丑牌{}与另一张共享",
                        "{C:attention}种族{}和{C:attention}属性{}，则给予 {X:mult,C:white}X#1#{}倍率"
                    },
                }
            },
            j_joy_genomix = {
                name = "{C:joy_effect}基因组斗士",
                text = {
                    {
                        "作为{C:joy_synchro}同调{}的{C:attention}素材{}时",
                        "视为任意素材"
                    },
                    {
                        "以该卡为{C:attention}素材{}的{C:joy_synchro}同调{}",
                        "获得以下效果：",
                        "{s:0.9}每张同{C:attention}种族{}/同{C:attention}属性{}的{s:0.9,C:attention}小丑牌{}{s:0.9}给予 {s:0.9,C:mult}+#1#{s:0.9}倍率",
                        "{s:0.9}(无论在手牌或{s:0.9,C:attention}墓地{s:0.9})"
                    }
                },
                joy_transfer_ability = {
                    "每张同{C:attention}种族{}/同{C:attention}属性{}的{C:attention}小丑牌{}",
                    "给予 {C:mult}+#1#{}倍率(无论在手牌或{C:attention}墓地{})",
                    "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                },
            },
            j_joy_maxsix = {
                name = "{C:joy_effect}最大值六",
                text = {
                    {
                        "{C:green}#1#/#2#{} 几率给予 {X:mult,C:white}X#3#{}倍率"
                    },
                    {
                        "{C:green}#4#/#5#{} 几率在选中{C:attention}盲注{}时",
                        "变为{C:dark_edition}负片{}"
                    },
                }
            },
            j_joy_stpolice = {
                name = "{C:joy_effect}时空警察",
                text = {
                    {
                        "此卡与另一张{C:joy_normal}念动力族{} {C:attention}小丑牌{}",
                        "回合结束时{C:attention}除外{}直到选择{C:attention}Boss盲注{}",
                        "并返回{C:attention}#1#{}张被{C:attention}除外{}的小丑牌"
                    },
                }
            },
            j_joy_wannabee = {
                name = "{C:joy_effect} 陷溺追蜂族！",
                text = {
                    {
                        "{C:attention}发掘{}顶部{C:attention}#1#{}张牌：",
                        "每张{C:attention}2{}点牌抽{C:attention}#2#{}张牌"
                    },
                }
            },
            j_joy_merchant = {
                name = "{C:joy_effect}魔导杂货商人",
                text = {
                    {
                        "当{C:attention}#1#{}张以上牌被{C:attention}发掘{}后",
                        "回合结束时{C:attention}翻开{}{C:inactive}(即使里侧)",
                        "{C:inactive}(剩余 #2# 次)"
                    },
                    {
                        "{C:joy_effect}翻开{}：选中{C:attention}盲注{}时",
                        "{C:attention}发掘{}直到出现持有量最多的花色",
                        "抽等于{C:attention}发掘{}数的牌(含该牌)",
                        "{C:inactive}(当前 {V:1}#3#{}{C:inactive})(回合结束时变化)"
                    },
                }
            },
            j_joy_catoblepas = {
                name = "{C:joy_effect}卡托布莱帕斯与命运之魔女",
                text = {
                    {
                        "每张{C:joy_normal}魔法师{}",
                        "在{C:attention}墓地{}中使此卡{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)"
                    },
                    {
                        "{C:green}#3#/#4#{} 几率回合结束时{C:attention}除外 #5#{}张",
                        "{C:joy_normal}魔法师{}直到选择{C:attention}Boss盲注{}",
                        "并永久翻倍其{C:green}几率{}"
                    }
                }
            },
            j_joy_coupleofaces = {
                name = "{C:joy_effect}圣杯情侣双A",												  
                text = {
                    {
                        "若打出牌型包含{C:attention}对子{}",
                        "应用以下效果：",
                        "{X:mult,C:white}X#1#{}倍率",
                        "{C:green}#2#/#3#{} 几率使计分{C:attention}A{}给予 {X:mult,C:white}X#1#{}倍率",
                        "{C:green}#4#/#5#{} 几率升级打出牌型",
                        "{C:green}#6#/#7#{} 几率使每张计分牌变为{C:attention}黄金蜡封幸运A{}",
                    },
                }
            },
            j_joy_linkslayer = {
                name = "{C:joy_effect}连接山猫屠杀者",
                text = {
                    {
                        "每使用一次弃牌时",
						"每张{C:joy_normal}电子界{}给与{C:chips}+#1#{}筹码",
                        "{C:inactive}(当前 {C:chips}+#2#{}{C:inactive} 筹码)"
																												
																	  
																											  
                    },
                    {
                        "若拥有{C:joy_normal}电子界{}",
                        "从商店购买时",
                        "免费且无需空位"
                    }
                }
            },
        }
    },
}
