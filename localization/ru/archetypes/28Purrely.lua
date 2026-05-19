return {
    descriptions = {
        Joker = {
            j_joy_purr_purrely = {
                name = "{C:joy_effect}Пуррели",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верхних {C:attention}#1#{}:",
                        "Добавляет {C:attention}Печать Памяти{} на каждую карту без Печати",
                    },
                    {
                        "Вы можете уничтожить выбранную игральную карту",
                        "с {C:attention}Печатью Памяти{} чтобы {C:attention}трансформировать{}",
                        "эту карту в соответствующего {C:joy_normal}\"Эпуррели\"{} {C:joy_xyz}Xyz{}",
                        "{C:inactive}(Это считается Xyz призывом с 1 материалом)",
                    }
                }
            },
            j_joy_purr_purrelyly = {
                name = "{C:joy_effect}Пуррелили",
                text = {
                    {
                        "При получении и в конце раунда,",
                        "создаёт {C:attention}#1#{} {C:planet}\"Мой Друг Пуррели\"{}",
                    },
                    {
                        "Если в колоде есть карта с {C:attention}Печатью Памяти{},",
                        "{C:attention}раскопки{} пока не найдёте одну при выборе {C:attention}Блайнда{},",
                        "добавляет копию в колоду и {C:attention}трансформирует{}",
                        "эту карту в соответствующего {C:joy_normal}\"Эпуррели\"{} {C:joy_xyz}Xyz{} для той Печати",
                        "{C:inactive}(Это считается Xyz призывом с 1 материалом)",
                    }
                }
            },
            j_joy_purr_eplump = {
                name = "{C:joy_xyz}Эпуррели Пухлый",
                text = {
                    {
                        "Повторно активирует каждую засчитанную карту с {C:attention}Вкусной Печатью{}",
                        "{C:attention}#1#{} раз за каждую разную масть в руке подсчёта",
                        "Увеличивается на {C:attention}#2#{} за каждые {C:attention}#3#{} {C:attention}Вкусных Печатей{} в колоде"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#4#{}:",
                        "{C:attention}Изгоняет #5#{} случайных {C:joy_normal}\"Пуррели\"{}",
                        "до выбора {C:attention}Блайнда{}"
                    },
                    {
                        "Если у этой карты нет материалов,",
                        "{C:attention}трансформируется{} в {C:joy_effect}\"Пуррели\"{}",
                        "в конце анте"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Феи{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_ebeauty = {
                name = "{C:joy_xyz}Эпуррели Красавица",
                text = {
                    {
                        "Повторно активирует каждую засчитанную карту с {C:attention}Красивой Печатью{}",
                        "{C:attention}#1#{} раз за каждую разную масть в руке подсчёта",
                        "Увеличивается на {C:attention}#2#{} за каждые {C:attention}#3#{} {C:attention}Красивых Печатей{} в колоде"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#4#{}:",
                        "Вы можете {C:attention}пожертвовать #5#{} {C:planet}Планету{}",
                        "чтобы получить {C:attention}#6#{} бесплатных перебросов в магазине"
                    },
                    {
                        "Если у этой карты нет материалов,",
                        "{C:attention}трансформируется{} в {C:joy_effect}\"Пуррели\"{}",
                        "в конце анте"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Феи{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_ehappiness = {
                name = "{C:joy_xyz}Эпуррели Счастье",
                text = {
                    {
                        "Повторно активирует каждую засчитанную карту с {C:attention}Весёлой Печатью{}",
                        "{C:attention}#1#{} раз за каждую разную масть в руке подсчёта",
                        "Увеличивается на {C:attention}#2#{} за каждые {C:attention}#3#{} {C:attention}Весёлых Печатей{} в колоде"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#4#{}:",
                        "Раз за раунд, создаёт {C:attention}#5#{}",
                        "{C:joy_normal}Главная колода \"Пуррели\"{}"
                    },
                    {
                        "Если у этой карты нет материалов,",
                        "{C:attention}трансформируется{} в {C:joy_effect}\"Пуррели\"{}",
                        "в конце анте"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Феи{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_enoir = {
                name = "{C:joy_xyz}Эпуррели Нуар",
                text = {
                    {
                        "Повторно активирует каждую засчитанную карту с {C:attention}Сонной Печатью{}",
                        "{C:attention}#1#{} раз за каждую разную масть в руке подсчёта",
                        "Увеличивается на {C:attention}#2#{} за каждые {C:attention}#3#{} {C:attention}Сонных Печатей{} в колоде"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#4#{}:",
                        "{C:attention}Раскопки{} и проверка верхней карты в колоде,",
                        "превратить её в выбранную карту в руке"
                    },
                    {
                        "Если у этой карты нет материалов,",
                        "{C:attention}трансформируется{} в {C:joy_effect}\"Пуррелили\"{}",
                        "в конце анте"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Феи{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_exhappiness = {
                name = "{C:joy_xyz}Экспуррели Счастье",
                text = {
                    {
                        "Засчитанные карты с {C:attention}Печатью Памяти{} дают {X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}половину {C:inactive}(округляется вверх){}:",
                        "В этом раунде {C:planet}\"Мой Друг Пуррели\"{} даёт",
                        "свою способность продажи при использовании"
                    },
                    {
                        "Создаёт столько {C:dark_edition}Негативных{} {C:planet}\"Мой Друг Пуррели\"{}, сколько",
                        "{C:joy_normal}\"Пуррели\"{} у вас с разными именами",
                        "в конце раунда также, если у этой карты нет материалов,",
                        "{C:attention}трансформируется{} в {C:joy_effect}\"Пуррели\"{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:joy_normal}Фей{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "или {C:attention}1{} {C:joy_normal}Фея{} {C:joy_xyz}Xyz{}",
                    "{s:0.9,C:inactive}(Перенести её материалы)",
                }
            },
            j_joy_purr_exnoir = {
                name = "{C:joy_xyz}Экспуррели Нуар",
                text = {
                    {
                        "Засчитанные карты с {C:attention}Печатью Памяти{} дают {X:chips,C:white}X#1#{} Фишек"
                    },
                    {
                        "Способности {C:joy_normal}\"Пуррели\"{} повторно активируют игральные карты",
                        "в два раза больше раз"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}половину {C:inactive}(округляется вверх){}:",
                        "В этом раунде способности {C:attention}Печатей Памяти{} в руке",
                        "срабатывают как если бы были засчитаны"
                    },
                    {
                        "Если у этой карты нет материалов,",
                        "{C:attention}трансформируется{} в {C:joy_effect}\"Пуррелили\"{}",
                        "в конце раунда"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:joy_normal}Фей{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "или {C:attention}1{} {C:joy_normal}Фея{} {C:joy_xyz}Xyz{}",
                    "{s:0.9,C:inactive}(Перенести её материалы)",
                }
            },
            j_joy_purr_street = {
                name = "{C:joy_spell}Улица Бродячих Пуррели",
                text = {
                    {
                        "Включает руки {C:attention}Пуррелияп!?{}"
                    },
                    {
                        "{C:joy_normal}\"Пуррели\"{} и карты с {C:attention}Печатью Памяти{}",
                        "не могут быть ослаблены"
                    },
                    {
                        "Прикрепляет {C:attention}#1#{} материал к случайному {C:joy_xyz}Xyz{}",
                        "когда {C:planet}\"Мой Друг Пуррели\"{} применяет Печать",
                        "{C:inactive}(Даже если уже применена){}"
                    },
                    {
                        "Раз за раунд, если у вас есть {C:attention}#2#{} или больше",
                        "карт с {C:attention}Печатью Памяти{} в полной колоде,",
                        "вы можете {C:attention}трансформировать{} {C:joy_xyz}\"Эпуррели Счастье\"{}",
                        "или {C:joy_xyz}\"Эпуррели Нуар\"{} в соответствующего {C:joy_normal}\"Экспуррели\"{}",
                        "{C:inactive}(Это считается Xyz призывом и переносит все материалы, включая себя){}"
                    }
                }
            },
        },
        Planet = {
            c_joy_purr_friend = {
                name = "{C:joy_spell}Мой Друг Пуррели",
                text = {
                    {
                        "({V:1}ур. #1#) Повысить уровень",
                        "{C:attention}#2#",
                        "{C:mult}+#3#{} Множителя и",
                        "{C:chips}+#4#{} фишек",
                    },
                    {
                        "Применяет {C:attention}Печать Памяти{}",
                        "на выбранную карту в руке",
                        "при продаже"
                    }
                },
            }
        },
        Spectral = {
            c_joy_purr_happy = {
                name = "{C:joy_spell}Пуррели Весёлое Воспоминание",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_effect}\"Пуррели\"{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Добавляет {C:attention}Весёлую Печать{} на",
                        "до {C:attention}5{} выбранных {C:hearts}Червей{} в руке"
                    },
                    {
                        "Случайный {C:joy_xyz}Xyz{} {C:attention}Джокер{} у вас",
                        "получает следующую способность:",
                        "{s:0.9}Повторно активирует каждую засчитанную карту в сыгранной руке",
                        "{s:0.9}за каждый {s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}материал{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Открепляет 1 материал{s:0.9} в конце раунда",
                    }
                },
                joy_transfer_ability = {
                    "Повторно активирует каждую засчитанную карту в сыгранной руке один раз",
                    "за каждый {C:joy_xyz}Xyz{} {C:attention}материал{}",
                    " ",
                    "{C:attention}Открепляет 1 материал{} в конце раунда",
                }
            },
            c_joy_purr_sleepy = {
                name = "{C:joy_spell}Пуррели Сонное Воспоминание",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_effect}\"Пуррелили\"{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Добавляет {C:attention}Сонную Печать{} на",
                        "до {C:attention}5{} выбранных {C:clubs}Треф{} в руке"
                    },
                    {
                        "Случайный {C:joy_xyz}Xyz{} {C:attention}Джокер{} у вас",
                        "получает следующую способность:",
                        "{s:0.9}При выборе {s:0.9,C:attention}Блайнда{}, даёт {s:0.9,C:attention}+1{} размер руки",
                        "{s:0.9}в этом раунде за каждый {s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}материал{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Открепляет 1 материал{s:0.9} в конце раунда",
                    }
                },
                joy_transfer_ability = {
                    "При выборе {C:attention}Блайнда{}, даёт {C:attention}+1{} размер руки",
                    "в этом раунде за каждый {C:joy_xyz}Xyz{} {C:attention}материал{}",
                    " ",
                    "{C:attention}Открепляет 1 материал{} в конце раунда",
                }
            },
            c_joy_purr_pretty = {
                name = "{C:joy_spell}Пуррели Красивое Воспоминание",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_effect}\"Пуррели\"{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Добавляет {C:attention}Красивую Печать{} на",
                        "до {C:attention}5{} выбранных {C:diamonds}Бубен{} в руке"
                    },
                    {
                        "Случайный {C:joy_xyz}Xyz{} {C:attention}Джокер{} у вас",
                        "получает следующую способность:",
                        "{s:0.9}Прикрепляет {s:0.9,C:attention}1 {s:0.9,C:joy_xyz}Xyz {s:0.9,C:attention}материал{}",
                        "{s:0.9}когда карта {C:attention,s:0.9}жертвуется{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Открепляет 1 материал{s:0.9} в конце раунда",
                    }
                },
                joy_transfer_ability = {
                    "Прикрепляет {C:attention}1 {C:joy_xyz}Xyz {C:attention}материал{}",
                    "когда карта {C:attention}жертвуется{}",
                    " ",
                    "{C:attention}Открепляет 1 материал{} в конце раунда",
                }
            },
            c_joy_purr_delicious = {
                name = "{C:joy_spell}Пуррели Вкусное Воспоминание",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_effect}\"Пуррели\"{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Добавляет {C:attention}Вкусную Печать{} на",
                        "до {C:attention}5{} выбранных {C:spades}Пик{} в руке"
                    },
                    {
                        "Случайный {C:joy_xyz}Xyz{} {C:attention}Джокер{} у вас",
                        "получает следующую способность:",
                        "{s:0.9}Эта карта даёт {s:0.9,C:mult}+#1#{s:0.9} Множителя",
                        "{s:0.9}за каждый {s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}материал{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Открепляет 1 материал{s:0.9} в конце раунда",
                    }
                },
                joy_transfer_ability = {
                    "Эта карта даёт {C:mult}+#1#{} Множителя",
                    "за каждый {C:joy_xyz}Xyz {C:attention}материал",
                    " ",
                    "{C:attention}Открепляет 1 материал{} в конце раунда",
                }
            },
        },
        Other = {
            joy_purr_memory_seal = {
                name = "Печать Памяти",
                text = {
                    "Изменяет способность при подсчёте в зависимости от масти:",
                    "{C:hearts}Черви{}: {C:attention}Весёлая{}",
                    "{C:clubs}Трефы{}: {C:attention}Сонная{}",
                    "{C:diamonds}Бубны{}: {C:attention}Красивая{}",
                    "{C:spades}Пики{}: {C:attention}Вкусная{}"
                }
            },
            joy_purr_memory_seal_happy = {
                name = "Весёлая Печать",
                text = {
                    "{C:green}#1# из #2#{} шанс создать",
                    "{C:joy_effect}\"Пуррели\"{} при подсчёте",
                    "{C:inactive}(Нужно место)",
                    " ",
                    "{C:mult}+#3#{} Множителя при подсчёте",
                    "Увеличивается на {C:mult}+#3#{}",
                    "за каждую другую карту",
                    "с другой мастью",
                    " ",
                    "Применяется к базовым {C:hearts}Червям{}"
                }
            },
            joy_purr_memory_seal_sleepy = {
                name = "Сонная Печать",
                text = {

                    "{C:green}#1# из #2#{} шанс создать",
                    "{C:joy_effect}\"Пуррелили\"{} при подсчёте",
                    "{C:inactive}(Нужно место)",
                    " ",
                    "{C:chips}+#4#{} Фишек при подсчёте",
                    "Увеличивается на {C:chips}+#4#{}",
                    "за каждую другую карту",
                    "с другой мастью",
                    " ",
                    "Применяется к базовым {C:clubs}Трефам{}"
                }
            },
            joy_purr_memory_seal_pretty = {
                name = "Красивая Печать",
                text = {
                    "{C:green}#1# из #2#{} шанс создать",
                    "{C:joy_effect}\"Пуррели\"{} при подсчёте",
                    "{C:inactive}(Нужно место)",
                    " ",
                    "{C:money}+$#5#{} при подсчёте",
                    "Увеличивается на {C:money}+$#5#{}",
                    "за каждую другую карту",
                    "с другой мастью",
                    " ",
                    "Применяется к базовым {C:diamonds}Бубнам{}"
                }
            },
            joy_purr_memory_seal_delicious = {
                name = "Вкусная Печать",
                text = {
                    "{C:green}#1# из #2#{} шанс создать",
                    "{C:joy_effect}\"Пуррели\"{} при подсчёте",
                    "{C:inactive}(Нужно место)",
                    " ",
                    "{C:green}#6# из #7#{} шанс создать",
                    "{C:planet}\"Мой Друг Пуррели\"{} при подсчёте",
                    "Увеличивает шансы",
                    "за каждую другую карту",
                    "с другой мастью",
                    " ",
                    "Применяется к базовым {C:spades}Пикам{}"
                }
            },
            joy_purr_memory_seal_inactive = {
                name = "Печать Памяти",
                text = {
                    "Не имеет способности"
                }
            },
        },
        JoyPokerHand = { -- TODO: delete if not used
            phd_joy_purr_yeap = {
                name = "Пуррелияп!?",
                text = {
                    "4 или более карт разных мастей",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_purr_yeap = "Пуррелияп!?"
        },
        poker_hand_descriptions = {
            joy_purr_yeap = {
                "4 или более карт разных мастей",
                "{C:inactive}(Должна быть включена способностью)"
            }
        },
        labels = {
            joy_purr_memory_seal = "Печать Памяти",
        },
        dictionary = {
            k_joy_archetype_purr = "Пуррели",
        }
    }
}
