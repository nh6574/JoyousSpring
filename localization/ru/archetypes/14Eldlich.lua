return {
    descriptions = {
        Joker = {
            j_joy_eld_eldlich = {
                name = "{C:joy_effect}Эльдлих Золотой Владыка",
                text = {
                    {
                        "{C:attention}Золотые{} карты дают {C:money}+$#1#{} при розыгрыше за каждого",
                        "{C:joy_normal}Зомби{} у вас или в {C:attention}GY{}",
                    },
                    {
                        "Сыгранные карты в разыгранной руке",
                        "становятся {C:attention}Золотыми{} после подсчёта",
                    },
                    {
                        "Раз за раунд, вы можете {C:attention}пожертвовать #2#{} {C:joy_normal}Зомби{} или {C:joy_trap}Ловушку{} {C:attention}Джокера",
                        "чтобы создать {C:attention}#3#{} {C:joy_normal}\"Золотая Земля\" Главной колоды{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_eld_conq = {
                name = "{C:joy_trap}Конкистадор Золотой Земли",
                text = {
                    {
                        "{C:attention}Золотые{} карты дают {C:chips}+#1#{} Фишек при розыгрыше за каждого",
                        "{C:joy_normal}Зомби{} у вас или в {C:attention}GY{}",
                    },
                    {
                        "Повторно активирует все сыгранные карты с {C:attention}улучшением{} один раз",
                        "включая карты в руке, если у вас есть {C:joy_normal}\"Эльдлих\"{}",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:red}+#2#{} Сброс в этом раунде",
                    },
                }
            },
            j_joy_eld_guard = {
                name = "{C:joy_trap}Страж Золотой Земли",
                text = {
                    {
                        "{C:attention}Золотые{} карты дают {C:mult}+#1#{} Множителя при розыгрыше за каждого",
                        "{C:joy_normal}Зомби{} у вас или в {C:attention}GY{}",
                    },
                    {
                        "Повторно активирует все сыгранные карты с {C:attention}улучшением{} один раз",
                        "включая карты в руке, если у вас есть {C:joy_normal}\"Эльдлих\"{}",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:blue}+#2#{} Рука в этом раунде",
                    },
                }
            },
            j_joy_eld_huaq = {
                name = "{C:joy_trap}Уакеро Золотой Земли",
                text = {
                    {
                        "{C:attention}Золотые{} карты дают {C:chips}+#1#{} Фишек при розыгрыше за каждого",
                        "{C:joy_normal}Зомби{} у вас или в {C:attention}GY{}",
                    },
                    {
                        "Повторно активирует все сыгранные карты с {C:attention}улучшением{} один раз",
                        "включая карты в руке, если у вас есть {C:joy_normal}\"Эльдлих\"{}",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:attention}Изгоняет #2#{} {C:joy_normal}Зомби{} в конце раунда",
                        "до выбора {C:attention}Блайнда{}",
                    },
                }
            },
            j_joy_eld_glorious = {
                name = "{C:joy_trap}Эльдликсир Славной Золотой Земли",
                text = {
                    {
                        "{C:attention}Золотые{} карты дают {C:mult}+#1#{} Множителя при розыгрыше за каждого",
                        "{C:joy_normal}Зомби{} у вас или в {C:attention}GY{}",
                    },
                    {
                        "Повторно активирует все сыгранные карты с {C:attention}улучшением{} один раз",
                        "включая карты в руке, если у вас есть {C:joy_normal}\"Эльдлих\"{}",
                    },
                    {
                        "{C:joy_effect}ПЕРЕВОРОТ{}: {C:attention}Воскрешает #2#{} {C:joy_normal}\"Золотая Земля\"{} или {C:attention}#2#{} {C:joy_trap}Ловушку{} если нет",
                    },
                }
            },
            j_joy_eld_mad = {
                name = "{C:joy_fusion}Эльдлих Безумный Золотой Владыка",
                text = {
                    {
                        "{C:attention}Золотые{} карты дают дополнительный {X:mult,C:white}X#1#{} Множитель при розыгрыше за каждого",
                        "{C:joy_normal}Зомби{} у вас или в {C:attention}GY{}",
                    },
                    {
                        "Все сыгранные карты становятся {C:attention}Золотыми{} после подсчёта",
                    },
                    {
                        "{C:joy_trap}Ловушки{} не {C:attention}переворачиваются{} в рубашку сами по себе",
                        "и их {C:joy_effect}ПЕРЕВОРОТ{} способности активируются при выборе {C:attention}Блайнда{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Эльдлих\"{} + {C:attention}1{} {C:joy_normal}Зомби{}"
                }
            },
            j_joy_eld_angel = {
                name = "{C:joy_fusion}Падший Ангел Золотой Земли",
                text = {
                    {
                        "Включает руки {C:attention}Эльдликсир{}",
                        "Повышает уровень {C:attention}Эльдликсира{} когда {C:joy_trap}Ловушки{} {C:attention}переворачиваются{} лицом вверх",
                        "{C:inactive}(Или активируются их ПЕРЕВОРОТ способности)",
                    },
                    {
                        "Отправляет {C:attention}#1#{} {C:joy_effect}\"Эльдлих Золотой Владыка\"{} в {C:attention}GY{}",
                        "если разыгранная рука содержит {C:attention}Эльдликсир{}",
                    },
                    {
                        "{C:attention}Воскрешает #2#{} {C:joy_normal}\"Эльдлих\"{} как {C:dark_edition}Негатив{} если",
                        "эта карта у вас отправлена в {C:attention}GY{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Джокера{}, включая {C:joy_trap}Ловушку{}"
                }
            },
        },
        Planet = {
            c_joy_cursed_eldland = {
                name = "{C:joy_spell}Проклятая Эльдландия"
            }
        },
        JoyPokerHand = {
            phd_joy_eldlixir = {
                name = "Эльдликсир",
                text = {
                    "5 {C:attention}Золотых{} карт",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_eldlixir = "Эльдликсир"
        },
        poker_hand_descriptions = {
            joy_eldlixir = {
                "5 {C:attention}Золотых{} карт",
                "{C:inactive}(Должно быть включено способностью)"
            }
        },
        dictionary = {
            k_joy_archetype_eld = "Эльдлих",
        }
    }
}
