return {
    descriptions = {
        Joker = {
            j_joy_mekk_avram = {
                name = "{C:joy_normal}Мекк-Рыцарь Аврам",
                text = {
                    {
                        "{E:1}\"Зацени ЭТО!\"{}",
                    },
                },
            },
            j_joy_mekk_red = {
                name = "{C:joy_effect}Мекк-Рыцарь Красная Луна",
                text = {
                    {
                        "Сыгранная карта в этой {C:attention}колонне{}",
                        "даёт {C:mult}+#1#{} Множителя, умноженного на её ранг",
                        "{C:inactive}(Сейчас в колонне{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_orange = {
                name = "{C:joy_effect}Мекк-Рыцарь Оранжевый Закат",
                text = {
                    {
                        "Разыгранная карта в этой {C:attention}колонне{}",
                        "учитывается для подсчёта очков",
                        "{C:inactive}(Сейчас в колонне{} {C:attention}#1#{}{C:inactive}){}",
                    },
                    {
                        "Получает {X:chips,C:white}X#2#{} Фишек каждый раз,",
                        "когда способность этой карты заставляет карту учитываться для подсчёта очков",
                        "{C:inactive}(Сейчас {X:chips,C:white}X#3#{}{C:inactive} Фишек)",
                    },
                },
            },
            j_joy_mekk_yellow = {
                name = "{C:joy_effect}Мекк-Рыцарь Жёлтая Звезда",
                text = {
                    {
                        "Сыгранная карта в этой {C:attention}колонне{}",
                        "даёт {C:money}+$#1#{}, умноженное на её ранг",
                        "{C:inactive}(Сейчас в колонне{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_green = {
                name = "{C:joy_effect}Мекк-Рыцарь Зелёный Горизонт",
                text = {
                    {
                        "Сыгранная карта в этой {C:attention}колонне{} имеет шанс {C:green}#1# из #2#{}",
                        "повторно активироваться количество раз, равное её рангу,",
                        "шанс увеличивается за каждого {C:joy_normal}\"Мекк-Рыцаря\"{}",
                        "{C:inactive}(Сейчас в колонне{} {C:attention}#3#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_blue = {
                name = "{C:joy_effect}Мекк-Рыцарь Голубое Небо",
                text = {
                    {
                        "Сыгранная карта в этой {C:attention}колонне{}",
                        "даёт {C:chips}+#1#{} Фишек, умноженное на её ранг",
                        "{C:inactive}(Сейчас в колонне{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_indigo = {
                name = "{C:joy_effect}Мекк-Рыцарь Индиго Затмение",
                text = {
                    {
                        "Получает способность в зависимости от {C:attention}колонны{}",
                        "{V:1}1: Все сыгранные карты в разыгранной руке повторно активируются один раз{}",
                        "{V:2}2:{} {C:chips}+#1#{} {V:2}Фишек{}",
                        "{V:3}3:{} {C:mult}+#2#{} {V:3}Множителя{}",
                        "{V:4}4:{} {X:mult,C:white}X#3#{} {V:4}Множителя{}",
                        "{V:5}5+:{} {C:money}+$#4#{} {V:5}в конце раунда{}",
                    },
                },
            },
            j_joy_mekk_purple = {
                name = "{C:joy_effect}Мекк-Рыцарь Пурпурная Ночь",
                text = {
                    {
                        "{C:attention}Изгоняет{} при выборе {C:attention}Блайнда{}",
                        "пока {C:attention}Босс Блайнд{} не будет побеждён, чтобы создать {C:attention}#1#{}",
                        "{C:joy_normal}Главную колоду \"Мекк-Рыцарь\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
            },
            j_joy_mekk_morningstar = {
                name = "{C:joy_link}Мекк-Рыцарь Утренней Звезды",
                text = {
                    {
                        "Сыгранная карта в соседних {C:attention}колоннах{}",
                        "даёт {X:mult,C:white}X#1#{} Множителя, если есть",
                        "{C:joy_normal}\"Мекк-Рыцарь\"{} в этой {C:attention}колонне{}",
                        "{C:inactive}(Сейчас в колоннах{} {C:attention}#2#{} {C:inactive}и{} {C:attention}#3#{}{C:inactive}){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{}",
                }
            },
            j_joy_mekk_spectrum = {
                name = "{C:joy_link}Мекк-Рыцарь Спектр Высший",
                text = {
                    {
                        "Способности {C:joy_normal}\"Мекк-Рыцаря\"{} применяются ко",
                        "всем разыгранным картам и {C:attention}колоннам",
                    },
                    {
                        "Раз за раунд, продайте {C:attention}#1#{} {C:joy_normal}\"Мекк-Рыцаря\"{}",
                        "чтобы создать {C:attention}#1#{} {C:dark_edition}Негатив{} {C:joy_normal}Главную колоду \"Мекк-Рыцарь\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:joy_normal}\"Мекк-Рыцаря\"{}",
                }
            },
            j_joy_mekkcrus_avramax = {
                name = "{C:joy_link}Мекк-Рыцарь Крусадия Аврамакс",
                text = {
                    {
                        "Немедленно выигрывает каждый {C:attention}Блайнд{}",
                    },
                    {
                        "Уничтожает себя после того, как количество",
                        "побеждённых {C:attention}Блайндов{} станет",
                        "равным {C:attention}материалам{}, использованным",
                        "для его {C:attention}призыва {C:inactive}(#1#/#2#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:joy_spell}Экстра колоду{} призванных {C:attention}Джокеров{}",
                }
            },
            j_joy_mekkleg_scars = {
                name = "{C:joy_spell}Шрамы Мирового Наследия",
                text = {
                    {
                        "Каждый {C:joy_normal}\"Мекк-Рыцарь\"{} даёт {C:mult}+#1#{} Множителя",
                    },
                    {
                        "Во время {C:attention}Блайнда{} вы можете {C:attention}пожертвовать #2#{}",
                        "{C:joy_normal}\"Мекк-Рыцаря\"{} чтобы получить {C:blue}+#3#{} Рук в этом раунде",
                    },
                    {
                        "Продайте эту карту, когда будет",
                        "{C:attention}#4# {C:joy_normal}\"Мекк-Рыцаря\"{} на {C:attention}GY",
                        "с разными именами,",
                        "чтобы выиграть текущий {C:attention}Блайнд{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mekk = "Мекк-Рыцарь",
        }
    }
}
