return {
    descriptions = {
        Joker = {
            j_joy_wasp_pin = {
                name = "{C:joy_effect}Боевая Оса - Пин в Яблочко",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}\"Боевую Осу\"{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Создаёт {C:attention}1{} {C:joy_effect}\"Боевая Оса - Пин в Яблочко\"{}",
                        "при {C:attention}входе в игру{} {C:inactive}(Кроме \"Боевая Оса - Пин в Яблочко\"){}",
                    },
                    {
                        "Бесплатно и может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_wasp_dart = {
                name = "{C:joy_effect}Боевая Оса - Дротик Охотник",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_normal}Главная колода Насекомое{}",
                        "при использовании как {C:attention}материал{}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Бесплатно и может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_wasp_sting = {
                name = "{C:joy_effect}Боевая Оса - Жало Яд",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать 1{} {C:joy_normal}Насекомое{}",
                        "чтобы получить бесплатный переброс в магазине"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Боевую Осу\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_wasp_twinbow = {
                name = "{C:joy_effect}Боевая Оса - Двойной Лук Атакующий",
                text = {
                    {
                        "Добавляет {C:attention}2{} {C:joy_effect}\"Боевая Оса - Двойной Лук Атакующий\"{}",
                        "в магазин при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_wasp_arbalest = {
                name = "{C:joy_effect}Боевая Оса - Арбалет Скорострельный",
                text = {
                    {
                        "{C:attention}Воскрешает 1{} {C:joy_normal}Насекомое{}",
                        "при {C:attention}входе в игру{}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_wasp_rapier = {
                name = "{C:joy_effect}Боевая Оса - Рапира Натиск",
                text = {
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    },
                    {
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:green}#1# из #2#{s:0.9} шанс повторно активировать каждую сыгранную карту",
                        "{s:0.9}Шансы увеличиваются за каждого {s:0.9,C:joy_normal}Насекомого{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#1# из #2#{} шанс повторно активировать каждую сыгранную карту",
                    "Шансы увеличиваются за каждого {C:joy_normal}Насекомого{}"
                }
            },
            j_joy_wasp_azusa = {
                name = "{C:joy_synchro}Боевая Оса - Адзуса Призрачный Лук",
                text = {
                    {
                        "Снижает требование {C:attention}Блайнда{} на {C:red}#1#%{}",
                        "за каждого {C:joy_normal}Насекомого{} {C:inactive}(Макс 50%){}",
                        "при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас #2#%)"
                    },
                    {
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:attention}Изгоняет{s:0.9} себя в конце раунда",
                        "{s:0.9}до выбора {s:0.9,C:attention}Блайнда{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Изгоняет{} себя в конце раунда",
                    "до выбора {C:attention}Блайнда{}"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:joy_normal}Насекомое{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                    "Не нужно место",
                }
            },
            j_joy_wasp_halberd = {
                name = "{C:joy_synchro}Боевая Оса - Алебарда Атака",
                text = {
                    {
                        "{C:joy_normal}Насекомые{} {C:joy_spell}Специальные{} {C:attention}Джокеры{} дают {X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Множителя за каждого {s:0.9,C:joy_normal}Насекомого{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Насекомого{}",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Насекомое{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                    "Не нужно место",
                }
            },
            j_joy_wasp_sachi = {
                name = "{C:joy_synchro}Боевая Оса - Сачи Церемониальный Лук",
                text = {
                    {
                        "{C:money}+$#1#{} за каждого {C:joy_normal}Насекомого{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}"
                    },
                    {
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:money}+$#2#{s:0.9} за каждого {s:0.9,C:joy_normal}Насекомого{s:0.9} в {s:0.9,C:attention}GY{}",
                        "в конце анте"
                    },
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} за каждого {C:joy_normal}Насекомого{} в {C:attention}GY{}",
                    "в конце анте",
                    "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Насекомое{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                    "Не нужно место",
                }
            },
            j_joy_wasp_hama = {
                name = "{C:joy_synchro}Боевая Оса - Хама Покоряющий Лук",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                        "{V:1}+#2#{V:2} Множителя если призван с использованием",
                        "{V:3}Синхро{V:2} как {V:4}материал{}"
                    },
                    {
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#3#{s:0.9} Множителя"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#3#{} Множителя"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Насекомое{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:joy_synchro}Синхро{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                    "Не нужно место",
                }
            },
            j_joy_wasp_ballista = {
                name = "{C:joy_synchro}Боевая Оса - Баллиста Армагеддон",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Насекомого{}",
                        "{C:attention}изгнанного{} за это забег",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает эту способность",
                    },
                    {
                        "{C:attention}Изгоняет{} всех {C:joy_normal}\"Боевых Ос\"{}",
                        "в конце раунда до выбора {C:attention}Блайнда{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Насекомого{}",
                    "{C:attention}изгнанного{} за это забег",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Насекомое{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}2{} не-{C:joy_synchro}Тюнера{}",
                    "включая {C:joy_synchro}Синхро{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                    "Не нужно место",
                }
            },
            j_joy_wasp_partisan = {
                name = "{C:joy_synchro}Боевая Оса - Гранд Партизан Революция",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждого {C:joy_normal}Насекомого{}",
                        "{C:attention}изгнанного{} за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)",
                        "{C:joy_normal}Насекомое{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает эту способность",
                    },
                    {
                        "Добавляет {C:attention}1{} каждого {C:joy_normal}\"Боевую Осу\"{} {C:joy_synchro}Синхро{}",
                        "в {C:joy_spell}Экстра колоду{} при использовании как {C:attention}материал{}",
                        "{C:inactive}(Кроме \"Боевая Оса - Гранд Партизан Революция\"){}",
                        "{C:inactive}(Не нужно место)"
                    },
                },
                joy_transfer_ability = {
                    "Получает {X:mult,C:white}X#1#{} Множителя за каждого {C:joy_normal}Насекомого{}",
                    "{C:attention}изгнанного{} за это забег",
                    "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Насекомое{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}3+{} не-{C:joy_synchro}Тюнера{}",
                    "включая {C:joy_synchro}Синхро{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                    "Не нужно место",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_wasp = "Боевые Осы",
        }
    }
}
