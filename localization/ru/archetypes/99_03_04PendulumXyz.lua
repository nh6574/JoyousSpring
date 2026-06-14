return {
    descriptions = {
        Joker = {
            j_joy_ooze = {
                name = "{C:joy_pendulum_xyz}Дайдаратант Грязевой Гигант",
                joy_consumable = {
                    "Прикрепить {C:attention}#1# материала{} к случайному {C:joy_xyz}Xyz{}"
                },
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#2#{}: {C:attention}Воскрешает #3#{} {C:joy_pendulum}Пендулум{} как {C:dark_edition}Негативный{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_pendulum}Пендулум{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive})"
                }
            },
        }
    },
}
