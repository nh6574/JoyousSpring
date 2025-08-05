return {
    descriptions = {
        Joker = {
            j_joy_invoked_aleister = {
                name = "{C:joy_effect}Aleister l'Invokhateur",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en un {C:joy_normal}\"Invokhé\"",
                        "{C:inactive}(Ceci est traitée comme une invocation Fusion)",
                    },
                    {
                        "Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:chips}+#2#{} {s:0.9}Jetons pour chaque {s:0.9,C:joy_fusion}Fusion{} {s:0.9}invoquée cette partie",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Jetons pour chaque {C:joy_fusion}Fusion{} invoquée cette partie",
                    "{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)"
                }
            },
            j_joy_invoked_madness = {
                name = "{C:joy_link}Aleister l'Invokhateur de la Folie",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en un {C:joy_normal}\"Invokhé\"",
                        "{C:inactive}(Ceci est traitée comme une invocation Fusion)",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:joy_spell}\"Effondrement Magique\"{} quand utilisé",
                        "comme {C:attention}matériel{} pour un {C:joy_fusion}Fusion{}",
                        "{C:inactive}(Nécessite de la place)",
                    },
                    {
                        "Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:mult}+#3#{} {s:0.9}Mult pour chaque {s:0.9,C:joy_fusion}Fusion{} {s:0.9}invoquée cette partie",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{} avec",
                    "différents {C:attention}Types",
                    "et {C:attention}Attributs"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult pour chaque {C:joy_fusion}Fusion{} invoquée cette partie",
                    "{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)"
                }
            },
            j_joy_invoked_caliga = {
                name = "{C:joy_fusion}Caliga l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:attention}Joker{} {C:attention}sacrifiés{} cette partie",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Réduis le prix des {C:joy_effect}Packs Monstre{} de {C:money}#4#$",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_dark}TÉNÈBRES",
                    "{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
                    "{s:0.8,C:inactive}un non-Monstre)"
                },
                joy_transfer_ability = {
                    "Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:attention}sacrifiés{} cette partie",
                    "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "Réduis le prix des {C:joy_effect}Packs Monstre{} de {C:money}#3#$"
                }
            },
            j_joy_invoked_raidjin = {
                name = "{C:joy_fusion}Raidjin l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:attention}Joker{} {C:attention}retournés{} cette partie",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:attention}Retourne #4#{} autre {C:attention}Joker{} aléatoire face recto quand la {C:attention}Blinde{} est choisie",
                        "{C:attention}Retourne #4#{} autre {C:attention}Joker{} aléatoire face verso en fin de manche",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_wind}VENT",
                    "{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
                    "{s:0.8,C:inactive}un non-Monstre)"
                },
                joy_transfer_ability = {
                    "Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:attention}retournés{} cette partie",
                    "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "{C:attention}Retourne #3#{} autre {C:attention}Joker{} aléatoire face recto quand la {C:attention}Blinde{} est choisie",
                    "{C:attention}Retourne #3#{} autre {C:attention}Joker{} aléatoire face verso en fin de manche",
                }
            },
            j_joy_invoked_cocytus = {
                name = "{C:joy_fusion}Cocyte l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Reduis les conditions de la {C:attention}Blinde{} de {C:red}#2#%",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_water}EAU",
                    "{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
                    "{s:0.8,C:inactive}un non-Monstre)"
                },
                joy_transfer_ability = {
                    "Reduis les conditions de la {C:attention}Blinde{} de {C:red}#1#%",
                }
            },
            j_joy_invoked_purgatorio = {
                name = "{C:joy_fusion}Purgatorio l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Chaque {C:joy_fusion}Fusion{} gagne {X:mult,C:white}X#2#{} Mult",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_fire}FEU",
                    "{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
                    "{s:0.8,C:inactive}un non-Monstre)"
                },
                joy_transfer_ability = {
                    "Chaque {C:joy_fusion}Fusion{} gagne {X:mult,C:white}X#1#{} Mult",
                }
            },
            j_joy_invoked_mage = {
                name = "{C:joy_fusion}Magellanica l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "{C:mult}+#2#{} Mult",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_earth}TERRE",
                    "{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
                    "{s:0.8,C:inactive}un non-Monstre)"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult",
                }
            },
            j_joy_invoked_mechaba = {
                name = "{C:joy_fusion}Mechaba l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Désactive l'effet de la {C:attention}Blinde Boss{} après avoir vendu {C:attention}#2#{} cartes cette manche",
                        "{C:inactive}(#3#/#2#)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_light}LUMIÈRE",
                    "{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
                    "{s:0.8,C:inactive}un non-Monstre)"
                },
                joy_transfer_ability = {
                    "Désactive l'effet de la {C:attention}Blinde Boss{} après avoir vendu {C:attention}#1#{} cartes cette manche",
                    "{C:inactive}(#2#/#1#)"
                }
            },
            j_joy_invoked_augo = {
                name = "{C:joy_fusion}Augoeides l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:joy_fusion}Fusion{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Envoie {C:attention}#4#{} {C:joy_fusion}Fusion{} non-{C:joy_normal}\"Invokhé\"{} au {C:attention}Cimetière{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{} {C:joy_fusion}Fusion",
                    "{s:0.8,C:inactive}(Remplace les autres conditions)",
                },
                joy_transfer_ability = {
                    "Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:joy_fusion}Fusion{} au {C:attention}Cimetière{}",
                    "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "Envoie {C:attention}#3#{} {C:joy_fusion}Fusion{} non-{C:joy_normal}\"Invokhé\"{} au {C:attention}Cimetière{}",
                    "quand la {C:attention}Blinde{} est choisie",
                }
            },
            j_joy_invoked_elysium = {
                name = "{C:joy_fusion}Elysium l'Invokhé",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
                        "pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Gagne les effets de chaque {C:joy_normal}\"Invokhé\"{} différents au {C:attention}Cimetière{}",
                    },
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
                        "et comme n'importe quel {C:attention}Attribut{} quand possédé",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Sacrifier 1{}",
                    "non-{C:joy_fusion}Fusion invoqué",
                    "{s:0.8,C:inactive}(Remplace les autres conditions)",
                }
            },
            j_joy_invoked_meltdown = {
                name = "{C:joy_spell}Effondrement Magique",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier #1#{} {C:joy_fusion}Fusions{} pour créer {C:attention}#2#{} {C:joy_effect}\"Aleister l'Invokhateur\"",
                    },
                    {
                        "Gagne {X:mult,C:white}X#3#{} Mult pour chaque {C:joy_fusion}Fusion{} invoqué cette partie",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}",
                    },
                    {
                        "Les {C:joy_fusion}Fusions{} ne peuvent pas être retournés ou debuff",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_invoked = "Invokhé",
        }
    }
}
