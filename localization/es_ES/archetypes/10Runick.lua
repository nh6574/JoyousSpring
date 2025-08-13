return {
    descriptions = {
        Joker = {
            j_joy_runick_hugin = {
                name = "{C:joy_fusion}Hugin las Alas Rúnicas",
                text = {
                    {
                        "{C:attention}+#1#{} consumable slot",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:joy_spell}\"Runick Fountain\"",
                        "and adds {C:attention}#3#{} {C:joy_normal}\"Runick\"{}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                        "{C:inactive}(Must have room){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:tarot}Tarot{} cards",
                }
            },
            j_joy_runick_munin = {
                name = "{C:joy_fusion}Munin las Alas Rúnicas",
                text = {
                    {
                        "{C:attention}+#1#{} consumable slot",
                    },
                    {
                        "Adds {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Gains {X:chips,C:white}X#3#{} Chips for each {C:tarot}Tarot{}",
                        "used during a {C:attention}Blind{}",
                        "{C:inactive}(Currently{} {X:chips,C:white}X#4#{} {C:inactive}Chips){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:tarot}Tarot{} cards",
                }
            },
            j_joy_runick_geri = {
                name = "{C:joy_fusion}Geri los Colmillos Rúnicos",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_spell}\"Runick Fountain\"",
                        "when summoned if there's any in the {C:attention}GY{}",
                        "and adds {C:attention}#2#{} {C:joy_normal}\"Runick\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Sell this summoned card to create up to",
                        "{C:attention}#3#{} {C:tarot}Tarot{} cards",
                        "{C:inactive}(Must have room)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:tarot}Tarot{} cards",
                }
            },
            j_joy_runick_freki = {
                name = "{C:joy_fusion}Freki los Colmillos Rúnicos",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Adds {C:attention}#2#{} random {C:attention}playing cards{}",
                        "when a {C:tarot}Tarot{} card is used during a {C:attention}Blind{}",
                    },
                    {
                        "Sell this summoned card to create up to",
                        "{C:attention}#3#{} {C:tarot}Tarot{} cards",
                        "{C:inactive}(Must have room)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:tarot}Tarot{} cards",
                }
            },
            j_joy_runick_sleipnir = {
                name = "{C:joy_fusion}Sleipnir la Crin Rúnica",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:dark_edition}Negative{} {C:tarot}Tarot{} cards",
                        "when it returns from {C:attention}banishment{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:tarot}Tarot{} cards",
                }
            },
            j_joy_runick_fountain = {
                name = "{C:joy_spell}Fuente Rúnica",
                text = {
                    {
                        "Creates as many {C:tarot}Tarot{} cards used during",
                        "this {C:attention}Blind{} as possible at end of round",
                        "{C:inactive}(Removes Editions){}",
                    },
                    {
                        "Destroys {C:attention}#1#{} random {C:attention}playing cards{}",
                        "in the deck when {C:attention}Blind{} is selected",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_runick = "Rúnico/a",
        }
    }
}
