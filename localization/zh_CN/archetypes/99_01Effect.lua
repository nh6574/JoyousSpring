-- 文件 10：99_01Effect.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_boarder = {
                name = "{C:joy_effect}边境巡查官",
                text = {
                    {
                        "每拥有1张{C:joy_spell}额外卡组{C:attention}小丑牌{C:attention}，获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
                    },
                    {
                        "{C:blue}出牌次数{C:attention}等于额外卡组类型数+1，不可重复牌型",
                        "{C:joy_normal}主卡组{C:attention}小丑牌{C:attention}被削弱",
                        "{C:inactive}(边境巡查官除外)"
                    },
                },
            },
            j_joy_grenmaju = {
                name = "{C:joy_effect}巨神兵 巨艾扎",
                text = {
                    {
                        "本局每{C:attention}放逐{C:attention}1张牌，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                },
            },
            j_joy_rhino = {
                name = "{C:joy_effect}凶暴犀牛战士",
                text = {
                    {
                        "作为{C:attention}素材{C:attention}使用时，送{C:attention}#1#{C:joy_normal}恶魔{C:attention}至墓地",
                        "并复活{C:attention}#2#{C:joy_normal}恶魔{C:attention}"
                    },
                }
            },
            j_joy_tourguide = {
                name = "{C:joy_effect}冥界导游",
                text = {
                    {
                        "获得时生成{C:attention}#1#{C:dark_edition}负片{C:joy_normal}主卡组{C:blue}普通{C:attention}或{C:green}非普通{C:joy_normal}恶魔{C:attention}"
                    },
                }
            },
            j_joy_heavenlyprison = {
                name = "{C:joy_effect}天狱之王",
                text = {
                    {
                        "获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "每拥有1张{C:joy_trap}陷阱{C:attention}，额外获得{X:mult,C:white}X#2#{C:attention}",
                        "{C:inactive}(当前{X:mult,C:white}X#3#{C:inactive}倍率)"
                    },
                    {
                        "{C:joy_trap}陷阱{C:attention}不会自行盖放",
                        "且其{C:joy_effect}反转{C:attention}效果在选择{C:attention}盲注{C:attention}时触发"
                    },
                }
            },
            j_joy_backup = {
                name = "{C:joy_effect}备份秘书",
                text = {
                    {
                        "作为{C:attention}素材{C:attention}使用时，将{C:attention}#1#{C:joy_normal}电子界{C:attention}加入{C:joy_spell}额外卡组{C:attention}"
                    },
                    {
                        "若已拥有{C:joy_normal}电子界{C:attention}则免费"
                    },
                }
            },
            j_joy_wizard = {
                name = "{C:joy_effect}电子界魔术师",
                text = {
                    {
                        "每拥有1张{C:joy_normal}电子界{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                    {
                        "若已拥有{C:joy_normal}电子界{C:attention}则免费"
                    },
                }
            },
            j_joy_formud = {
                name = "{C:joy_effect}跳码船长",
                text = {
                    {
                        "可视为任意{C:joy_link}连接{C:attention}素材"
                    },
                    {
                        "作为{C:joy_normal}电子界{C:attention}的{C:attention}素材{C:attention}使用时，",
                        "生成{C:attention}#1#{C:red}稀有{C:joy_normal}主卡组电子界{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_procession = {
                name = "{C:joy_effect}茶罐游行",
                text = {
                    {
                        "每张盖放的{C:attention}小丑牌{C:attention}提供{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时，将所有{C:attention}小丑牌{C:attention}盖放",
                        "{C:inactive}(茶罐游行除外)"
                    },
                }
            },
            j_joy_darkcat = {
                name = "{C:joy_effect}魅惑黑猫",
                text = {
                    {
                        "{C:mult}+#1#{C:attention}倍率"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：向牌组添加{C:attention}#2#{C:dark_edition}负片{C:attention}幸运{C:attention}2{A}"
                    },
                }
            },
            j_joy_dekoichi = {
                name = "{C:joy_effect}战咒列车 德科一号",
                text = {
                    {
                        "{C:mult}+#1#{C:attention}倍率",
                        "每拥有1张{C:joy_normal}普通{C:attention}小丑牌{C:attention}，额外{C:mult}+#2#{C:attention}",
                        "{C:inactive}(当前{C:mult}+#3#{C:inactive}倍率)"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：本回合{C:attention}+#4#{C:attention}手牌上限",
                        "每拥有1张{C:joy_normal}普通{C:attention}小丑牌{C:attention}再{C:attention}+#5#{C:attention}",
                        "并生成{C:attention}#6#{C:dark_edition}负片{C:joy_normal}“战咒货车 博科”"
                    },
                }
            },
            j_joy_bokoichi = {
                name = "{C:joy_normal}战咒货车 博科",
                text = {
                    {
                        "{E:1}专为德科一号设计的货运车厢，能运输任何货物，{E:1}",
                        "{E:1}但大多货物都会损坏。"
                    },
                }
            },
            j_joy_desertapir = {
                name = "{C:joy_effect}沙漠貘",
                text = {
                    {
                        "回合结束时获得{C:money}+$#1#{C:attention}"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：随机翻开{C:attention}#2#{C:attention}张小丑牌{C:attention}"
                    },
                }
            },
            j_joy_searchlight = {
                name = "{C:joy_effect}探照灯人",
                text = {
                    {
                        "{C:mult}+#1#{C:attention}倍率",
                        "每有1张{C:attention}小丑牌{C:attention}被翻开，再{C:mult}+#2#{C:attention}",
                        "{s:0.9,C:inactive}(盖放时也生效)",
                        "{C:inactive}(当前{C:mult}+#3#{C:inactive}倍率)"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：翻开所有{C:attention}小丑牌{C:attention}"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#4#/#5#几率{C:attention}翻转"
                    },
                }
            },
            j_joy_sternmystic = {
                name = "{C:joy_effect}严酷神秘人",
                text = {
                    {
                        "{C:chips}+#1#{C:attention}筹码",
                        "每有1张游戏牌{C:attention}翻转{C:attention}，再{C:chips}+#2#{C:attention}",
                        "{s:0.9,C:inactive}(盖放时也生效)",
                        "{C:inactive}(当前{C:chips}+#3#{C:inactive}筹码)"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：翻转手牌中所有牌"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#4#/#5#几率{C:attention}翻转"
                    },
                }
            },
            j_joy_mof = {
                name = "{C:joy_effect}守墓之巫女",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_spell}场地魔法{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：复制1张{C:attention}墓地{C:joy_spell}场地魔法{C:attention}为{C:dark_edition}负片{C:attention}"
                    },
                }
            },
            j_joy_mask = {
                name = "{C:joy_effect}暗之假面",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_trap}陷阱{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：复活{C:attention}#3#{C:joy_trap}陷阱{C:attention}"
                    },
                }
            },
            j_joy_angraecum = {
                name = "{C:joy_effect}白姬之伞",
                text = {
                    {
                        "获得时复活{C:attention}#1#{C:attention}张非{C:joy_synchro}协调{C:attention}为{C:dark_edition}负片{C:attention}并削弱",
                        "并将{C:attention}#2#{C:joy_synchro}同步{C:attention}加入商店"
                    },
                }
            },
            j_joy_eater = {
                name = "{C:joy_effect}百万吞噬者",
                text = {
                    {
                        "每当{C:joy_spell}额外卡组{C:attention}小丑牌{C:attention}被放逐，获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
                    },
                    {
                        "回合结束时放逐{C:attention}#3#{C:attention}张未被削弱的{C:joy_spell}额外卡组{C:attention}小丑牌{C:attention}",
                        "直至选择{C:attention}首领盲注{C:attention}"
                    },
                }
            },
            j_joy_miradora = {
                name = "{C:joy_effect}天风 幻镜",
                text = {
                    {
                        "获得时削弱并{C:dark_edition}负片{C:attention}化{C:attention}#1#{C:attention}张随机{C:joy_spell}额外卡组{C:attention}小丑牌{C:attention}"
                    },
                    {
                        "每张被削弱的{C:joy_spell}额外卡组{C:attention}小丑牌{C:attention}提供{X:mult,C:white}X#2#{C:attention}倍率"
                    },
                }
            },
            j_joy_beautunaful = {
                name = "{C:joy_effect}美丽金枪鱼公主",
                text = {
                    {
                        "获得时及从{C:attention}放逐{C:attention}返回时，生成{C:attention}#1#{C:joy_normal}鱼{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_leaffish = {
                name = "{C:joy_effect}枯叶鱼",
                text = {
                    {
                        "选择{C:attention}盲注{C:attention}时，送{C:attention}#1#{C:joy_normal}主卡组鱼{C:attention}至墓地"
                    },
                    {
                        "出售此牌以复活{C:attention}#2#{C:joy_normal}鱼{C:attention}",
                        "{C:inactive}(不含“枯叶鱼”)"
                    },
                }
            },
            j_joy_ringowurm = {
                name = "{C:joy_effect}百苹果守护龙 林檎虫",
                text = {
                    {
                        "作为{C:joy_synchro}同步{C:attention}素材时，生成{C:attention}#1#{C:dark_edition}负片{C:joy_synchro}协调{C:joy_token}“百苹果衍生物”"
                    },
                    {
                        "若拥有非{C:joy_effect}效果{C:attention}小丑牌{C:attention}，则免费"
                    },
                }
            },
            j_joy_token_ringo = {
                name = "{C:joy_token}百苹果衍生物",
                text = {
                    {
                        "此卡可视为任意{C:joy_token}衍生物{C:attention}"
                    },
                }
            },
            j_joy_stormshooter = {
                name = "{C:joy_effect}风暴射手",
                text = {
                    {
                        "若在此牌{C:attention}#1#{C:attention}列{C:attention}打出未计分牌，",
                        "为计分牌型生成尽可能多的{C:planet}星球牌{C:attention}",
                        "{C:inactive}(每回合变动)",
                        "{C:inactive}(当前在{C:attention}#2#{C:inactive}列)"
                    },
                }
            },
            j_joy_ghostbird = {
                name = "{C:joy_effect}魅惑鬼鸟",
                text = {
                    {
                        "此牌{C:attention}#1#{C:attention}列{C:attention}的计分牌结算后被销毁",
                        "{C:inactive}(当前在{C:attention}#1#{C:inactive}列)"
                    },
                    {
                        "根据{C:attention}列{C:attention}获得效果：",
                        "{V:1}1：此列计分牌{C:chips}+#2#{V:1}筹码且不被此牌销毁{V:1}",
                        "{V:2}3：此列计分牌再触发2次{V:2}",
                        "{V:3}5：此列打出的牌计入计分{V:3}"
                    },
                }
            },
            j_joy_tiamaton = {
                name = "{C:joy_effect}铁钢龙 提亚马特",
                text = {
                    {
                        "每销毁1张游戏牌，获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{C:inactive}倍率)"
                    },
                    {
                        "此牌{C:attention}#3#{C:attention}列{C:attention}的打出牌结算后被销毁",
                        "{C:inactive}(列≥6时作用于所有牌)",
                        "{C:inactive}(当前在{C:attention}#3#{C:inactive}列)"
                    },
                }
            },
            j_joy_zenoguitar = {
                name = "{C:joy_effect}摇滚乐队 异奏吉他",
                text = {
                    {
                        "此牌送入{C:attention}墓地{C:attention}时，将{C:attention}#1#{C:joy_normal}摇滚{C:attention}小丑牌{C:attention}送入墓地",
                        "再复活{C:attention}#2#{C:joy_normal}摇滚{C:attention}小丑牌{C:attention}"
                    },
                    {
                        "作为{C:attention}素材{C:attention}使用时，向牌组添加{C:attention}#3#{C:attention}张强化{C:diamonds}方块{C:attention}"
                    },
                    {
                        "无法被{C:attention}复活{C:attention}"
                    },
                }
            },
            j_joy_revgolem = {
                name = "{C:joy_effect}复活石像",
                text = {
                    {
                        "作为{C:attention}素材{C:attention}使用时，向牌组添加{C:attention}#1#{C:attention}张带随机{C:attention}蜡封{C:attention}的{C:diamonds}方块{C:attention}",
                        "并生成{C:attention}#2#{C:dark_edition}负片{C:attention}削弱的{C:joy_effect}“复活石像”"
                    }
                }
            },
            j_joy_tackcrusader = {
                name = "{C:joy_effect}擒抱圣战士",
                text = {
                    {
                        "本局每{C:attention}发掘{C:attention}1张{C:diamonds}方块{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "每回合限1次，可{C:attention}献祭#3#{C:joy_normal}摇滚{C:attention}小丑牌{C:attention}",
                        "向牌组添加{C:attention}#4#{C:attention}张带版本的{C:diamonds}方块{C:attention}",
                        "并翻开所有{C:attention}小丑牌{C:attention}"
                    },
                }
            },
            j_joy_doki = {
                name = "{C:joy_effect}心跳不止",
                text = {
                    {
                        "本局每{C:attention}发掘{C:attention}1张{C:diamonds}方块{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                    {
                        "每底注限1次，可{C:attention}献祭#3#{C:joy_normal}摇滚{C:attention}小丑牌{C:attention}",
                        "生成{C:attention}#4#{C:joy_normal}主卡组摇滚{C:attention}小丑牌{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                }
            },
            j_joy_blockdragon = {
                name = "{C:joy_effect}积木龙",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_normal}岩石{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "本局每{C:attention}发掘{C:attention}1张{C:diamonds}方块{C:attention}，额外获得{X:mult,C:white}X#3#{C:attention}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#4#{C:inactive}倍率)"
                    },
                    {
                        "若墓地有{C:attention}#5#{C:attention}张以上{C:joy_normal}岩石{C:attention}小丑牌{C:attention}时作为素材使用，",
                        "生成{C:attention}#6#{C:dark_edition}负片{C:blue}普通{C:attention}或{C:green}非普通{C:joy_normal}主卡组岩石{C:attention}小丑牌{C:attention}",
                        "并移除墓地所有{C:joy_normal}岩石{C:attention}小丑牌{C:attention}"
                    },
                }
            },
            j_joy_elfobia = {
                name = "{C:joy_effect}风精灵 艾菲比娅",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_wind}风{C:attention}，获得{C:chips}+#1#{C:attention}筹码",
                        "{C:inactive}(当前{C:chips}+#2#{C:inactive}筹码)"
                    },
                    {
                        "选择{C:attention}首领盲注{C:attention}时，永久提高所有{C:joy_wind}风{C:attention}小丑牌{C:attention}列表{C:green}几率{C:attention}值{C:attention}#3#"
                    },
                    {
                        "若拥有{C:joy_effect}“神秘风精灵 艾菲莉亚”{C:attention}，仅{C:joy_wind}风{C:attention}小丑牌{C:attention}可被送入墓地"
                    }
                }
            },
            j_joy_elfuria = {
                name = "{C:joy_effect}神秘风精灵 艾菲莉亚",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_wind}风{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "选择{C:attention}首领盲注{C:attention}时，给所有{C:joy_xyz}超量{C:attention}附加{C:attention}#3#{C:attention}素材"
                    },
                    {
                        "若拥有{C:joy_effect}“风精灵 艾菲比娅”{C:attention}，商店仅出现{C:joy_wind}风{C:attention}小丑牌{C:attention}",
                        "{C:inactive}(此版本未实装:P)"
                    }
                }
            },
            j_joy_lindbloom = {
                name = "{C:joy_effect}林德布洛姆",
                text = {
                    {
                        "若与其他{C:attention}小丑牌{C:attention}共享{C:attention}类型{C:attention}与{C:attention}属性{C:attention}，则提供{X:mult,C:white}X#1#{C:attention}倍率"
                    },
                }
            },
            j_joy_genomix = {
                name = "{C:joy_effect}基因混合战士",
                text = {
                    {
                        "可视为任意{C:joy_synchro}同步{C:attention}素材"
                    },
                    {
                        "以该卡为{C:attention}素材{C:attention}召唤的{C:joy_synchro}同步{C:attention}获得：",
                        "{s:0.9,C:mult}+#1#{s:0.9}倍率{s:0.9}每拥有/墓地{s:0.9}同类型同属性{s:0.9}小丑牌{s:0.9}"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{}倍率每拥有/墓地同类型同属性小丑牌",
                    "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                },
            },
            j_joy_maxsix = {
                name = "{C:joy_effect}极限六",
                text = {
                    {
                        "有{C:green}#1#/#2#几率获得{X:mult,C:white}X#3#{C:attention}倍率"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时有{C:green}#4#/#5#几率变为{C:dark_edition}负片{C:attention}"
                    },
                }
            },
            j_joy_stpolice = {
                name = "{C:joy_effect}时空警察",
                text = {
                    {
                        "此牌与另1张{C:joy_normal}念动力{C:attention}小丑牌{C:attention}回合结束时放逐",
                        "直至选择{C:attention}首领盲注{C:attention}，并返回{C:attention}#1#{C:attention}张",
                        "曾被放逐至{C:attention}首领盲注{C:attention}的{C:attention}小丑牌{C:attention}"
                    },
                }
            },
            j_joy_wannabee = {
                name = "{C:joy_effect}伪蜂",
                text = {
                    {
                        "{C:attention}发掘{C:attention}并检视牌堆顶{C:attention}#1#{C:attention}张：",
                        "每出现1张点数为{C:attention}2{C:attention}的牌，抽{C:attention}#2#{C:attention}张"
                    },
                }
            },
            j_joy_merchant = {
                name = "{C:joy_effect}魔法商人",
                text = {
                    {
                        "当{C:attention}发掘{C:attention}≥#1#{C:attention}张牌时，回合结束时{C:attention}翻转{C:attention}",
                        "{C:inactive}(盖放也算){C:inactive}(剩余#2#张)"
                    },
                    {
                        "{C:joy_effect}反转{C:attention}：选择{C:attention}盲注{C:attention}时",
                        "{C:attention}发掘{C:attention}直至出现你拥有最多的花色，",
                        "抽取包含该牌在内的所有{C:attention}发掘{C:attention}牌",
                        "{C:inactive}(当前{V:1}#3#{}{C:inactive})(回合结束时更新)"
                    },
                }
            },
            j_joy_catoblepas = {
                name = "{C:joy_effect}命运魔女与蛇头兽",
                text = {
                    {
                        "每在{C:attention}墓地{C:attention}1张{C:joy_normal}魔法师{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "回合结束时有{C:green}#3#/#4#几率放逐{C:attention}#5#{C:joy_normal}魔法师{C:attention}",
                        "直至选择{C:attention}首领盲注{C:attention}并永久翻倍其列表{C:green}几率{C:attention}"
                    }
                }
            },
            j_joy_coupleofaces = {
                name = "{C:joy_effect}王牌搭档",
                text = {
                    {
                        "若打出的牌包含{C:attention}对子{C:attention}，则：",
                        "获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "计分的{C:attention}A{C:attention}有{C:green}#2#/#3#几率获得{X:mult,C:white}X#1#{C:attention}倍率",
                        "有{C:green}#4#/#5#几率提升计分牌型等级",
                        "有{C:green}#6#/#7#几率将计分牌变为{C:attention}黄金蜡封幸运A{C:attention}"
                    },
                }
            },
        }
    },
}