return {
    descriptions = {
        Joker = {
            j_joy_centur_primera = {
                name = "{C:joy_effect}Centur-Ion Primera",
                text = {
                    {
                        "{C:mult}+#1#{} Mult"
                    },
                    {
                        "If this card is in the {C:joy_link}Side Deck{},",
                        "{C:joy_synchro}Synchros{} can't be debuffed or {C:attention}flipped{} face-down"
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_effect}\"Centur-Ion Primera\"{} in the {C:joy_link}Side Deck{} and",
                        "adds {C:attention}1{} {C:joy_spell}Extra Deck{} {C:joy_normal}\"Centur-Ion\"{} to the shop",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                }
            },
            j_joy_centur_atrii = {
                name = "{C:joy_effect}Centur-Ion Atrii",
                text = {
                    {
                        "{C:chips}+#1#{} Chips"
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_effect}\"Centur-Ion Atrii\"{} in the {C:joy_link}Side Deck{} and",
                        "adds {C:attention}+#2#{} hand size until end of round",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                }
            },
            j_joy_centur_chimerea = {
                name = "{C:joy_effect}Centur-Ion Chimerea",
                text = {
                    {
                        "{C:money}+$#1#{} when a hand is played"
                    },
                    {
                        "If this card is in the {C:joy_link}Side Deck{},",
                        "{C:joy_synchro}Synchros{} are free in the shop"
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_effect}\"Centur-Ion Chimerea\"{} in the {C:joy_link}Side Deck{} and",
                        "adds {C:attention}1{} {C:joy_normal}Main Deck \"Centur-Ion\"{} to the shop",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                }
            },
            j_joy_centur_trudea = {
                name = "{C:joy_effect}Centur-Ion Trudea",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "If this card is in the {C:joy_link}Side Deck{},",
                        "{C:joy_normal}\"Centur-Ion\"{} can't be {C:attention}flipped{} face-down"
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_effect}\"Centur-Ion Trudea\"{} in the {C:joy_link}Side Deck{} and",
                        "adds {C:attention}1{} {C:joy_spell}\"Stand Up Centur-Ion!\"{} to the shop",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                }
            },
            j_joy_centur_gargoyle = {
                name = "{C:joy_effect}Centur-Ion Gargoyle II",
                text = {
                    {
                        "{X:chips,C:white}X#1#{} Chips"
                    },
                    {
                        "If this card is in the {C:joy_link}Side Deck{},",
                        "{C:attention}Perishable{} cards give {X:mult,C:white}X#2#{} Mult"
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_effect}\"Centur-Ion Gargoyle II\"{} in the {C:joy_link}Side Deck{} and",
                        "{C:attention}revives 1{} {C:joy_normal}\"Centur-Ion\"{}",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                }
            },
            j_joy_centur_emeth = {
                name = "{C:joy_effect}Centur-Ion Emeth VI",
                text = {
                    {
                        "Retriggers the leftmost card",
                        "in scoring hand twice"
                    },
                    {
                        "If this card is in the {C:joy_link}Side Deck{},",
                        "{C:joy_synchro}Synchros{} give {C:mult}+#1#{} Mult",
                        "for each {C:joy_normal}\"Centur-Ion\"{} in the {C:attention}GY{}"
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_effect}\"Centur-Ion Emeth VI\"{} in the {C:joy_link}Side Deck{} and",
                        "sends {C:attention}2{} {C:joy_normal}\"Centur-Ion\"{} to the {C:attention}GY{}",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                }
            },
            j_joy_centur_primus = {
                name = "{C:joy_synchro}Centur-Ion Primera Primus",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult",
                        "for each {C:joy_synchro}Synchro{} {C:attention}summoned{} this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "You can {C:attention}tribute{} this card",
                        "and another {C:joy_synchro}Synchro{} to add",
                        "{C:attention}2 Perishable{} {C:joy_normal}\"Centur-Ion\"{} to the {C:joy_spell}Extra Deck{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_centur_auxila = {
                name = "{C:joy_synchro}Centur-Ion Auxila",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult",
                        "for each card in the {C:joy_link}Side Deck{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Creates {C:attention}1 Perishable{} {C:joy_normal}Main Deck \"Centur-Ion\"{} in the {C:joy_link}Side Deck{} and",
                        "adds {C:attention}1{} {C:joy_normal}\"Centur-Ion\"{} to the {C:joy_spell}Extra Deck{}",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_centur_legatia = {
                name = "{C:joy_synchro}Centur-Ion Legatia",
                text = {
                    {
                        "Scores {C:joy_normal}\"Centur-Ion\"{} in the",
                        "{C:joy_link}Side Deck{} as if owned",
                        "{C:inactive,s:0.85}(Extra Deck Jokers must be properly summoned){}"
                    },
                    {
                        "Returns to the {C:joy_spell}Extra Deck{} at end of round",
                        "and, if it does, allows the {C:joy_link}Side Deck{} to be skipped",
                        "this round even if slots are full"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Synchro{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:joy_synchro}Synchro{} non-{C:joy_synchro}Tuner{}",
                }
            },
            j_joy_centur_standup = {
                name = "{C:joy_spell}Stand Up Centur-Ion!",
                text = {
                    {
                        "Once per round, creates all cards used for a summon",
                        "as {C:attention}Perishable{} in the {C:joy_link}Side Deck{}"
                    },
                    {
                        "If a card {C:attention}Perishes{},",
                        "creates {C:attention}1 Perishable{} {C:joy_normal}\"Centur-Ion\"{} in the {C:joy_link}Side Deck{}"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_centur = "Centur-Ion",
        }
    }
}
