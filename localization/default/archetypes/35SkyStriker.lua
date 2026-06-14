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
                        "{C:inactive}(This is treated as a Link summon)",
                        "A {C:joy_link}Link{} summoned this way gains the following ability:",
                        "{s:0.9,X:mult,C:white}X#1#{s:0.9} Mult if played hand contains",
                        "{s:0.9,C:attention}[hand for tributed Planet]{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Transforms{s:0.9} into {s:0.9,C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                        "{s:0.9}at end of round",
                        " ",
                        "{s:0.9}A {s:0.9,C:joy_normal}\"Sky Striker Ace\" {s:0.9,C:attention}summoned{s:0.9} using this card",
                        "{s:0.9}as {s:0.9,C:attention}material{s:0.9} also transfers this ability"
                    },
                },
                joy_transfer_ability = {
                    "{X:mult,C:white}X#1#{} Mult if",
                    "played hand contains",
                    "{C:attention}#2#{}",
                    " ",
                    "{C:attention}Transforms{} into {C:joy_effect}\"Sky Striker Ace - Raye\"{}",
                    "at end of round",
                    " ",
                    "A {C:joy_normal}\"Sky Striker Ace\"{} {C:attention}summoned{} using this card",
                    "as {C:attention}material{} also transfers this ability"
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
                        "When {C:attention}entering play{}, creates {C:attention}1{} {C:joy_effect}\"Sky Striker Ace - Raye\"",
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
                        "count as {C:attention}tributed{} for abilities",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each",
                        "{C:joy_link}Link{} {C:attention}summoned{} this run",
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
                        "{C:attention}#1# Meteor Tags"
                    }
                }
            },
            j_joy_striker_ciela = {
                name = "{C:joy_effect}Sage of Benevolence - Ciela",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet{} cards",
                        "when {C:attention}entering play{}"
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
                        "when {C:attention}entering play{}"
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
                        "when {C:attention}entering play{}"
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
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "creates {C:attention}1{} {C:planet}Planet{} for each poker hand discarded",
                        "for the rest of the round",
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
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "creates all {C:planet}Planet{} cards {C:attention}tributed{} this round",
                        "before this card {C:attention}entered play{} as {C:dark_edition}Negative{}",
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
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
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
                        "Makes all owned {C:planet}Planet{} cards {C:dark_edition}Negative{}, then",
                        "creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#1#/3){}:",
                        "{C:attention}levels up{} the hand of each different",
                        "{C:planet}Planet{} {C:attention}tributed{} while owned",
                        "for the rest of the round"
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
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} {C:planet}Planet{} cards",
                        "were {C:attention}tributed{} this round {C:inactive}(#2#/3){}:",
                        "{C:attention}revives 1{} {C:joy_normal}\"Sky Striker Ace\"{}",
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
                        "except {C:planet}Planet{} cards when {C:attention}entering play{}",
                        "until {C:attention}Blind{} is selected,",
                        "and if it did, creates {C:attention}1{} {C:dark_edition}Negative{}",
                        "{C:joy_token}\"Sky Striker Ace Token\"{}"
                    },
                    {
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} {C:planet}Planet{} cards",
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
                        "Draws a card each time a {C:planet}Planet{}",
                        "is {C:attention}tributed{} during a {C:attention}Blind{}"
                    },
                    {
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
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
                        "used this run when {C:attention}entering play{}",
                        "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "for the rest of the round,",
                        "create {C:attention}1{} {C:dark_edition}Negative{} {C:tarot}High Priestess{}",
                        "each time a {C:planet}Planet{} card is {C:attention}tributed{}",
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
                        "when {C:attention}Blind{} is selected",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:spectral}Spectral{}",
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
                        "Gives an extra {X:mult,C:white}X#1#{} Mult for each",
                        "hand level over {C:attention}1{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
                        "creates {C:attention}1{} {C:joy_effect}\"Sky Striker Ace - Roze\"{}",
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
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "Sends {C:attention}#1#{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "to the {C:attention}GY{} when {C:attention}Blind{} is selected"
                    },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:planet}Planet{} then",
                        "if {C:attention}3 or more{} were {C:attention}tributed{} this round {C:inactive}(#3#/3){}:",
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
                        "Creates {C:attention}1 random {C:planet}Planet",
                        "{s:0.9,C:inactive}(Must have room)",
                        "and adds {C:attention}1{} {C:joy_normal}\"Sky Striker Ace\"{}",
                        "{s:0.9,C:inactive}(not summoned this round, if possible){}",
                        "to the {C:joy_spell}Extra Deck{} when {C:attention}entering play{}",
                    },
                    {
                        "You can {C:attention}tribute{} all {C:planet}Planet{} cards {C:inactive}(min. 3){}",
                        "to reduce {C:attention}Blind{}'s requirement by {C:red}#2#%{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:attention}Jokers{},",
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
                        "{C:green}#1# in #2#{} chance to {C:attention}level up{} the appropriate",
                        "poker hand for {C:attention}tributed{} {C:planet}Planet{} cards",
                    }
                }
            },
            opp_joy_striker_akash = {
                name = "{C:joy_effect}Sage of Strength - Akash",
                text = {
                    {
                        "{C:attention}Revives 1{} {C:joy_link}Link{}",
                        "{C:attention}tributed{} this round",
                        "at end of round"
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
    JoyousSpring = {
        Blurbs = {
            striker = {
                story = {
                    "{C:joy_spell}\"Sky Striker Mecha\"{}, developed using advanced technology, is designed to counter a certain powerful military empire. The girl entrusted with {C:joy_normal}\"Sky {C:joy_normal}Striker\"{}, the key to controlling these weapons, named {C:joy_effect}\"Raye\"{}, races across the battlefield in order to protect her homeland.",
                },
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_striker = "Sky Striker",
            k_joy_archetype_striker_ace = "Sky Striker Ace",
            k_joy_modded_hand = "Modded Poker Hands", -- As in, poker hands from mods
        }
    }
}
