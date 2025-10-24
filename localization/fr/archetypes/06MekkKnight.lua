return {
    descriptions = {
        Joker = {
            j_joy_mekk_avram = {
                name = "{C:joy_normal}Avram Mekk-Chevalier",
                text = {
                    {
                        "{E:1}\"Jette un œil LÀ-DESSUS !\"{}",
                    },
                },
            },
            j_joy_mekk_red = {
                name = "{C:joy_effect}Lune Rouge Mekk-Chevalier",
                text = {
                    {
                        "Les cartes marquants des points dans la {C:attention}colonne{}",
                        "donnent {C:mult}+#1#{} Mult fois son rang",
                        "{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_orange = {
                name = "{C:joy_effect}Coucher du Soleil Orange Mekk-Chevalier",
                text = {
                    {
                        "Les cartes jouées dans cette {C:attention}colonne{}",
                        "comptent dans le score",
                        "{C:inactive}(Actuellement en colonne{} {C:attention}#1#{}{C:inactive}){}",
                    },
                    {
                        "Gagne {X:chips,C:white}X#2#{} Jetons à chaque",
                        "fois que cet effet s'active",
                        "{C:inactive}(Actuellement: {X:chips,C:white}X#3#{}{C:inactive} Jetons)",
                    },
                },
            },
            j_joy_mekk_yellow = {
                name = "{C:joy_effect}Étoile Jaune Mekk-Chevalier",
                text = {
                    {
                        "Les cartes marquants des points dans la {C:attention}colonne{}",
                        "donnent {C:money}+#1#${} fois leur rang",
                        "{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_green = {
                name = "{C:joy_effect}Horizon Vert Mekk-Chevalier",
                text = {
                    {
                        "Les cartes marquants des points dans la {C:attention}colonne{}",
                        "ont {C:green}#1# chance sur <rang>{} de",
                        "se redéclencher ce même nombre de fois.",
                        "Les chances augmentent pour chaque {C:joy_normal}\"Mekk-Chevalier\"{}",
                        "{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_blue = {
                name = "{C:joy_effect}Ciel Bleu Mekk-Chevalier",
                text = {
                    {
                        "Les cartes marquants des points dans la {C:attention}colonne{}",
                        "donnent {C:chips}+#1#{} Jetons fois leurs rang",
                        "{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
                    },
                },
            },
            j_joy_mekk_indigo = {
                name = "{C:joy_effect}Éclipse Indigo Mekk-Chevalier",
                text = {
                    {
                        "Gagne un effet en fonction de sa {C:attention}colonne{}",
                        "{V:1}1: Toutes les cartes marquant des points se redéclenchent{}",
                        "{V:2}2:{} {C:chips}+#1#{} {V:2}Jetons{}",
                        "{V:3}3:{} {C:mult}+#2#{} {V:3}Mult{}",
                        "{V:4}4:{} {X:mult,C:white}X#3#{} {V:4}Mult{}",
                        "{V:5}5+:{} {C:money}+#4#${} {V:5}en fin de manche{}",
                    },
                },
            },
            j_joy_mekk_purple = {
                name = "{C:joy_effect}Tombée de la Nuit Violette Mekk-Chevalier",
                text = {
                    {
                        "{C:attention}Se bannis{} quand la {C:attention}Blinde{} est choisie",
                        "jusqu'à la fin de la {C:attention}Blinde Boss{} afin de créer {C:attention}#1#{}",
                        "{C:joy_normal}\"Mekk-Chevalier\" Main Deck{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
            },
            j_joy_mekk_morningstar = {
                name = "{C:joy_link}Mekk-Chevalier de l'Étoile du Matin",
                text = {
                    {
                        "Les cartes marquants des points dans les {C:attention}colonnes{} adjacentes",
                        "gagnent {X:mult,C:white}X#1#{} Mult s'il y'un un",
                        "{C:joy_normal}\"Mekk-Chevalier\"{} dans cette {C:attention}colonne{}",
                        "{C:inactive}(Actuellement en colonnes{} {C:attention}#2#{} {C:inactive}et{} {C:attention}#3#{}{C:inactive}){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{}",
                }
            },
            j_joy_mekk_spectrum = {
                name = "{C:joy_link}Spectre Suprême Mekk-Chevalier",
                text = {
                    {
                        "Les effets de {C:joy_normal}\"Mekk-Chevalier\"{} s'appliquent sur",
                        "toutes les cartes jouées",
                    },
                    {
                        "Une fois par manche, vends un {C:attention}#1#{} {C:joy_normal}\"Mekk-Chevalier\"{}",
                        "afin de créer {C:attention}#1#{} {C:joy_normal}\"Mekk-Chevalier\" Main Deck{} {C:dark_edition}Négatif{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:joy_normal}\"Mekk-Chevalier\"{}",
                }
            },
            j_joy_mekkcrus_avramax = {
                name = "{C:joy_link}Avramax Mekk-Chevalier Croisédia",
                text = {
                    {
                        "Gagne immédiatement toutes les {C:attention}Blindes{}",
                    },
                    {
                        "Se détruis après un nombre de",
                        "{C:attention}Blindes{} vaincus",
                        "égal au nombre de {C:attention}matériels{}",
                        "utilisé pour son invocation {C:inactive}(#1#/#2#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:attention}Jokers{} invoqués depuis l'{C:joy_spell}Extra Deck{}",
                }
            },
            j_joy_mekkleg_scars = {
                name = "{C:joy_spell}Cicatrices de l'Héritage du Monde",
                text = {
                    {
                        "Chaque {C:joy_normal}\"Mekk-Chevalier\"{} gagnent {C:mult}+#1#{} Mult",
                    },
                    {
                        "Pendant une {C:attention}Blinde{}, vous pouvez {C:attention}sacrifier #2#{}",
                        "{C:joy_normal}\"Mekk-Chevalier\"{} pour gagner {C:blue}+#3#{} Mains cette manche",
                    },
                    {
                        "Vendez cette carte en ayant",
                        "{C:attention}#4# {C:joy_normal}\"Mekk-Chevalier\"{} au {C:attention}Cimetière",
                        "avec des noms différents",
                        "afin de gagner la {C:attention}Blinde{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mekk = "Mekk-Chevalier",
        }
    }
}
