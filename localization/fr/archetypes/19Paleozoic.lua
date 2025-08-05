return {
    descriptions = {
        Joker = {
            j_joy_paleo_canadia = {
                name = "{C:joy_trap}Canadia Paléozoïque",
                text = {
                    {
                        "Gagne {C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} {C:attention}retourné",
                        "{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
                        "{C:inactive}(Actuellement: {C:mult}+#2# {C:inactive}Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Ressuscite #3#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_dino = {
                name = "{C:joy_trap}Dinomischus Paléozoïque",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Bannis{} Cette carte et {C:attention}#1#{} autre {C:joy_trap}Piège{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{} et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_eldonia = {
                name = "{C:joy_trap}Eldonia Paléozoïque",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:chips}+#1#{} Jetons cette manche",
                        "et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_hallu = {
                name = "{C:joy_trap}Hallucigenia Paléozoïque",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:mult}+#1#{} Mult cette manche",
                        "et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_lean = {
                name = "{C:joy_trap}Leanchoilia Paléozoïque",
                text = {
                    {
                        "Gagne {C:chips}+#1#{} Jetons pour chaque {C:attention}Joker{} {C:attention}retourné",
                        "{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
                        "{C:inactive}(Actuellement: {C:chips}+#2# {C:inactive}Jetons)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Ressuscite #3#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_marrella = {
                name = "{C:joy_trap}Marrella Paléozoïque",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Ressuscite #1#{} {C:joy_normal}\"Paléozoïque\" ",
                        "et envoie {C:attention}#2#{} {C:joy_trap}Piège{} {C:joy_normal}\"Paléozoïque\"{} au {C:attention}Cimetière",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_oleno = {
                name = "{C:joy_trap}Olenoides Paléozoïque",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:red}+#1#{} Défausse cette manche",
                        "et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_pikaia = {
                name = "{C:joy_trap}Pikaia Paléozoïque",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}+#1#{} cartes en main cette manche",
                        "et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
                    },
                    {
                        "Ne peut être debuff",
                    },
                }
            },
            j_joy_paleo_cambro = {
                name = "{C:joy_link}Cambroraster Paléozoïque",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_xyz}Xyz{} {C:joy_normal}\"Paléozoïque\"{} à l'{C:joy_spell}Extra Deck{} quand invoqué",
                    },
                    {
                        "Les {C:joy_normal}\"Paléozoïque\"{} {C:attention}ressuscitent{} les cartes en {C:dark_edition}Négatif",
                    },
                    {
                        "Ne peut être debuff",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Paléozoïque\"{}",
                }
            },
            j_joy_paleo_anomalo = {
                name = "{C:joy_xyz}Anomalocaris Paléozoïque",
                text = {
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}#1#{}: Gagne {X:mult,C:white}X#2#{} Mult cette manche",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    },
                    {
                        "Attache {C:attention}#4# {C:joy_xyz}matériel{} à cette carte quand un {C:joy_trap}Piège{} est retourné face recto",
                    },
                    {
                        "Ne peut être debuff",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3+{} {C:joy_trap}Pièges{}",
                }
            },
            j_joy_paleo_opa = {
                name = "{C:joy_xyz}Opabinia Paléozoïque",
                text = {
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}#1#{}: Crée {C:attention}#2#{} {C:joy_normal}\"Paléozoïque\" Main Deck{}",
                    },
                    {
                        "Les {C:joy_trap}Pièges{} sont {C:attention}retournés{} face recto quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Ne peut être debuff",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} {C:joy_water}EAU{}",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_paleo = "Paléozoïque",
        }
    }
}
