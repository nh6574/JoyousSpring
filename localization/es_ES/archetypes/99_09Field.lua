return {
    descriptions = {
        Joker = {
            j_joy_chickengame = {
                name = "{C:joy_spell}Juego de la Gallina",
                text = {
                    {
                        "You can increase {C:attention}Blind{}'s requirement by {C:red}#1#%",
                        "to gain {C:blue}+#2#{} Hand and {C:red}+#3#{} Discard this round",
                    },
                }
            },
            j_joy_fusiongate = {
                name = "{C:joy_spell}Puerta de Fusión",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_fusion}Fusion{} to the {C:joy_spell}Extra Deck{}",
                        "when {C:attention}Boss Blind{} is defeated",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            j_joy_xyzterritory = {
                name = "{C:joy_spell}Territorio Xyz",
                text = {
                    {
                        "Gains {C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz{} owned at end of round",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "{C:money}+$#3#{} when a {C:attention}material{} is {C:joy_xyz}detached{}",
                    },
                }
            },
            j_joy_xyzoverride = {
                name = "{C:joy_spell}Invalidación Xyz",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute #1#{} {C:attention}Joker{}",
                        "to attach {C:attention}#2# material{} to each {C:joy_xyz}Xyz{}",
                    },
                }
            },
            j_joy_summonbreaker = {
                name = "{C:joy_spell}Rompedor de Invocación",
                text = {
                    {
                        "The third {C:attention}Joker{} summoned this round becomes {C:dark_edition}Negative{}",
                        "and this card is destroyed {C:inactive}(#1#/#2#){}",
                    },
                }
            },
            j_joy_extranet = {
                name = "{C:joy_spell}Red Extra",
                text = {
                    {
                        "{C:attention}+#1#{} hand size for each {C:attention}Joker{} summoned this round",
                    },
                }
            },
            j_joy_futurevisions = {
                name = "{C:joy_spell}Visiones del Futuro",
                text = {
                    {
                        "{C:attention}Banishes #1#{} random {C:joy_normal}Main Deck{} {C:attention}Joker{} at end of round",
                        "until {C:attention}Boss Blind{} is selected and increases its",
                        "listed {C:green}probabilities{} by {C:attention}#2#{} permanently,",
                        "or double if it's a {C:joy_normal}\"Fortune Lady\"{}"
                    },
                }
            },
            j_joy_midbreaker = {
                name = "{C:joy_spell}Campo Mágico a la Mitad",
                text = {
                    {
                        "{C:attention}Jokers{} each give {X:mult,C:white}X#1#{} Mult",
                        "and cannot be debuffed or {C:attention}flipped{}",
                        "during a {C:attention}Boss Blind{}",
                    },
                    {
                        "{C:attention}Jokers{} are {C:attention}flipped{} face-down when {C:attention}Small{} or {C:attention}Big Blind{} are selected",
                        "and {C:attention}flipped{} face-up at end of round",
                    },
                }
            },
        }
    },
}
