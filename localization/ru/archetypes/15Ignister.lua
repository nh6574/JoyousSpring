return {
    descriptions = {
        Joker = {
            j_joy_ignis_achichi = {
                name = "{C:joy_effect}Ачичи @Игнистер",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:blue}Обычный{} {C:joy_normal}Главной колоды",
                        "{C:joy_normal}\"@Игнистер\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_ignis_pikari = {
                name = "{C:joy_effect}Пикари @Игнистер",
                text = {
                    {
                        "{C:money}+$#1#{} в конце раунда",
                    },
                    {
                        "Создаёт {C:attention}#2#{} случайный {C:tarot}Таро{}",
                        "при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_ignis_hiyari = {
                name = "{C:joy_effect}Хияри @Игнистер",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки",
                    },
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать #2#{} {C:joy_normal}Киберса{}",
                        "чтобы создать {C:attention}#3#{} {C:green}Необычный{} {C:joy_normal}\"@Игнистер\" Главной колоды",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"@Игнистер\"{}",
                    },
                }
            },
            j_joy_ignis_bururu = {
                name = "{C:joy_effect}Буруру @Игнистер",
                text = {
                    {
                        "Отправляет {C:attention}#1#{} {C:joy_normal}\"@Игнистер\"{} в {C:attention}GY{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Воскрешает #2#{} {C:joy_normal}\"@Игнистер\" Главной колоды{} как {C:dark_edition}Негатив",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Киберса",
                    },
                }
            },
            j_joy_ignis_doshin = {
                name = "{C:joy_effect}Дошин @Игнистер",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек",
                    },
                    {
                        "{C:attention}Воскрешает #2#{} {C:joy_spell}Экстра колоды{} {C:joy_normal}\"@Игнистер\"{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Киберса",
                    },
                }
            },
            j_joy_ignis_gatchiri = {
                name = "{C:joy_effect}Гатчири @Игнистер",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя",
                    },
                    {
                        "Может быть использован как любой {C:attention}материал{} для {C:joy_link}Линка",
                    },
                    {
                        "{C:joy_normal}Киберс{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Не может быть ослаблен или {s:0.9,C:attention}перевёрнут {s:0.9}в рубашку",
                    },
                },
                joy_transfer_ability = {
                    "Не может быть ослаблен или {C:attention}перевёрнут{} в рубашку"
                }
            },
            j_joy_ignis_gussari = {
                name = "{C:joy_effect}Гуссари @Игнистер",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                    },
                    {
                        "Может быть использован как любой {C:attention}материал{} для {C:joy_link}Линка",
                    },
                    {
                        "{C:joy_link}Линк{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#1# {s:0.9}Множителя за каждый {s:0.9,C:attention}материал {s:0.9}использованный для его призыва",
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждый {C:attention}материал{} использованный для его призыва",
                    "{C:inactive}(Сейчас {C:mult}+#2#{} {C:inactive}Множителя)"
                }
            },
            j_joy_ignis_danmari = {
                name = "{C:joy_effect}Данмари @Игнистер",
                text = {
                    {
                        "Может быть использован как любой {C:attention}материал{} для {C:joy_link}Линка",
                    },
                    {
                        "{C:joy_link}Линк{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Снижает требование {s:0.9,C:attention}Блайнда{}{s:0.9} на {s:0.9,C:red}#1#%{}",
                        "{s:0.9}при выборе {s:0.9,C:attention}Блайнда{}{s:0.9}",
                    },
                },
                joy_transfer_ability = {
                    "Снижает требование {C:attention}Блайнда{} на {C:red}#1#%{}",
                    "при выборе {C:attention}Блайнда{}",
                }
            },
            j_joy_ignis_doyon = {
                name = "{C:joy_effect}Дойон @Игнистер",
                text = {
                    {
                        "{C:attention}Воскрешает #1#{} {C:joy_normal}\"@Игнистер\" Главной колоды{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Добавляет {C:attention}#2#{} неполученных {C:joy_normal}\"@Игнистер\"{} в {C:joy_spell}Экстра колоду",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Киберса",
                    },
                }
            },
            j_joy_ignis_donyoribo = {
                name = "{C:joy_effect}Донёрибо @Игнистер",
                text = {
                    {
                        "{C:money}+$#1#{} каждый раз, когда {C:joy_normal}\"@Игнистер\"{} куплен",
                    },
                    {
                        "Продайте эту карту, чтобы {C:attention}изгнать #2#{} {C:joy_normal}\"@Игнистер\"{}",
                        "до выбора {C:attention}Блайнда{}",
                    },
                }
            },
            j_joy_ignis_backup = {
                name = "{C:joy_effect}Бэкап @Игнистер",
                text = {
                    {
                        "Добавляет {C:dark_edition}Негатив{} к {C:attention}#1#{} другому случайному {C:joy_normal}Киберсу{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Добавляет {C:dark_edition}Негатив{} к {C:joy_normal}Киберсу{} призванному",
                        "с использованием этой карты как {C:attention}материал{} если возможно",
                    },
                }
            },
            j_joy_ignis_wizard = {
                name = "{C:joy_effect}Волшебник @Игнистер",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту чтобы {C:attention}воскресить{} до {C:attention}#1#{}",
                        "{C:joy_normal}Киберсов{} с разными именами",
                        "Если у вас есть призванный {C:joy_spell}Экстра колоды{} {C:joy_normal}Киберс{},",
                        "{C:attention}воскрешает{} дополнительного {C:joy_normal}\"@Игнистер\"{} как {C:dark_edition}Негатив",
                    },
                }
            },
            j_joy_ignis_kiruku = {
                name = "{C:joy_effect}Курикуринку @Игнистер",
                text = {
                    {
                        "Продайте эту карту, чтобы отключить текущий активный {C:attention}Блайнд{} и",
                        "добавить её в следующий магазин, если у вас есть призванный {C:joy_spell}Экстра колоды{} {C:joy_normal}Киберс{}",
                    },
                }
            },
            j_joy_ignis_linkslayer = {
                name = "{C:joy_effect}Линкслэйер @Игнистер",
                text = {
                    {
                        "Может быть использован как любой {C:attention}материал{} для {C:joy_link}Линка",
                    },
                    {
                        "Навсегда получает {C:red}+#1#{} сброс",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Киберса{}",
                    }
                }
            },
            j_joy_ignis_leviathan = {
                name = "{C:joy_ritual}Водный Левиафан @Игнистер",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} неполученных {C:joy_normal}\"@Игнистер\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Сыгранные карты в разыгранной руке получают {C:chips}+#2#{} Фишек",
                        "за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:inactive}(Сейчас {C:chips}+#3# {C:inactive}Фишек)",
                        "{C:joy_link}Линк{} призванный с использованием этой карты как {C:attention}материал{} получает эту способность",
                    },
                },
                joy_transfer_ability = {
                    "Сыгранные карты в разыгранной руке получают {C:chips}+#1#{} Фишек",
                    "за каждый {C:attention}Атрибут{} использованный для его призыва",
                    "{C:inactive}(Сейчас {C:chips}+#2# {C:inactive}Фишек)",
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Жертва {C:attention}2+ {C:joy_normal}Киберса{}"
                }
            },
            j_joy_ignis_golem = {
                name = "{C:joy_fusion}Земляной Голем @Игнистер",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} неполученных {C:joy_normal}\"@Игнистер\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}+#2# слот{} для Джокера за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:inactive}(Сейчас {C:attention}+#3#{C:inactive})",
                        "{C:joy_link}Линк{} призванный с использованием этой карты как {C:attention}материал{} получает эту способность",
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}+#1# слот{} для Джокера за каждый {C:attention}Атрибут{} использованный для его призыва",
                    "{C:inactive}(Сейчас {C:attention}+#2#{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Киберса{}"
                }
            },
            j_joy_ignis_pegasus = {
                name = "{C:joy_synchro}Ветряной Пегас @Игнистер",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} неполученных {C:joy_normal}\"@Игнистер\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:green}#2# из #3#{} шанс повторно активировать игровые карты",
                        "Шанс увеличивается за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:joy_link}Линк{} призванный с использованием этой карты как {C:attention}материал{} получает эту способность",
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#1# из #2#{} шанс повторно активировать игровые карты",
                    "Шанс увеличивается за каждый {C:attention}Атрибут{} использованный для его призыва",
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1+{} не-{C:joy_synchro}Тюнер{} {C:joy_normal}Киберс{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_ignis_dragon = {
                name = "{C:joy_xyz}Световой Дракон @Игнистер",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} неполученных {C:joy_normal}\"@Игнистер\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Сыгранные карты в разыгранной руке получают постоянный {C:money}+$#2#{}",
                        "при нахождении в руке в конце раунда",
                        "за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:inactive}(Сейчас {C:money}+$#3#{C:inactive})",
                        "{C:joy_link}Линк{} призванный с использованием этой карты как {C:attention}материал{} получает эту способность",
                    },
                },
                joy_transfer_ability = {
                    "Сыгранные карты в разыгранной руке получают постоянный {C:money}+$#1#{}",
                    "при нахождении в руке в конце раунда",
                    "за каждый {C:attention}Атрибут{} использованный для его призыва",
                    "{C:inactive}(Сейчас {C:money}+$#2#{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Киберса{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_ignis_phoenix = {
                name = "{C:joy_link}Огненный Феникс @Игнистер",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} неполученных {C:joy_normal}\"@Игнистер\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:dark_edition}Негатив{} Ослабленного {C:joy_link}\"Огненный Феникс @Игнистер\"{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Киберса",
                    },
                    {
                        "Сыгранные карты в разыгранной руке получают {C:mult}+#3#{} Множителя",
                        "за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:inactive}(Сейчас {C:mult}+#4#{} {C:inactive}Множителя)",
                        "{C:joy_link}Линк{} призванный с использованием этой карты как {C:attention}материал{} получает эту способность",
                    },
                },
                joy_transfer_ability = {
                    "Сыгранные карты в разыгранной руке получают {C:mult}+#1#{} Множителя",
                    "за каждый {C:attention}Атрибут{} использованный для его призыва",
                    "{C:inactive}(Сейчас {C:mult}+#2#{} {C:inactive}Множителя)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Киберса{}"
                }
            },
            j_joy_ignis_allied = {
                name = "{C:joy_link}Союзный Код Токер @Игнистер",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждый {C:joy_link}Линк",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "{C:attention}Воскрешает #3#{} {C:joy_link}Линков{} при {C:attention}входе в игру{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 {C:joy_link}Линка{}"
                }
            },
            j_joy_ignis_infant = {
                name = "{C:joy_link}Тёмный Младенец @Игнистер",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_spell}\"Игнистер A.I.Земля\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_link}Линка",
                        "и любым {C:attention}Атрибутом{} пока у вас",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1 {C:joy_normal}Киберс{}"
                }
            },
            j_joy_ignis_templar = {
                name = "{C:joy_link}Тёмный Тамплиер @Игнистер",
                text = {
                    {
                        "{C:attention}Воскрешает{} как можно больше {C:joy_normal}\"@Игнистер\"{}",
                        "с разными именами как {C:dark_edition}Негатив{} и ослабленных при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Воскрешает #1#{} {C:joy_normal}Киберса Главной колоды{} при использовании как {C:attention}материал{} для {C:joy_normal}Киберса{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 {C:joy_normal}\"@Игнистер\"{}"
                }
            },
            j_joy_ignis_arrival = {
                name = "{C:joy_link}Прибытие Киберс @Игнистер",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "Получает способности на основе {C:attention}материалов{} использованных для его призыва",
                        "{V:1}СВЕТ{V:3}: {V:2}+$#3#{V:3} в конце раунда",
                        "{V:4}ТЬМА{V:7}: Создаёт {V:5}#4#{} {V:6}Спектральное{V:7} в конце раунда {s:0.9,C:inactive}(Нужно место)",
                        "{V:8}ВОДА{V:10}: {V:9}+#5#{V:10} Фишек",
                        "{V:11}ОГОНЬ{V:13}: {V:12}+#6#{V:13} Множителя",
                        "{V:14}ВЕТЕР{V:17}: {V:15}#7# из #8#{V:17} шанс создать {V:16}Негатив{V:17} копию использованного {V:18}Спектрального",
                        "{V:19}ЗЕМЛЯ{V:21}: {V:20}+#9#{V:21} размер руки",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+ {C:joy_normal}Киберса{}"
                }
            },
            j_joy_ignis_arrival_divine = {
                name = "{C:joy_link}Прибытие Киберс @Игнистер",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждый {C:attention}Атрибут{} использованный для его призыва",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "Получает способности на основе {C:attention}материалов{} использованных для его призыва",
                        "{V:1}СВЕТ{V:3}: {V:2}+$#3#{V:3} в конце раунда",
                        "{V:4}ТЬМА{V:7}: Создаёт {V:5}#4#{} {V:6}Спектральное{V:7} в конце раунда {s:0.9,C:inactive}(Нужно место)",
                        "{V:8}ВОДА{V:10}: {V:9}+#5#{V:10} Фишек",
                        "{V:11}ОГОНЬ{V:13}: {V:12}+#6#{V:13} Множителя",
                        "{V:14}ВЕТЕР{V:17}: {V:15}#7# из #8#{V:17} шанс создать {V:16}Негатив{V:17} копию использованного {V:18}Спектрального",
                        "{V:19}ЗЕМЛЯ{V:21}: {V:20}+#9#{V:21} размер руки",
                        "{C:joy_divine}БОЖЕСТВЕННЫЙ{}: Снижает требование {C:attention}Блайнда{} на {C:red}50%{}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+ {C:joy_normal}Киберса{}"
                }
            },
            j_joy_ignis_ailand = {
                name = "{C:joy_spell}Игнистер A.I.Земля",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}\"@Игнистер\" Главной колоды{} в магазин",
                        "когда {C:joy_normal}\"@Игнистер\"{} использован как {C:attention}материал",
                    },
                    {
                        "Если у вас есть {C:attention}Джокеры{} с {C:attention}#2#{} разными {C:attention}Атрибутами{} в конце раунда,",
                        "{C:attention}изгоняет{} всех {C:joy_normal}Киберсов{} до выбора {C:attention}Блайнда{}",
                        "но ослабляет всех не-{C:joy_normal}Киберсов{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ignis = "@Игнистер",
        }
    },
}
