return {
    descriptions = {
        Joker = {
            j_joy_boarder = {
                name = "{C:joy_effect}Инспектор Постоялец",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждого {C:joy_spell}Экстра колода{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "{C:blue}Руки{} равны количество типов {C:joy_spell}Экстра колоды{} + 1",
                        "Нет повторяющихся типов рук",
                        "{C:joy_normal}Главная колода{} {C:attention}Джокеры{} ослаблены",
                        "{C:inactive}(Кроме \"Инспектор Постоялец\"){}",
                    },
                },
            },
            j_joy_grenmaju = {
                name = "{C:joy_effect}Грен Мажу Да Эйза",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждую карту",
                        "{C:attention}изгнанную{} за это забег",
                        "{C:inactive}(Сейчас{} {C:chips}+#2#{} {C:inactive}Фишек){}",
                    },
                },
            },
            j_joy_rhino = {
                name = "{C:joy_effect}Дьявольский Носорог Воин",
                text = {
                    {
                        "Отправляет {C:attention}#1#{} {C:joy_normal}Демонов{} в {C:attention}GY{} и",
                        "{C:attention}воскрешает #2#{} {C:joy_normal}Демона{} при использовании",
                        "как {C:attention}материал{}",
                    },
                }
            },
            j_joy_tourguide = {
                name = "{C:joy_effect}Экскурсовод Из Подземного Мира",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:dark_edition}Негативного{} {C:joy_normal}Главная колода{}",
                        "{C:blue}Обычного{} или {C:green}Необычного{} {C:joy_normal}Демона{} при {C:attention}входе в игру{}",
                    },
                }
            },
            j_joy_heavenlyprison = {
                name = "{C:joy_effect}Владыка Небесной Тюрьмы",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя,",
                        "даёт дополнительный {X:mult,C:white}X#2#{} Множителя за каждую {C:joy_trap}Ловушку{}",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#3#{} {C:inactive}Множителя)",
                    },
                    {
                        "{C:joy_trap}Ловушки{} не {C:attention}переворачиваются{} в рубашку сами",
                        "и их {C:joy_effect}ПЕРЕВОРОТ{} способности активируются при выборе {C:attention}Блайнда{}",
                    },
                }
            },
            j_joy_backup = {
                name = "{C:joy_effect}Секретарь-Замена",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}Киберса{} в {C:joy_spell}Экстра колоду{} при использовании как {C:attention}материал{}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}Киберс{}",
                    },
                }
            },
            j_joy_wizard = {
                name = "{C:joy_effect}Киберс Волшебник",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждого {C:joy_normal}Киберса{}",
                        "{C:inactive}(Сейчас {C:chips}+#2#{} {C:inactive}Фишек)",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}Киберс{}",
                    },
                }
            },
            j_joy_formud = {
                name = "{C:joy_effect}Формуд Скиппер",
                text = {
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_link}Линка{}",
                    },
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}Главная колода{} {C:red}Редкого{} {C:joy_normal}Киберса{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Киберса{}",
                        "{C:inactive}(Нужно место)",
                    },
                }
            },
            j_joy_procession = {
                name = "{C:joy_effect}Процессия Чайной Банки",
                text = {
                    {
                        "Каждый {C:attention}Джокер{} в рубашке даёт {X:mult,C:white}X#1#{} Множителя",
                    },
                    {
                        "{C:attention}Переворачивает{} всех {C:attention}Джокеров{} в рубашку при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Кроме \"Процессия Чайной Банки\"){}",
                    },
                }
            },
            j_joy_darkcat = {
                name = "{C:joy_effect}Тёмный Кот с Белым Хвостом",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Добавляет {C:attention}#2#{} {C:dark_edition}Негативных{} {C:attention}Удачливых{} {C:attention}2{} в вашу колоду",
                    },
                }
            },
            j_joy_dekoichi = {
                name = "{C:joy_effect}Дэкоити Заколдованный Паровоз",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя,",
                        "{C:mult}+#2#{} за каждого {C:joy_normal}Обычного{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас {C:mult}+#3#{}{C:inactive} Множителя)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:attention}+#4#{} размер руки в этом раунде,",
                        "{C:attention}+#5#{} за каждого {C:joy_normal}Обычного{} {C:attention}Джокера{} затем",
                        "создаёт {C:attention}#6#{} {C:dark_edition}Негативных{} {C:joy_normal}\"Бокоити Страшный Вагон\"{}",
                    },
                }
            },
            j_joy_bokoichi = {
                name = "{C:joy_normal}Бокоити Страшный Вагон",
                text = {
                    {
                        "{E:1}Грузовой вагон, который предназначен исключительно для Дэкоити. Он может{}",
                        "{E:1}перевозить что угодно, но большая часть груза прибывает сломанной.{}",
                    },
                }
            },
            j_joy_desertapir = {
                name = "{C:joy_effect}Пустынный Тапир",
                text = {
                    {
                        "{C:money}+$#1#{} в конце раунда",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Переворачивает {C:attention}#2#{} случайных {C:attention}Джокеров{} лицом вверх",
                    },
                }
            },
            j_joy_searchlight = {
                name = "{C:joy_effect}Прожектормен",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя,",
                        "получает {C:mult}+#2#{} Множителя за каждого {C:attention}Джокера{} {C:attention}перевёрнутого{} лицом вверх",
                        "{s:0.9,C:inactive}(Получает даже в рубашке)",
                        "{C:inactive}(Сейчас {C:mult}+#3# {C:inactive}Множителя)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:attention}Переворачивает{} всех {C:attention}Джокеров{} лицом вверх",
                    },
                    {
                        "{C:green}#4# из #5#{} шанс {C:attention}перевернуться{} при выборе {C:attention}Блайнда{}",
                    },
                }
            },
            j_joy_sternmystic = {
                name = "{C:joy_effect}Суровая Мистика",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек,",
                        "получает {C:chips}+#2#{} Фишек за каждую игральную карту {C:attention}перевёрнутую{}",
                        "{s:0.9,C:inactive}(Получает даже в рубашке)",
                        "{C:inactive}(Сейчас {C:chips}+#3# {C:inactive}Фишек)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:attention}Переворачивает{} все карты в руке",
                    },
                    {
                        "{C:green}#4# из #5#{} шанс {C:attention}перевернуться{} при выборе {C:attention}Блайнда{}",
                    },
                }
            },
            j_joy_mof = {
                name = "{C:joy_effect}Маг Веры",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждое {C:joy_spell}Полевое заклинание{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: Создаёт {C:attention}#3#{} {C:dark_edition}Негативную{} копию {C:joy_spell}Полевого заклинания{} в {C:attention}GY{}",
                    },
                }
            },
            j_joy_mask = {
                name = "{C:joy_effect}Маска Тьмы",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую {C:joy_trap}Ловушку{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:attention}Воскрешает #3#{} {C:joy_trap}Ловушку{}",
                    },
                }
            },
            j_joy_angraecum = {
                name = "{C:joy_effect}Зонт Ангрекум",
                text = {
                    {
                        "{C:attention}Воскрешает #1#{} не-{C:joy_synchro}Тюнер{} как {C:dark_edition}Негативного{} и ослабленного",
                        "и добавляет {C:attention}#2#{} {C:joy_synchro}Синхро{} в магазин при {C:attention}входе в игру{}",
                    },
                }
            },
            j_joy_eater = {
                name = "{C:joy_effect}Пожиратель Миллионов",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя каждый раз, когда {C:joy_spell}Экстра колода{} {C:attention}Джокер{} изгоняется",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "{C:attention}Изгоняет #3#{} неослабленных {C:joy_spell}Экстра колода{} {C:attention}Джокеров{} в конце раунда",
                        "до выбора {C:attention}Босс Блайнда{}",
                    },
                }
            },
            j_joy_miradora = {
                name = "{C:joy_effect}Небесный Зефир - Мирадора",
                text = {
                    {
                        "Ослабляет и превращает {C:attention}#1#{} случайного",
                        "{C:joy_spell}Экстра колода{} {C:attention}Джокера{} в {C:dark_edition}Негативного{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Каждый ослабленный {C:joy_spell}Экстра колода{} {C:attention}Джокер{}",
                        "даёт {X:mult,C:white}X#2#{} Множителя",
                    },
                }
            },
            j_joy_beautunaful = {
                name = "{C:joy_effect}Прекраснопринцесса Тунец",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}Рыбу{} при {C:attention}входе в игру{} и",
                        "при возвращении из {C:attention}изгнания{}",
                        "{C:inactive}(Нужно место)",
                    },
                }
            },
            j_joy_leaffish = {
                name = "{C:joy_effect}Безжизненная Рыба-Лист",
                text = {
                    {
                        "Отправляет {C:attention}#1#{} {C:joy_normal}Главная колода Рыбу{} в {C:attention}GY{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Продайте эту карту, чтобы {C:attention}воскресить #2#{} {C:joy_normal}Рыбу{}",
                        "{C:inactive}(Кроме \"Безжизненная Рыба-Лист\"){}",
                    },
                }
            },
            j_joy_ringowurm = {
                name = "{C:joy_effect}Рингокув, Дракон, Охраняющий Сто Яблок",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:dark_edition}Негативного{} {C:joy_synchro}Тюнер{} {C:joy_token}\"Токен Ста Яблок\"{}",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}Обычный{} {C:attention}Джокер{}",
                    },
                }
            },
            j_joy_token_ringo = {
                name = "{C:joy_token}Токен Ста Яблок",
                text = {
                    {
                        "Эта карта может быть использована как любой {C:joy_token}Токен{}",
                    },
                }
            },
            j_joy_stormshooter = {
                name = "{C:joy_effect}Штормовой Стрелок",
                text = {
                    {
                        "Создаёт как можно больше {C:planet}Планет{} для руки подсчёта",
                        "если незасчитанная карта сыграна в этой {C:attention}колонне{} карты",
                        "Эта карта должна быть в {C:attention}колонне #1#{} чтобы использовать эту способность",
                        "{C:inactive}(Меняется каждый раунд){}",
                        "{C:inactive}(Сейчас в {C:attention}колонне #2#{}{C:inactive})",
                    },
                }
            },
            j_joy_ghostbird = {
                name = "{C:joy_effect}Птица-Призрак Очарования",
                text = {
                    {
                        "Сыгранные карты в этой {C:attention}колонне{} карты уничтожаются после подсчёта",
                        "{C:inactive}(Сейчас в {C:attention}колонне #1#{}{C:inactive})",
                    },
                    {
                        "Получает способность в зависимости от {C:attention}колонны{}",
                        "{V:1}1: Засчитанная карта в этой {C:attention}колонне{} {V:1}получает {C:chips}+#2#{} {V:1}Фишек{}",
                        "{V:1}и не уничтожается способностью этой карты",
                        "{V:2}3: Повторно активирует засчитанную карту в этой {C:attention}колонне{V:2} дважды",
                        "{V:3}5: Сыгранная карта в этой {C:attention}колонне{} {V:3}считается для подсчёта{}",
                    },
                }
            },
            j_joy_tiamaton = {
                name = "{C:joy_effect}Железный Дракон Тиаматон",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждую уничтоженную игральную карту",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)",
                    },
                    {
                        "Сыгранные карты в этой {C:attention}колонне{} карты уничтожаются после подсчёта",
                        "{C:inactive}(Все сыгранные карты если колонна 6+)",
                        "{C:inactive}(Сейчас в {C:attention}колонне #3#{}{C:inactive})",
                    },
                }
            },
            j_joy_zenoguitar = {
                name = "{C:joy_effect}Рок-Группа Ксеногитара",
                text = {
                    {
                        "Когда эта карта отправлена в {C:attention}GY{}",
                        "отправляет {C:attention}#1#{} {C:joy_normal}Рок{} {C:attention}Джокеров{} в {C:attention}GY{}",
                        "затем {C:attention}воскрешает #2#{} {C:joy_normal}Рок{} {C:attention}Джокера{}",
                    },
                    {
                        "Добавляет {C:attention}#3# Улучшенных{} {C:diamonds}Бубновых{} карт в колоду",
                        "при использовании как {C:attention}материал{}"
                    },
                    {
                        "Не может быть {C:attention}воскрешён{}",
                    },
                }
            },
            j_joy_revgolem = {
                name = "{C:joy_effect}Голем Воскрешения",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:diamonds}Бубновых{} карт со случайной {C:attention}Печатью{} в колоду",
                        "и создаёт {C:attention}#2#{} {C:dark_edition}Негативных{} Ослабленных {C:joy_effect}\"Голем Воскрешения\"{}",
                        "при использовании как {C:attention}материал{}"
                    }
                }
            },
            j_joy_tackcrusader = {
                name = "{C:joy_effect}Таранный Крестоносец",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую {C:diamonds}Бубну{} {C:attention}раскопанную{} за это забег",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать #3#{} {C:joy_normal}Рок{} {C:attention}Джокера{}",
                        "чтобы добавить {C:attention}#4# Тиражных{} {C:diamonds}Бубновых{} карт в колоду",
                        "и перевернуть всех {C:attention}Джокеров{} лицом вверх"
                    },
                }
            },
            j_joy_doki = {
                name = "{C:joy_effect}Доки Доки",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждую {C:diamonds}Бубну{} {C:attention}раскопанную{} за это забег",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "Раз за анте, вы можете {C:attention}пожертвовать #3#{} {C:joy_normal}Рок{} {C:attention}Джокера{}",
                        "чтобы создать {C:attention}#4#{} {C:joy_normal}Главная колода Рок{} {C:attention}Джокеров{}",
                        "{C:inactive}(Нужно место)"
                    },
                }
            },
            j_joy_blockdragon = {
                name = "{C:joy_effect}Блок-Дракон",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Рок{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{X:mult,C:white}X#3#{} дополнительного Множителя за каждую {C:diamonds}Бубну{} {C:attention}раскопанную{} за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#4#{}{C:inactive} Множителя)"
                    },
                    {
                        "Если эта карта используется как {C:attention}материал{} когда есть",
                        "{C:attention}#5#{} или больше {C:joy_normal}Рок{} {C:attention}Джокеров{} в {C:attention}GY{},",
                        "создаёт {C:attention}#6#{} {C:dark_edition}Негативных{} {C:blue}Обычных{} или {C:green}Необычных{} {C:joy_normal}Главная колода{}",
                        "{C:joy_normal}Рок{} {C:attention}Джокеров{} но удаляет всех {C:joy_normal}Рок{} {C:attention}Джокеров{} из {C:attention}GY{}"
                    },
                }
            },
            j_joy_elfobia = {
                name = "{C:joy_effect}Фея-Призрак Эльфобия",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждого {C:joy_wind}WIND{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "Увеличивает все указанные {C:green}шансы{} на {C:joy_wind}WIND{} {C:attention}Джокерах{}",
                        "навсегда на {C:attention}#3#{} при выборе {C:attention}Босс Блайнда{}"
                    },
                    {
                        "Если у вас есть {C:joy_effect}\"Мистическая Фея Эльфурия\"{},",
                        "только {C:joy_wind}WIND{} {C:attention}Джокеры{} могут быть отправлены в {C:attention}GY{}"
                    }
                }
            },
            j_joy_elfuria = {
                name = "{C:joy_effect}Мистическая Фея Эльфурия",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_wind}WIND{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Прикрепляет {C:attention}#3# материала{} к каждому {C:joy_xyz}Xyz{}",
                        "при выборе {C:attention}Босс Блайнда{}"
                    },
                    {
                        "Если у вас есть {C:joy_effect}\"Фея-Призрак Эльфобия\"{},",
                        "только {C:joy_wind}WIND{} {C:attention}Джокеры{} могут появляться в магазине",
                    }
                }
            },
            j_joy_lindbloom = {
                name = "{C:joy_effect}Линдблум",
                text = {
                    {
                        "{C:attention}Джокеры{} каждый даёт {X:mult,C:white}X#1#{} Множителя, если они имеют общий",
                        "{C:attention}Тип{} и {C:attention}Атрибут{} с другим {C:attention}Джокером{}"
                    },
                }
            },
            j_joy_genomix = {
                name = "{C:joy_effect}Боец Геномикс",
                text = {
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "{C:joy_synchro}Синхро{} призванное с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Множителя за каждого {s:0.9,C:attention}Джокера{s:0.9} у вас",
                        "{s:0.9}или в {s:0.9,C:attention}GY{s:0.9} с тем же {s:0.9,C:attention}Типом{s:0.9} и {s:0.9,C:attention}Атрибутом{}"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждого {C:attention}Джокера{} у вас",
                    "или в {C:attention}GY{} с тем же {C:attention}Типом{} и {C:attention}Атрибутом{}",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                },
            },
            j_joy_maxsix = {
                name = "{C:joy_effect}Максимум Шесть",
                text = {
                    {
                        "{C:green}#1# из #2#{} дать {X:mult,C:white}X#3#{} Множителя",
                    },
                    {
                        "{C:green}#4# из #5#{} шанс стать {C:dark_edition}Негативным{}",
                        "при выборе {C:attention}Блайнда{}"
                    },
                }
            },
            j_joy_stpolice = {
                name = "{C:joy_effect}Космическо-Временная Полиция",
                text = {
                    {
                        "Эта карта и другой {C:joy_normal}Психик{} {C:attention}Джокер{} {C:attention}изгоняются{} в конце раунда",
                        "до выбора {C:attention}Босс Блайнда{} и возвращают {C:attention}#1#{} {C:attention}Джокера{}",
                        "{C:attention}изгнанного{} до {C:attention}Босс Блайнда{}"
                    },
                }
            },
            j_joy_wannabee = {
                name = "{C:joy_effect}ХочуБыть!",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верхних {C:attention}#1#{}:",
                        "Вытянуть {C:attention}#2#{} карту(ы) за каждую карту с рангом {C:attention}2{}",
                    },
                }
            },
            j_joy_merchant = {
                name = "{C:joy_effect}Магический Торговец",
                text = {
                    {
                        "{C:attention}Переворачивается{} в конце раунда после того, как #1# или более карт",
                        "{C:attention}раскопаны{} {C:inactive}(даже если в рубашке)",
                        "{C:inactive}(#2# осталось){}"
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: При выборе {C:attention}Блайнда{},",
                        "{C:attention}раскопки{} пока не найдёте карту вашей самой частой масти",
                        "вытянуть карты равные количеству {C:attention}раскопанных{} карт до этой карты включительно",
                        "{C:inactive}(Сейчас {V:1}#3#{}{C:inactive}) (Меняется в конце раунда)"
                    },
                }
            },
            j_joy_catoblepas = {
                name = "{C:joy_effect}Катоблепас и Ведьма Судьбы",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Заклинателя{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:green}#3# из #4#{} шанс {C:attention}изгнать #5#{} {C:joy_normal}Заклинателя{}",
                        "в конце раунда до выбора {C:attention}Босс Блайнда{}",
                        "и навсегда удвоить его указанные {C:green}шансы{}"
                    }
                }
            },
            j_joy_coupleofaces = {
                name = "{C:joy_effect}Пара Тузов",
                text = {
                    {
                        "Если сыгранная рука содержит {C:attention}Пару{},",
                        "применить следующие эффекты:",
                        "{X:mult,C:white}X#1#{} Множителя",
                        "{C:green}#2# из #3#{} шанс для засчитанных {C:attention}Тузов{} дать {X:mult,C:white}X#1#{} Множителя",
                        "{C:green}#4# из #5#{} шанс повысить уровень сыгранной руки",
                        "{C:green}#6# из #7#{} превратить каждую засчитанную карту в сыгранной руке",
                        "в {C:attention}Золотую Печать Удачливого Туза{}",
                    },
                }
            },
            j_joy_linkslayer = {
                name = "{C:joy_effect}Линкоубийца",
                text = {
                    {
                        "Каждый {C:joy_normal}Киберс{} даёт {C:chips}+#1#{} Фишек",
                        "за каждый использованный сброс",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "Бесплатно и не нужно место",
                        "при получении из магазина",
                        "если у вас есть {C:joy_normal}Киберс{}"
                    }
                }
            },
        }
    },
}
