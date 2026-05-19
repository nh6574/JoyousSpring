return {
    descriptions = {
        Joker = {
            j_joy_zoo_horse = {
                name = "{C:joy_effect}Зодиак Сквозной Клинок",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} {C:joy_xyz}Xyz{} в магазин",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Добавляет {s:0.9,C:attention}1{} {s:0.9,C:joy_normal}\"Зодиак\"{s:0.9} в магазин",
                        "{s:0.9}в конце раунда"
                    },
                },
                joy_transfer_ability = {
                    "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} в магазин",
                    "в конце раунда"
                },
            },
            j_joy_zoo_bunny = {
                name = "{C:joy_effect}Зодиак Кроличий Взрыв",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} {C:joy_xyz}Xyz{} в магазин",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Создаёт {s:0.9,C:attention}1{} {s:0.9,C:dark_edition}Негативный{} {s:0.9,C:tarot}Таро{s:0.9} и",
                        "{s:0.9,C:attention}2{} {s:0.9,C:dark_edition}Негативные{} {s:0.9,C:planet}Планеты{s:0.9} {s:0.9}в конце раунда"
                    },
                },
                joy_transfer_ability = {
                    "Создаёт {C:attention}1{} {C:dark_edition}Негативный{} {C:tarot}Таро{} и",
                    "{C:attention}2{} {C:dark_edition}Негативные{} {C:planet}Планеты{} в конце раунда"
                },
            },
            j_joy_zoo_snake = {
                name = "{C:joy_effect}Зодиак Хлыстохвост",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} {C:joy_xyz}Xyz{} в магазин",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:attention}Изгоняет{s:0.9} себя в конце раунда",
                        "{s:0.9}до выбора {s:0.9,C:attention}Блайнда{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Изгоняет{} себя в конце раунда",
                    "до выбора {C:attention}Блайнда{}"
                },
            },
            j_joy_zoo_rooster = {
                name = "{C:joy_effect}Зодиак Катапетух",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} {C:joy_xyz}Xyz{} в магазин",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:money}+$#1#{s:0.9} за каждый {s:0.9,C:attention}материал{}",
                        "{s:0.9}откреплённый от {s:0.9,C:joy_xyz}Xyz{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} когда {C:attention}материал{}",
                    "откреплён от {C:joy_xyz}Xyz{}"
                },
            },
            j_joy_zoo_ram = {
                name = "{C:joy_effect}Зодиак Баранотаран",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} {C:joy_xyz}Xyz{} в магазин",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:attention}Воскрешает 1{} {s:0.9,C:joy_normal}\"Зодиак\"{}",
                        "{s:0.9}в конце раунда"
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Воскрешает 1{} {C:joy_normal}\"Зодиак\"{}",
                    "в конце раунда"
                },
            },
            j_joy_zoo_rat = {
                name = "{C:joy_effect}Зодиак Крысопрорыв",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} {C:joy_xyz}Xyz{} в магазин",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Раз за раунд, создаёт {s:0.9,C:attention}1{} {s:0.9,C:joy_effect}\"Зодиак Крысопрорыв\"{}",
                        "{s:0.9}когда {s:0.9,C:attention}материал{s:0.9} откреплён от {s:0.9,C:joy_xyz}Xyz{}"
                    },
                },
                joy_transfer_ability = {
                    "Раз за раунд, создаёт {C:attention}1{} {C:joy_effect}\"Зодиак Крысопрорыв\"{}",
                    "когда {C:attention}материал{} откреплён от {C:joy_xyz}Xyz{}"
                },
            },
            j_joy_zoo_bull = {
                name = "{C:joy_xyz}Зодиак Широкий Бык",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Раз за раунд, создаёт {C:attention}1{}",
                        "{C:joy_normal}Главная колода \"Зодиак\"{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Сохраняет все {C:joy_normal}\"Зодиак\"{} {C:attention}переданные способности{}",
                        "от {C:attention}материалов{} использованных для его призыва"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,X:mult,C:white}X#2#{s:0.9} Множителя за каждого {s:0.9,C:joy_normal}\"Зодиака\"{}"
                    },
                },
                joy_transfer_ability = {
                    "{X:mult,C:white}X#1#{} Множителя за каждого {C:joy_normal}\"Зодиака\"{}",
                    "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                    "{s:0.9,C:inactive}(Если {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, перенести его материалы)",
                }
            },
            j_joy_zoo_dog = {
                name = "{C:joy_xyz}Зодиак Чаканин",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Раз за раунд,",
                        "{C:attention}воскрешает 1{} {C:joy_normal}\"Зодиака\"{}",
                    },
                    {
                        "Сохраняет все {C:joy_normal}\"Зодиак\"{} {C:attention}переданные способности{}",
                        "от {C:attention}материалов{} использованных для его призыва"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#2#{s:0.9} Множителя за каждую карту",
                        "{s:0.9,C:attention}воскрешённую{s:0.9} за это забег"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждую карту",
                    "{C:attention}воскрешённую{} за это забег",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                    "{s:0.9,C:inactive}(Если {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, перенести его материалы)",
                }
            },
            j_joy_zoo_tiger = {
                name = "{C:joy_xyz}Зодиак Тигроминомёт",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}все{}:",
                        "Прикрепляет как можно больше {C:joy_normal}\"Зодиаков\"{}",
                        "из {C:attention}GY{} к себе",
                        "{C:inactive}(Не передаёт способности){}"
                    },
                    {
                        "Сохраняет все {C:joy_normal}\"Зодиак\"{} {C:attention}переданные способности{}",
                        "от {C:attention}материалов{} использованных для его призыва"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Множителя за каждый",
                        "{s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}материал{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждый",
                    "{C:joy_xyz}Xyz{} {C:attention}материал{}",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                    "{s:0.9,C:inactive}(Если {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, перенести его материалы)",
                }
            },
            j_joy_zoo_monkey = {
                name = "{C:joy_xyz}Зодиак Молотоконг",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Добавить {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                        "в {C:joy_spell}Экстра колоду{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Сохраняет все {C:joy_normal}\"Зодиак\"{} {C:attention}переданные способности{}",
                        "от {C:attention}материалов{} использованных для его призыва"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Не может быть ослаблен",
                        "{s:0.9}или {s:0.9,C:attention}перевёрнут{s:0.9} в рубашку"
                    },
                },
                joy_transfer_ability = {
                    "Не может быть ослаблен",
                    "или {C:attention}перевёрнут{} в рубашку"
                },
                joy_summon_conditions = {
                    "{C:attention}3+{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                    "{s:0.9,C:inactive}(Если {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, перенести его материалы)",
                }
            },
            j_joy_zoo_dragon = {
                name = "{C:joy_xyz}Зодиак Дридент",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Уничтожает {C:attention}1{} случайную карту {C:joy_trap}Оппонента{}",
                        "(или 1 другой случайный {C:attention}Джокер{} если нет),",
                        "и если это сделано, даёт {X:mult,C:white}X#2#{}",
                        "за каждый {C:joy_xyz}Xyz{} {C:attention}материал{} в этом раунде",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#3#{}{C:inactive} Множителя)"
                    },
                    {
                        "Сохраняет все {C:joy_normal}\"Зодиак\"{} {C:attention}переданные способности{}",
                        "от {C:attention}материалов{} использованных для его призыва"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Добавляет {s:0.9,C:attention}1{} {s:0.9,C:joy_normal}\"Зодиак\"{s:0.9} в магазин",
                        "{s:0.9}при использовании как {s:0.9,C:attention}материал{s:0.9} для {s:0.9,C:joy_normal}\"Зодиака\"{}",
                        "{s:0.9}с другим именем от тех, что {s:0.9,C:attention}призваны{s:0.9} за это анте"
                    },
                },
                joy_transfer_ability = {
                    "Добавляет {C:attention}1{} {C:joy_normal}\"Зодиак\"{} в магазин",
                    "при использовании как {C:attention}материал{} для {C:joy_normal}\"Зодиака\"{}",
                    "с другим именем от тех, что {C:attention}призваны{} за это анте"
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                    "{s:0.9,C:inactive}(Если {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, перенести его материалы)",
                }
            },
            j_joy_zoo_boar = {
                name = "{C:joy_xyz}Зодиак Кабаний Лук",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}:",
                        "Немедленно выигрывает текущий {C:attention}Блайнд{}"
                    },
                    {
                        "Сохраняет все {C:joy_normal}\"Зодиак\"{} {C:attention}переданные способности{}",
                        "от {C:attention}материалов{} использованных для его призыва"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#2#{s:0.9} Множителя за каждый {s:0.9,C:joy_xyz}Xyz{}",
                        "{s:0.9,C:attention}призванный{s:0.9} за это забег"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждый {C:joy_xyz}Xyz{}",
                    "{C:attention}призванный{} за это забег",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_normal}\"Зодиак\"{}",
                    "{s:0.9,C:inactive}(Если {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, перенести его материалы)",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_zoo = "Зодиак",
        }
    }
}
