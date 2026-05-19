return {
    descriptions = {
        Joker = {
            j_joy_hazy_sphy = {
                name = "{C:joy_effect}Туманное Пламя Сфинкс",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верхних {C:attention}#1#{}:",
                        "Если среди них есть {C:diamonds}Бубны{}, сделать",
                        "случайного {C:attention}Джокера Вечным{}"
                    },
                    {
                        "{C:attention}Воскрешает 1{} {C:joy_fire}FIRE{} {C:attention}Джокера{}",
                        "как {C:attention}Вечного{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Не нужно место){}"
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    }
                }
            },
            j_joy_hazy_cerbe = {
                name = "{C:joy_effect}Туманное Пламя Цербер",
                text = {
                    {
                        "Если {C:attention}пожертвован{}, создаёт {C:dark_edition}Негативного{}",
                        "{C:attention}Вечного{} {C:joy_effect}\"Туманное Пламя Цербер\"{}",
                        "и добавляет {C:attention}1 Вечного{} {C:joy_spell}Экстра колода{} {C:attention}Джокера{}",
                        "в магазин"
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    }
                }
            },
            j_joy_hazy_grif = {
                name = "{C:joy_effect}Туманное Пламя Грифон",
                text = {
                    {
                        "Каждый {C:joy_fire}FIRE{} {C:attention}Джокер{} даёт {C:mult}+#1#{} Множителя и",
                        "{X:mult,C:white}X#2#{} Множителя если {C:attention}Вечный{}"
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    }
                }
            },
            j_joy_hazy_hydra = {
                name = "{C:joy_effect}Туманное Пламя Гидра",
                text = {
                    {
                        "Если {C:attention}Вечный{}, добавляет {C:joy_xyz}\"Туманное Пламя Базилтрис\"{}",
                        "в {C:joy_spell}Экстра колоду{}",
                        "или другого случайного {C:joy_xyz}Xyz{} если уже есть",
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    },
                    {
                        "{C:joy_xyz}Xyz{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Прикрепляет {s:0.9,C:attention}материал{}",
                        "{s:0.9}за каждого {s:0.9,C:attention}Вечного{} {s:0.9,C:attention}Джокера{}",
                        "{s:0.9}при победе над {s:0.9,C:attention}Босс Блайндом{}",
                    },
                },
                joy_transfer_ability = {
                    "Прикрепляет {C:attention}материал{}",
                    "за каждого {C:attention}Вечного{} {C:attention}Джокера{}",
                    "при победе над {C:attention}Босс Блайндом{}",
                }
            },
            j_joy_hazy_hyppo = {
                name = "{C:joy_effect}Туманное Пламя Гиппогриф",
                text = {
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать 1{}",
                        "{C:attention}Вечного Джокера{} чтобы получить {C:money}+$#1#{}",
                        "и превратить случайного {C:attention}Джокера в Вечного{}"
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    },
                }
            },
            j_joy_hazy_manti = {
                name = "{C:joy_effect}Туманное Пламя Мантикора",
                text = {
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать 1{}",
                        "{C:attention}Вечного Джокера{} чтобы {C:attention}воскресить 1{}",
                        "{C:joy_normal}Главная колода \"Туманное Пламя\"{}",
                        "или {C:joy_fire}FIRE{} если нет"
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    },
                }
            },
            j_joy_hazy_pery = {
                name = "{C:joy_effect}Туманное Пламя Перитон",
                text = {
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать 1{}",
                        "{C:attention}Вечного Джокера{} чтобы создать {C:attention}2{}",
                        "{C:attention}Вечных {C:joy_normal}Главная колода \"Туманное Пламя\"{}",
                    },
                    {
                        "Может быть использован как {C:attention}материал{}",
                        "даже если {C:attention}Вечный{}"
                    },
                }
            },
            j_joy_hazy_basil = {
                name = "{C:joy_xyz}Туманное Пламя Базилтрис",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:joy_xyz}Xyz материал{}",
                        "{C:inactive}(Сейчас{} {C:mult}+#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Прикрепляет {C:attention}материал{}",
                        "за каждого {C:attention}Вечного{} {C:attention}Джокера{}",
                        "при победе над {C:attention}Босс Блайндом{}",
                    },
                    {
                        "Получает следующие способности в зависимости от количества {C:joy_xyz}Xyz материалов{}:",
                        "{C:attention}5+{}: Получает {X:mult,C:white}X#3#{} Множителя за каждого",
                        "{C:attention}пожертвованного Вечного Джокера{} за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#4#{}{C:inactive} Множителя)",
                        "{C:attention}20+{}: {C:attention}Вечные Джокеры{} могут появляться в магазине",
                        "или, если уже могли, удаляет {C:attention}Портящегося{} и {C:attention}Арендного{}",
                        "{C:attention}50+{}: {C:attention}Вечные Джокеры{} в магазине становятся {C:dark_edition}Негативными{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:attention}Вечных Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_hazy = "Туманное Пламя",
        }
    }
}
