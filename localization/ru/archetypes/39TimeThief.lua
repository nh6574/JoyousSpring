local perpetua = {
    enhancement = {
        text_description = {
            "{C:chips}+#1#{} фишек за каждую"
        },
        text = {
            "{C:chips}+#1#{} фишек"
        }
    },
    edition = {
        text_description = {
            "{C:green}#1# из #2#{} шанс создать",
            "{C:joy_normal}Машину Главной Колоды{} в конце раунда,",
            "увеличивается за каждую"
        },
        text = {
            "{C:green}#1# из #2#{} шанс создать",
            "{C:joy_normal}Машину Главной Колоды{} в конце раунда"
        }
    },
    seal = {
        text_description = {
            "{C:green}#1# из #2#{} шанс {C:attention}воскресить{}",
            "{C:joy_normal}Машину{} в конце раунда,",
            "увеличивается за каждую {C:inactive}(Не нужно места){}"
        },
        text = {
            "{C:green}#1# из #2#{} шанс {C:attention}воскресить{}",
            "{C:joy_normal}Машину{} в конце раунда,",
            "{C:inactive}(Не нужно места){}"
        }
    }
}

local redoer = {
    enhancement = {
        text_description = {
            "{C:mult}+#1#{} Mult за каждую"
        },
        text = {
            "{C:mult}+#1#{} Mult"
        }
    },
    edition = {
        text_description = {
            "{C:attention}+#1#{} размер руки в этом раунде,",
            "увеличивается на {C:attention}1{} за каждые {C:attention}5{}"
        },
        text = {
            "{C:attention}+#1#{} размер руки в этом раунде"
        }
    },
    seal = {
        text_description = {
            "{C:green}#1# из #2#{} шанс {C:attention}изгнать{}",
            "все сыгранные {C:attention}модифицированные{} карты в разыгранной руке,",
            "пока не выбран {C:attention}Блайнд{}, увеличивается за каждую"
        },
        text = {
            "{C:green}#1# из #2#{} шанс {C:attention}изгнать{}",
            "все сыгранные {C:attention}модифицированные{} карты в разыгранной руке,",
            "пока не выбран {C:attention}Блайнд{}"
        }
    }
}

local double = {
    enhancement = {
        text_description = {
            "Дополнительно {X:chips,C:white}X#1#{} фишек за каждую"
        },
        text = {
            "Дополнительно {X:chips,C:white}X#1#{} фишек"
        }
    },
    edition = {
        text_description = {
            "{C:green}#1# из #2#{} шанс создать",
            "превратить карту в колоде в {C:dark_edition}Негативную{}",
            "когда {C:attention}Босс Блайнд{} побеждён,",
            "увеличивается за каждую"
        },
        text = {
            "{C:green}#1# из #2#{} шанс создать",
            "превратить карту в колоде в {C:dark_edition}Негативную{}",
            "когда {C:attention}Босс Блайнд{} побеждён"
        }
    },
    seal = {
        text_description = {
            "{C:money}+$#1#{} когда рука разыграна",
            "за каждую"
        },
        text = {
            "{C:money}+$#1#{} когда рука разыграна"
        }
    }
}

return {
    descriptions = {
        Joker = {
            j_joy_thief_adjuster = {
                name = "{C:joy_effect}Воровка Времени Регулировщица",
                text = {
                    {
                        "Раз за раунд, {C:attention}воскрешает{} {C:joy_normal}«Воровку Времени» Главной Колоды{}",
                        "когда {C:attention}материал{} откреплён",
                    },
                    {
                        "Прикрепляет копию {C:attention}самой левой{} карты в сыгранной руке",
                        "к самому левому {C:joy_xyz}Икс-Икс{} у вас"
                    },
                    {
                        "Бесплатно если у вас есть {C:joy_normal}Психический{} или {C:joy_normal}Машина{}",
                    }
                }
            },
            j_joy_thief_winder = {
                name = "{C:joy_effect}Воровка Времени Заводчица",
                text = {
                    {
                        "Раз за раунд, создаёт {C:joy_normal}«Воровку Времени» Главной Колоды{}",
                        "когда {C:attention}материал{} откреплён",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Прикрепляет копию {C:attention}самой правой{} карты в сыгранной руке",
                        "к самому правому {C:joy_xyz}Икс-Икс{} у вас"
                    },
                    {
                        "Бесплатно если у вас есть {C:joy_xyz}Икс-Икс{}",
                    }
                }
            },
            j_joy_thief_regulator = {
                name = "{C:joy_effect}Воровка Времени Регулятор",
                text = {
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать 1{} {C:joy_normal}Машину{} чтобы",
                        "{C:attention}воскресить 2{} {C:joy_normal}Психических{}",
                        "{C:inactive}(Не нужно места){}"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхние {C:attention}3{}:",
                        "{C:attention}Улучшает{} случайную неулучшенную карту при раскопках"
                    },
                    {
                        "В конце раунда,",
                        "{C:attention}раскопки{} и проверьте верхние {C:attention}3{}:",
                        "Прикрепить случайную {C:attention}улучшенную{} карту при раскопках",
                        "к самому левому {C:joy_normal}«Воровка Времени»{} {C:joy_xyz}Икс-Икс{} у вас"
                    }
                }
            },
            j_joy_thief_bezel = {
                name = "{C:joy_effect}Воровка Времени Корабль-Безель",
                text = {
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать 1{} {C:joy_normal}Машину{} чтобы",
                        "прикрепить до {C:attention}#1#{} выбранных карт в руке",
                        "к самому правому {C:joy_xyz}Икс-Икс{} у вас"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхние {C:attention}3{}:",
                        "Применяет {C:dark_edition}Модификацию{} к случайной карте при раскопках без {C:dark_edition}Модификации{}"
                    },
                    {
                        "В конце раунда,",
                        "{C:attention}раскопки{} и проверьте верхние {C:attention}3{}:",
                        "Прикрепить случайную карту с {C:dark_edition}Модификацией{} при раскопках",
                        "к самому правому {C:joy_normal}«Воровка Времени»{} {C:joy_xyz}Икс-Икс{} у вас"
                    }
                }
            },
            j_joy_thief_whal = {
                name = "{C:joy_effect}Воровка Времени Темпоркит",
                text = {
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать 1{} {C:joy_normal}Машину{} чтобы",
                        "изгнать все другие {C:joy_normal}Машины{} пока не выбран {C:attention}Блайнд{}",
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхние {C:attention}3{}:",
                        "{C:attention}Улучшает{} случайную неулучшенную карту при раскопках"
                    },
                    {
                        "В конце раунда,",
                        "{C:attention}раскопки{} и проверьте верхние {C:attention}3{}:",
                        "Прикрепить случайную {C:attention}улучшенную{} карту при раскопках",
                        "к самому правому {C:joy_normal}«Воровка Времени»{} {C:joy_xyz}Икс-Икс{} у вас"
                    }
                }
            },
            j_joy_thief_corder = {
                name = "{C:joy_effect}Воровка Времени Хронорекордер",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать все{} {C:joy_normal}Машины{} чтобы",
                        "уменьшить требование {C:attention}Блайнда{} на {C:red}50%{} но создаёт {C:attention}1{}",
                        "{C:joy_mod}Блайнд{} карту в зоне {C:joy_trap}Противника{}"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхние {C:attention}3{}:",
                        "Применяет {C:attention}Печать{} к случайной карте при раскопках без {C:attention}Печати{}"
                    },
                    {
                        "В конце раунда,",
                        "{C:attention}раскопки{} и проверьте верхние {C:attention}3{}:",
                        "Прикрепить случайную карту с {C:attention}Печатью{} при раскопках",
                        "к самому левому {C:joy_normal}«Воровка Времени»{} {C:joy_xyz}Икс-Икс{} у вас"
                    }
                }
            },
            j_joy_thief_perpetua_notowned = {
                name = "{C:joy_xyz}Воровка Времени Перпетуя",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Раз за раунд, {C:attention}воскрешает 1{} {C:joy_normal}«Воровку Времени»{}",
                    },
                    {
                        "Прикрепляет копию {C:attention}самой левой{} карты",
                        "в сыгранной руке к этой карте"
                    },
                    {
                        "Получает способности на основе {C:attention}Игровых Карт{}",
                        "которые были прикреплены",
                        "{C:attention}(Проверьте связанные карты!){}"
                    }
                },
            },
            j_joy_thief_perpetua = {
                name = "{C:joy_xyz}Воровка Времени Перпетуя",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Раз за раунд, {C:attention}воскрешает 1{} {C:joy_normal}«Воровку Времени»{}",
                    },
                    {
                        "Прикрепляет копию {C:attention}самой левой{} карты",
                        "в сыгранной руке к этой карте"
                    },
                    {
                        "Получает способности на основе {C:attention}Игровых Карт{}",
                        "которые были прикреплены"
                    }
                },
                joy_extra_effects = {
                    m_bonus = perpetua.enhancement,
                    m_mult = perpetua.enhancement,
                    m_wild = perpetua.enhancement,
                    m_glass = perpetua.enhancement,
                    m_steel = perpetua.enhancement,
                    m_stone = perpetua.enhancement,
                    m_gold = perpetua.enhancement,
                    m_lucky = perpetua.enhancement,
                    m_joy_hanafuda = perpetua.enhancement,
                    e_foil = perpetua.edition,
                    e_holo = perpetua.edition,
                    e_polychrome = perpetua.edition,
                    red_seal = perpetua.seal,
                    blue_seal = perpetua.seal,
                    gold_seal = perpetua.seal,
                    purple_seal = perpetua.seal,
                    joy_purr_memory_seal = perpetua.seal,
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Икс-Икс{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                }
            },
            j_joy_thief_redoer_notowned = {
                name = "{C:joy_xyz}Воровка Времени Переделыватель",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "{C:attention}Изгоняет{} случайный {C:joy_normal}Психический{} или {C:joy_normal}Машину{}",
                        "пока не выбран {C:attention}Блайнд{}"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхнюю {C:attention}1{}:",
                        "Прикрепляет её к этой карте, затем применяет следующее в зависимости от масти:",
                        "{C:hearts}Червы{}: Бесплатный {C:green}переброс{} в магазине",
                        "{C:diamonds}Бубны{}: {C:money}+$#2#{}",
                        "{C:clubs}Трефы{}: Получает {C:attention}#3#{} {C:attention}Стандартных Тегов{}",
                        "{C:spades}Пики{}: Создаёт {C:dark_edition}Негативный{} {C:attention}Улучшающий{} {C:tarot}Таро{}",
                    },
                    {
                        "Получает способности на основе {C:attention}Игровых Карт{} которые были прикреплены",
                        "{C:attention}(Проверьте связанные карты!){}"
                    }
                },
            },
            j_joy_thief_redoer = {
                name = "{C:joy_xyz}Воровка Времени Переделыватель",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "{C:attention}Изгоняет{} случайный {C:joy_normal}Психический{} или {C:joy_normal}Машину{}",
                        "пока не выбран {C:attention}Блайнд{}"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхнюю {C:attention}1{}:",
                        "Прикрепляет её к этой карте, затем применяет следующее в зависимости от масти:",
                        "{C:hearts}Червы{}: Бесплатный {C:green}переброс{} в магазине",
                        "{C:diamonds}Бубны{}: {C:money}+$#2#{}",
                        "{C:clubs}Трефы{}: Получает {C:attention}#3#{} {C:attention}Стандартных Тегов{}",
                        "{C:spades}Пики{}: Создаёт {C:dark_edition}Негативный{} {C:attention}Улучшающий{} {C:tarot}Таро{}",
                    },
                    {
                        "Получает способности на основе {C:attention}Игровых Карт{}",
                        "которые были прикреплены"
                    }
                },
                joy_extra_effects = {
                    m_bonus = redoer.enhancement,
                    m_mult = redoer.enhancement,
                    m_wild = redoer.enhancement,
                    m_glass = redoer.enhancement,
                    m_steel = redoer.enhancement,
                    m_stone = redoer.enhancement,
                    m_gold = redoer.enhancement,
                    m_lucky = redoer.enhancement,
                    m_joy_hanafuda = redoer.enhancement,
                    e_foil = redoer.edition,
                    e_holo = redoer.edition,
                    e_polychrome = redoer.edition,
                    red_seal = redoer.seal,
                    blue_seal = redoer.seal,
                    gold_seal = redoer.seal,
                    purple_seal = redoer.seal,
                    joy_purr_memory_seal = redoer.seal,
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Икс-Икс{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                }
            },
            j_joy_thief_double_notowned = {
                name = "{C:joy_xyz}Воровка Времени Двойной Ствол",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Получает {X:mult,C:white}X#2#{} в этом раунде",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхнюю {C:attention}1{}:",
                        "Прикрепляет её к этой карте, затем получает {C:money}+$#4#{} на основе её ранга",
                    },
                    {
                        "Получает способности на основе {C:attention}Игровых Карт{} которые были прикреплены",
                        "{C:attention}(Проверьте связанные карты!){}"
                    }
                },
            },
            j_joy_thief_double = {
                name = "{C:joy_xyz}Воровка Времени Двойной Ствол",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Получает {X:mult,C:white}X#2#{} в этом раунде",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Раскопки{} и проверьте верхнюю {C:attention}1{}:",
                        "Прикрепляет её к этой карте, затем получает {C:money}+$#4#{} на основе её ранга",
                    },
                    {
                        "Получает способности на основе {C:attention}Игровых Карт{}",
                        "которые были прикреплены"
                    }
                },
                joy_extra_effects = {
                    m_bonus = double.enhancement,
                    m_mult = double.enhancement,
                    m_wild = double.enhancement,
                    m_glass = double.enhancement,
                    m_steel = double.enhancement,
                    m_stone = double.enhancement,
                    m_gold = double.enhancement,
                    m_lucky = double.enhancement,
                    m_joy_hanafuda = double.enhancement,
                    e_foil = double.edition,
                    e_holo = double.edition,
                    e_polychrome = double.edition,
                    red_seal = double.seal,
                    blue_seal = double.seal,
                    gold_seal = double.seal,
                    purple_seal = double.seal,
                    joy_purr_memory_seal = double.seal,
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Икс-Икс{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_thief = "Воровка Времени",
        }
    }
}
