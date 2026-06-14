return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}Сауравис, Древний и Вознесённый",
                text = {
                    {
                        "Продайте эту карту, чтобы отключить текущий",
                        "активный {C:attention}Блайнд{} и добавить его",
                        "в следующий магазин",
                    },
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый раз",
                        "когда эта способность была использована за это забег",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Пожертвуйте {C:attention}2 Джокеров{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}Ликантроп",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Обычного{} {C:attention}Джокера{} у вас или в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Пожертвуйте {C:attention}2 Джокеров{}",
                    "ИЛИ {C:attention}1{} {C:joy_normal}Обычный {C:attention}Джокер{}",
                }
            },
        }
    },
}
