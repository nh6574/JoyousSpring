return {
    descriptions = {
        Joker = {
            j_joy_solfa_cutia = {
                name = "{C:joy_pendulum_effect}DoSolfachord Cutia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}8{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Scored cards with even rank give {C:mult}+#2#{} Mult for each {C:joy_normal}\"Solfachord\"",
                        "{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Once per round, creates {C:attention}#4#{} {C:joy_pendulum}Pendulum{} {C:joy_normal}\"Solfachord\"{}",
                        "after {C:attention}#5#{} {C:joy_pendulum}Pendulum{} are consumed",
                        "{C:inactive}(#6#/#5#) (Must have room){}",
                    },
                }
            },
            j_joy_solfa_dreamia = {
                name = "{C:joy_pendulum_effect}ReSolfachord Dreamia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}7{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Scored cards with odd rank give {C:mult}+#2#{} Mult for each {C:joy_normal}\"Solfachord\"",
                        "{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Free if you own a {C:joy_pendulum}Pendulum",
                    },
                }
            },
            j_joy_solfa_eliteia = {
                name = "{C:joy_pendulum_effect}MiSolfachord Eliteia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}6{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Gains {C:chips}+#2#{} Chips for each scored card with even rank",
                        "{C:inactive}(Currently{} {C:chips}+#3#{} {C:inactive}Chips){}",
                    },
                    {
                        "Adds {C:attention}#4#{} {C:joy_normal}\"Solfachord\"{} to the {C:joy_spell}Extra Deck{}",
                        "after {C:attention}#5#{} even cards are scored",
                        "{C:inactive}(#6#/#5#) (Must have room){}",
                    },
                }
            },
            j_joy_solfa_fancia = {
                name = "{C:joy_pendulum_effect}FaSolfachord Fancia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}5{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Gains {C:chips}+#2#{} Chips for each scored card with odd rank",
                        "{C:inactive}(Currently{} {C:chips}+#3#{} {C:inactive}Chips){}",
                    },
                    {
                        "Creates {C:attention}#4#{} {C:joy_normal}\"Solfachord\"{} after {C:attention}#5#{} odd cards are scored",
                        "{C:inactive}(#6#/#5#) (Must have room){}",
                    },
                }
            },
            j_joy_solfa_gracia = {
                name = "{C:joy_pendulum_effect}SolSolfachord Gracia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}4{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Retrigger each even card {C:attention}#2#{} times",
                    },
                    {
                        "Creates {C:attention}#3#{} {C:joy_spell}\"Solfachord Harmonia\"{}",
                        "after {C:attention}#4#{} even cards are scored",
                        "{C:inactive}(#5#/#4#) (Must have room){}",
                    },
                }
            },
            j_joy_solfa_angelia = {
                name = "{C:joy_pendulum_effect}LaSolfachord Angelia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}3{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Retrigger each odd card {C:attention}#2#{} times",
                    },
                    {
                        "{C:attention}Revives #3#{} {C:joy_normal}\"Solfachord\"{} after {C:attention}#4#{} odd cards are scored",
                        "{C:inactive}(#5#/#4#){}",
                    },
                }
            },
            j_joy_solfa_beautia = {
                name = "{C:joy_pendulum_effect}TiSolfachord Beautia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}2{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Scored cards with even rank give an extra",
                        "{X:chips,C:white}X#2#{} Chips for each {C:joy_normal}\"Solfachord\"{}",
                        "{C:inactive}(Currently {X:chips,C:white}X#3#{} {C:inactive}Chips)",
                    },
                    {
                        "{C:attention}Banishes #4#{} {C:joy_pendulum}Pendulum{} at end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
            },
            j_joy_solfa_coolia = {
                name = "{C:joy_pendulum_effect}DoSolfachord Coolia",
                joy_consumable = {
                    "Change rank of up to {C:attention}#1#{} selected cards to {C:attention}Aces{}",
                    "and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
                },
                text = {
                    {
                        "Scored cards with odd rank give an extra",
                        "{X:mult,C:white}X#2#{} Mult for each {C:joy_normal}\"Solfachord\"{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    },
                    {
                        "Cards in the {C:attention}GY{} count for {C:joy_normal}\"Solfachord\"{} abilities",
                    },
                },
            },
            j_joy_solfa_musecia = {
                name = "{C:joy_link}GranSolfachord Musecia",
                text = {
                    {
                        "Playing cards affected by {C:joy_normal}\"Solfachord\"{} consumable abilities",
                        "gain a random edition if possible",
                    },
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_pendulum}Pendulum{} {C:joy_normal}\"Solfachord\"{}",
                        "after {C:attention}#2#{} {C:joy_pendulum}Pendulum{} are consumed {C:inactive}(#3# remaining){}",
                    },
                    {
                        "If scoring hand contains both even and odd ranks,",
                        "all scored cards count as both for {C:joy_normal}\"Solfachord\"{} abilities",
                    },
                    {
                        "{C:joy_pendulum}Pendulum{} count for {C:joy_normal}\"Solfachord\"{} abilities",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 {C:joy_pendulum}Pendulum"
                }
            },
            j_joy_solfa_grancoolia = {
                name = "{C:joy_link}GranSolfachord Coolia",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_pendulum}Pendulum{}",
                        "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
                    },
                    {
                        "Playing cards affected by {C:joy_normal}\"Solfachord\"{} consumable abilities",
                        "gain a random seal if possible",
                    },
                    {
                        "{C:money}+$#3#{} after {C:attention}#4#{} {C:joy_pendulum}Pendulum{} are consumed {C:inactive}(#5#/#4#){}",
                    },
                    {
                        "If scoring hand contains both even and odd ranks,",
                        "all cards held in hand count as scored for {C:joy_normal}\"Solfachord\"{} abilities",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 Jokers{},",
                    "including a {C:joy_pendulum}Pendulum"
                }
            },
            j_joy_solfa_harmonia = {
                name = "{C:joy_spell}Solfachord Harmonia",
                text = {
                    {
                        "{C:attention}Revives #1#{} {C:joy_normal}\"Solfachord\"{} (or {C:joy_pendulum}Pendulum{} if none)",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Creates {C:attention}#2# Strength{} {C:tarot}Tarot{} after a {C:joy_pendulum}Pendulum{} is consumed",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "All even cards become {C:attention}Gold{} and all odd cards become {C:attention}Steel{} after scoring",
                        "if {C:attention}#3# {C:joy_normal}\"Solfachord\"{} with different names are owned, ignoring other abilities",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_solfa = "Solfachord",
        }
    }
}
