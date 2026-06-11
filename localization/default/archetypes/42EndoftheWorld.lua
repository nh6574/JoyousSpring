return {
    descriptions = {
        Joker = {
            j_joy_eotw_ruinangel = {
                name = "{C:joy_ritual}Ruin, Angel of Oblivion",
                text = {
                    {
                        "Retriggers all scoring cards",
                        "in played hand once"
                    },
                    {
                        "Applies a random {C:dark_edition}Edition{}",
                        "to a {C:joy_ritual}Ritual{} when {C:attention}tributed{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1{} {C:joy_light}LIGHT{} {C:attention}Joker{}"
                }
            },
            j_joy_eotw_ruin = {
                name = "{C:joy_ritual}Ruin, Queen of Oblivion",
                text = {
                    {
                        "Retriggers all scoring cards",
                        "in played hand twice"
                    },
                    {
                        "Gives {C:money}+$#1#{} for each",
                        "other {C:joy_ritual}Ritual{} when {C:attention}tributed{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2{} {C:joy_light}LIGHT{} {C:attention}Jokers{}"
                }
            },
            j_joy_eotw_ruinsupreme = {
                name = "{C:joy_ritual}Ruin, Supreme Queen of Oblivion",
                text = {
                    {
                        "Retriggers all scoring cards",
                        "in played hand once for each",
                        "{C:joy_ritual}Ritual{} used for its {C:attention}summon{}"
                    },
                    {
                        "{C:joy_ritual}Rituals{} can't be debuffed",
                        "or {C:attention}flipped{} face-down"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2+{} {C:joy_light}LIGHT{} {C:attention}Jokers{}"
                }
            },
            j_joy_eotw_demiseagent = {
                name = "{C:joy_ritual}Demise, Agent of Armageddon",
                text = {
                    {
                        "{C:mult}+#1#{} Mult"
                    },
                    {
                        "Destroys the last scoring card",
                        "in played hand"
                    },
                    {
                        "Applies a random {C:dark_edition}Edition{}",
                        "to a {C:joy_ritual}Ritual{} when {C:attention}tributed{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1{} {C:joy_dark}DARK{} {C:attention}Joker{}"
                }
            },
            j_joy_eotw_demise = {
                name = "{C:joy_ritual}Demise, King of Armageddon",
                text = {
                    {
                        "Gives {C:mult}+#1#{} Mult for each",
                        "scoring card in played hand,",
                        "then destroys them"
                    },
                    {
                        "Gives {C:money}+$#1#{} for each",
                        "other {C:joy_ritual}Ritual{} when {C:attention}tributed{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2{} {C:joy_dark}DARK{} {C:attention}Jokers{}"
                }
            },
            j_joy_eotw_demisesupreme = {
                name = "{C:joy_ritual}Demise, Supreme King of Armageddon",
                text = {
                    {
                        "Once per round, you can destroy selected cards in hand",
                        "up to the number of {C:attention}materials{} used for its {C:attention}summon{}",
                        "to give an extra {X:chips,C:white}X#1#{} Chips for each this round",
                        "{C:inactive}(Currently {X:chips,C:white}X#2#{}{C:inactive} Chips)"
                    },
                    {
                        "{C:joy_ritual}Rituals{} can't be debuffed",
                        "or {C:attention}flipped{} face-down"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2+{} {C:joy_dark}DARK{} {C:attention}Jokers{}"
                }
            },
            j_joy_eotw_ruler = {
                name = "{C:joy_ritual}End of the World Ruler",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_ritual}Ritual{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Once per round, you can destroy",
                        "any number of selected cards in hand",
                        "to retrigger each scoring card",
                        "in the next hand played",
                        "{C:inactive}(Currently {C:attention}#3#{C:inactive} retriggers)"
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1{} {C:joy_dark}DARK{} {C:joy_ritual}Ritual{}",
                    "+ {C:attention}1{} {C:joy_light}LIGHT{} {C:joy_ritual}Ritual{}"
                }
            },
            j_joy_eotw_breaking = {
                name = "{C:joy_spell}Breaking of the World",
                text = {
                    {
                        "Gives {C:money}+$#1#{} each time a card",
                        "is {C:attention}tributed{} for a {C:joy_ritual}Ritual{}"
                    },
                    {
                        "Once per ante, adds a {C:joy_normal}\"Ruin\"{}",
                        "or {C:joy_normal}\"Demise\"{} to the {C:joy_link}Side Deck{}",
                        "when a {C:joy_ritual}Ritual{} is {C:attention}tributed{}"
                    }
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            eotw = {
                story = {
                    "{C:joy_ritual}\"Demise\"{}, the one who destroys the world with all his might, and {C:joy_ritual}\"Ruin\"{}, the one who brings about gentle destruction so that there may be rebirth. Their existences are two sides of the same coin - the moment one has finished their goal, the other appears to take their place, continuing the eternal cycle of the world's destruction.",
                },
                gameplay = {
                    "General {C:joy_ritual}Ritual{} support that likes to be paired with {C:joy_normal}Dogmatika{}, {C:joy_normal}Voiceless {C:joy_normal}Voice{} or {C:joy_normal}Drytron{}."
                }
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_eotw = "End of the World",
        }
    }
}
