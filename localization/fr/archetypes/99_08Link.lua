return {
    descriptions = {
        Joker = {
            j_joy_apollousa = {
                name = "{C:joy_link}Apollousa, Arc de la Déesse",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:attention}matériel{}",
                        "utilisé pour son invocation, réduis de {C:red}#2#{} à chaque manche",
                        "{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+ Jokers{} de noms différents",
                }
            },
            j_joy_beyond = {
                name = "{C:joy_link}Au-Delà du Pendule",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_pendulum}Pendule{}",
                        "consommé cette partie",
                        "{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Crée {C:attention}#3#{} {C:joy_pendulum}Pendule{} après en avoir consommé {C:attention}#4#{}",
                        "{C:inactive}(#5#/#4#) (Nécessite de la place)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{},",
                    "un {C:joy_pendulum}Pendule inclus"
                }
            },
            j_joy_exceed = {
                name = "{C:joy_link}Dépassement du Pendule",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:joy_pendulum}Pendules{} consommés cette partie",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Crée {C:attention}#3#{} {C:joy_pendulum}Pendule{} {C:joy_normal}Main Deck{} {C:dark_edition}Négatif{}",
                        "La première fois que la {C:attention}Blinde Boss{} est vaincue",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 Jokers{},",
                    "un {C:joy_pendulum}Pendule inclus"
                }
            },
            j_joy_linkuriboh = {
                name = "{C:joy_link}Linkuriboh",
                text = {
                    {
                        "Vendez cette carte pour désactiver la {C:attention}Blinde Boss{}",
                        "mais fixe l'{C:money}argent{} à {C:money}0$",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:attention}Joker{} {C:blue}Commun{}",
                }
            },
            j_joy_linguriboh = {
                name = "{C:joy_link}Linguriboh",
                text = {
                    {
                        "Vendez cette carte pour désactiver la {C:attention}Blinde Boss{}",
                        "mais réduis les cartes en main de {C:attention}#1#{} si n'est pas invoqué",
                        "en utilisant un {C:joy_normal}\"@Ignister\"{} comme {C:attention}matériel",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Cyberse",
                }
            },
            j_joy_ipmasq = {
                name = "{C:joy_link}I:P Masquerena",
                text = {
                    {
                        "{C:attention}Se transforme{} en un {C:joy_link}Lien{} aléatoire quand la {C:attention}Blinde{} est choisie",
                        "{C:inactive}(Ceci est traité comme une invocation Lien avec 2 Matériels){}",
                        "Un {C:joy_link}Lien{} invoqué de cette façon gagne cet effet:",
                        "{s:0.9,C:attention}Se transforme{s:0.9} en {s:0.9,C:joy_link}\"I:P Masquerena\"{s:0.9} en fin de manche",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} à {C:joy_effect}Effet",
                },
                joy_transfer_ability = {
                    "{C:attention}Se transforme{} en {C:joy_link}\"I:P Masquerena\"{} en fin de manche",
                }
            },
            j_joy_spknight = {
                name = "{C:joy_link}S:P Petite Chevaleresse",
                text = {
                    {
                        "Se {C:attention}Bannis{} avec {C:attention}#1#{} autre {C:attention}Joker{}",
                        "en fin de manche jusqu'à la prochaine {C:attention}Blinde Boss{}",
                        "OU jusqu'à la prochaine {C:attention}Blinde{} si invoqué",
                        "en utilisant {C:attention}2{} {C:attention}Jokers{} {C:joy_spell}Extra Deck{} comme {C:attention}matériel{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} à {C:joy_effect}Effet",
                }
            },
            j_joy_progleo = {
                name = "{C:joy_link}Proglion",
                text = {
                    {
                        "{C:attention}Bannis #1#{} {C:attention}Joker{} adjacent en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde Boss{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "{C:joy_token}Jetons exclus"
                }
            },
            j_joy_raster = {
                name = "{C:joy_link}Ligretrame",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_link}Lien{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} tous les autres {C:attention}Jokers{}",
                        "pour réduire les conditions de la {C:attention}Blinde{} de {C:red}#3#%{} par Joker",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:attention}Jokers{},",
                    "{C:joy_token}Jetons exclus"
                }
            },
        }
    },
}
