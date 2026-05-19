return {
    descriptions = {
        Joker = {
            j_joy_witch_genni = {
                name = "{C:joy_effect}Ведьмактор Генни",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:tarot}Таро",
                        "при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту и {C:attention}#2#{} {C:tarot}Таро",
                        "чтобы создать {C:attention}#3#{} {C:joy_effect}\"Ведьмактор Поттери\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_witch_potterie = {
                name = "{C:joy_effect}Ведьмактор Поттери",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:tarot}Таро",
                        "при {C:attention}входе в игру{} если область расходников пуста",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Эта карта и {C:attention}#2#{} {C:tarot}Таро{} карты {C:attention}изгоняются{}",
                        "в конце раунда до выбора {C:attention}Блайнда{}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту и {C:attention}#3#{} {C:tarot}Таро",
                        "чтобы создать {C:attention}#4#{} {C:joy_effect}\"Ведьмактор Питторе\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_witch_pittore = {
                name = "{C:joy_effect}Ведьмактор Питторе",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждый {C:tarot}Таро",
                        "{C:attention}пожертвованный{} в этом раунде",
                        "{C:inactive}(Сейчас {C:chips}+#2#{} {C:inactive}Фишек)",
                    },
                    {
                        "Раз за раунд, создаёт {C:attention}#3#{} {C:tarot}Таро{}",
                        "когда {C:attention}#4#{} расходников использовано",
                        "{C:inactive}(#5#/#4#) (Нужно место){}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту и {C:attention}#6#{} {C:tarot}Таро",
                        "чтобы создать {C:attention}#7#{} {C:joy_effect}\"Ведьмактор Шмиетта\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_witch_schmietta = {
                name = "{C:joy_effect}Ведьмактор Шмиетта",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:tarot}Таро",
                        "{C:attention}пожертвованный{} в этом раунде",
                        "{C:inactive}(Сейчас {C:mult}+#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "Создаёт {C:attention}#3#{} {C:tarot}Таро{}",
                        "при розыгрыше первой руки раунда",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту и {C:attention}#4#{} {C:tarot}Таро",
                        "чтобы создать {C:attention}#5#{} {C:joy_effect}\"Ведьмактор Эдель\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_witch_edel = {
                name = "{C:joy_effect}Ведьмактор Эдель",
                text = {
                    {
                        "Раз за раунд, создаёт {C:attention}#1#{} {C:joy_effect}\"Ведьмактор Генни\"{}",
                        "когда {C:attention}#2#{} рук разыграно",
                        "{C:inactive}(#3#/#2#) (Нужно место){}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту и {C:attention}#4#{} {C:tarot}Таро",
                        "чтобы создать {C:attention}#5#{} {C:joy_effect}\"Ведьмактор Хайне\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_witch_haine = {
                name = "{C:joy_effect}Ведьмактор Хайне",
                text = {
                    {
                        "{C:money}+$#1#{} за каждый {C:tarot}Таро",
                        "{C:attention}пожертвованный{} в этом раунде при {C:attention}входе в игру{}",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:dark_edition}Негатив {C:tarot}Таро{}",
                        "если это последняя рука раунда",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту и {C:attention}#3#{} {C:tarot}Таро",
                        "чтобы создать {C:attention}#4#{} {C:joy_effect}\"Ведьмактор Мадам Верре\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
            j_joy_witch_verre = {
                name = "{C:joy_effect}Ведьмактор Мадам Верре",
                text = {
                    {
                        "Создаёт все {C:tarot}Таро{} {C:attention}пожертвованные{} в этом раунде",
                        "как {C:dark_edition}Негатив{} при {C:attention}входе в игру{}",
                    },
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждый {C:tarot}Таро",
                        "{C:attention}пожертвованный{} в этом раунде",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{} {C:inactive}Множителя)",
                    },
                }
            },
            j_joy_witch_aruru = {
                name = "{C:joy_effect}Ведьмактор Голем Аруру",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждый {C:tarot}Таро",
                        "{C:attention}пожертвованный{} в этом раунде",
                        "{C:inactive}(Сейчас {C:mult}+#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "Использованные {C:tarot}Таро{} карты, пока эта карта у вас",
                        "считаются пожертвованными для способностей",
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"Ведьмактор\"{}",
                    },
                }
            },
            j_joy_witch_vicemadame = {
                name = "{C:joy_fusion}Ведьмактор Вице-Мадам",
                text = {
                    {
                        "{C:tarot}Аркана Паки{} бесплатны",
                    },
                    {
                        "{C:joy_normal}\"Ведьмактор\"{} Фишки и Множитель не сбрасываются каждый раунд",
                    },
                    {
                        "Раз за раунд, создаёт {C:attention}#1#{} {C:joy_effect}\"Ведьмактор Генни\"{}",
                        "когда {C:attention}#2#{} {C:tarot}Таро{} карт использовано",
                        "{C:inactive}(#3#/#2#) (Нужно место){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Заклинателя",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_witch = "Ведьмактор",
        }
    }
}
