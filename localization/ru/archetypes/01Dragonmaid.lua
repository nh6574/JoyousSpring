return {
    descriptions = {
        Joker = {
            j_joy_dmaid_kitchen = {
                name = "{C:joy_effect}Кухонная Драконгорничная",
                text = {
                    {
                        "{C:attention}#1#{} бесплатный {C:green}Переброс{} за каждого",
                        "{C:joy_normal}\"Драконгорничную\"{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Драконгорничная Тинхек\"",
                        "при выборе {C:attention}Блайнда{}",
                    }
                },
            },
            j_joy_dmaid_tinkhec = {
                name = "{C:joy_effect}Драконгорничная Тинхек",
                text = {
                    {
                        "{C:joy_normal}\"Драконгорничные\"{} каждая",
                        "дают {C:mult}+#1#{} Множителя",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Кухонная Драконгорничная\"",
                        "в конце раунда",
                    }
                },
            },
            j_joy_dmaid_parlor = {
                name = "{C:joy_effect}Гостиная Драконгорничная",
                text = {
                    {
                        "{C:attention}#1# Тег бустера{} при {C:attention}входе в игру{}",
                        "если у вас есть {C:attention}#2#{} {C:joy_normal}\"Драконгорничных\"{},",
                        "получая дополнительный за каждые {C:attention}#3#{} ещё",
                        "и отправляет {C:attention}#4#{} {C:joy_normal}\"Драконгорничную\"{} на {C:attention}GY{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Драконгорничная Лорпар\"",
                        "при выборе {C:attention}Блайнда{}",
                    },
                },
            },
            j_joy_dmaid_lorpar = {
                name = "{C:joy_effect}Драконгорничная Лорпар",
                text = {
                    {
                        "{C:joy_normal}\"Драконгорничные\"{} каждая",
                        "дают {X:mult,C:white}X#1#{} Множителя",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Гостиная Драконгорничная\"",
                        "в конце раунда",
                    },
                },
            },
            j_joy_dmaid_nurse = {
                name = "{C:joy_effect}Медсестра Драконгорничная",
                text = {
                    {
                        "Шанс {C:green}#1# из #2#{} {C:attention}воскресить #3#{}",
                        "{C:blue}Обычную{} {C:joy_normal}\"Драконгорничную\"{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Драконгорничная Эрнус\"",
                        "при выборе {C:attention}Блайнда{}",
                    },
                },
            },
            j_joy_dmaid_ernus = {
                name = "{C:joy_effect}Драконгорничная Эрнус",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую",
                        "{C:joy_normal}\"Драконгорничную\"{} на {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Медсестра Драконгорничная\"",
                        "в конце раунда",
                    },
                },
            },
            j_joy_dmaid_laundry = {
                name = "{C:joy_effect}Прачечная Драконгорничная",
                text = {
                    {
                        "Отправляет {C:attention}#1#{} {C:joy_normal}Главную колоду{} {C:joy_normal}\"Драконгорничную\"{}",
                        "на {C:attention}GY{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Драконгорничная Нудьярл\"",
                        "при выборе {C:attention}Блайнда{}",
                    },
                },
            },
            j_joy_dmaid_nudyarl = {
                name = "{C:joy_effect}Драконгорничная Нудьярл",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждую",
                        "{C:joy_normal}\"Драконгорничную\"{} на {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Прачечная Драконгорничная\"",
                        "в конце раунда",
                    },
                },
            },
            j_joy_dmaid_chamber = {
                name = "{C:joy_effect}Камеристка Драконгорничная",
                text = {
                    {
                        "{C:attention}#1# Тег ваучера{} при {C:attention}входе в игру{}",
                        "если у вас есть {C:attention}#2#{} {C:joy_normal}\"Драконгорничных\"{},",
                        "получая дополнительный за каждые {C:attention}#3#{} ещё",
                        "и отправляет {C:attention}#4#{} {C:joy_normal}\"Драконгорничную\"{} на {C:attention}GY{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Драконгорничная Цермба\"",
                        "при выборе {C:attention}Блайнда{}",
                    },
                },
            },
            j_joy_dmaid_cehrmba = {
                name = "{C:joy_effect}Драконгорничная Цермба",
                text = {
                    {
                        "Шанс {C:green}#1# из #2#{} {C:attention}воскресить #3#{}",
                        "{C:green}Необычную{} или {C:red}Редкую{} {C:joy_normal}\"Драконгорничную\"{}",
                        "при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_effect}\"Камеристка Драконгорничная\"",
                        "в конце раунда",
                    },
                },
            },
            j_joy_dmaid_lady = {
                name = "{C:joy_fusion}Леди Драконгорничная",
                text = {
                    {
                        "Добавляет {C:joy_fusion}\"Дом Драконгорничная\"{} в",
                        "{C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Шанс {C:green}#1# из #2#{} {C:attention}трансформироваться{} в",
                        "{C:green}Необычную{} {C:joy_normal}\"Драконгорничную\"{}",
                        "при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Кроме \"Леди Драконгорничная\"){}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "включая {C:joy_normal}\"Драконгорничную\"{}"
                }
            },
            j_joy_dmaid_house = {
                name = "{C:joy_fusion}Дом Драконгорничная",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждую {C:joy_normal}\"Драконгорничную\"{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "{C:joy_normal}\"Драконгорничные\"{} на {C:attention}GY{} учитываются для",
                        "способностей {C:joy_normal}\"Драконгорничных\"{}",
                    },
                    {
                        "{C:attention}Трансформируется{} в {C:joy_fusion}\"Драконгорничная Шеу\"",
                        "через {C:attention}#3#{} раундов {C:inactive}(#4#/#3#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Драконгорничных\"{}"
                }
            },
            j_joy_dmaid_sheou = {
                name = "{C:joy_fusion}Драконгорничная Шеу",
                text = {
                    {
                        "{C:joy_normal}\"Драконгорничные\"{} на {C:attention}GY{} учитываются для",
                        "способностей {C:joy_normal}\"Драконгорничных\"{}",
                    },
                    {
                        "При выборе {C:attention}Босс Блайнда{},",
                        "отключает его эффекты, затем {C:attention}трансформируется{} в",
                        "{C:joy_fusion}\"Дом Драконгорничная\"{} и создаёт {C:attention}#1#{}",
                        "{C:blue}Обычную{} {C:joy_normal}\"Драконгорничную\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dmaid = "Драконгорничная",
        }
    }
}
