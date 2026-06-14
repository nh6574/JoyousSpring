return {
    descriptions = {
        Joker = {
            j_joy_zeus = {
                name = "{C:joy_xyz}Божественный Арсенал AA-ZEUS - Небесный Гром",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}: Снижает требование текущего {C:attention}Блайнда{} на {C:red}#2#%",
                        "но удаляет все улучшения в колоде",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:red}Редких{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{} {s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:joy_xyz}Xyz{} который открепил",
                    "{C:attention}материал{} в этом раунде",
                    "{s:0.9,C:inactive}(Перенести его материалы)"
                }
            },
            j_joy_typhon = {
                name = "{C:joy_xyz}Супер Звездоубийца TY-PHON - Небесный Кризис",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}: Превращает каждую засчитанную карту в сыгранных руках в этом раунде в",
                        "{C:attention}Красную Печать{} {C:dark_edition}Полихромную{} {C:attention}Стеклянную{} карту после подсчёта",
                        "но уменьшает {C:money}деньги{} на {C:red}#2#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:red}Редких{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{} {s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "ИЛИ {C:attention}1{} {C:attention}Джокер{} если {C:attention}2{} или больше",
                    "{C:attention}Джокеров{} были призваны в этом раунде"
                }
            },
            j_joy_85 = {
                name = "{C:joy_xyz}Номер 85: Безумная Коробка",
                text = {
                    {
                        "Во время {C:attention}Блайнда{}, вы можете {C:joy_xyz}открепить{} {C:attention}#1#{}:",
                        "Применяет одну из этих способностей случайно",
                        "{C:attention}1{}: Удвоить требование {C:attention}Блайнда{}",
                        "{C:attention}2{}: Уменьшить вдвое требование {C:attention}Блайнда{}",
                        "{C:attention}3{}: {C:attention}+#2#{} размер руки в этом раунде",
                        "{C:attention}4{}: {C:attention}-#3#{} размер руки навсегда",
                        "{C:attention}5{}: Превратить засчитанные карты в следующей сыгранной руке в",
                        "{C:dark_edition}Полихромные{} {C:attention}Красная Печать Удачливые{} карты",
                        "{C:attention}6{}: Уничтожить эту карту",
                    },
                    {
                        "{C:green}#4# из #5#{} шанс прикрепить {C:attention}#6#{} материала к этой карте при выборе {C:attention}Блайнда{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Обычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_67 = {
                name = "{C:joy_xyz}Номер 67: Пара-Костей Дробитель",
                text = {
                    {
                        "Удваивает все указанные {C:green}шансы{} пока у этой карты есть {C:joy_xyz}Xyz материалы{}"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#1#{}: Увеличить все указанные {C:green}шансы{}",
                        "на {C:attention}Джокерах{} навсегда на случайное число от {C:attention}#2#{} до {C:attention}#3#{}",
                    },
                    {
                        "{C:green}#4# из #5#{} шанс прикрепить {C:attention}#6#{} материала к этой карте при выборе {C:attention}Блайнда{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:attention}Джокера{} с одинаковой редкостью",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
            j_joy_igniter = {
                name = "{C:joy_xyz}Код Игнайтер",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый {C:joy_ritual}Ритуал{} призванный за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{} {C:inactive}Множителя)"
                    },
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}#3#{}: Добавляет {C:attention}#4#{} {C:joy_ritual}Ритуал{} в магазин",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Киберса{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Линков{}",
                    "{s:0.9,C:inactive}или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})"
                }
            },
        }
    },
}
