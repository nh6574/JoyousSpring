return {
    descriptions = {
        Joker = {
            j_joy_flady_light = {
                name = "{C:joy_effect}Lumina, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de {C:attention}bannir #3#{}",
                        "{C:joy_normal}\"Demoiselle de Fortune\"{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}"
                    },
                    {
                        "Gagne {C:money}#4#${} x {C:green}numérateur{} en fin de manche",
                        "{C:inactive}(Capé à #4#$ x #2#){}",
                        "{C:inactive}(Actuellement: {C:money}+#5#${}{C:inactive})"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{}",
                        "de manière permanente de {C:attention}#6#{} quand une carte est {C:attention}bannie"
                    }
                }
            },
            j_joy_flady_fire = {
                name = "{C:joy_effect}Furie, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de doubler toutes",
                        "les autres {C:green}probabilités{} listées cette manche",
                    },
                    {
                        "Gagne un Mult égal a {C:mult}+#3#{} x tous les {C:green}numérateurs{} de {C:joy_normal}\"Demoiselle de Fortune\"{}",
                        "{C:inactive}(Capé a +#3# x #4#){}",
                        "{C:inactive}(Actuellement: {C:mult}+#5#{}{C:inactive} Mult)"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{}",
                        "de manière permanente de {C:attention}#6#{} en fin de manche"
                    }
                }
            },
            j_joy_flady_wind = {
                name = "{C:joy_effect}Zéphyria, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de créer une {C:planet}Planète{}",
                        "de la main jouée",
                    },
                    {
                        "Chaque {C:joy_normal}\"Demoiselle de Fortune\"{} gagnent des Jetons égal a {C:chips}+#3#{} x leur {C:green}numérateur{}",
                        "{C:inactive}(Capé a +#3# x leur dénominateur){}",
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{}",
                        "en fin de manche de manière permanente de {C:attention}#4#{} pour chaque {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
            j_joy_flady_water = {
                name = "{C:joy_effect}Ondine, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} d'augmenter la taille de la main",
                        "de {C:attention}#3#{} quand la {C:attention}Blinde{} est choisie",
                        "{C:inactive}(Se réinitialise si échoue) (Max +#8#)",
                        "{C:inactive}(Actuellement: {C:attention}+#4#{}{C:inactive} cartes en main.)"
                    },
                    {
                        "Gagne des Jetons égal a {C:chips}+#5#{} x {C:green}numérateur{}",
                        "{C:inactive}(Capé a +#5# x #2#){}",
                        "{C:inactive}(Actuellement: {C:chips}+#6#{}{C:inactive} Jetons)"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{}",
                        "de manière permanente de {C:attention}#7#{} en fin de manche"
                    }
                }
            },
            j_joy_flady_earth = {
                name = "{C:joy_effect}Gaïa, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de créer {C:attention}#3#{}",
                        "{C:joy_normal}\"Demoiselle de Fortune\" Main Deck{} quand la {C:attention}Blinde{} est choisie",
                        "{C:inactive}(Nécessite de la place)",
                    },
                    {
                        "Gagne {X:mult,C:white}X#4#{} extra Mult pour chaque",
                        "augmentation du {C:green}numérateur{} de cette carte de manière permanente",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#5#{}{C:inactive} Mult)"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{}",
                        "de manière permanente de {C:attention}#6#{} quand le {C:green}numérateur{} de cette carte augmente",
                        "de manière permanente {C:inactive}(Excepté \"Gaïa, Demoiselle de Fortune\"){}"
                    }
                }
            },
            j_joy_flady_dark = {
                name = "{C:joy_effect}Ténèbra, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de {C:attention}ressusciter{}",
                        "{C:attention}#3#{} {C:joy_normal}\"Demoiselle de Fortune\"{} quand la {C:attention}Blinde{} est choisie",
                        "(ou {C:joy_normal}Magicien{} si aucun)",
                    },
                    {
                        "Gagne un Mult égal a {C:mult}+#4#{} x {C:green}numérateur{}",
                        "{C:inactive}(Capé a +#4# x #2#){}",
                        "{C:inactive}(Actuellement: {C:mult}+#5#{}{C:inactive} Mult)"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{} en",
                        "fin de manche de manière permanente de {C:attention}#6#{} pour chaque {C:joy_normal}Magicien{}",
                    }
                }
            },
            j_joy_flady_past = {
                name = "{C:joy_effect}Passé, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de {C:attention}bannir{}",
                        "tous les {C:attention}Jokers{} {C:joy_normal}Magicien{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                    {
                        "Gagne {X:mult,C:white}X#3#{} x {C:green}numérateur{} extra Mult",
                        "{C:inactive}(Capé a X#3# x #2#){}",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#4#{}{C:inactive} Mult)"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{}",
                        "de manière permanente de {C:attention}#5#{} quand une carte revient du {C:attention}bannissement{}"
                    }
                }
            },
            j_joy_flady_every = {
                name = "{C:joy_synchro}Éternité, Demoiselle de Fortune",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de gagner {X:mult,C:white}X#3#{} Mult cette manche",
                        "{C:green}#4# chance sur #5#{} de {C:attention}bannir #6#{} {C:joy_normal}\"Demoiselle de Fortune\"{}",
                        "en fin de manche jusqu'à la prochaine {C:attention}Blinde{}",
                        "{C:green}#7# chance sur #8#{} de gagner {C:money}+#9#${} en fin de manche",
                        "{C:green}#10# chance sur #11#{} de doubler de manière permanente",
                        "toutes les {C:green}probabilités{} listées sur chaque carte marquant des points",
                        "{C:green}#12# chance sur #13#{} de créer {C:attention}#14#{} {C:joy_normal}\"Bonne Aventure\"{}",
                        "quand la {C:attention}Blinde{} est choisie",
                        "{C:green}#15# chance sur #16#{} de {C:attention}ressusciter #17#{} {C:joy_normal}\"Demoiselle de Fortune\"{}",
                        "(ou {C:joy_normal}Magicien{} si aucune) en {C:dark_edition}Négatif{} quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Gagne un Mult égal a {C:mult}+#18#{} x {C:green}numérateurs{}",
                        "{C:inactive}(Capé a +#18# x #19#){}",
                        "{C:inactive}(Actuellement: {C:mult}+#20#{}{C:inactive} Mult)"
                    },
                    {
                        "Quand une carte revient du {C:attention}bannissement{},",
                        "double ses {C:green}probabilités{} listées de manière permanente"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} {C:joy_normal}Magicien{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_ffairy_hikari = {
                name = "{C:joy_effect}Luminine, Sorcière de la Bonne Aventure",
                text = {
                    {
                        "{C:money}+#1#${} quand une {C:green}probabilité{} listée réussi"
                    },
                    {
                        "Une fois par mise, crée {C:attention}#2#{} {C:joy_normal}Magicien Main Deck{}",
                        "après {C:attention}#3#{} {C:green}probabilités{} listées ayant réussi {C:inactive}(#4#/#3#){}",
                        "{C:inactive}(Nécessite de la place)"
                    },
                    {
                        "Gratuit et ne nécessite pas de place quand obtenu du magasin",
                        "si vous possédez une {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
            j_joy_ffairy_en = {
                name = "{C:joy_effect}Flammette, Sorcière de la Bonne Aventure",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:green}probabilité{}",
                        "listées ayant réussi cette partie",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:green}#3# chance sur #4#{} de changer les cartes marquant des",
                        "points en carte {C:attention}Chance{}"
                    },
                    {
                        "Gratuit et ne nécessite pas de place quand obtenu du magasin",
                        "si vous possédez une {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
            j_joy_ffairy_hu = {
                name = "{C:joy_effect}Alizée, Sorcière de la Bonne Aventure",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:green}probabilité{}",
                        "listées ayant réussi cette partie",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "La prochaine {C:green}probabilité{} après que cette carte",
                        "revient du {C:attention}banissement{} est garantie"
                    },
                    {
                        "Gratuit et ne nécessite pas de place quand obtenu du magasin",
                        "si vous possédez une {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
            j_joy_ffairy_swee = {
                name = "{C:joy_effect}Aquamarine, Sorcière de la Bonne Aventure",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:green}probabilité{}",
                        "listées ayant réussi cette partie",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "Si une {C:green}probabilité{} listée réussi cette manche,",
                        "{C:attention}bannis{} cette carte et {C:attention}#3#{} autre {C:attention}Joker{}",
                        "en fin de manche jusqu'à la prochaine {C:attention}Blinde{}"
                    },
                    {
                        "Gratuit et ne nécessite pas de place quand obtenu du magasin",
                        "si vous possédez une {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
            j_joy_ffairy_chee = {
                name = "{C:joy_effect}Pierrette, Sorcière de la Bonne Aventure",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:green}probabilité{}",
                        "listées ayant réussi cette partie",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Divise par 2 les {C:green}dénominateurs{} listés de toutes",
                        "les cartes non-{C:joy_normal}Magicien{}"
                    },
                    {
                        "Gratuit et ne nécessite pas de place quand obtenu du magasin",
                        "si vous possédez une {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
            j_joy_ffairy_ann = {
                name = "{C:joy_effect}Malicia, Sorcière de la Bonne Aventure",
                text = {
                    {
                        "{C:money}+#1#${} et envoie {C:attention}#2#{} {C:joy_normal}Magicien{}",
                        "au {C:attention}Cimetière{} quand une {C:green}probabilité{} listée réussit"
                    },
                    {
                        "{C:green}#3# chance sur #4#{} de {C:attention}se bannir{}",
                        "en fin de manche jusqu'à la prochaine {C:attention}Blinde{}"
                    },
                    {
                        "Gratuit et ne nécessite pas de place quand obtenu du magasin",
                        "si vous possédez une {C:joy_normal}\"Demoiselle de Fortune\"{}"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_flady = "Demoiselle de Fortune",
        }
    }
}
