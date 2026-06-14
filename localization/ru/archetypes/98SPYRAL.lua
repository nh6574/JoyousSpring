return {
    descriptions = {
        Joker = {
            j_joy_spy_drone = {
                name = "{C:joy_effect}SPYRAL GEAR - Дрон",
                text = {
                    {
                        "Раз за магазин, вы можете {C:attention}пожертвовать #1# Джокера{}",
                        "чтобы {C:attention}раскопать #2#{}"
                    },
                    {
                        "Уничтожает себя, если {C:attention}угадывание{} не имеет",
                        "ни одного правильного совпадения"
                    }
                }
            },
            j_joy_spy_lastresort = {
                name = "{C:joy_effect}SPYRAL GEAR - Последнее Средство",
                text = {
                    {
                        "Получает {C:chips}+#1#{} Фишек за каждую {C:attention}раскопанную{} карту",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "Уничтожает себя, если {C:attention}угадывание{} не имеет",
                        "ни одного правильного совпадения и считает их правильными"
                    },
                    {
                        "{C:joy_normal}\"SPYRAL\"{} не могут быть ослаблены или перевёрнуты в рубашку"
                    }
                }
            },
            j_joy_spy_double = {
                name = "{C:joy_effect}SPYRAL Двойной Агент",
                text = {
                    {
                        "В конце магазина, {C:attention}раскопки{} и {C:attention}угадайте{} верхние {C:attention}4{} масти:",
                        "{C:green}Уменьшите{} требование {C:attention}Блайнда{} за каждое правильное угадывание,",
                        "{C:red}увеличьте{} за каждое неправильное угадывание"
                    },
                }
            },
            j_joy_spy_masterplan = {
                name = "{C:joy_effect}SPYRAL Главный План",
                text = {
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхние {C:attention}3{} ранга:",
                        "1: Создать {C:attention}#1#{} {C:attention}Портящегося{} {C:joy_normal}Главная колода \"SPYRAL\"{}",
                        "{C:inactive}(Нужно место)",
                        "2: {C:attention}Воскресить #2#{} {C:joy_normal}\"SPYRAL\"{} как {C:attention}Портящегося{}",
                        "3: Обе предыдущие способности не применяют {C:attention}Портящегося{}"
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"SPYRAL\"{}"
                    }
                }
            },
            j_joy_spy_quik = {
                name = "{C:joy_effect}SPYRAL Быстрый-Фикс",
                text = {
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхние {C:attention}3{} масти:",
                        "1: Создать {C:attention}#1#{} {C:attention}Портящегося{} {C:joy_normal}\"SPYRAL GEAR\"{}",
                        "{C:inactive}(Нужно место)",
                        "2: {C:attention}Воскресить #2#{} {C:joy_normal}\"SPYRAL GEAR\"{} как {C:attention}Портящегося{}",
                        "3: Обе предыдущие способности не применяют {C:attention}Портящегося{}"
                    },
                    {
                        "Бесплатно, если у вас есть {C:joy_normal}\"SPYRAL\"{}"
                    }
                }
            },
            j_joy_spy_sleeper = {
                name = "{C:joy_effect}SPYRAL Спящий",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждую {C:attention}раскопанную{} карту",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Уничтожает себя, если {C:attention}угадывание{} не имеет",
                        "правильных совпадений или угадывание не сделано при выборе {C:attention}Блайнда{}"
                    },
                }
            },
            j_joy_spy_tough = {
                name = "{C:joy_effect}SPYRAL Крепкий",
                text = {
                    {
                        "Получает {C:mult}+#1#{} Множителя за каждую {C:attention}раскопанную{} карту",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхние {C:attention}5{} мастей:",
                        "1: Создать {C:attention}#3#{} {C:tarot}Таро{}",
                        "{C:inactive}(Нужно место)",
                        "2: Создать {C:attention}#4#{} {C:dark_edition}Негативных{} {C:planet}Планет{}",
                        "для последней сыгранной руки",
                        "3: {X:mult,C:white}X#5#{} Множителя в этом раунде",
                        "4: {C:attention}Раскопать{} до {C:attention}#6#{} дополнительных карт после раздачи руки",
                        "5: Создать {C:attention}#7#{} {C:dark_edition}Негативных{} {C:joy_effect}\"SPYRAL Супер Агент\"{}"
                    }
                }
            },
            j_joy_spy_super = {
                name = "{C:joy_effect}SPYRAL Супер Агент",
                text = {
                    {
                        "Получает {C:chips}+#1#{} Фишек за каждую {C:attention}раскопанную{} карту",
                        "{C:inactive}(Сейчас {C:chips}+#2#{}{C:inactive} Фишек)"
                    },
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхние {C:attention}5{} мастей:",
                        "1: Засчитанные карты дают {C:chips}+#3#{} Фишек в этом раунде",
                        "2: Засчитанные карты дают {C:mult}+#3#{} Множителя в этом раунде",
                        "3: Засчитанные карты дают {X:mult,C:white}X#4#{} Множителя в этом раунде",
                        "4: {C:joy_normal}\"SPYRAL\"{} дают {X:mult,C:white}X#4#{} Множителя в этом раунде",
                        "5: Повторно активировать каждую засчитанную карту дважды"
                    }
                }
            },
            j_joy_spy_misty = {
                name = "{C:joy_effect}SPYGAL Мисти",
                text = {
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхнюю {C:attention}1{} масть,",
                        "если верно, превращает {C:attention}#1#{} случайных карт в вашей колоде другой масти",
                        "в ту масть плюс дополнительная карта за каждого {C:joy_normal}\"SPYRAL\"{}"
                    },
                }
            },
            j_joy_spy_staff = {
                name = "{C:joy_effect}Очаровательный Курортный Персонал",
                text = {
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхние {C:attention}3{} ранга:",
                        "1: {C:joy_normal}\"SPYRAL\"{} дают {C:mult}+#1#{} Множителя в этом раунде",
                        "2: Создать {C:attention}#2#{} {C:joy_spell}\"SPYRAL Курорт\"{}",
                        "{C:inactive}(Нужно место)",
                        "3: Предыдущий эффект применяется {C:dark_edition}Негативным{} и не требует места"
                    },
                }
            },
            j_joy_spy_helix = {
                name = "{C:joy_link}SPYRAL Двойная Спираль",
                text = {
                    {
                        "{C:attention}Раскопки{} и {C:attention}угадайте{} верхние {C:attention}5{} рангов и мастей:",
                        "1: {X:mult,C:white}X#1#{} Множителя в этом раунде",
                        "2: {C:mult}+#2#{} Множителя в этом раунде",
                        "3: Повышает уровень покерных рук, сыгранных в этом раунде",
                        "4: Даёт {C:dark_edition}Полихром{} случайной карте, раскопанной в этом раунде",
                        "5: {C:attention}Раскапывает{} до {C:attention}#3#{} дополнительных карт после раздачи руки",
                        "6: {C:attention}Воскрешает #4#{} {C:joy_normal}\"SPYRAL\"{} как {C:dark_edition}Негативного{}",
                        "7: Создаёт {C:attention}#5#{} {C:dark_edition}Негативных{} {C:joy_normal}\"SPYRAL\"{}",
                        "8: Превращает все карты, вытянутые в первой руке, в самую частую масть в колоде",
                        "9: Превращает все карты, вытянутые в первой руке, в самый частый ранг в колоде",
                        "10: Создаёт {C:attention}#6#{} {C:dark_edition}Негативных{} {C:joy_effect}\"SPYRAL Супер Агент\"{}",
                    },
                }
            },
            j_joy_spy_resort = {
                name = "{C:joy_spell}SPYRAL Курорт",
                text = {
                    {
                        "Раз за магазин, вы можете {C:attention}пожертвовать #1# Джокера{}",
                        "чтобы {C:attention}раскопать #2#{}"
                    },
                    {
                        "Раз за анте, создаёт {C:attention}#3#{} {C:dark_edition}Негативных{}",
                        "{C:attention}Портящихся{} {C:joy_effect}\"SPYRAL Супер Агент\"{}",
                        "после {C:attention}#4#{} правильных угадываний"
                    },
                    {
                        "Уничтожает себя, если угадывание не сделано при выборе {C:attention}Блайнда{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spy = "SPYRAL",
        }
    }
}
