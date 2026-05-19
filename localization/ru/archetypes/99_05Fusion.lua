return {
    descriptions = {
        Joker = {
            j_joy_mudragon = {
                name = "{C:joy_fusion}Грязевой Дракон Болот",
                text = {
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_fusion}Фьюжн{}",
                        "и любым {C:attention}Атрибутом{} пока у вас",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Джокера{} с разными редкостями",
                }
            },
            j_joy_garura = {
                name = "{C:joy_fusion}Гарура, Крылья Резонирующей Жизни",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки",
                    },
                    {
                        "Навсегда получить {C:attention}+#2#{} размер руки",
                        "если использована как {C:attention}материал{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Джокера{} с одинаковой редкостью",
                    "но с разными именами",
                }
            },
        }
    },
}
