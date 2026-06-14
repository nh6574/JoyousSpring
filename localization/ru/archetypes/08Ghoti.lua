return {
    descriptions = {
        Joker = {
            j_joy_fish_keaf = {
                name = "{C:joy_effect}Кеаф, Мрак Гхоти",
                text = {
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{} и",
                        "{C:attention}воскрешает #1#{} {C:joy_synchro}Синхро{}",
                    },
                },
            },
            j_joy_fish_paces = {
                name = "{C:joy_effect}Пейсес, Свет Гхоти",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек",
                    },
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
            },
            j_joy_fish_shif = {
                name = "{C:joy_effect}Шиф, Фея Гхоти",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                    },
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
            },
            j_joy_fish_zep = {
                name = "{C:joy_effect}Зеп, Рубин Гхоти",
                text = {
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{} и",
                        "{C:attention}воскрешает #1#{} {C:joy_normal}Главную колоду{} {C:joy_normal}\"Гхоти\"{}",
                    },
                },
            },
            j_joy_fish_ixeep = {
                name = "{C:joy_effect}Иксип, Знаменье Гхоти",
                text = {
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Босс Блайнд{} и",
                        "создаёт {C:attention}#1#{} {C:joy_normal}Главную колоду{} {C:joy_normal}\"Гхоти\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
            },
            j_joy_fish_eanoc = {
                name = "{C:joy_effect}Эанок, Часовой Гхоти",
                text = {
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}\"Гхоти\"{}",
                        "в {C:joy_spell}Экстра колоду{} после возвращения из",
                        "{C:attention}изгнания{} {C:attention}#2#{} раз",
                        "{C:inactive}(Нужно место) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_psiics = {
                name = "{C:joy_effect}Псиикс, Лунный Свет Гхоти",
                text = {
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Босс Блайнд{} и {C:attention}воскрешает{} {C:attention}#1#{}",
                        "{C:joy_synchro}Тюнера{} {C:attention}Джокера{} как {C:dark_edition}Негатив{}",
                    },
                },
            },
            j_joy_fish_snopios = {
                name = "{C:joy_effect}Снопиос, Тень Гхоти",
                text = {
                    {
                        "Эта карта и {C:attention}#1#{} карта в области расходников",
                        "{C:attention}изгоняются{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                    {
                        "Создаёт {C:joy_spell}\"Самые Далёкие, Глубочайшие Пучины\"{}",
                        "после возвращения из {C:attention}изгнания{} {C:attention}#2#{} раз",
                        "{C:inactive}(Нужно место) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_arionpos = {
                name = "{C:joy_synchro}Арионпос, Змей Гхоти",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждую карту",
                        "{C:attention}изгнанную{} в этом забеге",
                        "{C:inactive}(Сейчас{} {C:chips}+#2#{} {C:inactive}Фишек){}",
                    },
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{} и",
                        "добавляет {C:attention}#3#{} {C:joy_normal}\"Гхоти\"{} в {C:joy_spell}Экстра колоду{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Рыба{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_askaan = {
                name = "{C:joy_synchro}Аскан, Двурогий Гхоти",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую карту",
                        "{C:attention}изгнанную{} в этом забеге",
                        "{C:inactive}(Сейчас{} {C:mult}+#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Эта карта и не-{C:joy_normal}\"Гхоти\"{} {C:attention}Джокер{}",
                        "{C:attention}изгоняются{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:red}Редкий{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_guoglim = {
                name = "{C:joy_synchro}Гуглим, Копьё Гхоти",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждую карту",
                        "{C:attention}изгнанную{} в этом забеге",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "{C:attention}Воскрешает{} как можно больше разных {C:joy_normal}Рыб{}",
                        "{C:attention}Джокеров{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:red}Редкий{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_deepbeyond = {
                name = "{C:joy_synchro}Гхоти Из Глубин",
                text = {
                    {
                        "Эта карта и все другие не-{C:joy_normal}\"Гхоти\"{} {C:attention}Джокеры{}",
                        "{C:attention}изгоняются{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Рыбы{} {C:joy_synchro}Тюнера{} +",
                    "{C:attention}1{} {C:red}Редкий{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_depths = {
                name = "{C:joy_spell}Самые Далёкие, Глубочайшие Пучины",
                text = {
                    {
                        "{C:money}+$#1#{} каждый раз, когда карта",
                        "{C:attention}изгоняется",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_fish = "Гхоти",
        }
    }
}
