return {
    descriptions = {
        Joker = {
            j_joy_apollousa = {
                name = "{C:joy_link}Аполлуса, Лук Богини",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:attention}материал{}",
                        "использованный для её призыва, уменьшается на {C:red}#2#{} каждый раунд",
                        "{C:inactive}(Сейчас{} {C:mult}+#3#{} {C:inactive}Множителя){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+ Джокера{} с разными именами",
                }
            },
            j_joy_beyond = {
                name = "{C:joy_link}За Пределами Пендулума",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:joy_pendulum}Пендулум{}",
                        "использованный за это забег",
                        "{C:inactive}(Сейчас{} {C:mult}+#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Создаёт {C:attention}#3#{} {C:joy_pendulum}Пендулум{} после того, как {C:attention}#4#{} использованы",
                        "{C:inactive}(#5#/#4#) (Нужно место)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Джокера{},",
                    "включая {C:joy_pendulum}Пендулум{}"
                }
            },
            j_joy_exceed = {
                name = "{C:joy_link}Превзойдя Пендулум",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый {C:joy_pendulum}Пендулум{} использованный за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)",
                    },
                    {
                        "Создаёт {C:attention}#3#{} {C:dark_edition}Негативных{} {C:joy_normal}Главная колода{} {C:joy_pendulum}Пендулум{}",
                        "в первый раз, когда {C:attention}Босс Блайнд{} побеждён",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 Джокера{},",
                    "включая {C:joy_pendulum}Пендулум{}"
                }
            },
            j_joy_linkuriboh = {
                name = "{C:joy_link}Линкурибо",
                text = {
                    {
                        "Продайте эту карту, чтобы отключить текущие активные {C:attention}Блайнды{}",
                        "но установить {C:money}деньги{} на {C:money}$0",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:blue}Обычный{} {C:attention}Джокер{}",
                }
            },
            j_joy_linguriboh = {
                name = "{C:joy_link}Лингурибо",
                text = {
                    {
                        "Продайте эту карту, чтобы отключить текущие активные {C:attention}Блайнды{}",
                        "но уменьшить размер руки на {C:attention}#1#{} если не призван",
                        "с использованием {C:joy_normal}\"@Игнайстер\"{} как {C:attention}материал{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Киберс{}",
                }
            },
            j_joy_ipmasq = {
                name = "{C:joy_link}I:P Маскерена",
                text = {
                    {
                        "{C:attention}Трансформируется{} в случайный {C:joy_link}Линк{} при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Это считается Линк призывом с 2 материалами){}",
                        "{C:joy_link}Линк{} призванный этим путём получает следующую способность:",
                        "{s:0.9,C:attention}Трансформируется{s:0.9} в {s:0.9,C:joy_link}\"I:P Маскерена\"{s:0.9} в конце раунда",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Эффект {C:attention}Джокера{}",
                },
                joy_transfer_ability = {
                    "{C:attention}Трансформируется{} в {C:joy_link}\"I:P Маскерена\"{} в конце раунда",
                }
            },
            j_joy_spknight = {
                name = "{C:joy_link}S:P Маленький Рыцарь",
                text = {
                    {
                        "{C:attention}Изгоняет{} себя и {C:attention}#1#{} другого {C:attention}Джокера{}",
                        "в конце раунда до выбора {C:attention}Босс Блайнда{}",
                        "ИЛИ до выбора {C:attention}Блайнда{} если призван",
                        "с использованием {C:attention}2{} {C:joy_spell}Экстра колода{} {C:attention}Джокеров{} как {C:attention}материал{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Эффект {C:attention}Джокера{}",
                }
            },
            j_joy_progleo = {
                name = "{C:joy_link}Проглео",
                text = {
                    {
                        "{C:attention}Изгоняет #1#{} соседнего {C:attention}Джокера{} в конце раунда",
                        "до выбора {C:attention}Босс Блайнда{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "кроме {C:joy_token}Токенов{}"
                }
            },
            j_joy_raster = {
                name = "{C:joy_link}Растерлигер",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:joy_link}Линк{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} всех остальных {C:attention}Джокеров{}",
                        "чтобы снизить требование {C:attention}Блайнда{} на {C:red}#3#%{} за каждого",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:attention}Джокера{},",
                    "кроме {C:joy_token}Токенов{}"
                }
            },
        }
    },
}
