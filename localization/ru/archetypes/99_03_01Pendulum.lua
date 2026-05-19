return {
    descriptions = {
        Joker = {
            j_joy_foucault = {
                name = "{C:joy_pendulum_normal}Пушка Фуко",
                joy_consumable = {
                    "Создать как можно больше {C:planet}Планет Земля{}",
                    "{C:inactive}(Нужно место)"
                },
                text = {
                    {
                        "{E:1}Механизированная форма жизни, блуждающая в пространстве-времени. Но{}",
                        "{E:1}загадочно то, что её память... в... основном стёрта. Что за{}",
                        "{E:1}при...ина? От...азывается подд...ться в...ешательству?{}",
                    },
                }
            },
            j_joy_hallo = {
                name = "{C:joy_pendulum_normal}Хэллохэлло",
                joy_consumable = {
                    "Увеличить все указанные {C:green}шансы{} на {C:attention}Джокерах{}",
                    "навсегда на случайное число от {C:attention}#1#{} до {C:attention}#2#{}"
                },
                text = {
                    {
                        "{E:1}Хэлло Хэлло, мозг из сала,{}",
                        "{E:1}Кишки пропали, башка пуста.{}",
                        "{E:1}Ищет сладости и зефир,{}",
                        "{E:1}Береги спину и свой кулёк.{}",
                    },
                }
            },
            j_joy_eccentrick = {
                name = "{C:joy_pendulum_effect}Эксцентричный Архидьявол",
                joy_consumable = {
                    "Уничтожает до {C:attention}#1#{} выбранных карт",
                },
                text = {
                    {
                        "{C:mult}+#2#{} Множителя за каждую уничтоженную игральную карту за это забег",
                        "{C:inactive}(Сейчас{} {C:mult}+#3#{} {C:inactive}Множителя){}",
                    },
                },
            },
            j_joy_pendulumoon = {
                name = "{C:joy_pendulum_effect}ПендуЛуЛуна",
                joy_consumable = {
                    "{C:attention}Воскресить #1#{} {C:joy_pendulum}Пендулум{} как {C:dark_edition}Негативный{}",
                },
                text = {
                    {
                        "Отправляет {C:attention}#2#{} {C:joy_pendulum}Пендулум{} в {C:attention}GY{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                    {
                        "Не может быть {C:attention}воскрешён{}",
                    },
                },
            },
            j_joy_pandora = {
                name = "{C:joy_pendulum_effect}Шкатулка Пандоры",
                joy_consumable = {
                    "Дать случайному {C:joy_pendulum}Пендулуму{} случайный {C:dark_edition}Тираж{}"
                },
                text = {
                    {
                        "{C:blue}+#1#{} Руки при выборе {C:attention}Блайнда{}",
                        "если у вас нет карт в {C:joy_spell}Экстра колоде{}",
                    },
                }
            },
            j_joy_anchamoufrite = {
                name = "{C:joy_pendulum_effect}Аншамуфрит",
                joy_consumable = {
                    "Во время {C:attention}Блайнда{}, вытянуть {C:attention}#1#{} дополнительных карт"
                },
                text = {
                    {
                        "{C:attention}+#2#{} размер руки при выборе {C:attention}Блайнда{}",
                        "если у вас нет карт в {C:joy_spell}Экстра колоде{}",
                    },
                }
            },
            j_joy_zany = {
                name = "{C:joy_pendulum_effect}Забавная Зебра",
                joy_consumable = {
                    "Если у вас {C:attention}#1# Джокеров{} или меньше (после использования),",
                    "навсегда потерять {C:red}#2#{} слот {C:attention}Джокера{} и",
                    "дать всем {C:attention}Джокерам{} {C:dark_edition}Полихром{}"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{} Множителя, если у вас {C:attention}#1# Джокеров{} или меньше",
                    },
                }
            },
            j_joy_pendulumucho = {
                name = "{C:joy_pendulum_effect}Пендулумачо",
                joy_consumable = {
                    "{C:attention}Воскресить #1#{} {C:joy_pendulum}Пендулум{}",
                },
                text = {
                    {
                        "{C:attention}Воскрешает #2#{} {C:joy_pendulum}Пендулум{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Не может быть {C:attention}воскрешён{}",
                    },
                }
            },
            j_joy_moissa = {
                name = "{C:joy_pendulum_effect}Рыцарь Муасса, Комета-Генерал",
                joy_consumable = {
                    "Добавить {C:attention}#1#{} {C:joy_pendulum}Пендулум{} в магазин"
                },
                text = {
                    {
                        "Получает {C:chips}+#2#{} Фишек за каждого купленного {C:joy_pendulum}Пендулум{}",
                        "{C:inactive}(Сейчас {C:chips}+#3#{}{C:inactive} Фишек)",
                    },
                }
            },
            j_joy_pmcaptor = {
                name = "{C:joy_pendulum_effect}П.М. Захватчик",
                joy_consumable = {
                    "{C:attention}Воскресить #1#{} {C:joy_pendulum}Пендулум{}",
                    "{C:inactive}(Кроме \"П.М. Захватчик\"){}"
                },
                text = {
                    {
                        "{C:joy_normal}Зомби{} не могут быть ослаблены",
                        "Не-{C:joy_trap}Ловушка{} {C:joy_normal}Зомби{} не могут быть {C:attention}перевёрнуты{}",
                    },
                }
            },
            j_joy_metrognome = {
                name = "{C:joy_pendulum_effect}Метроном",
                joy_consumable = {
                    "Создать {C:attention}#1#{} {C:joy_pendulum}Пендулум{} самой частой редкости",
                    "{C:inactive}(Нужно место) (Случайный если несколько)"
                },
                text = {
                    {
                        "Каждый {C:joy_pendulum}Пендулум{} с",
                        "самой частой редкостью даёт {C:mult}+#2#{} Множителя",
                    },
                }
            },
            j_joy_bozu = {
                name = "{C:joy_pendulum_effect}Дождевой Бодзю",
                joy_consumable = {
                    "Случайный {C:joy_normal}Монстр{} {C:attention}Джокер{} получает",
                    "текущие Фишки и Множитель этой карты"
                },
                text = {
                    {
                        "Получает {C:chips}+#1#{} Фишек за каждую карту в {C:joy_spell}Экстра колоде{}",
                        "и {C:mult}+#2#{} Множителя за каждый пустой слот {C:joy_spell}Экстра колоды{}",
                        "при выборе {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас {C:chips}+#3#{}{C:inactive} Фишек и {C:mult}+#4#{} {C:inactive}Множителя)",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Фишек {C:mult}+#2#{} Множителя",
                }
            },
            j_joy_disablaster = {
                name = "{C:joy_pendulum_effect}Дизабластер Крепость Отрицания",
                joy_consumable = {
                    "{C:money}+$#1#{} за каждый раз, когда {C:attention}Джокер{} способность этой карты",
                    "увеличила засчитанный Множитель",
                    "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{} Множителя, если ни одна карта не сыграна в этой {C:attention}колонне{}",
                        "{C:inactive}(Снижается чем выше колонна)",
                        "{C:inactive}(Сейчас в {C:attention}колонне #4#{}{C:inactive})",
                    },
                }
            },
        }
    },
}
