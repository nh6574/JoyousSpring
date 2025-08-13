-- 文件 4：99_06Synchro.lua（已汉化）
return {
    descriptions = {
        Joker = {
            j_joy_firewall_saber = {
                name = "{C:joy_synchro}防火墙刃龙",
                text = {
                    {
                        "召唤时，复活{C:attention}#1#{C:joy_spell}额外卡组{C:joy_normal}电子界{C:attention}并设为{C:dark_edition}负片"
                    },
                    {
                        "作为{C:joy_link}连接{C:attention}素材时，生成{C:attention}#2#{C:dark_edition}负片{C:spectral}幻灵牌"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_normal}电子界{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_bishbaalkin = {
                name = "{C:joy_synchro}终极幻兽 终焉兽",
                text = {
                    {
                        "每有1张未被削弱的{C:attention}小丑牌{C:attention}，获得{C:mult}+#1#{C:attention}倍率",
                        "{C:inactive}(当前{C:mult}+#2#{C:inactive}倍率)"
                    },
                    {
                        "回合结束时，销毁所有非{C:joy_token}衍生物{C:attention}且未被削弱的小丑牌{C:attention}",
                        "并生成等量的{C:dark_edition}负片{C:joy_token}“终末衍生物”"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:red}稀有{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_token_utchatzimime = {
                name = "{C:joy_token}终末衍生物",
                text = {
                    {
                        "此卡可视为任意{C:joy_token}衍生物{C:attention}"
                    },
                }
            },
            j_joy_fishlamp = {
                name = "{C:joy_synchro}鱼灯",
                text = {
                    {
                        "作为{C:attention}素材{C:attention}使用时，将{C:attention}#1#{C:joy_normal}鱼{C:joy_synchro}同步{C:attention}加入额外卡组",
                        "并生成至多{C:attention}#2#{C:joy_token}“灯衍生物”{C:attention}，可视为任意{C:joy_synchro}同步{C:attention}素材",
                        "{C:inactive}(需有空位)"
                    },
                    {
                        "可视为任意{C:joy_synchro}同步{C:attention}素材"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
            j_joy_token_lamp = {
                name = "{C:joy_token}灯衍生物",
                text = {
                    {
                        "此卡可视为任意{C:joy_token}衍生物{C:attention}"
                    },
                    {
                        "可视为任意{C:joy_synchro}同步{C:attention}素材"
                    },
                }
            },
            j_joy_afd = {
                name = "{C:joy_synchro}远古妖精龙",
                text = {
                    {
                        "召唤时生成{C:attention}#1#{C:joy_synchro}协调{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                    {
                        "选择{C:attention}盲注{C:attention}时，销毁{C:attention}#2#{C:joy_spell}场地魔法{C:attention}并获得{C:money}+$#3#{C:attention}",
                        "随后生成{C:attention}#2#{C:joy_spell}场地魔法{C:attention}",
                        "{C:inactive}(需有空位)"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{C:joy_synchro}协调{C:attention} +",
                    "{C:attention}1{C:attention}非{C:joy_synchro}协调{C:attention}",
                    "{s:0.9,C:inactive}(不包含{s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}或{s:0.9,C:joy_link}连接{s:0.9,C:inactive})"
                }
            },
        }
    },
}