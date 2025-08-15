return {
    descriptions = {
        Joker = {
            j_joy_eld_eldlich = {
                name = "{C:joy_effect}Arcalich el Señor Dorado",
                text = {
                    {
                        "{C:attention}Gold{} cards give {C:money}+$#1#{} when scored for each",
                        "{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
                    },
                    {
                        "Scored cards become {C:attention}Gold{} cards after scoring",
                    },
                    {
                        "Once per round, you can {C:attention}tribute #2#{} {C:joy_normal}Zombie{} or {C:joy_trap}Trap{} {C:attention}Joker",
                        "to create {C:attention}#3#{} {C:joy_normal}Main Deck \"Golden Land\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_eld_conq = {
                name = "{C:joy_trap}Conquistador de la Tierra Dorada",
                text = {
                    {
                        "{C:attention}Gold{} cards give {C:chips}+#1#{} Chips when scored for each",
                        "{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
                    },
                    {
                        "Retriggers all scored cards with an enhancement once",
                        "including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:red}+#2#{} Discard this round",
                    },
                }
            },
            j_joy_eld_guard = {
                name = "{C:joy_trap}Guardián de la Tierra Dorada",
                text = {
                    {
                        "{C:attention}Gold{} cards give {C:mult}+#1#{} Mult when scored for each",
                        "{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
                    },
                    {
                        "Retriggers all scored cards with an enhancement once",
                        "including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:blue}+#2#{} Hand this round",
                    },
                }
            },
            j_joy_eld_huaq = {
                name = "{C:joy_trap}Huaquero de la Tierra Dorada",
                text = {
                    {
                        "{C:attention}Gold{} cards give {C:chips}+#1#{} Chips when scored for each",
                        "{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
                    },
                    {
                        "Retriggers all scored cards with an enhancement once",
                        "including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Banish #2#{} {C:joy_normal}Zombie{} at end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                }
            },
            j_joy_eld_glorious = {
                name = "{C:joy_trap}Arcalixir de la Tierra Dorada Gloriosa",
                text = {
                    {
                        "{C:attention}Gold{} cards give {C:mult}+#1#{} Mult when scored for each",
                        "{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
                    },
                    {
                        "Retriggers all scored cards with an enhancement once",
                        "including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Revive #2#{} {C:joy_normal}\"Golden Land\"{} or {C:attention}#2#{} {C:joy_trap}Trap{} if none",
                    },
                }
            },
            j_joy_eld_mad = {
                name = "{C:joy_fusion}Arcalich el Loco Señor Dorado",
                text = {
                    {
                        "{C:attention}Gold{} cards give an extra {X:mult,C:white}X#1#{} Mult when scored for each",
                        "{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
                    },
                    {
                        "All played cards become {C:attention}Gold{} cards after scoring",
                    },
                    {
                        "{C:joy_trap}Traps{} don't {C:attention}flip{} face-down on their own",
                        "and their {C:joy_effect}FLIP{} abilities activate when {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Eldlich\"{} + {C:attention}1{} {C:joy_normal}Zombie{}"
                }
            },
            j_joy_eld_angel = {
                name = "{C:joy_fusion}Ángel Caído de la Tierra Dorada",
                text = {
                    {
                        "Enables {C:attention}Eldlixir{} hands",
                        "Levels up {C:attention}Eldlixir{} when {C:joy_trap}Traps{} are {C:attention}flipped{} face-up",
                        "{C:inactive}(Or their FLIP abilities activate)",
                    },
                    {
                        "Sends {C:attention}#1#{} {C:joy_effect}\"Eldlich the Golden Lord\"{} to the {C:attention}GY{}",
                        "if played hand contains an {C:attention}Eldlixir{}",
                    },
                    {
                        "{C:attention}Revives #2#{} {C:joy_normal}\"Eldlich\"{} as {C:dark_edition}Negative{} if",
                        "this owned card is sent to the {C:attention}GY{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{}, including a {C:joy_trap}Trap{}"
                }
            },
        },
        Planet = {
            c_joy_cursed_eldland = {
                name = "{C:joy_spell}Arcalandia Maldita"
            }
        },
        JoyPokerHand = {
            phd_joy_eldlixir = {
                name = "Arcalixir",
                text = {
                    "5 cartas de {C:attention}oro{}",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_eldlixir = "Arcalixir"
        },
        poker_hand_descriptions = {
            joy_eldlixir = {
                "5 cartas de {C:attention}oro{}",
                "{C:inactive}(Debe ser habilitada por un efecto)"
            }
        },
        dictionary = {
            k_joy_archetype_eld = "Arcalich",
        }
    }
}
