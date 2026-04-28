return {
    descriptions = {
        Joker = {
            j_joy_token_striker = {
                name = "{C:joy_token}Sky Striker Ace Token",
                text = {
                    {
                        "This card can be used as any {C:joy_token}Token{}",
                    },
                },
            },
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
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "this round, creates {C:attention}1{} {C:planet}Planet{}",
                        "for each poker hand discarded",
                        "{C:inactive}(Must have room)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} non-{C:joy_wind}WIND{} {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute {C:planet}Earth{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_kagari = {
                name = "{C:joy_link}Sky Striker Ace - Kagari",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:planet}Planet",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "creates all {C:attention}tributed{}",
                        "{C:planet}Planet{} cards as {C:dark_edition}Negative{}",
                        "when summoned"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} non-{C:joy_fire}FIRE{} {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute {C:planet}Mars{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_shizuku = {
                name = "{C:joy_link}Sky Striker Ace - Shizuku",
                text = {
                    {
                        "{C:money}+$#1#{} at end of round",
                        "for each {C:planet}Planet {C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:money}+$#2#{C:inactive})",
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "creates a {C:dark_edition}Negative{} {C:planet}Planet{}",
                        "associated with each {C:joy_normal}\"Sky Striker Ace\"",
                        "summoned this round at end of round",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} non-{C:joy_water}Water{} {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute {C:planet}Neptune{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_kaina = {
                name = "{C:joy_link}Sky Striker Ace - Kaina",
                text = {
                    {
                        "Makes all owned {C:planet}Planet{} cards",
                        "{C:dark_edition}Negative{} when summoned"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#1#/3){}:",
                        "{C:attention}levels up{} the hand of each different",
                        "{C:planet}Planet{} {C:attention}tributed{} this round",
                        "when summoned"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} non-{C:joy_earth}Earth{} {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute {C:planet}Venus{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_amatsu = {
                name = "{C:joy_link}Prototype Sky Striker Ace - Amatsu",
                text = {
                    {
                        "You can {C:attention}tribute{} a {C:joy_normal}\"Sky Striker Ace\"{} {C:joy_link}Link{}",
                        "to create {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet{} cards"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#2#/3){}:",
                        "{C:attention}revives 1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "when summoned"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute {C:planet}Pluto{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_zeke = {
                name = "{C:joy_link}Sky Striker Ace - Zeke",
                text = {
                    {
                        "{C:attention}Banishes{} all {C:attention}consumables{}",
                        "except {C:planet}Planet{} cards when summoned,",
                        "and if it did, creates {C:attention}1{} {C:dark_edition}Negative{}",
                        "{C:joy_token}\"Sky Striker Ace Token\"{}"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#1#/3){}:",
                        "{C:attention}banishes{} all {C:joy_normal}\"Sky Striker\"{}",
                        "at end of round until {C:attention}Blind{} is selected"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "including a {C:joy_normal}\"Sky Striker Ace\"{}",
                    "OR {C:attention}Tribute {C:planet}Jupiter{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_azalea = {
                name = "{C:joy_link}Sky Striker Ace - Azalea",
                text = {
                    {
                        "{C:attention}+#1#{} hand size this round",
                        "for every {C:planet}Planet{} {C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:attention}+#2#{}{C:inactive})"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "You can {C:attention}tribute 1{} {C:tarot}Tarot{}",
                        "to {C:attention}transform{} this card into",
                        "{C:joy_link}\"Sky Striker Ace - Azalea Temperance\"{}",
                        "{C:inactive}(This is treated as a Link summon){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_light}LIGHT{} and/or",
                    "{C:joy_dark}DARK{} {C:attention}Jokers{}",
                    "OR {C:attention}Tribute {C:planet}Uranus{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_azaleatemp = {
                name = "{C:joy_link}Sky Striker Ace - Azalea Temperance",
                text = {
                    {
                        "This card's sell value increases by",
                        "{C:money}+$#1#{} for each {C:tarot}High Priestess{}",
                        "used this run when summoned",
                        "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "Creates as many {C:tarot}High Priestess{}",
                        "as possible at end of round"
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "for the rest of the round,",
                        "{C:tarot}Tarot{} cards {C:attention}tributed{}",
                        "count as {C:planet}Planet{} cards",
                        "for {C:joy_normal}\"Sky Striker\"{} abilities"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "including a {C:joy_link}Link{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_camellia = {
                name = "{C:joy_link}Sky Striker Ace - Camellia",
                text = {
                    {
                        "Creates as many {C:planet}Planet{} cards",
                        "for your most played hand as possible",
                        "when {C:attention}Blind{} is selected"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "You can {C:attention}tribute 1{} {C:spectral}Spectral{}",
                        "to create {C:attention}#1#{} {C:dark_edition}Negative{}",
                        "{C:planet}Planet{} cards and a {C:joy_normal}\"Sky Striker\"{}",
                        "in the {C:joy_trap}Opponent{}'s area"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Effect{} {C:attention}Jokers{}",
                    "OR {C:attention}Tribute {C:planet}Saturn{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_zero = {
                name = "{C:joy_link}Sky Striker Ace = Zero",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each",
                        "hand level over {C:attention}1{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "creates {C:attention}1{} {C:joy_effect}\"Sky Striker Ace - Roze\"{}",
                        "when summoned"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Sky Striker Ace\"{},",
                    "OR {C:attention}Tribute {C:planet}Mercury{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_combined = {
                name = "{C:joy_link}Combined Maneuver - Engage Zero!",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each",
                        "{C:joy_normal}\"Sky Striker\"{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "Sends {C:attention}#1#{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "to the {C:attention}GY{} when {C:attention}Blind{} is selected"
                    },
                    {
                        "If {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "sell this card to {C:attention}revive 1{}",
                        "{C:joy_effect}\"Sky Striker Ace - Raye\"{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_light}LIGHT{} and/or",
                    "{C:joy_dark}DARK{} {C:attention}Jokers{}",
                    "OR {C:attention}Tribute{} a {C:attention}modded{} {C:planet}Planet{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
                }
            },
            j_joy_striker_spectra = {
                name = "{C:joy_link}Surgical Striker - S.P.E.C.T.R.A",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult if played hand",
                        "contains a {C:attention}Five of a Kind{},",
                        "{C:attention}Flush House{} or {C:attention}Flush Five{}"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "You can {C:attention}tribute{} all {C:planet}Planet{} cards {C:inactive}(min. 3){}",
                        "to reduce {C:attention}Blind{}'s requirement by {C:red}%#2#{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "including a {C:joy_link}Link{}",
                    "OR {C:attention}Tribute a {C:planet}Planet X{}",
                    "{C:planet}Ceres{} or {C:planet}Eris{}",
                    "with {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "{C:inactive}(Can only summon once per round){}"
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
