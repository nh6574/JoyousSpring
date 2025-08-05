return {
    descriptions = {
        Joker = {
            j_joy_ltwin_lilla = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Lil-la",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:joy_effect}\"Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Ki-sikil\"{}",
                        "quand obtenu, si la carte n'est pas possédée",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
            },
            j_joy_ltwin_kisikil = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Ki-sikil",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:joy_effect}\"Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Lil-la\"{}",
                        "quand obtenu, si la carte n'est pas possédée",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
            },
            j_joy_ltwin_lilla_treat = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Lil-la Friandises",
                text = {
                    {
                        "{C:red}+#1#{} défausse chaque manche",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"Ki-sikil\"{}",
                    },
                },
            },
            j_joy_ltwin_lilla_sweet = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Lil-la Sucreries",
                text = {
                    {
                        "{C:blue}+#1#{} main chaque manche",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"Ki-sikil\"{}",
                    },
                },
            },
            j_joy_ltwin_kisikil_frost = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Jumelle Ki-sikil Gel",
                text = {
                    {
                        "{C:attention}+#1#{} cartes en main",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"Lil-la\"{}",
                    },
                },
            },
            j_joy_etwin_kisikil_deal = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Ki-sikil Transaction",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                        "{C:attention}+#2#{} cartes en main",
                    },
                    {
                        "Envoie {C:attention}#3#{} {C:joy_normal}\"Lil-la\" Main Deck{} au {C:attention}Cimetière{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Ajoute {C:attention}#4#{} {C:joy_normal}\"Evil{C:joy_normal,f:joy_font}★{}{C:joy_normal}Jumelle\"{} à l'{C:joy_spell}Extra Deck{}",
                        "Si utilisé en tant que {C:attention}materiel{} {C:joy_link}Lien{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Ki-sikil\"{}"
                }
            },
            j_joy_etwin_kisikil = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Ki-sikil",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Gagne de manière permanente {C:attention}+#2#{} cartes en main si",
                        "vous possédez un {C:joy_normal}\"Lil-la\"{} quand invoqué",
                    },
                    {
                        "{C:attention}Ressuscite #3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Lil-la\"{} (ou {C:attention}#3#{}",
                        "{C:joy_normal}\"Lil-la\"{} si aucun) quand la {C:attention}Blinde{} est choisie",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "1 {C:joy_normal}\"Ki-sikil\"{} inclus"
                }
            },
            j_joy_etwin_lilla = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Lil-la",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                    },
                    {
                        "{C:money}+$#2#{} si vous possédez un {C:joy_normal}\"Ki-sikil\"{} quand invoqué",
                    },
                    {
                        "{C:attention}Ressuscite #3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Ki-sikil\"{} (ou {C:attention}#3#{}",
                        "{C:joy_normal}\"Ki-sikil\"{} si aucun) quand la {C:attention}Blinde{} est choisie",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "1 {C:joy_normal}\"Lil-la\"{} inclus"
                }
            },
            j_joy_etwin_kisikil_lilla = {
                name = "{C:joy_effect}Evil{C:joy_effect,f:joy_font}★{}{C:joy_effect}Jumelles Ki-sikil & Lil-la",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Lil-la\"{} au {C:attention}Cimetière{}",
                        "{C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Ki-sikil\"{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement:{} {C:chips}+#4#{} {C:inactive}Jetons{} {C:mult}+#5#{} {C:inactive}Mult){}",
                        "{C:red}-#3#{} défausses pour chaque {C:joy_link}Lien{} quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Ne peut pas être {C:attention}ressuscité{}",
                    },
                },
            },
            j_joy_etwin_sunny = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Sunny la Perturbatrice",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                        "{C:mult}+#2#{} Mult",
                    },
                    {
                        "{C:attention}Retourne{} à l'{C:joy_spell}Extra Deck{} et {C:attention}ressuscite{}",
                        "{C:attention}#3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Ki-sikil\"{} et {C:attention}#3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle Lil-la\"{}",
                        "en fin de manche",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle\"{}"
                }
            },
            j_joy_ltwin_channel = {
                name = "{C:joy_spell}Chaîne Live{C:joy_spell,f:joy_font}☆{}{C:joy_spell}Jumelle",
                text = {
                    {
                        "Pendant une {C:attention}Blinde{}, vous pouvez {C:attention}sacrifier #1#{}",
                        "{C:joy_normal}\"Ki-sikil\"{} ou {C:joy_normal}\"Lil-la\"{} {C:joy_link}Lien{} afin",
                        "de {C:attention}doubler{} les jetons marqués",
                    },
                    {
                        "{C:attention}Ressuscite #2#{} {C:joy_normal}\"Ki-sikil\"{} ou {C:joy_normal}\"Lil-la\"{}",
                        "en fin de boutique",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ltwin = "Live☆Jumelles",
        }
    }
}
