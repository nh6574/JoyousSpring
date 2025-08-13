return {
    descriptions = {
        Joker = {
            j_joy_yokai_ogre = {
                name = "{C:joy_effect}Ogro Fantasma & Conejo de las Nieves",
                text = {
                    {
                        "Destroys every scored card",
                        "Gains {X:mult,C:white}X#1#{} Mult for each",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_reaper = {
                name = "{C:joy_effect}Parca Fantasma & Cerezas del Invierno",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult for each",
                        "{C:joy_spell}Extra Deck{} {C:attention}Joker{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_ash = {
                name = "{C:joy_effect}Flor de Ceniza & Primavera Feliz",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to not draw cards",
                        "after playing/discarding",
                        "Gains {X:mult,C:white}X#3#{} Mult each time",
                        "this effect is triggered",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_belle = {
                name = "{C:joy_effect}Bella Fantasma & Mansión Embrujada",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult when a {C:attention}Joker{}",
                        "is {C:attention}revived{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_sister = {
                name = "{C:joy_effect}Hermana Fantasma & Cornejo Espectral",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult per consumable used",
                        "during a {C:attention}Blind{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "If none are used this round, {C:red}you lose{}",
                    },
                },
            },
            j_joy_yokai_mourner = {
                name = "{C:joy_effect}Fantasma Plañidero & Frío de Luna",
                text = {
                    {
                        "Permanently debuffs every obtained",
                        "{C:blue}Common{} and {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each debuffed card sold",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_yokai = "Chicas Fantasma",
        }
    }
}
