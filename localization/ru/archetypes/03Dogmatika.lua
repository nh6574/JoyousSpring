return {
    descriptions = {
        Joker = {
            j_joy_dogma_ecclesia = {
                name = "{C:joy_effect}Догматика Экклезия, Добродетельная",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждого проданного {C:joy_spell}Экстра колоду{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                },
            },
            j_joy_dogma_fleur = {
                name = "{C:joy_effect}Догматика Флёрделис, Рыцарственная",
                text = {
                    {
                        "{C:joy_normal}\"Догматика\"{} каждая даёт {C:mult}+#1#{} Множителя",
                    },
                    {
                        "Бесплатно, если у вас есть ослабленный {C:joy_spell}Экстра колоду{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_dogma_thunderbolt = {
                name = "{C:joy_effect}Догматика Флёрделис, Громовая",
                text = {
                    {
                        "Ослабленные {C:joy_spell}Экстра колоду{} {C:attention}Джокеры{}",
                        "каждый дают {X:mult,C:white}X#1#{} Множителя",
                    },
                    {
                        "Имеющиеся {C:joy_normal}\"Догматика\"{} также считаются",
                        "ослабленными {C:joy_spell}Экстра колоду{} {C:attention}Джокерами{} и наоборот",
                        "для способностей {C:joy_normal}\"Догматика\"{}"
                    },
                    {
                        "Создаёт {C:dark_edition}Негатив{} {C:joy_effect}\"Догматика Флёрделис, Громовая\"",
                        "при использовании как {C:attention}материал{} для {C:joy_ritual}Ритуала",
                    },
                    {
                        "Бесплатно и не требует места при получении из магазина",
                        "если у вас есть ослабленный {C:joy_spell}Экстра колоду{} {C:attention}Джокер{}"
                    },
                },
            },
            j_joy_dogma_maximus = {
                name = "{C:joy_effect}Догматика Максимус",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} ослабленного {C:dark_edition}Негатив{} {C:joy_spell}Экстра колоду{} {C:attention}Джокера{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                },
            },
            j_joy_dogma_adin = {
                name = "{C:joy_effect}Догматика Адин, Просветлённый",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} не-{C:joy_ritual}Ритуального{} {C:joy_normal}Главную колоду \"Догматика\"{}",
                        "при победе над {C:attention}Босс Блайндом{}",
                        "{C:inactive}(Нужно место){}",
                    },
                    {
                        "Бесплатно, если у вас есть ослабленный {C:joy_spell}Экстра колоду{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_dogma_theo = {
                name = "{C:joy_effect}Догматика Тео, Железный Удар",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек,",
                        "{C:chips}+#2#{} Фишек за каждого ослабленного {C:joy_spell}Экстра колоду{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {C:chips}+#3# {C:inactive}Фишек){}",
                    },
                    {
                        "Бесплатно, если у вас есть ослабленный {C:joy_spell}Экстра колоду{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_dogma_ashiyan = {
                name = "{C:joy_effect}Догматика Ашиян",
                text = {
                    {
                        "{C:attention}Воскрешает #1#{} {C:joy_normal}\"Догматика\"{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Добавляет {C:attention}#2#{} {C:joy_ritual}Ритуального{} {C:joy_normal}\"Догматика\"{}",
                        "в магазин при победе над {C:attention}Босс Блайндом{}",
                    },
                    {
                        "Бесплатно, если у вас есть ослабленный {C:joy_spell}Экстра колоду{} {C:attention}Джокер{}",
                    },
                },
            },
            j_joy_dogma_nexus = {
                name = "{C:joy_effect}Догматика Нексус",
                text = {
                    {
                        "{C:attention}Копирует #1#{} случайных {C:joy_spell}Экстра колоду{} {C:attention}Джокеров{}",
                        "в конце раунда",
                        "{C:inactive}(Копия будет ослаблена и{} {C:dark_edition}Негатив{}{C:inactive}){}",
                    },
                },
            },
            j_joy_dogma_relic = {
                name = "{C:joy_ritual}Белая Реликвия Догматики",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки за каждые {C:attention}#2#{} ослабленных",
                        "{C:joy_spell}Экстра колоду{} {C:attention}Джокеров{}",
                        "{C:inactive}(Сейчас{} {C:attention}+#3# {C:inactive}размер руки){}",
                    },
                    {
                        "{C:joy_spell}Экстра колоду{} {C:attention}Джокеры{} на {C:attention}GY{}",
                        "учитываются для способностей {C:joy_normal}\"Догматика\"{} {C:inactive}(как ослабленные){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Пожертвуйте {C:attention}2 Джокеров{},",
                    "включая {C:joy_normal}\"Догматика\"{}"
                }
            },
            j_joy_dogma_knight = {
                name = "{C:joy_ritual}Белый Рыцарь Догматики",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого ослабленного",
                        "{C:joy_spell}Экстра колоду{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {C:mult}+#2# {C:inactive}Множителя){}",
                    },
                    {
                        "Все {C:joy_spell}Экстра колоду{} {C:attention}Джокеры{} в магазине",
                        "ослаблены и бесплатны",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Пожертвуйте {C:attention}2 Джокеров{},",
                    "включая {C:joy_normal}\"Догматика\"{}"
                }
            },
            j_joy_dogma_albazoa = {
                name = "{C:joy_ritual}Догматика Альба Зоа",
                text = {
                    {
                        "Отправляет {C:attention}#1#{} копию каждого {C:attention}Джокера{}",
                        "из вашей {C:joy_spell}Экстра колоды{} на {C:attention}GY{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Каждый {C:joy_normal}Главную колоду{} {C:attention}Джокер{} даёт дополнительный {X:mult,C:white}X#2#{} Множителя",
                        "за каждого ослабленного {C:joy_spell}Экстра колоду{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#3#{} {C:inactive}Множителя){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Пожертвуйте {C:attention}2{} {C:joy_normal}\"Догматика\"{}"
                }
            },
            j_joy_dogma_nation = {
                name = "{C:joy_spell}Нация Догматики",
                text = {
                    {
                        "{C:money}+$#1#{} за каждого ослабленного {C:joy_spell}Экстра колоду{} {C:attention}Джокера{}",
                        "в конце раунда",
                        "{C:inactive}(Сейчас{} {C:money}+$#2#{}{C:inactive}){}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать #3#{} {C:joy_spell}Экстра колоду{} {C:attention}Джокеров{}",
                        "чтобы создать {C:attention}#4#{} {C:joy_normal}\"Догматика\"{}",
                        "{C:inactive}(Нужно место){}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dogma = "Догматика",
        }
    }
}
