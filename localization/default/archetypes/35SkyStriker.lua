return {
    descriptions = {
        Joker = {
            j_joy_striker_raye = {
                name = "{C:joy_effect}Sky Striker Ace - Raye",
                text = {
                    {
                        "Cards in {C:planet}Celestial Packs{} can be",
                        "saved to the consumable area"
                    },
                    {
                        "You can {C:attention}tribute 1{} {C:planet}Planet{}",
                        "to {C:attention}transform{} this card into",
                        "an appropriate {C:joy_normal}\"Sky Striker Ace\"{} {C:joy_link}Link{}",
                        "{C:inactive}(This is treated as a Link summon)"
                    },
                    {
                        "A {C:joy_link}Link{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,X:mult,C:white}X#1#{s:0.9} Mult if played hand contains",
                        "{s:0.9,C:attention}[hand for tributed Planet]{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Transforms{s:0.9} into {s:0.9,C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                        "{s:0.9}at end of round"
                    },
                },
                joy_transfer_ability = {
                    "{X:mult,C:white}X#1#{} Mult if",
                    "played hand contains",
                    "{C:attention}#2#{}",
                    " ",
                    "{C:attention}Transforms{} into {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "at end of round"
                }
            },
            j_joy_striker_roze = {
                name = "{C:joy_effect}Sky Striker Ace - Roze",
                text = {
                    {
                        "Adds {C:attention}1{} {C:planet}Celestial Pack{}",
                        "to each shop",
                    },
                    {
                        "When obtained, creates {C:attention}1{} {C:joy_effect}\"Sky Striker Ace - Raye\"",
                        "if not owned, or adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "to the {C:joy_spell}Extra Deck{} otherwise",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "A {C:joy_link}Link{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Mult for each",
                        "{s:0.9,C:planet}Planet{s:0.9} {s:0.9,C:attention}tributed{s:0.9} this run",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Revives 1{s:0.9} {s:0.9,C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                        "{s:0.9}at end of round"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each",
                    "{C:planet}Planet{} {C:attention}tributed{} this run",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    " ",
                    "{C:attention}Revives 1{} {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "at end of round"
                }
            },
            j_joy_striker_hamp = {
                name = "{C:joy_effect}Surgical Striker - H.A.M.P.",
                text = {
                    {
                        "Used {C:planet}Planet{} cards while this card is owned",
                        "count as tributed for abilities",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each",
                        "{C:joy_link}Link{} summoned this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    }
                }
            },
            j_joy_striker_aileron = {
                name = "{C:joy_effect}Aileron",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult if played hand contains",
                        "the poker hand of an owned",
                        "{C:joy_normal}\"Sky Striker Ace\"{} {C:joy_link}Link{}'s associated {C:planet}Planet{}"
                    },
                    {
                        "Sell this card to create",
                        "{C:attention}#2#{} {C:planet}Planet{} cards"
                    }
                }
            },
            j_joy_striker_cyanos = {
                name = "{C:joy_effect}Pillar of the Future - Cyanos",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_effect}\"Sky Striker Ace - Roze\"{}",
                        "when {C:attention}Boss Blind{} is defeated"
                    },
                    {
                        "Sell this card to create",
                        "{C:attention}#2# Celestial Tags"
                    }
                }
            },
            j_joy_striker_ciela = {
                name = "{C:joy_effect}Sage of Benevolence - Ciela",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet{} cards",
                        "when obtained"
                    },
                    {
                        "You can destroy this card to create {C:attention}1{}",
                        "{C:joy_effect}\"Sage of Benevolence - Ciela\"{} in the {C:joy_trap}Opponent{}'s area"
                    }
                }
            },
            j_joy_striker_akash = {
                name = "{C:joy_effect}Sage of Strength - Akash",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet{} cards",
                        "when obtained"
                    },
                    {
                        "You can destroy this card to create {C:attention}1{}",
                        "{C:joy_effect}\"Sage of Strength - Akash\"{} in the {C:joy_trap}Opponent{}'s area"
                    }
                }
            },
            j_joy_striker_himmel = {
                name = "{C:joy_effect}Sage of Wisdom - Himmel",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet{} cards",
                        "when obtained"
                    },
                    {
                        "You can destroy this card to create {C:attention}1{}",
                        "{C:joy_effect}\"Sage of Wisdom - Himmel\"{} in the {C:joy_trap}Opponent{}'s area"
                    }
                }
            },
            j_joy_striker_areazero = {
                name = "{C:joy_spell}Sky Striker Airspace - Area Zero",
                text = {
                    {
                        "{C:planet}Planet{} cards may appear",
                        "multiple times"
                    },
                    {
                        "When a hand is played and you own a {C:joy_link}Link{},",
                        "creates {C:attention}1{} debuffed {C:dark_edition}Negative{}",
                        "{C:planet}Planet{} for that poker hand"
                    },
                    {
                        "When this card is sold or {C:attention}tributed{},",
                        "creates {C:attention}1{} {C:joy_effect}\"Sky Striker Ace - Raye\"{}"
                    }
                }
            },
            j_joy_striker_hayate = {
                name = "{C:joy_link}Sky Striker Ace - Hayate",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:planet}Planet",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{} not summoned this round",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#2#/3){}:",
                        "this round, creates {C:attention}1{} {C:planet}Planet{}",
                        "for each poker hand discarded",
                        "{C:inactive}(Must have room)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} non-{C:joy_wind}WIND{} {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute Earth{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_kagari = {
                name = "{C:joy_link}Sky Striker Ace - Kagari",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_shizuku = {
                name = "{C:joy_link}Sky Striker Ace - Shizuku",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_kaina = {
                name = "{C:joy_link}Sky Striker Ace - Kaina",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_amatsu = {
                name = "{C:joy_link}Prototype Sky Striker Ace - Amatsu",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_zeke = {
                name = "{C:joy_link}Sky Striker Ace - Zeke",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_azalea = {
                name = "{C:joy_link}Sky Striker Ace - Azalea",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_azaleatemp = {
                name = "{C:joy_link}Sky Striker Ace - Azalea Temperance",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_camellia = {
                name = "{C:joy_link}Sky Striker Ace - Camellia",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_zero = {
                name = "{C:joy_link}Sky Striker Ace = Zero",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_combined = {
                name = "{C:joy_link}Combined Maneuver - Engage Zero!",
                text = {
                    {
                        "TBD"
                    }
                }
            },
            j_joy_striker_spectra = {
                name = "{C:joy_link}Surgical Striker - S.P.E.C.T.R.A",
                text = {
                    {
                        "TBD"
                    }
                }
            },
        },
        joy_Opponent = {
            opp_joy_striker_ciela = {
                name = "{C:joy_effect}Sage of Benevolence - Ciela",
                text = {
                    {
                        "{C:attention}Level up{} the appropriate",
                        "poker hand for {C:attention}tributed{} {C:planet}Planet{} cards",
                    }
                }
            },
            opp_joy_striker_akash = {
                name = "{C:joy_effect}Sage of Strength - Akash",
                text = {
                    {
                        "{C:attention}Revives 1 tributed{}",
                        "{C:joy_link}Link{} at end of round"
                    }
                }
            },
            opp_joy_striker_himmel = {
                name = "{C:joy_effect}Sage of Wisdom - Himmel",
                text = {
                    {
                        "Creates {C:attention}2{} random",
                        "{C:planet}Planet{} cards {C:attention}tributed{} this round",
                        "at end of round"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_striker = "Sky Striker",
            k_joy_archetype_striker_ace = "Sky Striker Ace",
        }
    }
}
