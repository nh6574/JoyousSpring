return {
    descriptions = {
        Joker = {
            j_joy_adaman_analyzer = {
                name = "{C:joy_effect}Адамансипатор Анализатор",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верха {C:attention}#1#{}:",
                        "Сыгранные {C:diamonds}Бубны{} дают {C:chips}+#2#{} Фишек в этом раунде",
                        "за каждый {C:diamonds}Бубен{} раскопанный",
                        "{C:inactive}(Сейчас {C:chips}+#3#{}{C:inactive} Фишек)"
                    },
                    {
                        "Раз за анте, создаёт {C:attention}#4#{} {C:joy_normal}Скалу Главной колоды{}",
                        "после того, как {C:attention}#5#{} рук содержащих {C:diamonds}Бубновый{} {C:attention}Флеш{} разыграно",
                        "{C:inactive}(Нужно место) {C:inactive}(#6# осталось){}"
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}Скала{} {C:attention}Джокер{}"
                    },
                }
            },
            j_joy_adaman_researcher = {
                name = "{C:joy_effect}Адамансипатор Исследователь",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верха {C:attention}#1#{}:",
                        "Сыгранные {C:diamonds}Бубны{} дают {C:money}+$#2#{} в этом раунде",
                        "за каждый {C:diamonds}Бубен{} раскопанный",
                        "{C:inactive}(Сейчас {C:money}+$#3#{}{C:inactive})"
                    },
                    {
                        "Раз за анте, создаёт {C:attention}#4#{} {C:joy_normal}Скалу Главной колоды{}",
                        "после того, как {C:attention}#5#{} рук содержащих {C:diamonds}Бубновый{} {C:attention}Флеш{} разыграно",
                        "{C:inactive}(Нужно место) {C:inactive}(#6# осталось){}"
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}Скала{} {C:attention}Джокер{}"
                    },
                }
            },
            j_joy_adaman_seeker = {
                name = "{C:joy_effect}Адамансипатор Искатель",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верха {C:attention}#1#{}:",
                        "Сыгранные {C:diamonds}Бубны{} дают {C:mult}+#2#{} Множителя в этом раунде",
                        "за каждый {C:diamonds}Бубен{} раскопанный",
                        "{C:inactive}(Сейчас {C:mult}+#3#{}{C:inactive} Множителя)"
                    },
                    {
                        "Раз за анте, создаёт {C:attention}#4#{} {C:joy_normal}Скалу Главной колоды{}",
                        "после того, как {C:attention}#5#{} рук содержащих {C:diamonds}Бубновый{} {C:attention}Флеш{} разыграно",
                        "{C:inactive}(Нужно место) {C:inactive}(#6# осталось){}"
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}Скала{} {C:attention}Джокер{}"
                    },
                }
            },
            j_joy_adaman_crysdragite = {
                name = "{C:joy_effect}Адамансипатор Кристалл - Драгит",
                text = {
                    {
                        "Каждый {C:diamonds}Бубен{} в руке даёт",
                        "{C:chips}+#1#{} Фишек за каждую {C:joy_normal}Скалу{}",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "{C:joy_synchro}Синхро{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:chips}+#1#{s:0.9} Фишек за каждый {s:0.9,C:diamonds}Бубен{s:0.9} в колоде"
                    }
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Фишек за каждый {C:diamonds}Бубен{} в колоде",
                    "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                },
            },
            j_joy_adaman_crysraptite = {
                name = "{C:joy_effect}Адамансипатор Кристалл - Раптит",
                text = {
                    {
                        "Каждый {C:diamonds}Бубен{} в руке даёт",
                        "{C:money}+$#1#{} за каждую {C:joy_normal}Скалу{}",
                        "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "{C:joy_synchro}Синхро{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:money}+$#1#{s:0.9} в конце раунда за каждый {s:0.9,C:diamonds}Бубен{s:0.9} в колоде"
                    }
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} в конце раунда за каждый {C:diamonds}Бубен{} в колоде",
                    "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                },
            },
            j_joy_adaman_crysleonite = {
                name = "{C:joy_effect}Адамансипатор Кристалл - Леонит",
                text = {
                    {
                        "Каждый {C:diamonds}Бубен{} в руке даёт",
                        "{C:mult}+#1#{} Множителя за каждую {C:joy_normal}Скалу{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:joy_synchro}Синхро{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Множителя за каждый {s:0.9,C:diamonds}Бубен{s:0.9} в колоде"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждый {C:diamonds}Бубен{} в колоде",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                },
            },
            j_joy_adaman_dragite = {
                name = "{C:joy_synchro}Адамансипатор Восставший - Драгит",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верха {C:attention}#1#{}:",
                        "{X:chips,C:white}X#2#{} дополнительных Фишек в этом раунде",
                        "за каждый {C:diamonds}Бубен{} раскопанный",
                        "и создаёт {C:attention}#3#{} {C:joy_normal}Скалу Главной колоды{} если {C:attention}#1#{} или более раскопано",
                        "{C:inactive}(Сейчас {X:chips,C:white}X#4#{}{C:inactive} Фишек)",
                    },
                    {
                        "Сыгранные {C:diamonds}Бубны{} навсегда получают",
                        "{C:chips}+#5#{} дополнительных Фишек при нахождении в руке"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Скала{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_leonite = {
                name = "{C:joy_synchro}Адамансипатор Восставший - Леонит",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верха {C:attention}#1#{}:",
                        "{X:mult,C:white}X#2#{} дополнительного Множителя в этом раунде",
                        "за каждый {C:diamonds}Бубен{} раскопанный",
                        "и создаёт {C:attention}#3#{} {C:joy_normal}Скалу Главной колоды{} если {C:attention}#1#{} или более раскопано",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#4#{}{C:inactive} Множителя)",
                    },
                    {
                        "Сыгранные {C:diamonds}Бубны{} навсегда получают",
                        "{C:mult}+#5#{} дополнительного Множителя при нахождении в руке"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Скала{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_raptite = {
                name = "{C:joy_synchro}Адамансипатор Восставший - Раптит",
                text = {
                    {
                        "{C:attention}Раскопки{} и проверка верха {C:attention}#1#{}:",
                        "{C:money}+$#2#{} за каждый {C:diamonds}Бубен{} раскопанный",
                        "и создаёт {C:attention}#3#{} {C:joy_normal}Скалу Главной колоды{} если {C:attention}#1#{} или более раскопано",
                    },
                    {
                        "Сыгранные {C:diamonds}Бубны{} навсегда получают",
                        "дополнительный {C:money}+$#4#{} при нахождении в руке в конце раунда"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Скала{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_laputite = {
                name = "{C:joy_spell}Адамансипатор Лапутит",
                text = {
                    {
                        "Каждая {C:joy_normal}Скала{} даёт {C:mult}+#1#{} Множителя",
                    },
                    {
                        "Добавляет случайную улучшенную {C:diamonds}Бубну{} в руку",
                        "при выборе {C:attention}Блайнда{}"
                    },
                    {
                        "Все карты {C:attention}раскопанные{} при выборе {C:attention}Блайнда{}",
                        "проверяются для способностей {C:joy_normal}\"Адамансипатор\"{}"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_adaman = "Адамансипатор",
        }
    }
}
