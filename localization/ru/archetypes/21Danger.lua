return {
    descriptions = {
        Joker = {
            j_joy_danger_jack = {
                name = "{C:joy_effect}Опасность!? Зайцелоп?",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждый {C:joy_normal}\"Опасность!\"{}",
                        "уничтожение способности сработало в этом забеге,",
                        "получает {C:chips}+#2#{} Фишек при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас {C:chips}+#3# {C:inactive}Фишек)",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Создаёт {C:attention}#4#{} {C:joy_normal}\"Опасность!\"",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_danger_tsuch = {
                name = "{C:joy_effect}Опасность!? Цутиноко?",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:joy_normal}\"Опасность!\"{}",
                        "уничтожение способности сработало в этом забеге,",
                        "получает {C:mult}+#2#{} Множителя при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас {C:mult}+#3# {C:inactive}Множителя)",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Создаёт {C:attention}#4#{} {C:joy_normal}\"Опасность!\"",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_danger_chup = {
                name = "{C:joy_effect}Опасность! Чупакабра!",
                text = {
                    {
                        "{C:money}+$#1#{} в конце раунда",
                        "Увеличивается на {C:money}#2#{} при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "{C:attention}Воскрешает #3#{} {C:joy_normal}\"Опасность!\"",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                    },
                }
            },
            j_joy_danger_moth = {
                name = "{C:joy_effect}Опасность! Мотмэн!",
                text = {
                    {
                        "{C:red}+#1#{} Сбросов",
                        "Увеличивается на {C:red}#2#{} при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "{C:attention}Воскрешает #3#{} {C:joy_normal}\"Опасность!\"",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                    },
                }
            },
            j_joy_danger_dog = {
                name = "{C:joy_effect}Опасность! Догмен!",
                text = {
                    {
                        "Снижает требования {C:attention}Блайнда{} на {C:red}#1#%{}",
                        "Увеличивается на {C:red}#2#%{} при выборе {C:attention}Блайнда{}",
                        "{s:0.9,C:inactive}(Макс. 25%)",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Добавляет {C:attention}#3#{} {C:joy_normal}\"Опасность!\"{} в магазин",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                    },
                }
            },
            j_joy_danger_ness = {
                name = "{C:joy_effect}Опасность! Несси!",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки",
                        "Увеличивается на {C:attention}#2#{} при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Добавляет {C:attention}#3#{} {C:joy_normal}\"Опасность!\"{} в магазин",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                    },
                }
            },
            j_joy_danger_big = {
                name = "{C:joy_effect}Опасность! Бигфут!",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый {C:joy_normal}\"Опасность!\"{}",
                        "уничтожение способности сработало в этом забеге,",
                        "получает {X:mult,C:white}X#2#{} Множителя при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#3#{} {C:inactive}Множителя)",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Уничтожает всех других {C:attention}Джокеров{}",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                        "и создаёт {C:joy_normal}\"Опасность!\"{} за каждого",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            j_joy_danger_ogo = {
                name = "{C:joy_effect}Опасность! Огопого!",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждого {C:joy_normal}\"Опасность!\"{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:chips}+#2# {C:inactive}Фишек)",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Отправляет {C:attention}#3#{} {C:joy_normal}\"Опасность!\"{} в {C:attention}GY{}",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_danger_thunder = {
                name = "{C:joy_effect}Опасность! Тандербёрд!",
                text = {
                    {
                        "Получает {X:chips,C:white}X#1#{} Фишек за каждый {C:joy_normal}\"Опасность!\"{}",
                        "уничтожение способности сработало в этом забеге,",
                        "получает {X:chips,C:white}X#2#{} Фишек при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас {X:chips,C:white}X#3#{} {C:inactive}Фишек)",
                    },
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(включая себя)",
                    },
                    {
                        "Уничтожает {C:attention}#4#{} другого {C:attention}Джокера{} и все {C:attention}Расходники{}",
                        "при уничтожении способностью {C:joy_normal}\"Опасность!\"{}",
                        "и добавляет {C:joy_normal}\"Опасность!\"{} в магазин",
                        "за каждый {C:attention}Расходник{} уничтоженный"
                    },
                }
            },
            j_joy_danger_realm = {
                name = "{C:joy_spell}Королевство Опасности!",
                text = {
                    {
                        "Уничтожает случайного {C:attention}Джокера{} при выборе {C:attention}Блайнда{}",
                        "и даёт {C:money}+$#1#{}",
                    },
                    {
                        "{C:joy_normal}\"Опасность!\"{} {C:attention}воскрешают{} и создают карты как {C:dark_edition}Полихром{}",
                    },
                }
            },
            j_joy_danger_disorder = {
                name = "{C:joy_spell}Опасность! Возмущение! Беспорядок!",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}\"Опасность!\"{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2# {C:inactive}Множителя)",
                    },
                    {
                        "Создаёт {C:attention}#3#{} {C:joy_normal}\"Опасность!\"{}",
                        "при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Все не-{C:joy_normal}\"Опасность!\"{} ослаблены",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_danger = "Опасность!",
        }
    }
}
