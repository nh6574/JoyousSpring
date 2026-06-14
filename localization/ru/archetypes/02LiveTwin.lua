return {
    descriptions = {
        Joker = {
            j_joy_ltwin_lilla = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Лил-ла",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:joy_effect}\"Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Ки-сикиль\"{}",
                        "при {C:attention}входе в игру{}, если нет в наличии",
                        "{C:inactive}(Нужно место){}",
                    },
                },
            },
            j_joy_ltwin_kisikil = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Ки-сикиль",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:joy_effect}\"Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Лил-ла\"{}",
                        "при {C:attention}входе в игру{}, если нет в наличии",
                        "{C:inactive}(Нужно место){}",
                    },
                },
            },
            j_joy_ltwin_lilla_treat = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Лил-ла Трит",
                text = {
                    {
                        "{C:red}+#1#{} сброс каждый раунд",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"Ки-сикиль\"{}",
                    },
                },
            },
            j_joy_ltwin_lilla_sweet = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Лил-ла Свит",
                text = {
                    {
                        "{C:blue}+#1#{} рук каждый раунд",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"Ки-сикиль\"{}",
                    },
                },
            },
            j_joy_ltwin_kisikil_frost = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Ки-сикиль Фрост",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"Лил-ла\"{}",
                    },
                },
            },
            j_joy_etwin_kisikil_deal = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ки-сикиль Дил",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                        "{C:attention}+#2#{} размер руки",
                    },
                    {
                        "Отправляет {C:attention}#3#{} {C:joy_normal}Главную колоду \"Лил-ла\"{} на {C:attention}GY{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Добавляет {C:attention}#4#{} {C:joy_normal}\"Evil{C:joy_normal,f:joy_font}★{}{C:joy_normal}Twin\"{} в {C:joy_spell}Экстра колоду{}",
                        "при использовании как {C:attention}материал{} для {C:joy_link}Линка{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Ки-сикиль\"{}"
                }
            },
            j_joy_etwin_kisikil = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ки-сикиль",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                    },
                    {
                        "Навсегда получает {C:attention}+#2#{} размер руки, если у",
                        "вас есть {C:joy_normal}\"Лил-ла\"{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Воскрешает #3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Лил-ла\"{} (или {C:attention}#3#{}",
                        "{C:joy_normal}\"Лил-ла\"{} если нет) при выборе {C:attention}Блайнда{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "включая {C:joy_normal}\"Ки-сикиль\"{}"
                }
            },
            j_joy_etwin_lilla = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Лил-ла",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек",
                    },
                    {
                        "{C:money}+$#2#{} если у вас есть {C:joy_normal}\"Ки-сикиль\"{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{C:attention}Воскрешает #3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ки-сикиль\"{} (или {C:attention}#3#{}",
                        "{C:joy_normal}\"Ки-сикиль\"{} если нет) при выборе {C:attention}Блайнда{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "включая {C:joy_normal}\"Лил-ла\"{}"
                }
            },
            j_joy_etwin_kisikil_lilla = {
                name = "{C:joy_effect}Evil{C:joy_effect,f:joy_font}★{}{C:joy_effect}Twins Ки-сикиль и Лил-ла",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждую {C:joy_normal}\"Лил-ла\"{} на {C:attention}GY{}",
                        "{C:mult}+#2#{} Множителя за каждого {C:joy_normal}\"Ки-сикиль\"{} на {C:attention}GY{}",
                        "{C:inactive}(Сейчас{} {C:chips}+#4#{} {C:inactive}Фишек{} {C:mult}+#5#{} {C:inactive}Множителя){}",
                        "{C:red}-#3#{} сброс за каждого {C:joy_link}Линка{} при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Не может быть {C:attention}воскрешён{}",
                    },
                },
            },
            j_joy_etwin_sunny = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin's Trouble Sunny",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек",
                        "{C:mult}+#2#{} Множителя",
                    },
                    {
                        "{C:attention}Возвращается{} в {C:joy_spell}Экстра колоду{} и {C:attention}воскрешает{}",
                        "{C:attention}#3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ки-сикиль\"{} и/или {C:attention}#3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Лил-ла\"{}",
                        "в конце раунда {C:inactive}(Не нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin\"{}"
                }
            },
            j_joy_ltwin_channel = {
                name = "{C:joy_spell}Live{C:joy_spell,f:joy_font}☆{}{C:joy_spell}Twin Channel",
                text = {
                    {
                        "Во время {C:attention}Блайнда{} вы можете {C:attention}пожертвовать #1#{}",
                        "{C:joy_normal}\"Ки-сикиль\"{} или {C:joy_normal}\"Лил-ла\"{} {C:joy_link}Линков{} чтобы",
                        "{C:attention}удвоить{} текущие набранные фишки",
                    },
                    {
                        "{C:attention}Воскрешает #2#{} {C:joy_normal}\"Ки-сикиль\"{} или {C:joy_normal}\"Лил-ла\"{}",
                        "в конце магазина",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ltwin = "Live☆Twin",
        }
    }
}
