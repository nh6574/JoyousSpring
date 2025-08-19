return {
    descriptions = {
        Joker = {
            j_joy_firewall_saber = {
                name = "{C:joy_synchro}防火剑刃龙",
                text = {
                    {
                        "召唤时{C:attention}复活 #1#{}张{C:joy_spell}额外卡组{}",
                        "{C:joy_normal}电子界族{}为{C:dark_edition}负片{}",
                    },
                    {
                        "作为{C:joy_link}连接{}的{C:attention}素材{}时",
                        "生成{C:attention}#2#{}张{C:dark_edition}负片{} {C:spectral}幻灵牌{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_normal}电子界族{} {C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非调整{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外)",
                }
            },
            j_joy_bishbaalkin = {
                name = "{C:joy_synchro}究极幻神 奥特美特尔·比希巴尔金",
                text = {
                    {
                        "每张非弱化的{C:attention}小丑牌{}{C:mult}+#1#{}倍率",
                        "{C:inactive}(当前 {C:mult}+#2#{}{C:inactive}倍率)",
                    },
                    {
                        "回合结束时尽可能销毁所有其他非{C:joy_token}衍生物{}",
                        "非弱化的{C:attention}小丑牌{}，并生成等量",
                        "{C:dark_edition}负片{} {C:joy_token}「邪眼神衍生物」{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张{C:red}稀有{}非调整{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外)",
                }
            },
            j_joy_token_utchatzimime = {
                name = "{C:joy_token}邪眼神衍生物",
                text = {
                    {
                        "此卡可视为任意{C:joy_token}衍生物{}",
                    },
                }
            },
            j_joy_fishlamp = {
                name = "{C:joy_synchro}灯鱼",
                text = {
                    {
                        "作为{C:attention}素材{}时，添加{C:attention}#1#{}张",
                        "{C:joy_normal}鱼族{} {C:joy_synchro}同调{}至{C:joy_spell}额外卡组{}",
                        "并生成最多{C:attention}#2#{}张{C:joy_token}「灯衍生物」{}",
                        "可视为{C:joy_synchro}同调{}的任意{C:attention}素材{}",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "可视为{C:joy_synchro}同调{}的任意{C:attention}素材{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非调整{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外)",
                }
            },
            j_joy_token_lamp = {
                name = "{C:joy_token}灯衍生物",
                text = {
                    {
                        "此卡可视为任意{C:joy_token}衍生物{}",
                    },
                    {
                        "可视为{C:joy_synchro}同调{}的任意{C:attention}素材{}",
                    },
                }
            },
            j_joy_afd = {
                name = "{C:joy_synchro}古代妖精龙",
                text = {
                    {
                        "召唤时生成{C:attention}#1#{}张{C:joy_synchro}调整{}",
                        "{C:inactive}(需有空位)",
                    },
                    {
                        "选中{C:attention}盲注{}时销毁{C:attention}#2#{}张随机",
                        "{C:joy_spell}场地魔法{}以获取{C:money}+$#3#{}",
                        "然后生成{C:attention}#2#{}张{C:joy_spell}场地魔法{}",
                        "{C:inactive}(需有空位)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{}张{C:joy_synchro}调整{} +",
                    "{C:attention}1{}张非调整{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive}除外)",
                }
            },
        }
    },
}