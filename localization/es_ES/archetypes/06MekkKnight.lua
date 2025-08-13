return {
    descriptions = {
        Joker = {
            j_joy_mekk_avram = {
                name = "{C:joy_normal}Mekk-Caballero Avram",
                text = {
                    {
                        "{E:1}\"¡Mira ESTO!\"{}",
                    },
                },
            },
            j_joy_mekk_red = {
                name = "{C:joy_effect}Mekk-Caballero Luna Roja",
                text = {
                    {
                        "Scored card in this {C:attention}column{}",
                        "gives {C:mult}+#1#{} Mult times its rank",
                        "{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_orange = {
                name = "{C:joy_effect}Mekk-Caballero Atardecer Naranja",
                text = {
                    {
                        "Played card in this {C:attention}column{}",
                        "counts for scoring",
                        "{C:inactive}(Currently in column{} {C:attention}#1#{}{C:inactive}){}",
                    },
                    {
                        "Gains {X:chips,C:white}X#2#{} Chips each time",
                        "this card's ability makes a card count for scoring",
                        "{C:inactive}(Currently {X:chips,C:white}X#3#{}{C:inactive} Chips)",
                    },
                },
            },
            j_joy_mekk_yellow = {
                name = "{C:joy_effect}Mekk-Caballero Estrella Amarilla",
                text = {
                    {
                        "Scored card in this {C:attention}column{}",
                        "gives {C:money}+$#1#{} times its rank",
                        "{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_green = {
                name = "{C:joy_effect}Mekk-Caballero Horizonte Verde",
                text = {
                    {
                        "Scored card in this {C:attention}column{} has a chance of {C:green}#1# in #2#{} to",
                        "retrigger a number of times equal to its rank,",
                        "chance increases for each {C:joy_normal}\"Mekk-Knight\"{}",
                        "{C:inactive}(Currently in column{} {C:attention}#3#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_blue = {
                name = "{C:joy_effect}Mekk-Caballero Cielo Azul",
                text = {
                    {
                        "Scored card in this {C:attention}column{}",
                        "gives {C:chips}+#1#{} Chips times its rank",
                        "{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_indigo = {
                name = "{C:joy_effect}Mekk-Caballero Eclipse Índigo",
                text = {
                    {
                        "Gets ability based on the {C:attention}column{}",
                        "{V:1}1: All scored cards retrigger once{}",
                        "{V:2}2:{} {C:chips}+#1#{} {V:2}Chips{}",
                        "{V:3}3:{} {C:mult}+#2#{} {V:3}Mult{}",
                        "{V:4}4:{} {X:mult,C:white}X#3#{} {V:4}Mult{}",
                        "{V:5}5+:{} {C:money}+$#4#{} {V:5}at end of round{}",
                    },
                },
            },
            j_joy_mekk_purple = {
                name = "{C:joy_effect}Mekk-Caballero Ocaso Púrpura",
                text = {
                    {
                        "{C:attention}Banishes{} when {C:attention}Blind{} is selected",
                        "until {C:attention}Boss Blind{} is defeated to create {C:attention}#1#{}",
                        "{C:joy_normal}Main Deck \"Mekk-Knight\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_mekk_morningstar = {
                name = "{C:joy_link}Mekk-Caballero del Lucero del Alba",
                text = {
                    {
                        "Scored card in adjacent {C:attention}columns{}",
                        "gives {X:mult,C:white}X#1#{} Mult if there's a",
                        "{C:joy_normal}\"Mekk-Knight\"{} in that {C:attention}column{}",
                        "{C:inactive}(Currently in columns{} {C:attention}#2#{} {C:inactive}and{} {C:attention}#3#{}{C:inactive}){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{}",
                }
            },
            j_joy_mekk_spectrum = {
                name = "{C:joy_link}Mekk-Caballero Espectro Supremo",
                text = {
                    {
                        "{C:joy_normal}\"Mekk-Knight\"{} abilities apply to",
                        "all played cards and {C:attention}columns",
                    },
                    {
                        "Once per round, sell {C:attention}#1#{} {C:joy_normal}\"Mekk-Knight\"{}",
                        "to create {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_normal}Main Deck \"Mekk-Knight\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:joy_normal}\"Mekk-Knight\"{}",
                }
            },
            j_joy_mekkcrus_avramax = {
                name = "{C:joy_link}Mekk-Caballero Cruzadia Avramax",
                text = {
                    {
                        "Immediately wins every {C:attention}Blind{}",
                    },
                    {
                        "Destroys itself after a number",
                        "of {C:attention}Blinds{} is defeated",
                        "equal to the {C:attention}materials{} used",
                        "for its summon {C:inactive}(#1#/#2#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:joy_spell}Extra Deck{} summoned {C:attention}Jokers{}",
                }
            },
            j_joy_mekkleg_scars = {
                name = "{C:joy_spell}Cicatrices del Legado Mundial",
                text = {
                    {
                        "Each {C:joy_normal}\"Mekk-Knight\"{} gives {C:mult}+#1#{} Mult",
                    },
                    {
                        "During a {C:attention}Blind{}, you can {C:attention}tribute #2#{}",
                        "{C:joy_normal}\"Mekk-Knight\"{} to gain {C:blue}+#3#{} Hand this round",
                    },
                    {
                        "Sell this card when there are",
                        "{C:attention}#4# {C:joy_normal}\"Mekk-Knight\"{} in the {C:attention}GY",
                        "with different names",
                        "to win the current {C:attention}Blind{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mekk = "Mekk-Caballero",
        }
    }
}
