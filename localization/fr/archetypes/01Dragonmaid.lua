return {
    descriptions = {
        Joker = {
            j_joy_dmaid_kitchen = {
                name = "{C:joy_effect}Cuisine Dragonirène",
                text = {
                    {
                        "{C:attention}#1#{} {C:green}Relance{} gratuite pour chaque",
                        "{C:joy_normal}\"Dragonirène\"{} quand obtenu",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Tinkhec\"",
                        "quand la {C:attention}Blinde{} est choisie",
                    }
                },
            },
            j_joy_dmaid_tinkhec = {
                name = "{C:joy_effect}Dragonirène Tinkhec",
                text = {
                    {
                        "Chaque {C:joy_normal}\"Dragonirène\"{}",
                        "gagne {C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Cuisine Dragonirène\"",
                        "en fin de manche",
                    }
                },
            },
            j_joy_dmaid_parlor = {
                name = "{C:joy_effect}Petit Salon Dragonirène",
                text = {
                    {
                        "{C:attention}#1# Jeton Booster{} quand obtenu",
                        "si vous possédez {C:attention}#2#{} {C:joy_normal}\"Dragonirène\"{}",
                        "Gagne un extra coupon tous les {C:attention}#3#{} supplémentaires",
                        "et envoie {C:attention}#4#{} {C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Lorpar\"",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
            },
            j_joy_dmaid_lorpar = {
                name = "{C:joy_effect}Dragonirène Lorpar",
                text = {
                    {
                        "Chaque {C:joy_normal}\"Dragonirène\"{}",
                        "gagne {X:mult,C:white}X#1#{} Mult",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Petit Salon Dragonirène\"",
                        "en fin de manche",
                    },
                },
            },
            j_joy_dmaid_nurse = {
                name = "{C:joy_effect}Infirmière Dragonirène",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de {C:attention}ressusciter #3#{}",
                        "{C:joy_normal}\"Dragonirène\"{} {C:blue}Commun{} quand obtenu",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Ernus\"",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
            },
            j_joy_dmaid_ernus = {
                name = "{C:joy_effect}Dragonirène Ernus",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque",
                        "{C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Infirmière Dragonirène\"",
                        "en fin de manche",
                    },
                },
            },
            j_joy_dmaid_laundry = {
                name = "{C:joy_effect}Linge Dragonirène",
                text = {
                    {
                        "Envoie {C:attention}#1#{} {C:joy_normal}\"Dragonirène\"{} du {C:joy_normal}Main Deck{}",
                        "au {C:attention}Cimetière{} quand obtenu",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Nudyarl\"",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
            },
            j_joy_dmaid_nudyarl = {
                name = "{C:joy_effect}Dragonirène Nudyarl",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque",
                        "{C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Linge Dragonirène\"",
                        "en fin de manche",
                    },
                },
            },
            j_joy_dmaid_chamber = {
                name = "{C:joy_effect}Chambre Dragonirène",
                text = {
                    {
                        "{C:attention}#1# Badge de Coupon{} quand obtenu",
                        "si vous possédez {C:attention}#2#{} {C:joy_normal}\"Dragonirène\"{}",
                        "Gagne un extra coupon tous les {C:attention}#3#{} supplémentaires",
                        "et envoie {C:attention}#4#{} {C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Cehrmba\"",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
            },
            j_joy_dmaid_cehrmba = {
                name = "{C:joy_effect}Dragonmaid Cehrmba",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de {C:attention}ressusciter #3#{}",
                        "{C:joy_normal}\"Dragonirène\"{} {C:green}Peu Commun{} ou {C:red}Rare{}",
                        "quand obtenu",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_effect}\"Chambre Dragonirène\"",
                        "en fin de manche",
                    },
                },
            },
            j_joy_dmaid_lady = {
                name = "{C:joy_fusion}Camériste Dragonirène",
                text = {
                    {
                        "Ajoute {C:joy_fusion}\"Maison Dragonirène\"{} à",
                        "l'{C:joy_spell}Extra Deck{} quand invoqué",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:green}#1# chance sur #2#{} de se {C:attention}transformer{} en",
                        "{C:joy_normal}\"Dragonirène\"{} {C:green}Peu Commun{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "1 {C:joy_normal}\"Dragonirène\"{} inclus"
                }
            },
            j_joy_dmaid_house = {
                name = "{C:joy_fusion}Maison Dragonirène",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult pour chaque {C:joy_normal}\"Dragonirène\"{}",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Les {C:attention}Jokers{} au {C:attention}Cimetière{} comptent pour",
                        "les effets {C:joy_normal}\"Dragonirène\"{}",
                    },
                    {
                        "{C:attention}Se transforme{} en {C:joy_fusion}\"Dragonirène Sheou\"",
                        "après {C:attention}#3#{} manches {C:inactive}(#4#/#3#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Dragonirène\"{}"
                }
            },
            j_joy_dmaid_sheou = {
                name = "{C:joy_fusion}Dragonirène Sheou",
                text = {
                    {
                        "Les {C:attention}Jokers{} au {C:attention}Cimetière{} comptent pour",
                        "les effets {C:joy_normal}\"Dragonirène\"{}",
                    },
                    {
                        "Quand la {C:attention}Blinde Boss{} est choisie,",
                        "désactive ses effets puis {C:attention}Se transforme{} en",
                        "{C:joy_fusion}\"Maison Dragonirène\"{} puis crée {C:attention}#1#{}",
                        "{C:joy_normal}\"Dragonirène\"{} {C:blue}Commun{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dmaid = "Dragonirène",
        }
    }
}
