return {
    descriptions = {
        Joker = {
            j_joy_fish_keaf = {
                name = "{C:joy_effect}Keaf, Obscurité du Ghoti",
                text = {
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{} et",
                        "{C:attention}ressuscite #1#{} {C:joy_synchro}Synchro{}",
                    },
                },
            },
            j_joy_fish_paces = {
                name = "{C:joy_effect}Paces, Lumière du Ghoti",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                    },
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
            },
            j_joy_fish_shif = {
                name = "{C:joy_effect}Shif, Fée du Ghoti",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
            },
            j_joy_fish_zep = {
                name = "{C:joy_effect}Zep, Rubis du Ghoti",
                text = {
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{} et",
                        "{C:attention}ressuscite #1#{} {C:joy_normal}\"Ghoti\"{} {C:joy_normal}Main Deck{}",
                    },
                },
            },
            j_joy_fish_ixeep = {
                name = "{C:joy_effect}Ixeep, Présage du Ghoti",
                text = {
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde Boss{} et",
                        "crée {C:attention}#1#{} {C:joy_normal}\"Ghoti\"{} {C:joy_normal}Main Deck{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
            },
            j_joy_fish_eanoc = {
                name = "{C:joy_effect}Eanoc, Sentinelle du Ghoti",
                text = {
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"Ghoti\"{}",
                        "à l'{C:joy_spell}Extra Deck{} après être revenu",
                        "du {C:attention}bannissement #2#{} fois",
                        "{C:inactive}(Nécessite de la place) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_psiics = {
                name = "{C:joy_effect}Psiics, Lumière de Lune du Ghoti",
                text = {
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde Boss{} et ressuscite {C:attention}#1#{}",
                        "{C:attention}Joker{} {C:joy_synchro}Syntoniseur{} en {C:dark_edition}Négatif{}",
                    },
                },
            },
            j_joy_fish_snopios = {
                name = "{C:joy_effect}Snopios, Ombre du Ghoti",
                text = {
                    {
                        "Cette carte et {C:attention}#1#{} carte dans la zone",
                        "consommable sont {C:attention}bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                    {
                        "Crée {C:joy_spell}\"Les Plus Lointaines Profondes Limites\"{}",
                        "après être revenu du {C:attention}bannissement #2#{} fois",
                        "{C:inactive}(Nécessite de la place) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_arionpos = {
                name = "{C:joy_synchro}Arionpos, Serpent du Ghoti",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque cartes",
                        "{C:attention}bannies{} pendant la partie",
                        "{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
                    },
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{} et",
                        "ajoute {C:attention}#3#{} {C:joy_normal}\"Ghoti\"{} à l'{C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Poisson{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_askaan = {
                name = "{C:joy_synchro}Askaan, le Ghoti à Deux Cornes",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque cartes",
                        "{C:attention}bannies{} pendant la partie",
                        "{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Cette carte et un {C:attention}Joker{} non-{C:joy_normal}\"Ghoti\"{}",
                        "sont {C:attention}bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{} {C:red}Rare{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_guoglim = {
                name = "{C:joy_synchro}Guoglim, Lance du Ghoti",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque cartes",
                        "{C:attention}bannies{} pendant la partie",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:attention}Ressuscite{} autant de {C:attention}Jokers{}",
                        "{C:joy_normal}Poisson{} que possible quand invoqué",
                    },
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{} {C:red}Rare{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_deepbeyond = {
                name = "{C:joy_synchro}Ghoti de l'Au-Delà des Limites",
                text = {
                    {
                        "Cette carte et tous les {C:attention}Jokers{} non-{C:joy_normal}\"Ghoti\"{}",
                        "sont {C:attention}bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Poisson{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{} {C:red}Rare{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_depths = {
                name = "{C:joy_spell}Les Plus Lointaines Profondes Limites",
                text = {
                    {
                        "{C:money}+#1#${} chaque fois qu'une carte",
                        "est {C:attention}bannie",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_fish = "Ghoti",
        }
    }
}
