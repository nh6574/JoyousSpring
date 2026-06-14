return {
    descriptions = {
        Joker = {
            j_joy_psy_driver = {
                name = "{C:joy_normal}PSY-Frame Драйвер",
                text = {
                    {
                        "{E:1}Психический солдат, который едет в бой против Сил Безопасности{}",
                        "{E:1}на потоках молнии, используя автономный усилитель{}",
                        "{E:1}под названием \"PSY-Frame\"{}",
                    },
                },
            },
            j_joy_psy_alpha = {
                name = "{C:joy_effect}PSY-Framegear Альфа",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Драйвер\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "{C:attention}Изгоняет{} {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                        "при выборе {C:attention}Блайнда{} до конца раунда, чтобы",
                        "все карты в руке давали {X:mult,C:white}X#2#{} Множителя в этом раунде",
                    },
                },
            },
            j_joy_psy_beta = {
                name = "{C:joy_effect}PSY-Framegear Бета",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Драйвер\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "{C:attention}Изгоняет{} {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                        "при выборе {C:attention}Блайнда{} до конца раунда, чтобы",
                        "все сыгранные карты в разыгранной руке",
                        "давали {X:mult,C:white}X#2#{} Множителя в этом раунде",
                    },
                },
            },
            j_joy_psy_gamma = {
                name = "{C:joy_effect}PSY-Framegear Гамма",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Драйвер\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "{C:attention}Изгоняет{} {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                        "при выборе {C:attention}Блайнда{} до конца раунда, чтобы",
                        "все {C:attention}Джокеры{} каждый давали {X:mult,C:white}X#2#{} Множителя в этом раунде",
                    },
                },
            },
            j_joy_psy_delta = {
                name = "{C:joy_effect}PSY-Framegear Дельта",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Драйвер\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "{C:attention}Изгоняет{} {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                        "при выборе {C:attention}Блайнда{} до конца раунда, чтобы",
                        "все {C:tarot}Таро{} карты в области расходников",
                        "каждая давала {X:mult,C:white}X#2#{} Множителя в этом раунде",
                    },
                },
            },
            j_joy_psy_epsilon = {
                name = "{C:joy_effect}PSY-Framegear Эпсилон",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Драйвер\"{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "{C:attention}Изгоняет{} {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                        "при выборе {C:attention}Блайнда{} до конца раунда, чтобы",
                        "все {C:planet}Планеты{} карты в области расходников",
                        "каждая давала {X:mult,C:white}X#2#{} Множителя в этом раунде",
                    },
                },
            },
            j_joy_psy_multithreader = {
                name = "{C:joy_effect}PSY-Frame Мульти-Тредер",
                text = {
                    {
                        "Эта карта считается {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                        "для способностей {C:joy_normal}\"PSY-Frame\"{}",
                    },
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}Главную колоду \"PSY-Frame\"{}",
                        "{C:joy_effect}Эффект{} {C:attention}Джокера{} когда эта карта",
                        "возвращается из {C:attention}изгнания{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
            },
            j_joy_psy_zeta = {
                name = "{C:joy_synchro}PSY-Framelord Зета",
                text = {
                    {
                        "Эта карта и {C:attention}#1#{} карты в области расходников",
                        "{C:attention}изгоняются{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:blue}Обычный{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_omega = {
                name = "{C:joy_synchro}PSY-Framelord Омега",
                text = {
                    {
                        "Эта карта и другой {C:attention}Джокер{}",
                        "{C:attention}изгоняются{} в конце раунда",
                        "пока не выбран {C:attention}Блайнд{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:blue}Обычный{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_lambda = {
                name = "{C:joy_link}PSY-Framelord Лямбда",
                text = {
                    {
                        "Способности {C:joy_normal}\"PSY-Frame\"{} активны",
                        "без {C:attention}изгнания{} {C:joy_normal}\"PSY-Frame Драйвер\"{}",
                    },
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}\"PSY-Frame\"{}",
                        "в {C:joy_spell}Экстра колоду{} когда {C:joy_normal}Психический{}",
                        "{C:attention}Джокер{} возвращается из {C:attention}изгнания{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "кроме {C:joy_token}Токенов{}",
                }
            },
            j_joy_psy_circuit = {
                name = "{C:joy_spell}PSY-Frame Цепь",
                text = {
                    {
                        "{C:money}+$#1#{} каждый раз, когда {C:joy_synchro}Синхро{} {C:attention}призывается",
                    },
                    {
                        "{C:joy_normal}Психические{} {C:joy_synchro}Синхро{}",
                        "становятся {C:dark_edition}Негатив{} при {C:attention}призыве",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_psy = "PSY-Frame",
        }
    }
}
