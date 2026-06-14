return {
    descriptions = {
        Joker = {
            j_joy_voice_lo = {
                name = "{C:joy_effect}Ло, Молитвы Безголосого Голоса",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_light}LIGHT{} {C:joy_ritual}Ритуал{}",
                        "в магазин и даёт бесплатный {C:green}переброс{}",
                        "при {C:attention}жертвоприношении{}"
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_ritual}Ритуала{}",
                    },
                    {
                        "{C:joy_ritual}Ритуал{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9}Создаёт {s:0.9,C:attention}1{s:0.9} не-{s:0.9,C:joy_ritual}Ритуал{}",
                        "{s:0.9,C:joy_normal}\"Безголосого Голоса\"{}",
                        "{s:0.9}в конце раунда",
                        "{s:0.9,C:inactive}(Нужно место)"
                    },
                },
                joy_transfer_ability = {
                    "Создаёт {C:attention}1{} не-{C:joy_ritual}Ритуал{}",
                    "{C:joy_normal}\"Безголосого Голоса\"{}",
                    "в конце раунда",
                    "{C:inactive}(Нужно место)"
                }
            },
            j_joy_voice_saffira = {
                name = "{C:joy_effect}Саффира, Драконья Королева Безголосого Голоса",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_light}LIGHT{} {C:joy_ritual}Ритуал{}",
                        "в {C:joy_link}Сайд деке{} при {C:attention}жертвоприношении{}"
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_ritual}Ритуала{}",
                    },
                    {
                        "{C:joy_ritual}Ритуал{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:money}+$#1#{s:0.9} в конце раунда",
                        "{s:0.9}за каждого {s:0.9,C:joy_light}LIGHT{} {s:0.9,C:attention}Джокера{}",
                        "{s:0.9,C:attention}пожертвованного{s:0.9} в этом раунде",
                    },
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} в конце раунда",
                    "за каждого {C:joy_light}LIGHT{} {C:attention}Джокера{}",
                    "{C:attention}пожертвованного{} в этом раунде",
                    "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                }
            },
            j_joy_voice_sauravis = {
                name = "{C:joy_effect}Сауравис, Драконий Мудрец Безголосого Голоса",
                text = {
                    {
                        "{C:attention}Воскрешает 1{} {C:joy_light}LIGHT{} {C:joy_ritual}Ритуал{}",
                        "как {C:dark_edition}Негативный{} при {C:attention}жертвоприношении{}"
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_ritual}Ритуала{}",
                    },
                    {
                        "{C:joy_ritual}Ритуал{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:chips}+#1#{s:0.9} Фишек",
                        "{s:0.9}за каждого {s:0.9,C:joy_light}LIGHT{} {s:0.9,C:attention}Джокера{}",
                        "{s:0.9,C:attention}пожертвованного{s:0.9} в этом раунде",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Фишек",
                    "за каждого {C:joy_light}LIGHT{} {C:attention}Джокера{}",
                    "{C:attention}пожертвованного{} в этом раунде",
                    "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                }
            },
            j_joy_voice_divine = {
                name = "{C:joy_ritual}Саффира, Божественный Дракон Безголосого Голоса",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки за каждого",
                        "{C:joy_effect}\"Ло, Молитвы Безголосого Голоса\"{}",
                        "в {C:attention}GY{} в раунде, когда эта карта {C:attention}вступает в игру{}",
                        "{C:inactive}(Сейчас {C:attention}+#2#{}{C:inactive})"
                    },
                    {
                        "Даёт {C:attention}Тег Секретного Пака Поддержки Ритуалов{}",
                        "в конце раунда"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Жертвует {C:attention}2{} {C:joy_light}LIGHT{} {C:attention}Джокеров{}"
                }
            },
            j_joy_voice_skull = {
                name = "{C:joy_ritual}Череп-Страж, Защитник Безголосого Голоса",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя",
                        "за каждого {C:joy_light}LIGHT{} {C:attention}Джокера{}",
                        "{C:attention}пожертвованного{} в этом раунде",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Получает {X:chips,C:white}X#3#{} Фишек за каждого",
                        "{C:joy_effect}\"Ло, Молитвы Безголосого Голоса\"{}",
                        "в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {X:chips,C:white}X#4#{}{C:inactive} Фишек)"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Жертвует {C:attention}2{} {C:joy_light}LIGHT{} {C:attention}Джокеров{}"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_voice = "Безголосый Голос",
        }
    }
}
