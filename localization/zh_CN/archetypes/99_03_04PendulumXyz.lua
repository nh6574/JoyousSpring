return {
    descriptions = {
        Joker = {
            j_joy_ooze = {
                name = "{C:joy_pendulum_xyz}液状巨人 胀流大太郎",
                joy_consumable = {
                    "向随机{C:joy_xyz}超量{}附加{C:attention}#1#个素材{}"
                },
                text = {
                    {
                        "{C:joy_xyz}去除{} {C:attention}#2#{}个素材：{C:attention}复活 #3#{}张",
                        "{C:joy_pendulum}灵摆{}为{C:dark_edition}负片{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{}张{C:joy_pendulum}灵摆{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}超量{s:0.9,C:inactive}除外)"
                }
            },
        }
    },
}