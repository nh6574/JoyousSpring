return {
    descriptions = {
        Joker = {
            j_joy_centur_primera = {
                name = "{C:joy_effect}Центурион Примера",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя"
                    },
                    {
                        "Если эта карта в {C:joy_link}Сайд деке{},",
                        "{C:joy_synchro}Синхро{} не могут быть ослаблены или {C:attention}перевёрнуты{} в рубашку"
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_effect}\"Центуриона Примеру\"{} в {C:joy_link}Сайд деке{} и",
                        "добавляет {C:attention}1{} {C:joy_spell}Экстра колода{} {C:joy_normal}\"Центуриона\"{} в магазин",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                }
            },
            j_joy_centur_atrii = {
                name = "{C:joy_effect}Центурион Атрий",
                text = {
                    {
                        "{C:chips}+#1#{} Фишек"
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_effect}\"Центуриона Атрий\"{} в {C:joy_link}Сайд деке{} и",
                        "добавляет {C:attention}+#2#{} размер руки до конца раунда",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                }
            },
            j_joy_centur_chimerea = {
                name = "{C:joy_effect}Центурион Химерея",
                text = {
                    {
                        "{C:money}+$#1#{} когда сыграна рука"
                    },
                    {
                        "Если эта карта в {C:joy_link}Сайд деке{},",
                        "{C:joy_synchro}Синхро{} бесплатны в магазине"
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_effect}\"Центуриона Химерею\"{} в {C:joy_link}Сайд деке{} и",
                        "добавляет {C:attention}1{} {C:joy_normal}Главная колода \"Центурион\"{} в магазин",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                }
            },
            j_joy_centur_trudea = {
                name = "{C:joy_effect}Центурион Трудея",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя"
                    },
                    {
                        "Если эта карта в {C:joy_link}Сайд деке{},",
                        "{C:joy_normal}\"Центурион\"{} не может быть {C:attention}перевёрнут{} в рубашку"
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_effect}\"Центуриона Трудею\"{} в {C:joy_link}Сайд деке{} и",
                        "добавляет {C:attention}1{} {C:joy_spell}\"Встать, Центурионы!\"{} в магазин",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                }
            },
            j_joy_centur_gargoyle = {
                name = "{C:joy_effect}Центурион Горгулья II",
                text = {
                    {
                        "{X:chips,C:white}X#1#{} Фишек"
                    },
                    {
                        "Если эта карта в {C:joy_link}Сайд деке{},",
                        "{C:attention}Портящиеся{} карты дают {X:mult,C:white}X#2#{} Множителя"
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_effect}\"Центуриона Горгулью II\"{} в {C:joy_link}Сайд деке{} и",
                        "{C:attention}воскрешает 1{} {C:joy_normal}\"Центуриона\"{}",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                }
            },
            j_joy_centur_emeth = {
                name = "{C:joy_effect}Центурион Эмет VI",
                text = {
                    {
                        "Повторно активирует самую левую карту",
                        "в руке подсчёта дважды"
                    },
                    {
                        "Если эта карта в {C:joy_link}Сайд деке{},",
                        "{C:joy_synchro}Синхро{} дают {C:mult}+#1#{} Множителя",
                        "за каждого {C:joy_normal}\"Центуриона\"{} в {C:attention}GY{}"
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_effect}\"Центуриона Эмета VI\"{} в {C:joy_link}Сайд деке{} и",
                        "отправляет {C:attention}2{} {C:joy_normal}\"Центурионов\"{} в {C:attention}GY{}",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                }
            },
            j_joy_centur_primus = {
                name = "{C:joy_synchro}Центурион Примера Примус",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя",
                        "за каждое {C:joy_synchro}Синхро{} {C:attention}призванное{} за это забег",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Вы можете {C:attention}пожертвовать{} эту карту",
                        "и другое {C:joy_synchro}Синхро{} чтобы добавить",
                        "{C:attention}2 Портящихся{} {C:joy_normal}\"Центуриона\"{} в {C:joy_spell}Экстра колоду{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_centur_auxila = {
                name = "{C:joy_synchro}Центурион Ауксила",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя",
                        "за каждую карту в {C:joy_link}Сайд деке{}",
                        "{C:inactive}(Сейчас {X:mult,C:white}X#2#{}{C:inactive} Множителя)"
                    },
                    {
                        "Создаёт {C:attention}1 Портящегося{} {C:joy_normal}Главная колода \"Центурион\"{} в {C:joy_link}Сайд деке{} и",
                        "добавляет {C:attention}1{} {C:joy_normal}\"Центуриона\"{} в {C:joy_spell}Экстра колоду{}",
                        "при использовании как {C:attention}материал{} для {C:joy_synchro}Синхро{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_centur_legatia = {
                name = "{C:joy_synchro}Центурион Легатия",
                text = {
                    {
                        "Использует {C:joy_normal}\"Центурионов\"{} в",
                        "{C:joy_link}Сайд деке{} как своих",
                        "{C:inactive,s:0.85}(Джокеры из Экстра колоды должны быть правильно призваны){}"
                    },
                    {
                        "Возвращается в {C:joy_spell}Экстра колоду{} в конце раунда",
                        "и, если это сделано, позволяет пропустить {C:joy_link}Сайд дек{}",
                        "в этом раунде даже если слоты заполнены"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Синхро{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:joy_synchro}Синхро{} не-{C:joy_synchro}Тюнер{}",
                }
            },
            j_joy_centur_standup = {
                name = "{C:joy_spell}Встать, Центурионы!",
                text = {
                    {
                        "Раз за раунд, создаёт все карты использованные для призыва",
                        "как {C:attention}Портящиеся{} в {C:joy_link}Сайд деке{}"
                    },
                    {
                        "Если карта {C:attention}Портится{},",
                        "создаёт {C:attention}1 Портящегося{} {C:joy_normal}\"Центуриона\"{} в {C:joy_link}Сайд деке{}"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_centur = "Центурион",
        }
    }
}
