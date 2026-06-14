return {
    descriptions = {
        Joker = {
            j_joy_token_striker = {
                name = "{C:joy_token}Токен Небесного Туз-Пилота",
                text = {
                    {
                        "Эта карта может быть использована как любой {C:joy_token}Токен{}",
                    },
                },
            },
            j_joy_striker_raye = {
                name = "{C:joy_effect}Небесный Туз-Пилот - Рей",
                text = {
                    {
                        "Карты в {C:planet}Небесных Паках{} можно",
                        "сохранять в зону расходников"
                    },
                    {
                        "Вы можете {C:attention}пожертвовать 1{} {C:planet}Планету{}",
                        "чтобы {C:attention}трансформировать{} эту карту в",
                        "подходящего {C:joy_normal}\"Небесного Туз-Пилота\"{} {C:joy_link}Линк{}",
                        "{C:inactive}(Это считается Линк призывом)"
                    },
                    {
                        "{C:joy_link}Линк{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,X:mult,C:white}X#1#{s:0.9} Множителя, если сыгранная рука содержит",
                        "{s:0.9,C:attention}[рука для пожертвованной Планеты]{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Трансформируется{s:0.9} в {s:0.9,C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}",
                        "{s:0.9}в конце раунда"
                    },
                },
                joy_transfer_ability = {
                    "{X:mult,C:white}X#1#{} Множителя, если",
                    "сыгранная рука содержит",
                    "{C:attention}#2#{}",
                    " ",
                    "{C:attention}Трансформируется{} в {C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}",
                    "в конце раунда"
                }
            },
            j_joy_striker_roze = {
                name = "{C:joy_effect}Небесный Туз-Пилот - Розе",
                text = {
                    {
                        "Добавляет {C:attention}1{} {C:planet}Небесный Пак{}",
                        "в каждый магазин",
                    },
                    {
                        "При {C:attention}входе в игру{}, создаёт {C:attention}1{} {C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}",
                        "если нет такой, или добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "в {C:joy_spell}Экстра колоду{} иначе",
                        "{C:inactive}(Нужно место)"
                    },
                    {
                        "{C:joy_link}Линк{} призванный с использованием этой карты",
                        "как {C:attention}материал{} получает следующую способность:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Множителя за каждую",
                        "{s:0.9,C:planet}Планету{s:0.9} {s:0.9,C:attention}пожертвованную{s:0.9} за это забег",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Воскрешает 1{s:0.9} {s:0.9,C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}",
                        "{s:0.9}в конце раунда"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Множителя за каждую",
                    "{C:planet}Планету{} {C:attention}пожертвованную{} за это забег",
                    "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                    " ",
                    "{C:attention}Воскрешает 1{} {C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}",
                    "в конце раунда"
                }
            },
            j_joy_striker_hamp = {
                name = "{C:joy_effect}Хирургический Удар - H.A.M.P.",
                text = {
                    {
                        "Использованные {C:planet}Планеты{} пока эта карта у вас",
                        "считаются пожертвованными для способностей",
                    },
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый",
                        "{C:joy_link}Линк{} призванный за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{} {C:inactive}Множителя)",
                    }
                }
            },
            j_joy_striker_aileron = {
                name = "{C:joy_effect}Элерон",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя, если сыгранная рука содержит",
                        "покерную руку связанной {C:planet}Планеты{}",
                        "{C:joy_normal}\"Небесного Туз-Пилота\"{} {C:joy_link}Линка{}"
                    },
                    {
                        "Продайте эту карту, чтобы создать",
                        "{C:attention}#2#{} {C:planet}Планеты{}"
                    }
                }
            },
            j_joy_striker_cyanos = {
                name = "{C:joy_effect}Столп Будущего - Сианос",
                text = {
                    {
                        "Создаёт {C:attention}1{} {C:joy_effect}\"Небесного Туз-Пилота - Розе\"{}",
                        "при победе над {C:attention}Босс Блайндом{}"
                    },
                    {
                        "Продайте эту карту, чтобы создать",
                        "{C:attention}#2# Небесных Тегов{}"
                    }
                }
            },
            j_joy_striker_ciela = {
                name = "{C:joy_effect}Мудрец Благожелательности - Сиела",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:dark_edition}Негативных{} {C:planet}Планет{}",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "Вы можете уничтожить эту карту, чтобы создать {C:attention}1{}",
                        "{C:joy_effect}\"Мудрец Благожелательности - Сиела\"{} в зоне {C:joy_trap}Оппонента{}"
                    }
                }
            },
            j_joy_striker_akash = {
                name = "{C:joy_effect}Мудрец Силы - Акаш",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:dark_edition}Негативных{} {C:planet}Планет{}",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "Вы можете уничтожить эту карту, чтобы создать {C:attention}1{}",
                        "{C:joy_effect}\"Мудрец Силы - Акаш\"{} в зоне {C:joy_trap}Оппонента{}"
                    }
                }
            },
            j_joy_striker_himmel = {
                name = "{C:joy_effect}Мудрец Мудрости - Химмель",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:dark_edition}Негативных{} {C:planet}Планет{}",
                        "при {C:attention}входе в игру{}"
                    },
                    {
                        "Вы можете уничтожить эту карту, чтобы создать {C:attention}1{}",
                        "{C:joy_effect}\"Мудрец Мудрости - Химмель\"{} в зоне {C:joy_trap}Оппонента{}"
                    }
                }
            },
            j_joy_striker_areazero = {
                name = "{C:joy_spell}Небесное Воздушное Пространство - Зона Ноль",
                text = {
                    {
                        "{C:planet}Планеты{} могут появляться",
                        "несколько раз"
                    },
                    {
                        "Когда рука сыграна и у вас есть {C:joy_link}Линк{},",
                        "создаёт {C:attention}1{} ослабленную {C:dark_edition}Негативную{}",
                        "{C:planet}Планету{} для этой покерной руки"
                    },
                    {
                        "Когда эта карта продана или {C:attention}пожертвована{},",
                        "создаёт {C:attention}1{} {C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}"
                    }
                }
            },
            j_joy_striker_hayate = {
                name = "{C:joy_link}Небесный Туз-Пилот - Хаяте",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек за каждую {C:planet}Планету{}",
                        "{C:attention}пожертвованную{} в этом раунде",
                        "{C:inactive}(Сейчас {C:chips}+#2#{} {C:inactive}Фишек)",
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#3#/3){}:",
                        "в этом раунде, создаёт {C:attention}1{} {C:planet}Планету{}",
                        "за каждую сброшенную покерную руку",
                        "{C:inactive}(Нужно место)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} не-{C:joy_wind}WIND{} {C:joy_normal}\"Небесный Туз-Пилот\"{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Землю{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_kagari = {
                name = "{C:joy_link}Небесный Туз-Пилот - Кагари",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждую {C:planet}Планету{}",
                        "{C:attention}пожертвованную{} в этом раунде",
                        "{C:inactive}(Сейчас {C:mult}+#2#{} {C:inactive}Множителя)",
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#3#/3){}:",
                        "создаёт все {C:attention}пожертвованные{}",
                        "{C:planet}Планеты{} как {C:dark_edition}Негативные{}",
                        "при {C:attention}входе в игру{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} не-{C:joy_fire}FIRE{} {C:joy_normal}\"Небесный Туз-Пилот\"{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Марс{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_shizuku = {
                name = "{C:joy_link}Небесный Туз-Пилот - Шизуку",
                text = {
                    {
                        "{C:money}+$#1#{} в конце раунда",
                        "за каждую {C:planet}Планету{} {C:attention}пожертвованную{} в этом раунде",
                        "{C:inactive}(Сейчас {C:money}+$#2#{C:inactive})",
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#3#/3){}:",
                        "создаёт {C:dark_edition}Негативную{} {C:planet}Планету{}",
                        "связанную с каждым {C:joy_normal}\"Небесным Туз-Пилотом\"{}",
                        "призванным в этом раунде в конце раунда",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} не-{C:joy_water}Water{} {C:joy_normal}\"Небесный Туз-Пилот\"{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Нептун{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_kaina = {
                name = "{C:joy_link}Небесный Туз-Пилот - Каина",
                text = {
                    {
                        "Делает все {C:planet}Планеты{} у вас",
                        "{C:dark_edition}Негативными{} при {C:attention}входе в игру{}"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#1#/3){}:",
                        "{C:attention}повышает уровень{} руки каждой разной",
                        "{C:planet}Планеты{} {C:attention}пожертвованной{} в этом раунде",
                        "при {C:attention}входе в игру{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} не-{C:joy_earth}Earth{} {C:joy_normal}\"Небесный Туз-Пилот\"{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Венеру{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_amatsu = {
                name = "{C:joy_link}Прототип Небесного Туз-Пилота - Амацу",
                text = {
                    {
                        "Вы можете {C:attention}пожертвовать{} {C:joy_normal}\"Небесного Туз-Пилота\"{} {C:joy_link}Линк{}",
                        "чтобы создать {C:attention}#1#{} {C:dark_edition}Негативных{} {C:planet}Планет{}"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#2#/3){}:",
                        "{C:attention}воскрешает 1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "при {C:attention}входе в игру{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Небесный Туз-Пилот\"{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Плутон{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_zeke = {
                name = "{C:joy_link}Небесный Туз-Пилот - Зик",
                text = {
                    {
                        "{C:attention}Изгоняет{} все {C:attention}расходники{}",
                        "кроме {C:planet}Планет{} при {C:attention}входе в игру{},",
                        "и если это сделано, создаёт {C:attention}1{} {C:dark_edition}Негативный{}",
                        "{C:joy_token}\"Токен Небесного Туз-Пилота\"{}"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#1#/3){}:",
                        "{C:attention}изгоняет{} всех {C:joy_normal}\"Небесных\"{}",
                        "в конце раунда до выбора {C:attention}Блайнда{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "включая {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Юпитер{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_azalea = {
                name = "{C:joy_link}Небесный Туз-Пилот - Азалия",
                text = {
                    {
                        "{C:attention}+#1#{} размер руки в этом раунде",
                        "за каждую {C:planet}Планету{} {C:attention}пожертвованную{} в этом раунде",
                        "{C:inactive}(Сейчас {C:attention}+#2#{}{C:inactive})"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать 1{} {C:tarot}Таро{}",
                        "чтобы {C:attention}трансформировать{} эту карту в",
                        "{C:joy_link}\"Небесный Туз-Пилот - Азалия Умеренность\"{}",
                        "{C:inactive}(Это считается Линк призывом){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_light}LIGHT{} и/или",
                    "{C:joy_dark}DARK{} {C:attention}Джокера{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Уран{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_azaleatemp = {
                name = "{C:joy_link}Небесный Туз-Пилот - Азалия Умеренность",
                text = {
                    {
                        "Цена продажи этой карты увеличивается на",
                        "{C:money}+$#1#{} за каждую {C:tarot}Верховную Жрицу{}",
                        "использованную за это забег при {C:attention}входе в игру{}",
                        "{C:inactive}(Сейчас {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "Создаёт как можно больше {C:tarot}Верховных Жриц{}",
                        "в конце раунда"
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#3#/3){}:",
                        "до конца раунда,",
                        "{C:tarot}Таро{} {C:attention}пожертвованные{}",
                        "считаются {C:planet}Планетами{}",
                        "для способностей {C:joy_normal}\"Небесного\"{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "включая {C:joy_link}Линк{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_camellia = {
                name = "{C:joy_link}Небесный Туз-Пилот - Камелия",
                text = {
                    {
                        "Создаёт как можно больше {C:planet}Планет{}",
                        "для вашей самой сыгранной руки",
                        "при выборе {C:attention}Блайнда{}"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать 1{} {C:spectral}Спектрал{}",
                        "чтобы создать {C:attention}#1#{} {C:dark_edition}Негативных{}",
                        "{C:planet}Планет{} и {C:joy_normal}\"Небесного\"{}",
                        "в зоне {C:joy_trap}Оппонента{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Эффект{} {C:attention}Джокера{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Сатурн{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_zero = {
                name = "{C:joy_link}Небесный Туз-Пилот = Zero",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый",
                        "уровень руки выше {C:attention}1{}",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#3#/3){}:",
                        "создаёт {C:attention}1{} {C:joy_effect}\"Небесного Туз-Пилота - Розе\"{}",
                        "при {C:attention}входе в игру{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Небесных Туз-Пилота\"{},",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Меркурий{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_combined = {
                name = "{C:joy_link}Комбинированный Манёвр - Engage Zero!",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого",
                        "{C:joy_normal}\"Небесного\"{} в {C:attention}GY{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Отправляет {C:attention}#1#{} {C:joy_normal}\"Небесных Туз-Пилотов\"{}",
                        "в {C:attention}GY{} при выборе {C:attention}Блайнда{}"
                    },
                    {
                        "Если {C:attention}3 или больше{} {C:planet}Планет{}",
                        "было {C:attention}пожертвовано{} в этом раунде {C:inactive}(#3#/3){}:",
                        "продайте эту карту, чтобы {C:attention}воскресить 1{}",
                        "{C:joy_effect}\"Небесного Туз-Пилота - Рей\"{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_light}LIGHT{} и/или",
                    "{C:joy_dark}DARK{} {C:attention}Джокера{}",
                    "ИЛИ {C:attention}Пожертвуйте{} {C:attention}модную{} {C:planet}Планету{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
            j_joy_striker_spectra = {
                name = "{C:joy_link}Хирургический Удар - S.P.E.C.T.R.A",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя, если сыгранная рука",
                        "содержит {C:attention}Пять Одинаковых{},",
                        "{C:attention}Флеш Хаус{} или {C:attention}Флеш Пять{}"
                    },
                    {
                        "Добавляет {C:attention}1{} {C:joy_normal}\"Небесного Туз-Пилота\"{}",
                        "{C:inactive}(не призванного в этом раунде, если возможно){}",
                        "в {C:joy_spell}Экстра колоду{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} все {C:planet}Планеты{} {C:inactive}(мин. 3){}",
                        "чтобы снизить требование {C:attention}Блайнда{} на {C:red}%#2#{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Джокера{},",
                    "включая {C:joy_link}Линк{}",
                    "ИЛИ {C:attention}Пожертвуйте {C:planet}Планету X{}",
                    "{C:planet}Цереру{} или {C:planet}Эриду{}",
                    "с {C:joy_effect}\"Небесным Туз-Пилотом - Рей\"{}",
                    "{C:inactive}(Можно призывать только раз за раунд){}"
                }
            },
        },
        joy_Opponent = {
            opp_joy_striker_ciela = {
                name = "{C:joy_effect}Мудрец Благожелательности - Сиела",
                text = {
                    {
                        "{C:attention}Повышает уровень{} соответствующей",
                        "покерной руки для {C:attention}пожертвованных{} {C:planet}Планет{}",
                    }
                }
            },
            opp_joy_striker_akash = {
                name = "{C:joy_effect}Мудрец Силы - Акаш",
                text = {
                    {
                        "{C:attention}Воскрешает 1 пожертвованного{}",
                        "{C:joy_link}Линка{} в конце раунда"
                    }
                }
            },
            opp_joy_striker_himmel = {
                name = "{C:joy_effect}Мудрец Мудрости - Химмель",
                text = {
                    {
                        "Создаёт {C:attention}2{} случайных",
                        "{C:planet}Планеты{} {C:attention}пожертвованных{} в этом раунде",
                        "в конце раунда"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_striker = "Небесные",
            k_joy_archetype_striker_ace = "Небесный Туз-Пилот",
        }
    }
}
