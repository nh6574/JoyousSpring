return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}Sauravis, the Ancient and Ascended",
                text = {
                    {
                        "Sell this card to disable the current",
                        "active {C:attention}Blinds{} and add it to",
                        "the next shop",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each time",
                        "the previous ability of {C:joy_ritual}\"Sauravis, the Ancient and Ascended\"",
                        "was used this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}Lycanthrope",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Normal{} {C:attention}Joker{} owned or in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{}",
                    "OR {C:attention}1{} {C:joy_normal}Normal {C:attention}Joker{}",
                }
            },
            j_joy_skullguardian = {
                name = "{C:joy_ritual}Skull Guardian",
                text = {
                    {
                        "{C:mult}+#1#{} Mult"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}1 Joker{}",
                }
            },
            j_joy_saffira = {
                name = "{C:joy_ritual}Saffira, Queen of Dragons",
                text = {
                    {
                        "Gains abilities depending on the number of",
                        "{C:joy_light}LIGHT{} {C:attention}Jokers tributed{}:",
                        "{C:attention}+#1#{} hand size next round for each {C:inactive}(+#3#){}",
                        "{C:red}+#2#{} discards next round for every {C:attention}3{} {C:inactive}(+#4#){}",
                        "Adds a {C:joy_light}LIGHT{} {C:attention}Joker{}",
                        "to the {C:joy_link}Side Deck{} for each {C:attention}5{} {C:inactive}(#5#/5){}",
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_ritual}Tribute {C:attention}2 Jokers{},",
                    "including a {C:joy_light}LIGHT{}"
                }
            },
        }
    },
}
