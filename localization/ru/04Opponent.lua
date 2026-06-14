return {
    descriptions = {
        joy_Opponent = {
            --#region Effect
            opp_joy_dimensionshifter = {
                name = "{C:joy_effect}Dimension Shifter",
                text = {
                    "{C:attention}Изгоняет{} первого {C:attention}Джокера{} купленного",
                    "в каждом магазине до конца анте"
                }
            },
            opp_joy_droll = {
                name = "{C:joy_effect}Droll & Lock Bird",
                text = {
                    "Вы можете купить",
                    "только один предмет за магазин",
                    "{C:inactive}(кроме Вучеров)"
                }
            },
            opp_joy_kurikara = {
                name = "{C:joy_effect}Kurikara Divincarnate",
                text = {
                    "{C:attention}Жертвует{} {C:attention}Джокера{} с",
                    "наивысшей редкостью случайно",
                    "и {C:attention}воскрешает{} {C:attention}Джокера{} той",
                    "же редкости, но с другим именем",
                    "если возможно в конце анте"
                }
            },
            opp_joy_nibiru = {
                name = "{C:joy_effect}Nibiru, the Primal Being",
                text = {
                    "Карты {C:attention}призванные{}",
                    "немедленно {C:attention}жертвуются{} после",
                    "{C:attention}5{}го призыва {C:inactive}(#1#/5)"
                }
            },
            opp_joy_theia = {
                name = "{C:joy_effect}Theia, the Primal Being",
                text = {
                    "{C:attention}Жертвует{} {C:red}Редких {C:attention}Джокеров{} что",
                    "{C:attention}входят в игру{} если у вас есть другой {C:red}Редкий {C:attention}Джокер{}",
                }
            },
            opp_joy_parasiteparacide = {
                name = "{C:joy_effect}Parasite Paracide",
                text = {
                    "{X:mult,C:white}X#1#{} Множителя"
                }
            },
            opp_joy_parasiteparanoid = {
                name = "{C:joy_effect}Parasite Paranoid",
                text = {
                    "Все {C:attention}Джокеры{}",
                    "считаются {C:joy_normal}Насекомыми{}",
                }
            },
            --#endregion
            --#region Spell
            opp_joy_bookofeclipse = {
                name = "{C:joy_spell}Book of Eclipse",
                text = {
                    "{C:attention}Джокеры{} не могут {C:attention}перевернуться{} лицом вверх"
                }
            },
            opp_joy_bookoflunareclipse = {
                name = "{C:joy_spell}Book of Lunar Eclipse",
                text = {
                    "{C:attention}Переворачивает 2 Джокеров{}",
                    "каждый раунд",
                }
            },
            opp_joy_bookofmoon = {
                name = "{C:joy_spell}Book of Moon",
                text = {
                    "{C:attention}Переворачивает{} {C:attention}Джокера{} в рубашку",
                    "в конце раунда",
                }
            },
            opp_joy_bookoftaiyou = {
                name = "{C:joy_spell}Book of Taiyou",
                text = {
                    "{C:attention}Джокеры{} не могут {C:attention}перевернуться{} лицом вниз"
                }
            },
            opp_joy_cosmiccyclone = {
                name = "{C:joy_spell}Cosmic Cyclone",
                text = {
                    "{C:attention}Изгоняет{} {C:joy_spell}Полевое заклинание{}",
                    "при выборе {C:attention}Блайнда{}",
                    "до начала {C:attention}Босс Блайнда{}"
                }
            },
            opp_joy_drnm = {
                name = "{C:joy_spell}Dark Ruler No More",
                text = {
                    "Случайный {C:green}Необычный {C:attention}Джокер",
                    "ослабляется каждый раунд",
                    "до конца раунда"
                }
            },
            opp_joy_forchalice = {
                name = "{C:joy_spell}Forbidden Chalice",
                text = {
                    "Ослабляет другого {C:joy_effect}Эффект{} {C:attention}Джокера{} каждый раунд",
                    "но этот {C:attention}Джокер{} даёт {X:mult,C:white}X#1#{} Множителя"
                }
            },
            opp_joy_fordress = {
                name = "{C:joy_spell}Forbidden Dress",
                text = {
                    "Сыгранные карты в разыгранной руке",
                    "дают {X:chips,C:white}X#1#{} Фишек",
                    "но игральные карты не могут быть ослаблены"
                }
            },
            opp_joy_fordroplet = {
                name = "{C:joy_spell}Forbidden Droplet",
                text = {
                    "Ослабляет {C:joy_effect}Эффект{}, {C:joy_trap}Ловушку",
                    "или {C:joy_spell}Полевое заклинание {C:attention}Джокера{}",
                    "Циклически переключается между опциями каждый раунд",
                    "{C:inactive}(Сейчас #1#){}"
                }
            },
            opp_joy_forlance = {
                name = "{C:joy_spell}Forbidden Lance",
                text = {
                    "Все {C:joy_effect}Эффект{} {C:attention}Джокеры дают {X:mult,C:white}X#1#{} Множителя",
                    "но не могут быть {C:attention}перевёрнуты{} в рубашку",
                    "или ослаблены"
                }
            },
            opp_joy_forscript = {
                name = "{C:joy_spell}Forbidden Scripture",
                text = {
                    "{C:dark_edition}Модификации{} не применяются"
                }
            },
            opp_joy_harpiesfeatherduster = {
                name = "{C:joy_spell}Harpie's Feather Duster",
                text = {
                    "Уменьшает слоты {C:joy_spell}Полевых заклинаний{} на {C:attention}1{}",
                }
            },
            opp_joy_lightningstorm = {
                name = "{C:joy_spell}Lightning Storm",
                text = {
                    "Уничтожает все {C:joy_spell}Полевые заклинания",
                    "или всех {C:attention}Джокеров{} если нет ни одного",
                    "в конце анте"
                }
            },
            opp_joy_necrovalley = {
                name = "{C:joy_spell}Necrovalley",
                text = {
                    "{C:attention}Джокеры{} не могут быть {C:attention}воскрешены{}"
                }
            },
            opp_joy_senetswitch = {
                name = "{C:joy_spell}Senet Switch",
                text = {
                    "Случайный {C:attention}Джокер{}",
                    "{C:attention}прикрепляется{} влево каждый раунд",
                    "до конца раунда"
                }
            },
            opp_joy_superpoly = {
                name = "{C:joy_spell}Super Polymerization",
                text = {
                    "Нельзя призывать {C:attention}Джокеров{}",
                    "кроме {C:joy_fusion}Фьюжнов{}"
                }
            },
            opp_joy_terminalworld = {
                name = "{C:joy_spell}Terminal World",
                text = {
                    "{C:attention}Большой Блайнд",
                    "не может быть выбран"
                }
            },
            opp_joy_terminalworldnext = {
                name = "{C:joy_spell}Terminal World NEXT",
                text = {
                    "Слоты {C:attention}Джокеров{}",
                    "уменьшены на {C:attention}2{}"
                }
            },
            opp_joy_ultimateslayer = {
                name = "{C:joy_spell}Ultimate Slayer",
                text = {
                    "Только {V:1}#1#{} {C:attention}Джокеры{}",
                    "могут быть {C:attention}призваны"
                }
            },
            --#endregion
            --#region Trap
            opp_joy_chaindisappearance = {
                name = "{C:joy_trap}Chain Disappearance",
                text = {
                    "Каждый раз, когда {C:attention}Джокер{} {C:attention}призывается",
                    "{C:attention}изгоняет{} всех остальных с тем же {C:attention}Типом{}",
                    "или {C:attention}Атрибутом{} до конца раунда"
                }
            },
            opp_joy_chaindispel = {
                name = "{C:joy_trap}Chain Dispel",
                text = {
                    "{C:joy_effect}FLIP{}: Уничтожает всех {C:attention}Джокеров",
                    "с тем же именем, кроме одного",
                    "{C:inactive}(включая Полевые заклинания)"
                }
            },
            opp_joy_chainhole = {
                name = "{C:joy_trap}Chain Hole",
                text = {
                    "Изгоняет всех {C:attention}Джокеров",
                    "с тем же именем, кроме одного",
                    "при выборе {C:attention}Блайнда{}",
                    "до конца раунда",
                    "{C:inactive}(включая Полевые заклинания)"
                }
            },
            opp_joy_evenly = {
                name = "{C:joy_trap}Evenly Matched",
                text = {
                    "{C:attention}Джокер{} {C:attention}изгоняется{}",
                    "при выборе {C:attention}Блайнда{}",
                    "до выбора следующего {C:attention}Блайнда{}"
                }
            },
            opp_joy_imperialironwall = {
                name = "{C:joy_trap}Imperial Iron Wall",
                text = {
                    "Карты не могут быть {C:attention}изгнаны"
                }
            },
            opp_joy_imperialorder = {
                name = "{C:joy_trap}Imperial Order",
                text = {
                    "{C:joy_spell}Полевые заклинания{} ослаблены",
                    "каждый раунд до конца раунда"
                }
            },
            opp_joy_imperm = {
                name = "{C:joy_trap}Infinite Impermanence",
                text = {
                    "Не-{C:joy_trap}Ловушка {C:joy_effect}Эффект {C:attention}Джокер",
                    "ослабляется каждый раунд",
                    "до конца раунда"
                }
            },
            opp_joy_lightforcesword = {
                name = "{C:joy_trap}Lightforce Sword",
                text = {
                    "{C:attention}Изгоняет 1{} сыгранную карту из каждой",
                    "разыгранной руки до конца анте"
                }
            },
            opp_joy_macrocosmos = {
                name = "{C:joy_trap}Macro Cosmos",
                text = {
                    "Никакие карты не отправляются",
                    "на {C:attention}GY"
                }
            },
            opp_joy_redreboot = {
                name = "{C:joy_trap}Red Reboot",
                text = {
                    "{C:joy_trap}Ловушка{} ослабляется каждый раунд",
                    "до конца раунда"
                }
            },
            --#endregion
        },
    },
    misc = {
        dictionary = {
            k_joy_opponent = "Оппонент",
            k_joy_opponentcards = "Карты оппонента",
            --#region Card specific
            k_joy_ultimateslayer_type = "[тип призыва уничтожен блайндом]"
            --#endregion
        }
    }
}
