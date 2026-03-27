return {
    descriptions = {
        Joker = {
            j_joy_token_bee = {
                name = "{C:joy_token}Beetrooper Token",
                text = {
                    {
                        "This card can be used as any {C:joy_token}Token{}",
                    },
                },
            },
            j_joy_bee_scout = {
                name = "{C:joy_effect}Beetrooper Scout Buggy",
                text = {
                    {
                        "Each {C:joy_normal}Insect{} gives {C:mult}+#1#{} Mult",
                    },
                    {
                        "Creates as many {C:joy_effect}\"Beetrooper Scout Buggy\"",
                        "as possible when obtained {C:inactive}(Except by \"Beetrooper Scout Buggy\"){}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_bee_bomber = {
                name = "{C:joy_effect}Beetrooper Scale Bomber",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Insect{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "You can {C:attention}tribute 1{} {C:joy_normal}Insect{}",
                        "to make each {C:joy_normal}Insect{} give {X:mult,C:white}X#3#{} Mult this round"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_bee_roller = {
                name = "{C:joy_effect}Beetrooper Assault Roller",
                text = {
                    {
                        "{C:money}+$#1#{} at end of round for each {C:joy_normal}Insect{}",
                        "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "Creates {C:attention}1{} {C:joy_normal}Main Deck \"Beetrooper\"{}",
                        "when used as {C:attention}material{} for an {C:joy_normal}Insect{}",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_bee_flapper = {
                name = "{C:joy_effect}Beetrooper Light Flapper",
                text = {
                    {
                        "Sell this card to apply an {C:dark_edition}Edition{}",
                        "to an {C:joy_normal}Insect{} you own",
                        "{C:inactive}(Except Negative){}"
                    },
                    {
                        "{C:attention}Revives up to 2{} {C:joy_normal}Insects{}",
                        "when used as {C:attention}material{} for an {C:joy_normal}Insect{}",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_bee_lancer = {
                name = "{C:joy_effect}Beetrooper Sting Lancer",
                text = {
                    {
                        "You can remove all {C:joy_normal}Insects{} from the {C:attention}GY{} {C:inactive}(Min. 5){}",
                        "to add {C:attention}1{} {C:joy_normal}\"Beetrooper\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Sends {C:attention}5{} {C:joy_normal}Insects{} to the {C:attention}GY{}",
                        "when used as {C:attention}material{} for an {C:joy_normal}Insect{}",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_bee_neptune = {
                name = "{C:joy_effect}Heavy Beetrooper Mighty Neptune",
                text = {
                    {
                        "Removes {C:attention}3{} {C:joy_normal}Insects{} from the {C:attention}GY{}",
                        "at end of round and, if it does, {C:attention}banishes{} itself",
                        "and any number of {C:joy_normal}Insects{} until you're left with an open {C:attention}Joker{} slot",
                        "and until {C:attention}Blind{} is selected"
                    },
                    {
                        "Creates {C:attention}2{} {C:joy_normal}Main Deck \"Beetrooper\"{}",
                        "when used as {C:attention}material{} for an {C:joy_normal}Insect{}",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_bee_armor = {
                name = "{C:joy_link}Beetrooper Armor Horn",
                text = {
                    {
                        "Sends {C:attention}3{} {C:joy_normal}Insects{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Sends {C:attention}10{} {C:joy_normal}Insects{} to the {C:attention}GY{}",
                        "when used as {C:attention}material{} for an {C:joy_normal}Insect{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Insects{}",
                    "Doesn't need room",
                }
            },
            j_joy_bee_atlas = {
                name = "{C:joy_link}Giant Beetrooper Invincible Atlas",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_normal}Insect{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Once per round, you can tribute {C:attention}1{} {C:joy_effect}Effect{} {C:joy_normal}Insect{}",
                        "to create as many {C:joy_token}\"Beetrooper Token\"{} as possible",
                        "{C:inactive}(Must have room)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:joy_normal}Insects{}",
                    "Doesn't need room",
                }
            },
            j_joy_bee_saturnas = {
                name = "{C:joy_fusion}Beetrooper Cruel Saturnas",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_normal}Main Deck Insect{}",
                        "when an {C:joy_normal}Insect{} is {C:attention}banished{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Cards in the {C:attention}GY{} count as owned",
                        "for {C:joy_normal}Insect{} abilities",
                        "{C:inactive}(Only for original type){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Insects{}",
                    "Doesn't need room",
                }
            },
            j_joy_bee_hercules = {
                name = "{C:joy_fusion}Ultra Beetrooper Absolute Hercules",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "{C:attention}Revives{} as many {C:joy_normal}Insects{}",
                        "with different names as possible at end of ante",
                        "{C:inactive}(Doesn't need room){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:joy_normal}Insects{}",
                    "Doesn't need room",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_bee = "Beetrooper",
        }
    }
}
