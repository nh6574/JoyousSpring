return {
    descriptions = {
        Joker = {
            j_joy_yokai_ogre = {
                name = "{C:joy_effect}Призрачный Огр и Снежный Кролик",
                text = {
                    {
                        "Уничтожает каждую сыгранную карту в разыгранной руке",
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждую",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                },
            },
            j_joy_yokai_reaper = {
                name = "{C:joy_effect}Призрачный Жнец и Зимняя Вишня",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Множителя за каждого",
                        "{C:joy_spell}Экстра колоду{} {C:attention}Джокера{} на {C:attention}GY{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                },
            },
            j_joy_yokai_ash = {
                name = "{C:joy_effect}Пепельный Цветок и Радостная Весна",
                text = {
                    {
                        "Шанс {C:green}#1# из #2#{} не добирать карты",
                        "после розыгрыша/сброса",
                    },
                    {
                        "Получает {X:mult,C:white}X#3#{} Множителя каждый раз, когда",
                        "{C:joy_effect}\"Пепельный Цветок и Радостная Весна\"{}",
                        "активирует предыдущий эффект",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#4#{} {C:inactive}Множителя){}",
                    },
                },
            },
            j_joy_yokai_belle = {
                name = "{C:joy_effect}Призрачная Белль и Особняк с Привидениями",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждого",
                        "{C:attention}воскрешённого{} {C:attention}Джокера{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                },
            },
            j_joy_yokai_sister = {
                name = "{C:joy_effect}Призрачная Сестра и Пугающий Кизил",
                text = {
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждый",
                        "расходник, использованный во время {C:attention}Блайнда{}",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                    {
                        "Если ни один не использован в этом раунде, {C:red}вы проигрываете{}",
                    },
                },
            },
            j_joy_yokai_mourner = {
                name = "{C:joy_effect}Призрачный Скорбящий и Лунный Холод",
                text = {
                    {
                        "Навсегда ослабляет каждого {C:blue}Обычного{}",
                        "и {C:green}Необычного{} {C:attention}Джокера{} который {C:attention}входит в игру{}"
                    },
                    {
                        "Получает {X:mult,C:white}X#1#{} Множителя за каждого проданного ослабленного",
                        "{C:inactive}(Сейчас{} {X:mult,C:white}X#2#{} {C:inactive}Множителя){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_yokai = "Призрачные Девочки",
        }
    }
}
