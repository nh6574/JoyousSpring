return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}Sauravis, the Ancient and Ascended",
                text = {
                    {
                        "Sell this card to disable the current",
                        "active {C:attention}Blinds{} and add it to",
                        "the next shop",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each time",
                        "the previous ability of {C:joy_ritual}\"Sauravis, the Ancient and Ascended\"",
                        "was used this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}Lycanthrope",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Normal{} {C:attention}Joker{} owned or in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Normal {C:attention}Joker{}",
                }
            },
            j_joy_skullguardian = {
                name = "{C:joy_ritual}Skull Guardian",
                text = {
                    {
                        "{C:mult}+#1#{} Mult"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1 Joker{}",
                }
            },
            j_joy_saffira = {
                name = "{C:joy_ritual}Saffira, Queen of Dragons",
                text = {
                    {
                        "Gains abilities depending on the number of",
                        "{C:joy_light}LIGHT{} {C:attention}Jokers tributed{}:",
                        "{C:attention}+#1#{} hand size next round for each {C:inactive}(+#3#){}",
                        "{C:red}+#2#{} discards next round for every {C:attention}3{} {C:inactive}(+#4#){}",
                        "Adds a {C:joy_light}LIGHT{} {C:attention}Joker{}",
                        "to the {C:joy_link}Side Deck{} for each {C:attention}5{} {C:inactive}(#5#/5){}",
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{},",
                    "including a {C:joy_light}LIGHT{}"
                }
            },
            j_joy_chulainn = {
                name = "{C:joy_ritual}Cú Chulainn the Awakened",
                text = {
                    {
                        "Removes up to {C:attention}#1#{} {C:joy_normal}Normal{} {C:attention}Jokers{}",
                        "from the {C:attention}GY{} at end of round",
                        "and gains {C:mult}+#2#{} Mult for each",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)"
                    },
                    {
                        "Sends {C:attention}#4#{} {C:joy_normal}Normal{} {C:attention}Joker{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1 Joker{}",
                }
            },
            j_joy_northwemko = {
                name = "{C:joy_ritual}Divine Grace - Northwemko",
                text = {
                    {
                        "Once, you can activate this ability to make",
                        "selected playing cards in hand up to the number",
                        "of {C:attention}materials{} used for this card's {C:attention}summon{}",
                        "give {X:chips,C:white}X#1#{} Chips when scored in played hand",
                        "while this {C:joy_ritual}\"Divine Grace - Northwemko\"{} is owned"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1+ {C:joy_light}LIGHT{} {C:attention}Jokers{}",
                }
            },
            j_joy_shinato = {
                name = "{C:joy_ritual}Shinato, King of a Higher Plane",
                text = {
                    {
                        "{X:chips,C:white}X#1#{} Chips"
                    },
                    {
                        "Destroys itself after a hand is played",
                        "if the hand's score {C:red}catches fire{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{},",
                    "including a {C:joy_light}LIGHT{} {C:attention}Joker{}"
                }
            },
            j_joy_vennu = {
                name = "{C:joy_ritual}Vennu, Bright Bird of Divinity",
                text = {
                    {
                        "Once per round, when a {C:attention}Joker{} is {C:attention}tributed{},",
                        "{C:attention}revives{} a {C:joy_light}LIGHT{} {C:attention}Joker{}"
                    },
                    {
                        "Next {C:green}probability{} after this card returns",
                        "from {C:attention}banishment{} is guaranteed"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{},",
                    "including a {C:joy_light}LIGHT{} {C:attention}Joker{}"
                }
            },
            j_joy_reshef = {
                name = "{C:joy_ritual}Reshef the Dark Being",
                text = {
                    {
                        "You can {C:attention}tribute 1{} {C:joy_spell}Field Spell{}",
                        "to create {C:attention}1 {C:joy_effect}Effect{} {C:attention}Joker{}",
                        "{C:inactive}(Must have room)"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}3 Jokers{}",
                }
            },
            j_joy_garlandolf = {
                name = "{C:joy_ritual}Garlandolf, King of Destruction",
                text = {
                    {
                        "Destroys all other {C:attention}Jokers{} when {C:attention}summoned{}",
                        "and gains {X:chips,C:white}X#1#{} Chips for each",
                        "{C:inactive}(Currently {X:chips,C:white}X#2#{}{C:inactive} Chips)"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1 {C:joy_light}DARK{} {C:attention}Joker{}",
                    "Doesn't need room",
                }
            },
        },
        Other = {
            joy_northwemko = {
                name = "Graced by Northwemko",
                text = {
                    "This card gives {X:chips,C:white}X4{} Chips",
                    "when scored in played hand",
                    "while {C:joy_ritual}\"Divine Grace - Northwemko\"{} is owned",
                }
            }
        }
    },
}
