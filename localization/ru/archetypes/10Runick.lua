return {
    descriptions = {
        Joker = {
            j_joy_runick_hugin = {
                name = "{C:joy_fusion}Хугин Крылья Руник",
                text = {
                    {
                        "{C:attention}+#1#{} слот расходников",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:joy_spell}\"Фонтан Руник\"{}",
                        "и добавляет {C:attention}#3#{} {C:joy_normal}\"Руник\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:tarot}Таро{} карты",
                }
            },
            j_joy_runick_munin = {
                name = "{C:joy_fusion}Мунин Крылья Руник",
                text = {
                    {
                        "{C:attention}+#1#{} слот расходников",
                    },
                    {
                        "Добавляет {C:attention}#2#{} {C:joy_normal}\"Руник\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Получает {X:chips,C:white}X#3#{} Фишек за каждое {C:tarot}Таро{},",
                        "использованное во время {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас{} {X:chips,C:white}X#4#{} {C:inactive}Фишек){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:tarot}Таро{} карты",
                }
            },
            j_joy_runick_geri = {
                name = "{C:joy_fusion}Гери Клыки Руник",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_spell}\"Фонтан Руник\"{}",
                        "при {C:attention}входе в игру{} если есть на {C:attention}GY{}",
                        "и добавляет {C:attention}#2#{} {C:joy_normal}\"Руник\"{} в {C:joy_spell}Экстра колоду{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Продайте эту {C:attention}призванную{} карту, чтобы создать до",
                        "{C:attention}#3#{} {C:tarot}Таро{} карт",
                        "{C:inactive}(Нужно место)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:tarot}Таро{} карты",
                }
            },
            j_joy_runick_freki = {
                name = "{C:joy_fusion}Фреки Клыки Руник",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}\"Руник\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Добавляет {C:attention}#2#{} случайных {C:attention}игровых карт{}",
                        "когда {C:tarot}Таро{} карта используется во время {C:attention}Блайнда{}",
                    },
                    {
                        "Продайте эту {C:attention}призванную{} карту, чтобы создать до",
                        "{C:attention}#3#{} {C:tarot}Таро{} карт",
                        "{C:inactive}(Нужно место)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:tarot}Таро{} карты",
                }
            },
            j_joy_runick_sleipnir = {
                name = "{C:joy_fusion}Слейпнир Грива Руник",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}\"Руник\"{}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "{C:attention}Изгоняется{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:dark_edition}Негатив{} {C:tarot}Таро{} карт",
                        "когда возвращается из {C:attention}изгнания{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:tarot}Таро{} карты",
                }
            },
            j_joy_runick_fountain = {
                name = "{C:joy_spell}Фонтан Руник",
                text = {
                    {
                        "Создаёт как можно больше {C:tarot}Таро{} карт, использованных во время",
                        "этого {C:attention}Блайнда{}, в конце раунда",
                        "{C:inactive}(Удаляет Издания){}",
                    },
                    {
                        "Уничтожает {C:attention}#1#{} случайных {C:attention}игровых карт{}",
                        "в колоде при выборе {C:attention}Блайнда{}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_runick = "Руник",
        }
    }
}
