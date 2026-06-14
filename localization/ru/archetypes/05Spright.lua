return {
    descriptions = {
        Joker = {
            j_joy_spright_blue = {
                name = "{C:joy_effect}Спрайт Блю",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_normal}Главную колоду{}",
                        "{C:joy_normal}\"Спрайт\"{} в конце раунда",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:green}Необычный{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_spright_jet = {
                name = "{C:joy_effect}Спрайт Джет",
                text = {
                    {
                        "Отправляет {C:attention}#1#{} {C:green}Необычных{} {C:attention}Джокеров{}",
                        "на {C:attention}GY{} при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:green}Необычный{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_spright_carrot = {
                name = "{C:joy_effect}Спрайт Кэррот",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} дополнительного Множителя за каждого",
                        "{C:green}Необычного{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:green}Необычный{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_spright_red = {
                name = "{C:joy_effect}Спрайт Ред",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого",
                        "{C:green}Необычного{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {C:mult}+#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:green}Необычный{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_spright_pixies = {
                name = "{C:joy_effect}Спрайт Пиксис",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждого",
                        "{C:green}Необычного{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {C:chips}+#2#{} {C:inactive}Фишек){}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:green}Необычный{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_spright_elf = {
                name = "{C:joy_link}Спрайт Эльф",
                text = {
                    {
                        "{C:attention}Воскрешает #1#{} {C:green}Необычного{} {C:attention}Джокера{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "{C:green}Необычные{} {C:attention}Джокеры{} на {C:attention}GY{}",
                        "учитываются для способностей {C:joy_normal}\"Спрайт\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:green}Необычных{} {C:attention}Джокера{}"
                }
            },
            j_joy_spright_sprind = {
                name = "{C:joy_link}Спрайт Спринд",
                text = {
                    {
                        "Если {C:attention}призван{} с использованием {C:joy_normal}\"Спрайта\"{} как {C:attention}материала{},",
                        "другие {C:green}Необычные{} {C:attention}Джокеры{} становятся {C:dark_edition}Негатив{}",
                        "а остальные ослаблены",
                    },
                    {
                        "Добавляет {C:joy_xyz}\"Гигантский Спрайт\"{} в",
                        "{C:joy_spell}Экстра колоду{} после того, как {C:attention}#1# {C:joy_xyz}Xyz{} {C:attention}материалов{} {C:joy_xyz}откреплено{}",
                        "{C:inactive}(Нужно место) (#2#/#1#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:green}Необычных{} {C:attention}Джокера{},",
                    "включая {C:joy_xyz}Xyz{}"
                }
            },
            j_joy_spright_gigantic = {
                name = "{C:joy_xyz}Гигантский Спрайт",
                text = {
                    {
                        "{C:joy_xyz}Открепить{} {C:attention}1{}: Создаёт",
                        "{C:attention}#1#{} {C:green}Необычного{} {C:attention}Джокера{}",
                        "{C:inactive}(Нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:green}Необычных{} {C:attention}Джокера{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_token}Токенов{s:0.9,C:inactive})",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_link}Линки{s:0.9,C:inactive} разрешены)"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spright = "Спрайт",
        }
    }
}
