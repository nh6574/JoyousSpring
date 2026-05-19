return {
    descriptions = {
        Joker = {
            j_joy_firewall_saber = {
                name = "{C:joy_synchro}Файрволл Сабельный Дракон",
                text = {
                    {
                        "{C:attention}Воскрешает #1#{} {C:joy_spell}Экстра колода{} {C:joy_normal}Киберса{} как {C:dark_edition}Негативного{} при {C:attention}входе в игру{}",
                    },
                    {
                        "Создаёт {C:attention}#2#{} {C:dark_edition}Негативных{} {C:spectral}Спектрал{} при использовании как {C:attention}материал{} для {C:joy_link}Линка{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Киберс{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_bishbaalkin = {
                name = "{C:joy_synchro}Фантазмальный Владыка Ультимитл Бишбаалкин",
                text = {
                    {
                        "{C:mult}+#1#{} Множителя за каждого неослабленного {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас {C:mult}+#2#{}{C:inactive} Множителя)",
                    },
                    {
                        "Уничтожает всех других не-{C:joy_token}Токен{} неослабленных {C:attention}Джокеров{}",
                        "в конце раунда и создаёт столько же",
                        "{C:dark_edition}Негативных{} {C:joy_token}\"Токенов Утчацимиме\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} {C:red}Редкий{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_token_utchatzimime = {
                name = "{C:joy_token}Токен Утчацимиме",
                text = {
                    {
                        "Эта карта может быть использована как любой {C:joy_token}Токен{}",
                    },
                }
            },
            j_joy_fishlamp = {
                name = "{C:joy_synchro}Рыба-Лампа",
                text = {
                    {
                        "Добавляет {C:attention}#1#{} {C:joy_normal}Рыбу{} {C:joy_synchro}Синхро{} в {C:joy_spell}Экстра колоду{}",
                        "при использовании как {C:attention}материал{} и создаёт до {C:attention}#2#{}",
                        "{C:joy_token}\"Токенов Ламп\"{} которые могут считаться любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
            j_joy_token_lamp = {
                name = "{C:joy_token}Токен Лампы",
                text = {
                    {
                        "Эта карта может быть использована как любой {C:joy_token}Токен{}",
                    },
                    {
                        "Считается любым {C:attention}материалом{} для {C:joy_synchro}Синхро{}",
                    },
                }
            },
            j_joy_afd = {
                name = "{C:joy_synchro}Древний Фея-Дракон",
                text = {
                    {
                        "Создаёт {C:attention}#1#{} {C:joy_synchro}Тюнер{} при {C:attention}входе в игру{}",
                        "{C:inactive}(Нужно место)",
                    },
                    {
                        "Уничтожает {C:attention}#2#{} случайных {C:joy_spell}Полевых заклинаний{} при выборе {C:attention}Блайнда{}",
                        "чтобы получить {C:money}+$#3#{} затем создаёт {C:attention}#2#{} {C:joy_spell}Полевых заклинания{}",
                        "{C:inactive}(Нужно место)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Тюнер{} +",
                    "{C:attention}1{} не-{C:joy_synchro}Тюнер{}",
                    "{s:0.9,C:inactive}(Кроме {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} или {s:0.9,C:joy_link}Линков{}{s:0.9,C:inactive})",
                }
            },
        }
    },
}
