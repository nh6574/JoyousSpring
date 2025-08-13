return {
    descriptions = {
        Joker = {
            j_joy_lab_clock = {
                name = "{C:joy_effect}Reloj Cucú del Labrislinto",
                text = {
                    {
                        "You can {C:attention}tribute{} this card to",
                        "{C:attention}flip #1#{} random card in hand",
                        "face-down (and shuffle them) and it permanently",
                        "gains {C:mult}+#2#{} Mult when scored then",
                        "{C:attention}revive #3# {C:blue}Common{} {C:joy_normal}\"Labrynth\"{} if possible",
                        "{C:inactive}(Except \"Labrynth Cooclock\"){}",
                    },
                }
            },
            j_joy_lab_stovie = {
                name = "{C:joy_effect}Estufagato del Labrislinto",
                text = {
                    {
                        "You can {C:attention}tribute{} this and another {C:attention}Joker{} to",
                        "{C:attention}flip #1#{} random cards in hand",
                        "face-down (and shuffle them) and they permanently",
                        "gain {C:chips}+#2#{} Chips when scored then",
                        "gain {C:money}+$#3#{} if a {C:joy_normal}Fiend{} was tributed",
                    },
                }
            },
            j_joy_lab_changdra = {
                name = "{C:joy_effect}Candedragón del Labrislinto",
                text = {
                    {
                        "You can {C:attention}tribute{} this and another {C:attention}Joker{} to",
                        "{C:attention}flip #1#{} random cards in hand",
                        "face-down (and shuffle them) and they permanently",
                        "gain {C:money}+$#2#{} when scored then",
                        "create {C:attention}#3#{} random Tags if a",
                        "{C:joy_normal}Fiend{} was tributed",
                    },
                }
            },
            j_joy_lab_ariane = {
                name = "{C:joy_effect}Ariane la Sirviente del Labrislinto",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:attention}+#2#{} hand size next {C:attention}Blind{} for each",
                        "playing card {C:attention}flipped{} this round while owned",
                    },
                    {
                        "Adds an {C:green}Uncommon{} {C:joy_normal}\"Labrynth\"{} to the next shop",
                        "if {C:attention}#3#{} or more cards are flipped this round while owned",
                        "{s:0.9,C:inactive}(Flipped this round #4#)",
                    },
                }
            },
            j_joy_lab_arianna = {
                name = "{C:joy_effect}Arianna la Sirviente del Labrislinto",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",
                    },
                    {
                        "{C:attention}+#2#{} hand size next {C:attention}Blind{} for each",
                        "playing card {C:attention}flipped{} this round while owned",
                    },
                    {
                        "Adds a {C:blue}Common{} {C:joy_normal}\"Labrynth\"{} to the next shop",
                        "if {C:attention}#3#{} or more cards are flipped this round while owned",
                        "{s:0.9,C:inactive}(Flipped this round #4#)",
                    },
                }
            },
            j_joy_lab_arias = {
                name = "{C:joy_effect}Arias la Mayordoma del Labrislinto",
                text = {
                    {
                        "Gains {C:chips}+#1#{} Chips for each",
                        "playing card {C:attention}flipped{} while owned",
                        "{C:inactive}(Currently{} {C:chips}+#2# {C:inactive}Chips){}",
                    },
                    {
                        "Adds a {C:red}Rare{} {C:joy_normal}\"Labrynth\"{} to the next shop",
                        "if {C:attention}#3#{} or more cards are flipped this round while owned",
                        "{s:0.9,C:inactive}(Flipped this round #4#)",
                    },
                    {
                        "Free if you own a {C:joy_normal}\"Labrynth\"{}",
                    },
                }
            },
            j_joy_lab_archfiend = {
                name = "{C:joy_effect}Archidemonio del Labrislinto",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each",
                        "{C:joy_normal}Fiend{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently{} {C:mult}+#2# {C:inactive}Mult){}",
                    },
                    {
                        "When a playing card is {C:attention}flipped{},",
                        "{C:attention}flips{} a random card in hand face-down (and shuffles them)",
                    },
                }
            },
            j_joy_lab_lovely = {
                name = "{C:joy_effect}Precioso Labrislinto del Castillo Plateado",
                text = {
                    {
                        "{C:green}#1# in #2#{} chances of drawing cards face-down",
                        "Chances increase for each {C:joy_normal}Fiend{} owned",
                    },
                    {
                        "Gains {C:mult}+#3#{} Mult for each",
                        "card {C:attention}flipped{} face-down",
                        "{C:inactive}(Currently{} {C:mult}+#4# {C:inactive}Mult){}",
                    },
                }
            },
            j_joy_lab_lady = {
                name = "{C:joy_effect}Dama Labrislinto del Castillo Plateado",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult",
                        "each time a card is {C:attention}flipped{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Non-{C:joy_trap}Trap{} {C:joy_normal}Fiends{} can use their",
                        "non-activated abilities while face-down",
                        "{s:0.9,C:inactive}(Including this card)",
                    },
                }
            },
            j_joy_lab_labyrinth = {
                name = "{C:joy_spell}Laberinto Labrislinto",
                text = {
                    {
                        "{C:money}+$#1#{} for each {C:attention}Joker flipped{}",
                    },
                    {
                        "{C:green}#2# in #3#{} chance to {C:attention}flip #4#{} card in hand face-down",
                        "(and shuffles them) when a playing card is {C:attention}flipped",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_lab = "Labrislinto",
        }
    }
}
