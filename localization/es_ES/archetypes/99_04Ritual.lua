return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}Sauravis, el Anciano Ascendido",
                text = {
                    {
                        "Sell this card to disable the current",
                        "{C:attention}Boss Blind{} and add it to",
                        "the next shop",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each time",
                        "this ability was used this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}Licántropo",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Normal{} {C:attention}Joker{} owned or in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{}",
                    "OR {C:attention}1{} {C:joy_normal}Normal {C:attention}Joker{}",
                }
            },
        }
    },
}
