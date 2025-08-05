return {
    descriptions = {
        Joker = {
            j_joy_psy_driver = {
                name = "{C:joy_normal}Pilote Structure-PSY",
                text = {
                    {
                        "{E:1}Un soldat Psychique qui combat les Forces de Sécurité{}",
                        "{E:1}en surfant sur des courants de foudre à l'aide{}",
                        "{E:1}d'un amplificateur autonome \"Structure-PSY\"{}",
                    },
                },
            },
            j_joy_psy_alpha = {
                name = "{C:joy_effect}Pièce Structure-PSY Alpha",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
                        "quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
                        "donner à toutes les cartes en main {X:mult,C:white}X#2#{} Mult cette manche",
                    },
                },
            },
            j_joy_psy_beta = {
                name = "{C:joy_effect}Pièce Structure-PSY Bêta",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
                        "quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
                        "donner à toutes les cartes marquant des points {X:mult,C:white}X#2#{} Mult cette manche",
                    },
                },
            },
            j_joy_psy_gamma = {
                name = "{C:joy_effect}Pièce Structure-PSY Gamma",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
                        "quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
                        "donner à tous les {C:attention}Jokers{} {X:mult,C:white}X#2#{} Mult cette manche",
                    },
                },
            },
            j_joy_psy_delta = {
                name = "{C:joy_effect}Pièce Structure-PSY Delta",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
                        "quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
                        "donner à toutes les cartes de {C:tarot}Tarot{} dans la zone",
                        "consommmable {X:mult,C:white}X#2#{} Mult cette manche",
                    },
                },
            },
            j_joy_psy_epsilon = {
                name = "{C:joy_effect}Pièce Structure-PSY Epsilon",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
                        "quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
                        "donner à toutes les cartes {C:planet}Planètes{} dans la zone",
                        "consommmable {X:mult,C:white}X#2#{} Mult cette manche",
                    },
                },
            },
            j_joy_psy_multithreader = {
                name = "{C:joy_effect}Multitraiteur Structure-PSY",
                text = {
                    {
                        "Le nom de cette carte devient {C:joy_normal}\"Pilote Structure-PSY\"",
                        "pour les effets des {C:joy_normal}\"Structure-PSY\"{}",
                    },
                    {
                        "Crée {C:attention}#1#{} {C:attention}Joker{} {C:joy_normal}\"Structure-PSY\"{}",
                        "{C:joy_normal}Main Deck{} à {C:joy_effect}Effet{} quand cette carte",
                        "retourne du {C:attention}bannissement{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
            },
            j_joy_psy_zeta = {
                name = "{C:joy_synchro}Seigneur Structure-PSY Zêta",
                text = {
                    {
                        "Cette carte et {C:attention}#1#{} carte en zone",
                        "consommable sont {C:attention}bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} {C:blue}Commun{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_omega = {
                name = "{C:joy_synchro}Seigneur Structure-PSY Oméga",
                text = {
                    {
                        "Cette carte et un autre {C:attention}Joker{}",
                        "sont {C:attention}bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} {C:blue}Commun{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_lambda = {
                name = "{C:joy_link}Seigneur Structure-PSY Lambda",
                text = {
                    {
                        "Les effets des {C:joy_normal}\"Structure-PSY\"{} sont actifs",
                        "sans {C:attention}bannir{} {C:joy_normal}\"Pilote Structure-PSY\"",
                    },
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"Structure-PSY\"",
                        "à l'{C:joy_spell}Extra Deck{} quand un {C:attention}Joker{}",
                        "{C:joy_normal}Psychique{} retourne du {C:attention}bannissement{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "{C:joy_token}Jetons{} exclus",
                }
            },
            j_joy_psy_circuit = {
                name = "{C:joy_spell}Circuit Structure-PSY",
                text = {
                    {
                        "{C:money}+#1#${} à chaque fois qu'un {C:joy_synchro}Synchro{} est invoqué",
                    },
                    {
                        "Les {C:joy_synchro}Synchros{} {C:joy_normal}Psychique{}",
                        "deviennent {C:dark_edition}Négatif{} quand invoqué",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_psy = "Structure-PSY",
        }
    }
}
