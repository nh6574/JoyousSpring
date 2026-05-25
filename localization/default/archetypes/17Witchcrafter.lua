return {
    descriptions = {
        Joker = {
            j_joy_witch_genni = {
                name = "{C:joy_effect}Witchcrafter Genni",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:tarot}Tarot",
                        "when {C:attention}entering play{}",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "You can {C:attention}tribute{} this card and {C:attention}#2#{} {C:tarot}Tarot",
                        "to create {C:attention}#3#{} {C:joy_effect}\"Witchcrafter Potterie\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_witch_potterie = {
                name = "{C:joy_effect}Witchcrafter Potterie",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:tarot}Tarot",
                        "when {C:attention}entering play{} if Consumable area is empty",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "This card and {C:attention}#2#{} {C:tarot}Tarot{} cards {C:attention}banish{}",
                        "at end of round until {C:attention}Blind{} selected",
                    },
                    {
                        "You can {C:attention}tribute{} this card and {C:attention}#3#{} {C:tarot}Tarot",
                        "to create {C:attention}#4#{} {C:joy_effect}\"Witchcrafter Pittore\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_witch_pittore = {
                name = "{C:joy_effect}Witchcrafter Pittore",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:tarot}Tarot",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
                    },
                    {
                        "Once per round, creates {C:attention}#3#{} {C:tarot}Tarot{}",
                        "when {C:attention}#4#{} consumables are used",
                        "{C:inactive}(#5#/#4#) (Must have room){}",
                    },
                    {
                        "You can {C:attention}tribute{} this card and {C:attention}#6#{} {C:tarot}Tarot",
                        "to create {C:attention}#7#{} {C:joy_effect}\"Witchcrafter Schmietta\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_witch_schmietta = {
                name = "{C:joy_effect}Witchcrafter Schmietta",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each for each {C:tarot}Tarot",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Creates {C:attention}#3#{} {C:tarot}Tarot{}",
                        "when playing first hand of round",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "You can {C:attention}tribute{} this card and {C:attention}#4#{} {C:tarot}Tarot",
                        "to create {C:attention}#5#{} {C:joy_effect}\"Witchcrafter Edel\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_witch_edel = {
                name = "{C:joy_effect}Witchcrafter Edel",
                text = {
                    {
                        "Once per round, creates {C:attention}#1#{} {C:joy_effect}\"Witchcrafter Genni\"{}",
                        "when {C:attention}#2#{} hands are played",
                        "{C:inactive}(#3#/#2#) (Must have room){}",
                    },
                    {
                        "You can {C:attention}tribute{} this card and {C:attention}#4#{} {C:tarot}Tarot",
                        "to create {C:attention}#5#{} {C:joy_effect}\"Witchcrafter Haine\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_witch_haine = {
                name = "{C:joy_effect}Witchcrafter Haine",
                text = {
                    {
                        "{C:money}+$#1#{} for each for each {C:tarot}Tarot",
                        "{C:attention}tributed{} this round when {C:attention}entering play{}",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:dark_edition}Negative {C:tarot}Tarot{}",
                        "if it's the last hand of round",
                    },
                    {
                        "You can {C:attention}tribute{} this card and {C:attention}#3#{} {C:tarot}Tarot",
                        "to create {C:attention}#4#{} {C:joy_effect}\"Witchcrafter Madame Verre\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_witch_verre = {
                name = "{C:joy_effect}Witchcrafter Madame Verre",
                text = {
                    {
                        "Creates all {C:tarot}Tarot{} {C:attention}tributed{} this round",
                        "as {C:dark_edition}Negative{} when {C:attention}entering play{}",
                    },
                    {
                        "{X:mult,C:white}X#1#{} Mult for each {C:tarot}Tarot",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                }
            },
            j_joy_witch_aruru = {
                name = "{C:joy_effect}Witchcrafter Golem Aruru",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each for each {C:tarot}Tarot",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Used {C:tarot}Tarot{} cards while this card is owned",
                        "count as tributed for abilities",
                    },
                    {
                        "Free if you own a {C:joy_normal}\"Witchcrafter\"{}",
                    },
                }
            },
            j_joy_witch_vicemadame = {
                name = "{C:joy_fusion}Witchcrafter Vice-Madame",
                text = {
                    {
                        "{C:tarot}Arcana Packs{} are free",
                    },
                    {
                        "{C:joy_normal}\"Witchcrafter\"{} Chips and Mult don't reset each round",
                    },
                    {
                        "Once per round, create {C:attention}#1#{} {C:joy_effect}\"Witchcrafter Genni\"{}",
                        "when {C:attention}#2#{} {C:tarot}Tarot{} cards are used",
                        "{C:inactive}(#3#/#2#) (Must have room){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Spellcasters",
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            witch = {
                story = {
                    "{C:gold}[From the \"Great Magic War\" storyline]{}",
                    "In the magical city specializing in trade and commerce near {C:joy_spell}\"Endymion\"{}, the guild {C:joy_normal}\"Witchcrafter\"{}, who create various items and crafts by infusing them with magic by using each of their skills and specialties, have become the talk of the town. The ingenuity of their magical goods have even caught the eye of the {C:joy_normal}\"Master Magician\"{} himself.",
                },
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_witch = "Witchcrafter",
        }
    }
}
