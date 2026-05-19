return {
    descriptions = {
        Joker = {
            j_joy_solfa_cutia = {
                name = "{C:joy_pendulum_effect}ДоСольфакорд Кутия",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}8{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Чётные ранги в разыгранной руке",
                        "дают {C:mult}+#2#{} Множителя за каждый {C:joy_normal}\"Сольфакорд\"",
                        "{C:inactive}(Сейчас{} {C:mult}+#3#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Раз за раунд, создаёт {C:attention}#4#{} {C:joy_pendulum}Пендулум{} {C:joy_normal}\"Сольфакорд\"{}",
                        "после того, как {C:attention}#5#{} {C:joy_pendulum}Пендулумов{} потреблено",
                        "{C:inactive}(#6#/#5#) (Нужно место){}",
                    },
                }
            },
            j_joy_solfa_dreamia = {
                name = "{C:joy_pendulum_effect}РеСольфакорд Дреамия",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}7{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Нечётные ранги в разыгранной руке",
                        "дают {C:mult}+#2#{} Множителя за каждый {C:joy_normal}\"Сольфакорд\"",
                        "{C:inactive}(Сейчас{} {C:mult}+#3#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_pendulum}Пендулум",
                    },
                }
            },
            j_joy_solfa_eliteia = {
                name = "{C:joy_pendulum_effect}МиСольфакорд Элитея",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}6{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Получает {C:chips}+#2#{} Фишек",
                        "за каждый сыгранный чётный ранг в разыгранной руке",
                        "{C:inactive}(Сейчас{} {C:chips}+#3#{} {C:inactive}Фишек){}",
                    },
                    {
                        "Добавляет {C:attention}#4#{} {C:joy_normal}\"Сольфакорд\"{} в {C:joy_spell}Экстра колоду{}",
                        "после того, как {C:attention}#5#{} чётных карт сыграно",
                        "{C:inactive}(#6#/#5#) (Нужно место){}",
                    },
                }
            },
            j_joy_solfa_fancia = {
                name = "{C:joy_pendulum_effect}ФаСольфакорд Фанция",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}5{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Получает {C:chips}+#2#{} Фишек ",
                        "за каждый сыгранный нечётный ранг в разыгранной руке",
                        "{C:inactive}(Сейчас{} {C:chips}+#3#{} {C:inactive}Фишек){}",
                    },
                    {
                        "Создаёт {C:attention}#4#{} {C:joy_normal}\"Сольфакорд\"{} после того, как {C:attention}#5#{} нечётных карт сыграно",
                        "{C:inactive}(#6#/#5#) (Нужно место){}",
                    },
                }
            },
            j_joy_solfa_gracia = {
                name = "{C:joy_pendulum_effect}СольСольфакорд Грация",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}4{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Повторно активирует каждую чётную карту {C:attention}#2#{} раз",
                    },
                    {
                        "Создаёт {C:attention}#3#{} {C:joy_spell}\"Сольфакорд Гармония\"{}",
                        "после того, как {C:attention}#4#{} чётных карт сыграно",
                        "{C:inactive}(#5#/#4#) (Нужно место){}",
                    },
                }
            },
            j_joy_solfa_angelia = {
                name = "{C:joy_pendulum_effect}ЛяСольфакорд Ангелия",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}3{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Повторно активирует каждую нечётную карту {C:attention}#2#{} раз",
                    },
                    {
                        "{C:attention}Воскрешает #3#{} {C:joy_normal}\"Сольфакорд\"{} после того, как {C:attention}#4#{} нечётных карт сыграно",
                        "{C:inactive}(#5#/#4#){}",
                    },
                }
            },
            j_joy_solfa_beautia = {
                name = "{C:joy_pendulum_effect}ТиСольфакорд Беутия",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}2{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Чётные ранги в разыгранной руке дают дополнительно",
                        "{X:chips,C:white}X#2#{} Фишек за каждый {C:joy_normal}\"Сольфакорд\"{}",
                        "{C:inactive}(Сейчас {X:chips,C:white}X#3#{} {C:inactive}Фишек)",
                    },
                    {
                        "{C:attention}Изгоняет #4#{} {C:joy_pendulum}Пендулум{} в конце раунда",
                        "до выбора {C:attention}Блайнда{}",
                    },
                },
            },
            j_joy_solfa_coolia = {
                name = "{C:joy_pendulum_effect}ДоСольфакорд Коолия",
                joy_consumable = {
                    "Изменить ранг до {C:attention}#1#{} выбранных карт на {C:attention}Тузы{}",
                    "также повысить уровень {C:attention}Фулл Хаус{}, {C:attention}Стрит{} и {C:attention}Две Пары{}",
                },
                text = {
                    {
                        "Нечётные ранги в разыгранной руке дают дополнительно",
                        "{X:mult,C:white}X#2#{} Множителя за каждый {C:joy_normal}\"Сольфакорд\"{}",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#3#{} {C:inactive}Множителя)",
                    },
                    {
                        "{C:joy_normal}\"Сольфакорд\"{} в {C:attention}GY{} учитываются для способностей {C:joy_normal}\"Сольфакорд\"{}",
                    },
                },
            },
            j_joy_solfa_musecia = {
                name = "{C:joy_link}ГранСольфакорд Музеция",
                text = {
                    {
                        "Игровые карты, затронутые расходными способностями {C:joy_normal}\"Сольфакорд\"{}",
                        "получают случайное {C:dark_edition}Издание{} если возможно",
                        "{C:inactive}(Кроме Негатив){}"
                    },
                    {
                        "Раз за анте, создаёт {C:attention}#1#{} {C:dark_edition}Негатив{} {C:joy_pendulum}Пендулум{} {C:joy_normal}\"Сольфакорд\"{}",
                        "после того, как {C:attention}#2#{} {C:joy_pendulum}Пендулумов{} потреблено {C:inactive}(#3# осталось){}",
                        "и увеличивает требование на {C:attention}#4#{}"
                    },
                    {
                        "Если разыгранная рука содержит и чётные, и нечётные ранги,",
                        "все сыгранные карты считаются и теми, и другими для способностей {C:joy_normal}\"Сольфакорд\"{}",
                    },
                    {
                        "{C:joy_pendulum}Пендулумы{} считаются {C:joy_normal}\"Сольфакорд\"{} для других способностей {C:joy_normal}\"Сольфакорд\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 {C:joy_pendulum}Пендулума"
                }
            },
            j_joy_solfa_grancoolia = {
                name = "{C:joy_link}ГранСольфакорд Коолия",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждый {C:joy_pendulum}Пендулум{}",
                        "{C:inactive}(Сейчас {C:chips}+#2#{} {C:inactive}Фишек)",
                    },
                    {
                        "Игровые карты, затронутые расходными способностями {C:joy_normal}\"Сольфакорд\"{}",
                        "получают случайную {C:attention}Печать{} если возможно",
                    },
                    {
                        "{C:money}+$#3#{} после того, как {C:attention}#4#{} {C:joy_pendulum}Пендулумов{} потреблено {C:inactive}(#5#/#4#){}",
                    },
                    {
                        "Если разыгранная рука содержит и чётные, и нечётные ранги,",
                        "все карты в руке считаются сыгранными для способностей {C:joy_normal}\"Сольфакорд\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 Джокера{},",
                    "включая {C:joy_pendulum}Пендулум"
                }
            },
            j_joy_solfa_harmonia = {
                name = "{C:joy_spell}Сольфакорд Гармония",
                text = {
                    {
                        "{C:attention}Воскрешает #1#{} {C:joy_normal}\"Сольфакорд\"{} (или {C:joy_pendulum}Пендулум{} если нет)",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Создаёт {C:attention}#2# Силы{} {C:tarot}Таро{} после потребления {C:joy_pendulum}Пендулума{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Все неулучшенные чётные карты становятся {C:attention}Золотыми{} и",
                        "все неулучшенные нечётные карты становятся {C:attention}Стальными{} после подсчёта",
                        "если у вас есть {C:attention}#3# {C:joy_normal}\"Сольфакорд\"{} с разными именами, игнорируя другие способности",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_solfa = "Сольфакорд",
        }
    }
}
