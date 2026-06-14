return {
    descriptions = {
        Joker = {
            j_joy_token_bee = {
                name = "{C:joy_token}Токен Битропера",
                text = {
                    {
                        "Эта карта может быть использована как любой {C:joy_token}Токен{}",
                    },
                },
            },
            j_joy_bee_scout = {
                name = "{C:joy_effect}Битропер Скаут Жучок",
                text = {
                    {
                        "Каждое {C:joy_normal}Насекомое{} даёт {C:mult}+#1#{} Множителя",
                    },
                    {
                        "Создаёт как можно больше {C:joy_effect}\"Битропер Скаут Жучок\"{}",
                        "при {C:attention}входе в игру{} {C:inactive}(Кроме \"Битропер Скаут Жучок\"){}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_bee_bomber = {
                name = "{C:joy_effect}Битропер Чешуйчатый Бомбардир",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого {C:joy_normal}Насекомого{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Вы можете {C:attention}пожертвовать 1{} {C:joy_normal}Насекомое{}",
                        "чтобы каждое {C:joy_normal}Насекомое{} давало {X:mult,C:white}X#3#{} Множителя в этом раунде"
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_bee_roller = {
                name = "{C:joy_effect}Битропер Штурмовой Роллер",
                text = {
                    {
                        "{C:money}+$#1#{} в конце раунда за каждого {C:joy_normal}Насекомого{}",
                        "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "Создаёт {C:attention}1{} {C:joy_normal}Главная колода \"Битропер\"{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_bee_flapper = {
                name = "{C:joy_effect}Битропер Лёгкий Хлопушка",
                text = {
                    {
                        "Продайте эту карту, чтобы применить {C:dark_edition}Тираж{}",
                        "к {C:joy_normal}Насекомому{} у вас",
                        "{C:inactive}(Кроме Негатива){}"
                    },
                    {
                        "{C:attention}Воскрешает до 2{} {C:joy_normal}Насекомых{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_bee_lancer = {
                name = "{C:joy_effect}Битропер Жалящий Копейщик",
                text = {
                    {
                        "Вы можете удалить всех {C:joy_normal}Насекомых{} из {C:attention}GY{} {C:inactive}(Мин. 5){}",
                        "чтобы добавить {C:attention}1{} {C:joy_normal}\"Битропера\"{} в {C:joy_spell}Экстра колоду{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Отправляет {C:attention}5{} {C:joy_normal}Насекомых{} в {C:attention}GY{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_bee_neptune = {
                name = "{C:joy_effect}Тяжёлый Битропер Могучий Нептун",
                text = {
                    {
                        "Удаляет {C:attention}3{} {C:joy_normal}Насекомых{} из {C:attention}GY{}",
                        "в конце раунда и, если это сделано, {C:attention}изгоняет{} себя",
                        "и любое количество {C:joy_normal}Насекомых{} пока не останется открытый слот {C:attention}Джокера{}",
                        "и до выбора {C:attention}Блайнда{}"
                    },
                    {
                        "Создаёт {C:attention}2{} {C:joy_normal}Главная колода \"Битропер\"{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}",
                    },
                    {
                        "Может быть получен из магазина даже если нет места,",
                        "если у вас есть другое {C:joy_normal}Насекомое{}",
                    }
                }
            },
            j_joy_bee_armor = {
                name = "{C:joy_link}Битропер Бронерог",
                text = {
                    {
                        "Отправляет {C:attention}3{} {C:joy_normal}Насекомых{} в {C:attention}GY{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Отправляет {C:attention}10{} {C:joy_normal}Насекомых{} в {C:attention}GY{}",
                        "при использовании как {C:attention}материал{} для {C:joy_normal}Насекомого{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Насекомых{}",
                    "Не нужно место",
                }
            },
            j_joy_bee_atlas = {
                name = "{C:joy_link}Гигантский Битропер Непобедимый Атлас",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждого {C:joy_normal}Насекомого{}",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать {C:attention}1{} {C:joy_effect}Эффект{} {C:joy_normal}Насекомое{}",
                        "чтобы создать как можно больше {C:joy_token}\"Токен Битропера\"{}",
                        "{C:inactive}(Нужно место)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:joy_normal}Насекомых{}",
                    "Не нужно место",
                }
            },
            j_joy_bee_saturnas = {
                name = "{C:joy_fusion}Битропер Жестокий Сатурн",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_normal}Главная колода Насекомое{}",
                        "когда {C:joy_normal}Насекомое{} {C:attention}изгоняется{}",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "Карты в {C:attention}GY{} считаются как у вас",
                        "для способностей {C:joy_normal}Насекомых{}",
                        "{C:inactive}(Только для оригинального типа){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Насекомых{}",
                    "Не нужно место",
                }
            },
            j_joy_bee_hercules = {
                name = "{C:joy_fusion}Ультра Битропер Абсолютный Геркулес",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "{C:attention}Воскрешает{} как можно больше {C:joy_normal}Насекомых{}",
                        "с разными именами в конце анте",
                        "{C:inactive}(Не нужно место){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:joy_normal}Насекомых{}",
                    "Не нужно место",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_bee = "Битроперы",
        }
    }
}
