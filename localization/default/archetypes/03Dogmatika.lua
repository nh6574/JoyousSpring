return {
    descriptions = {
        Joker = {
            j_joy_dogma_ecclesia = {
                name = "{C:joy_effect}Dogmatika Ecclesia, the Virtuous",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_spell}Extra Deck{} {C:attention}Joker{} sold",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_dogma_fleur = {
                name = "{C:joy_effect}Dogmatika Fleurdelis, the Knighted",
                text = {
                    {
                        "{C:joy_normal}\"Dogmatika\"{} each give {C:mult}+#1#{} Mult",
                    },
                    {
                        "Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_dogma_thunderbolt = {
                name = "{C:joy_effect}Dogmatika Fleurdelis, the Thunderbolt",
                text = {
                    {
                        "Debuffed {C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
                        "each give {X:mult,C:white}X#1#{} Mult",
                    },
                    {
                        "{C:joy_normal}\"Dogmatika\"{} owned also count as",
                        "debuffed {C:joy_spell}Extra Deck{} {C:attention}Jokers{} and vice versa",
                        "for {C:joy_normal}\"Dogmatika\"{} abilities"
                    },
                    {
                        "Creates a {C:dark_edition}Negative{} {C:joy_effect}\"Dogmatika Fleurdelis, the Thunderbolt\"",
                        "when used as {C:attention}material{} for a {C:joy_ritual}Ritual",
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}"
                    },
                },
            },
            j_joy_dogma_maximus = {
                name = "{C:joy_effect}Dogmatika Maximus",
                text = {
                    {
                        "Creates {C:attention}#1#{} debuffed {C:dark_edition}Negative{} {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "when {C:attention}Blind{} is selected",
                    },
                },
            },
            j_joy_dogma_adin = {
                name = "{C:joy_effect}Dogmatika Adin, the Enlightened",
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
                name = "{C:joy_effect}Dogmatika Theo, the Iron Punch",
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
                name = "{C:joy_effect}Dogmatika Ashiyan",
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
                name = "{C:joy_effect}Dogmatika Nexus",
                text = {
                    {
                        "{C:attention}Duplicates #1#{} random {{C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
                        "at end of round",
                        "{C:inactive}(The copy will be debuffed and{} {C:dark_edition}Negative{}{C:inactive}){}",
                    },
                },
            },
            j_joy_dogma_relic = {
                name = "{C:joy_ritual}White Relic of Dogmatika",
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
                name = "{C:joy_ritual}White Knight of Dogmatika",
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
                name = "{C:joy_ritual}Dogmatika Alba Zoa",
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
                name = "{C:joy_spell}Dogmatika Nation",
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
            k_joy_archetype_dogma = "Dogmatika",
        }
    }
}
