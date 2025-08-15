return {
    descriptions = {
        Joker = {
            j_joy_dogma_ecclesia = {
                name = "{C:joy_effect}Ecclesia Dogmátik, la Virtuosa",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_spell}Extra Deck{} {C:attention}Joker{} sold",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_dogma_fleur = {
                name = "{C:joy_effect}Fleurdelis Dogmátik, la Armada Caballera",
                text = {
                    {
                        "{C:joy_normal}\"Dogmatika\"{} each give {C:mult}+#1#{} Mult",
                    },
                    {
                        "Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_dogma_maximus = {
                name = "{C:joy_effect}Máximus Dogmátik",
                text = {
                    {
                        "Creates {C:attention}#1#{} debuffed {C:dark_edition}Negative{} {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "when {C:attention}Blind{} is selected",
                    },
                },
            },
            j_joy_dogma_adin = {
                name = "{C:joy_effect}Adin Dogmátik, el Iluminado",
                text = {
                    {
                        "Creates {C:attention}#1#{} non-{C:joy_ritual}Ritual{} {C:joy_normal}Main Deck \"Dogmatika\"{}",
                        "when {C:attention}Boss Blind{} is defeated",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_dogma_theo = {
                name = "{C:joy_effect}Teo Dogmátik, Puñetazo de Hierro",
                text = {
                    {
                        "{C:chips}+#1#{} Chips,",
                        "{C:chips}+#2#{} Chips for each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {C:chips}+#3# {C:inactive}Chips){}",
                    },
                    {
                        "Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_dogma_ashiyan = {
                name = "{C:joy_effect}Ashiyan Dogmátik",
                text = {
                    {
                        "{C:attention}Revives #1#{} {C:joy_normal}\"Dogmatika\"{} when obtained",
                    },
                    {
                        "Adds {C:attention}#2#{} {C:joy_ritual}Ritual{} {C:joy_normal}\"Dogmatika\"{}",
                        "to the shop when {C:attention}Boss Blind{} is defeated",
                    },
                    {
                        "Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_dogma_nexus = {
                name = "{C:joy_effect}Nexus Dogmátik",
                text = {
                    {
                        "{C:attention}Duplicates #1#{} random {{C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
                        "at end of round",
                        "{C:inactive}(The copy will be debuffed and{} {C:dark_edition}Negative{}{C:inactive}){}",
                    },
                },
            },
            j_joy_dogma_relic = {
                name = "{C:joy_ritual}Reliquia Blanca de Dogmátik",
                text = {
                    {
                        "{C:attention}+#1#{} hand size for every {C:attention}#2#{} debuffed",
                        "{C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
                        "{C:inactive}(Currently{} {C:attention}+#3# {C:inactive}hand size){}",
                    },
                    {
                        "{C:joy_spell}Extra Deck{} {C:attention}Jokers{} in the {C:attention}GY{}",
                        "count for {C:joy_normal}\"Dogmatika\"{} abilities {C:inactive}(as debuffed){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{},",
                    "including a {C:joy_normal}\"Dogmatika\"{}"
                }
            },
            j_joy_dogma_knight = {
                name = "{C:joy_ritual}Caballero Blanco de Dogmátik",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each debuffed",
                        "{C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {C:mult}+#2# {C:inactive}Mult){}",
                    },
                    {
                        "All {C:joy_spell}Extra Deck{} {C:attention}Jokers{} in the shop",
                        "are debuffed and free",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{},",
                    "including a {C:joy_normal}\"Dogmatika\"{}"
                }
            },
            j_joy_dogma_albazoa = {
                name = "{C:joy_ritual}Alba Zoa Dogmátik",
                text = {
                    {
                        "Sends {C:attention}#1#{} copy of each {C:attention}Joker{}",
                        "in your {C:joy_spell}Extra Deck{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Each {C:joy_normal}Main Deck{} {C:attention}Joker{} gives an extra {X:mult,C:white}X#2#{} Mult",
                        "for each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Dogmatika\"{}"
                }
            },
            j_joy_dogma_nation = {
                name = "{C:joy_spell}Nación Dogmátik",
                text = {
                    {
                        "{C:money}+$#1#{} for each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "at end of round",
                        "{C:inactive}(Currently{} {C:money}+$#2#{C:inactive}){}",
                    },
                    {
                        "You can {C:attention}tribute #3#{} {C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
                        "to create {C:attention}#4#{} {C:joy_normal}\"Dogmatika\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dogma = "Dogmátik",
        }
    }
}
