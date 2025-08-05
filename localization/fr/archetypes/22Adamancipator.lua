return {
    descriptions = {
        Joker = {
            j_joy_adaman_analyzer = {
                name = "{C:joy_effect}Analyseur Inflexcipateur",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} premières cartes du deck:",
                        "Les {C:diamonds}Carreaux{} marquant des points cette manche gagnent {C:chips}+#2#{} Jetons",
                        "pour chaque {C:diamonds}Carreau{} dévoilé",
                        "{C:inactive}(Actuellement: {C:chips}+#3#{}{C:inactive} Jetons)"
                    },
                    {
                        "Une fois par mise, crée {C:attention}#4#{} {C:joy_normal}Rocher Main Deck{}",
                        "après {C:attention}#5#{} mains contenant une {C:attention}Couleur{} {C:diamonds}Carreau{}",
                        "{C:inactive}(Nécessite de la place) {C:inactive}(#6# restant){}"
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_normal}Rocher{}"
                    },
                }
            },
            j_joy_adaman_researcher = {
                name = "{C:joy_effect}Rechercheuse Inflexcipateur",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} premières cartes du deck:",
                        "Les {C:diamonds}Carreaux{} marquant des points cette manche gagnent {C:money}+#2#${}",
                        "pour chaque {C:diamonds}Carreau{} dévoilé",
                        "{C:inactive}(Actuellement: {C:money}+#3#${}{C:inactive})"
                    },
                    {
                        "Une fois par mise, crée {C:attention}#4#{} {C:joy_normal}Rocher Main Deck{}",
                        "après {C:attention}#5#{} mains contenant une {C:attention}Couleur{} {C:diamonds}Carreau{}",
                        "{C:inactive}(Nécessite de la place) {C:inactive}(#6# restant){}"
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_normal}Rocher{}"
                    },
                }
            },
            j_joy_adaman_seeker = {
                name = "{C:joy_effect}Chercheur Inflexcipateur",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} premières cartes du deck:",
                        "Les {C:diamonds}Carreaux{} marquant des points cette manche gagnent {C:mult}+#2#{} Mult",
                        "pour chaque {C:diamonds}Carreau{} dévoilé",
                        "{C:inactive}(Actuellement: {C:mult}+#3#{}{C:inactive} Mult)"
                    },
                    {
                        "Une fois par mise, crée {C:attention}#4#{} {C:joy_normal}Rocher Main Deck{}",
                        "après {C:attention}#5#{} mains contenant une {C:attention}Couleur{} {C:diamonds}Carreau{}",
                        "{C:inactive}(Nécessite de la place) {C:inactive}(#6# restant){}"
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_normal}Rocher{}"
                    },
                }
            },
            j_joy_adaman_crysdragite = {
                name = "{C:joy_effect}Cristal Inflexcipateur - Dragite",
                text = {
                    {
                        "Chaque {C:diamonds}Carreau{} en main gagne",
                        "{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}Rocher{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "Un {C:joy_synchro}Synchro{} invoqué en utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:chips}+#1#{s:0.9} Jetons pour chaque {s:0.9,C:diamonds}Carreau{s:0.9} dans le deck"
                    }
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Jetons pour chaque {C:diamonds}Carreau{} dans le deck",
                    "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                },
            },
            j_joy_adaman_crysraptite = {
                name = "{C:joy_effect}Cristal Inflexcipateur - Raptite",
                text = {
                    {
                        "Chaque {C:diamonds}Carreau{} en main gagne",
                        "{C:money}+#1#${} pour chaque {C:joy_normal}Rocher{}",
                        "{C:inactive}(Actuellement: {C:money}+#2#${}{C:inactive})"
                    },
                    {
                        "Un {C:joy_synchro}Synchro{} invoqué en utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:money}+#1#${s:0.9} en fin de manche pour chaque {s:0.9,C:diamonds}Carreau{s:0.9} dans le deck"
                    }
                },
                joy_transfer_ability = {
                    "{C:money}+#1#${} en fin de manche pour chaque {C:diamonds}Carreau{} dans le deck",
                    "{C:inactive}(Actuellement: {C:money}+#2#${}{C:inactive})"
                },
            },
            j_joy_adaman_crysleonite = {
                name = "{C:joy_effect}Cristal Inflexcipateur - Lionite",
                text = {
                    {
                        "Chaque {C:diamonds}Carreau{} en main gagne",
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_normal}Rocher{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Un {C:joy_synchro}Synchro{} invoqué en utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Mult pour chaque {s:0.9,C:diamonds}Carreau{s:0.9} dans le deck"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult pour chaque {C:diamonds}Carreau{} dans le deck",
                    "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                },
            },
            j_joy_adaman_dragite = {
                name = "{C:joy_synchro}Éveillé Inflexcipateur - Dragite",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} premières cartes du deck:",
                        "{X:chips,C:white}X#2#{} Jetons cette manche",
                        "pour chaque {C:diamonds}Carreau{} dévoilé",
                        "et crée {C:attention}#3#{} {C:joy_normal}Rocher Main Deck{} si {C:attention}#1#{} ou plus ont été dévoilés",
                        "{C:inactive}(Actuellement: {X:chips,C:white}X#4#{}{C:inactive} Jetons)",
                    },
                    {
                        "Les {C:diamonds}Carreaux{} marquant des points gagnent de manière permanente",
                        "{C:chips}+#5#{} Jetons quand tenus en main"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Rocher{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_leonite = {
                name = "{C:joy_synchro}Éveillé Inflexcipateur - Lionite",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} premières cartes du deck:",
                        "{X:mult,C:white}X#2#{} Mult cette manche",
                        "pour chaque {C:diamonds}Carreau{} dévoilé",
                        "et crée {C:attention}#3#{} {C:joy_normal}Rocher Main Deck{} si {C:attention}#1#{} ou plus ont été dévoilés",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#4#{}{C:inactive} Mult)",
                    },
                    {
                        "Les {C:diamonds}Carreaux{} marquant des points gagnent de manière permanente",
                        "{C:mult}+#5#{} Mult quand tenus en main"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Rocher{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_raptite = {
                name = "{C:joy_synchro}Éveillé Inflexcipateur - Raptite",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} premières cartes du deck:",
                        "{C:money}+#2#${} pour chaque {C:diamonds}Carreau{} dévoilé",
                        "et crée {C:attention}#3#{} {C:joy_normal}Rocher Main Deck{} si {C:attention}#1#{} ou plus ont été dévoilés",
                    },
                    {
                        "Les {C:diamonds}Carreaux{} marquant des points gagnent de manière permanente",
                        "{C:money}+#4#${} quand tenus en main en fin de manche"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Rocher{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_laputite = {
                name = "{C:joy_spell}Laputite Inflexcipateur",
                text = {
                    {
                        "Chaque {C:joy_normal}Rocher{} gagne {C:mult}+#1#{} Mult",
                    },
                    {
                        "Ajoute un {C:diamonds}Carreau{} amélioré en main",
                        "quand la {C:attention}Blinde{} est choisie"
                    },
                    {
                        "Toutes les cartes {C:attention}dévoilées{} quand la {C:attention}Blinde{} est choisie",
                        "sont comptées pour les effets des {C:joy_normal}\"Inflexcipateur\"{}"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_adaman = "Inflexcipateur",
        }
    }
}
