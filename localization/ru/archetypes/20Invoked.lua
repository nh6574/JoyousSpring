return {
    descriptions = {
        Joker = {
            j_joy_invoked_aleister = {
                name = "{C:joy_effect}Алейстер Призывающий",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в",
                        "подходящего {C:joy_normal}\"Призванный\"",
                        "{C:inactive}(Это считается Фьюжн призывом)",
                    },
                    {
                        "{C:joy_fusion}Фьюжн{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:chips}+#2#{} {s:0.9}Фишек за каждый {s:0.9,C:joy_fusion}Фьюжн{} {s:0.9}призванный в этом забеге",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Фишек за каждый {C:joy_fusion}Фьюжн{} призванный в этом забеге",
                    "{C:inactive}(Сейчас {C:chips}+#2#{} {C:inactive}Фишек)"
                }
            },
            j_joy_invoked_madness = {
                name = "{C:joy_link}Алейстер Призывающий Безумия",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_normal}\"Призванный\"",
                        "{C:inactive}(Это считается Фьюжн призывом)",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:joy_spell}\"Магическое Расплавление\"{} при использовании",
                        "как {C:attention}материал{} для {C:joy_fusion}Фьюжна{}",
                        "{C:inactive}(Нужно место)",
                    },
                    {
                        "{C:joy_fusion}Фьюжн{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#3#{} {s:0.9}Множителя за каждый {s:0.9,C:joy_fusion}Фьюжн{} {s:0.9}призванный в этом забеге",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Джокера{} с",
                    "разными {C:attention}Типами",
                    "и {C:attention}Атрибутами"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждый {C:joy_fusion}Фьюжн{} призванный в этом забеге",
                    "{C:inactive}(Сейчас {C:mult}+#2#{} {C:inactive}Множителя)"
                }
            },
            j_joy_invoked_caliga = {
                name = "{C:joy_fusion}Призванный Калига",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Получает {X:mult,C:white}X#2#{} Множителя за каждого {C:attention}Джокера{} {C:attention}пожертвованного{} в этом забеге",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#3#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Уменьшает цену {C:joy_effect}Паков Монстров{} на {C:money}$#4#",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_dark}ТЬМА {C:attention}Джокера{}",
                    "{s:0.8,C:inactive}(Случайный шанс при жертвовании",
                    "{s:0.8,C:inactive}не-Монстра)"
                },
                joy_transfer_ability = {
                    "Получает {X:mult,C:white}X#1#{} Множителя за каждого {C:attention}Джокера{} {C:attention}пожертвованного{} в этом забеге",
                    "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    " ",
                    "Уменьшает цену {C:joy_effect}Паков Монстров{} на {C:money}$#3#"
                }
            },
            j_joy_invoked_raidjin = {
                name = "{C:joy_fusion}Призванный Рейджин",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Получает {X:mult,C:white}X#2#{} Множителя за каждого {C:attention}Джокера{} {C:attention}перевёрнутого{} в этом забеге",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#3#{} {C:inactive}Множителя){}",
                    },
                    {
                        "{C:attention}Переворачивает #4#{} другого случайного {C:attention}Джокера{} лицом вверх при выборе {C:attention}Блайнда{}",
                        "{C:attention}Переворачивает #4#{} другого случайного {C:attention}Джокера{} в рубашку в конце раунда",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_wind}ВЕТЕР {C:attention}Джокера{}",
                    "{s:0.8,C:inactive}(Случайный шанс при жертвовании",
                    "{s:0.8,C:inactive}не-Монстра)"
                },
                joy_transfer_ability = {
                    "Получает {X:mult,C:white}X#1#{} Множителя за каждого {C:attention}Джокера{} {C:attention}перевёрнутого{} в этом забеге",
                    "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    " ",
                    "{C:attention}Переворачивает #3#{} другого случайного {C:attention}Джокера{} лицом вверх при выборе {C:attention}Блайнда{}",
                    "{C:attention}Переворачивает #3#{} другого случайного {C:attention}Джокера{} в рубашку в конце раунда",
                }
            },
            j_joy_invoked_cocytus = {
                name = "{C:joy_fusion}Призванный Коцит",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Снижает требование {C:attention}Блайнда{} на {C:red}#2#%",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_water}ВОДА {C:attention}Джокера{}",
                    "{s:0.8,C:inactive}(Случайный шанс при жертвовании",
                    "{s:0.8,C:inactive}не-Монстра)"
                },
                joy_transfer_ability = {
                    "Снижает требование {C:attention}Блайнда{} на {C:red}#1#%",
                }
            },
            j_joy_invoked_purgatorio = {
                name = "{C:joy_fusion}Призванный Пургатрио",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Каждый {C:joy_fusion}Фьюжн{} даёт {X:mult,C:white}X#2#{} Множителя",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_fire}ОГОНЬ {C:attention}Джокера{}",
                    "{s:0.8,C:inactive}(Случайный шанс при жертвовании",
                    "{s:0.8,C:inactive}не-Монстра)"
                },
                joy_transfer_ability = {
                    "Каждый {C:joy_fusion}Фьюжн{} даёт {X:mult,C:white}X#1#{} Множителя",
                }
            },
            j_joy_invoked_mage = {
                name = "{C:joy_fusion}Призванный Магелланика",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "{C:mult}+#2#{} Множителя",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_earth}ЗЕМЛЯ {C:attention}Джокера{}",
                    "{s:0.8,C:inactive}(Случайный шанс при жертвовании",
                    "{s:0.8,C:inactive}не-Монстра)"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя",
                }
            },
            j_joy_invoked_mechaba = {
                name = "{C:joy_fusion}Призванный Мехаба",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Отключает все эффекты {C:attention}Блайнда{} в этом анте",
                        "после того, как {C:attention}#2#{} карт продано в этом раунде {C:inactive}(#3#/#2#)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_light}СВЕТ {C:attention}Джокера{}",
                    "{s:0.8,C:inactive}(Случайный шанс при жертвовании",
                    "{s:0.8,C:inactive}не-Монстра)"
                },
                joy_transfer_ability = {
                    "Отключает все эффекты {C:attention}Блайнда{} в этом анте",
                    "после того, как {C:attention}#2#{} карт продано в этом раунде {C:inactive}(#2#/#1#)"
                }
            },
            j_joy_invoked_augo = {
                name = "{C:joy_fusion}Призванный Аугоеидес",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Получает {X:mult,C:white}X#2#{} Множителя за каждый {C:joy_fusion}Фьюжн{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#3#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Отправляет {C:attention}#4#{} не-{C:joy_normal}\"Призванный\"{} {C:joy_fusion}Фьюжны{} в {C:attention}GY{}",
                        "при выборе {C:attention}Блайнда{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} {C:joy_fusion}Фьюжн",
                    "{s:0.8,C:inactive}(Заменяет другие условия)",
                },
                joy_transfer_ability = {
                    "Получает {X:mult,C:white}X#1#{} Множителя за каждый {C:joy_fusion}Фьюжн{} в {C:attention}GY{}",
                    "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    " ",
                    "Отправляет {C:attention}#3#{} не-{C:joy_normal}\"Призванный\"{} {C:joy_fusion}Фьюжны{} в {C:attention}GY{}",
                    "при выборе {C:attention}Блайнда{}",
                }
            },
            j_joy_invoked_elysium = {
                name = "{C:joy_fusion}Призванный Элизиум",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} другого {C:attention}Джокера",
                        "чтобы {C:attention}трансформировать{} эту карту в {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Получает способности каждого разного {C:joy_normal}\"Призванный\"{} в {C:attention}GY{}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_fusion}Фьюжн",
                        "и любым {C:attention}Атрибутом{} пока у вас",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Пожертвовать 1{} призванный",
                    "не-{C:joy_fusion}Фьюжн",
                    "{s:0.8,C:inactive}(Заменяет другие условия)",
                }
            },
            j_joy_invoked_meltdown = {
                name = "{C:joy_spell}Магическое Расплавление",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать #1#{} {C:joy_fusion}Фьюжны{} чтобы создать {C:attention}#2#{} {C:joy_effect}\"Алейстер Призывающий\"",
                    },
                    {
                        "Получает {X:mult,C:white}X#3#{} Множителя за каждый {C:joy_fusion}фьюжн{} призванный в этом забеге",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#4#{} {C:inactive}Множителя){}",
                    },
                    {
                        "{C:joy_fusion}Фьюжны{} не могут быть перевёрнуты или ослаблены",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_invoked = "Призванный",
        }
    }
}
