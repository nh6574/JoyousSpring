return {
    descriptions = {
        Joker = {
            j_joy_yokai_ogre = {
                name = "{C:joy_effect}幽鬼兔",
                text = {
                    {
                        "销毁所有计分牌",
                        "每销毁1张获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                },
            },
            j_joy_yokai_reaper = {
                name = "{C:joy_effect}浮幽樱",
                text = {
                    {
                        "墓地中每张{C:joy_spell}额外卡组{}小丑牌",
                        "提供{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                },
            },
            j_joy_yokai_ash = {
                name = "{C:joy_effect}灰流丽",
                text = {
                    {
                        "打出/弃牌后，有{C:green}#1#/#2#{}几率",
                        "不抽牌",
                        "每次触发获得{X:mult,C:white}X#3#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#4#{}{C:inactive}倍率){}",
                    },
                },
            },
            j_joy_yokai_belle = {
                name = "{C:joy_effect}屋敷童",
                text = {
                    {
                        "每{C:attention}复活{}1张小丑牌",
                        "获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                },
            },
            j_joy_yokai_sister = {
                name = "{C:joy_effect}儚无水木",
                text = {
                    {
                        "在{C:attention}盲注{}阶段每使用1张消耗牌",
                        "获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                    {
                        "若未使用则{C:red}游戏失败{}",
                    },
                },
            },
            j_joy_yokai_mourner = {
                name = "{C:joy_effect}朔夜时雨",
                text = {
                    {
                        "永久弱化所有获得的",
                        "{C:blue}普通{}和{C:green}罕见{}小丑牌",
                    },
                    {
                        "每售出1张被弱化的牌",
                        "获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}(当前{X:mult,C:white}X#2#{}{C:inactive}倍率){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_yokai = "幽鬼少女",
        }
    }
}