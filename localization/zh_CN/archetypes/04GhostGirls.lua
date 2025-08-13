return {
    descriptions = {
        Joker = {
            j_joy_yokai_ogre = {
                name = "{C:joy_effect}幽鬼兔",
                text = {
                    {
                        "销毁所有计分牌",
                        "每销毁1张，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                },
            },
            j_joy_yokai_reaper = {
                name = "{C:joy_effect}幽鬼冥界的亡灵",
                text = {
                    {
                        "每有1只{C:joy_spell}额外牌组{} {C:attention}小丑牌{}在{C:attention}墓地{}，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                },
            },
            j_joy_yokai_ash = {
                name = "{C:joy_effect}灰流丽",
                text = {
                    {
                        "打出/弃牌后，有{C:green}#1#/#2#{}几率不抽牌",
                        "每次触发此效果，获得{X:mult,C:white}X#3#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#4#{} {C:inactive}倍率）{}",
                    },
                },
            },
            j_joy_yokai_belle = {
                name = "{C:joy_effect}幽鬼猪",
                text = {
                    {
                        "当{C:attention}小丑牌{}被{C:attention}复活{}时，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                },
            },
            j_joy_yokai_sister = {
                name = "{C:joy_effect}幽鬼姐妹",
                text = {
                    {
                        "在{C:attention}盲注{}期间，每使用1张消耗牌，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
                    },
                    {
                        "本回合若未使用消耗牌，则{C:red}你失败{}",
                    },
                },
            },
            j_joy_yokai_mourner = {
                name = "{C:joy_effect}幽鬼哀悼者",
                text = {
                    {
                        "永久弱化所有获得的",
                        "{C:blue}普通{}和{C:green}稀有{} {C:attention}小丑牌{}",
                    },
                    {
                        "每售出1张被弱化的牌，获得{X:mult,C:white}X#1#{}倍率",
                        "{C:inactive}（当前{X:mult,C:white}X#2#{} {C:inactive}倍率）{}",
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