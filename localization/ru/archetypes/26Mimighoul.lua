return {
    descriptions = {
        Joker = {
            j_joy_mimi_archfiend = {
                name = "{C:joy_effect}Мимигул Архидьявол",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:attention}#3#{} {C:blue}Обычного{} {C:joy_normal}Главная колода{} {C:joy_normal}\"Мимигула\"{}",
                        "{C:inactive}(Нужно место)",
                        "и {C:joy_effect}\"Мимигула Архидьявола\"{} в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_armor = {
                name = "{C:joy_effect}Мимигул Броня",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждого {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:attention}#3#{} {C:green}Необычного{} {C:joy_normal}Главная колода{} {C:joy_normal}\"Мимигула\"{}",
                        "{C:inactive}(Нужно место)",
                        "и {C:joy_effect}\"Мимигула Броня\"{} в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_cerberus = {
                name = "{C:joy_effect}Мимигул Цербер",
                text = {
                    {
                        "{C:joy_spell}Полевые заклинания{} дают {X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:attention}#2#{} {C:green}Необычных{} {C:joy_normal}Главная колода{} {C:joy_normal}\"Мимигула\"{}",
                        "{C:inactive}(Нужно место)",
                        "и {C:joy_effect}\"Мимигула Цербер\"{} в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_dragon = {
                name = "{C:joy_effect}Мимигул Дракон",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую уничтоженную карту",
                        "{C:joy_effect}\"Мимигулом Драконом\"{} за это забег",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:attention}#3# Blind{} карты и {C:joy_effect}\"Мимигула Дракона\"{}",
                        "оба в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_fairy = {
                name = "{C:joy_effect}Мимигул Фея",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую карту {C:joy_trap}Оппонента{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:attention}#3#{} {C:blue}Обычного{} {C:joy_normal}Главная колода{} {C:joy_normal}\"Мимигула\"{}",
                        "{C:inactive}(Нужно место)",
                        "и {C:joy_effect}\"Мимигула Фея\"{} в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_flower = {
                name = "{C:joy_effect}Мимигул Цветок",
                text = {
                    {
                        "Удваивает слоты {C:joy_trap}Оппонента{}",
                        "{C:inactive}(даже если в рубашке)"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "и создаёт {C:joy_effect}\"Мимигула Цветок\"{} в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_slime = {
                name = "{C:joy_effect}Мимигул Слизь",
                text = {
                    {
                        "Все {C:joy_effect}Переворот{} {C:joy_normal}\"Мимигулы\"{} в этой зоне",
                        "переворачиваются лицом вверх при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(даже если эта карта в рубашке)"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:attention}#1#{} {C:blue}Обычного{} или {C:green}Необычного{}",
                        "{C:joy_normal}Главная колода{} {C:joy_normal}\"Мимигула\"{}",
                        "{C:inactive}(Нужно место)",
                        "и {C:joy_effect}\"Мимигула Слизь\"{} в зоне {C:joy_trap}Оппонента{}",
                    },
                }
            },
            j_joy_mimi_master = {
                name = "{C:joy_effect}Мимигул Мастер",
                text = {
                    {
                        "Каждая карта в зоне {C:joy_trap}Оппонента{}",
                        "даёт {X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "Удваивает слоты {C:joy_trap}Оппонента{}",
                        "{C:inactive}(даже если в рубашке)"
                    },
                    {
                        "Раз за раунд, вы можете {C:attention}перевернуть{} {C:attention}Джокера{}",
                    },
                    {
                        "Раз за раунд, вы можете {C:attention}перевернуть{} карту в зоне {C:joy_trap}Оппонента{}"
                    },
                }
            },
            j_joy_mimi_giant = {
                name = "{C:joy_xyz}Гигантский Мимигул",
                text = {
                    {
                        "{C:attention}Прикрепляет #1# материал{} когда карта",
                        "{C:attention}переворачивается{} лицом вверх в зоне {C:joy_trap}Оппонента{}"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#2#{}: Создаёт столько карт {C:attention}Блайнд{}",
                        "в зоне {C:joy_trap}Оппонента{}, сколько {C:joy_normal}\"Мимигулов\"{} в той зоне",
                        "затем даёт {X:mult,C:white}X#3#{} Множителя в этом раунде",
                        "умноженное на количество не-{C:joy_normal}\"Мимигулов\"{} в той зоне",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#4#{}{C:inactive} Множителя)"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Переворот{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{} {s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                }
            },
            j_joy_mimi_throne = {
                name = "{C:joy_xyz}Мимигул Трон",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}: Создаёт {C:attention}#2#{} {C:dark_edition}Негативных{} {C:joy_effect}\"Мимигула Мастер\"{}"
                    },
                    {
                        "Навсегда увеличивает слоты {C:joy_trap}Оппонента{} на {C:attention}#3#{}",
                        "при {C:attention}изгнании{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Переворота{}",
                    "{C:joy_normal}\"Мимигула\"{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{} {s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                }
            },
            j_joy_mimi_dungeon = {
                name = "{C:joy_spell}Подземелье Мимигула",
                text = {
                    {
                        "Раз за раунд, если все {C:attention}Джокеры{} лицом вверх",
                        "вы можете {C:attention}перевернуть{} всех {C:attention}Джокеров{} в рубашку"
                    },
                    {
                        "Раз за раунд, если все {C:attention}Джокеры{} в рубашке",
                        "вы можете {C:attention}перевернуть{} всех {C:attention}Джокеров{} лицом вверх"
                    },
                    {
                        "{C:joy_normal}\"Мимигулы\"{} создают карты в зоне",
                        "{C:joy_trap}Оппонента{} как {C:dark_edition}Негативные{}"
                    }
                }
            },
        },
        joy_Opponent = {
            opp_joy_mimi_archfiend = {
                name = "{C:joy_effect}Мимигул Архидьявол",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя, даёт {C:attention}+#3#{} размер руки в этом раунде",
                        "и создаёт {C:joy_effect}\"Мимигула Архидьявола\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            opp_joy_mimi_armor = {
                name = "{C:joy_effect}Мимигул Броня",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждого {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "{C:attention}изгоняет{} всех {C:joy_normal}\"Мимигулов\"{} и {C:attention}Джокеров{} в рубашке",
                        "в конце раунда до выбора {C:attention}Блайнда{}",
                        "и создаёт {C:joy_effect}\"Мимигула Броня\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            opp_joy_mimi_cerberus = {
                name = "{C:joy_effect}Мимигул Цербер",
                text = {
                    {
                        "{C:joy_spell}Полевые заклинания{} дают {X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "создаёт {C:joy_spell}Полевое заклинание{}",
                        "и создаёт {C:joy_effect}\"Мимигула Цербер\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            opp_joy_mimi_dragon = {
                name = "{C:joy_effect}Мимигул Дракон",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую уничтоженную карту",
                        "{C:joy_effect}\"Мимигулом Драконом\"{} за это забег",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "и случайную не-{C:joy_normal}\"Мимигула\"{} карту в этой зоне",
                        "и создаёт {C:joy_effect}\"Мимигула Дракона\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            opp_joy_mimi_fairy = {
                name = "{C:joy_effect}Мимигул Фея",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую карту в этой зоне",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "перебрасывает следующий возможный {C:attention}Босс Блайнд{}",
                        "и создаёт {C:joy_effect}\"Мимигула Фея\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            opp_joy_mimi_flower = {
                name = "{C:joy_effect}Мимигул Цветок",
                text = {
                    {
                        "Удваивает слоты этой зоны",
                        "{C:inactive}(даже если в рубашке)"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "и создаёт {C:red}Редкого{} {C:joy_normal}\"Мимигула\"{} а затем",
                        "{C:joy_effect}\"Мимигула Цветок\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            opp_joy_mimi_slime = {
                name = "{C:joy_effect}Мимигул Слизь",
                text = {
                    {
                        "Все {C:joy_effect}Переворот{} {C:joy_normal}\"Мимигулы\"{} в этой зоне",
                        "переворачиваются лицом вверх при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(даже если эта карта в рубашке)"
                    },
                    {
                        "Уничтожает себя при выборе {C:attention}Блайнда{}",
                        "если у вас нет {C:joy_normal}\"Мимигула\"{}",
                        "или {C:attention}Джокера{} в рубашке"
                    },
                    {
                        "{C:attention}Переворачивается{} в конце раунда {C:inactive}(даже если в рубашке)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Уничтожает себя,",
                        "добавляет {C:joy_normal}\"Мимигула\"{} в {C:joy_spell}Экстра колоду{}",
                        "и {C:joy_effect}\"Мимигула Слизь\"{} в зоне {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mimi = "Мимигулы",
        }
    }
}
