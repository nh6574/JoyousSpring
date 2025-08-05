return {
    descriptions = {
        Joker = {
            j_joy_solfa_cutia = {
                name = "{C:joy_pendulum_effect}DoSolfaccord Cutia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}8{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Les cartes paires marquant des points gagnent {C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Solfaccord\"",
                        "{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Une fois par manche, crée {C:attention}#4#{} {C:joy_pendulum}Pendule{} {C:joy_normal}\"Solfaccord\"{}",
                        "après que {C:attention}#5#{} {C:joy_pendulum}Pendule{} soient consommées",
                        "{C:inactive}(#6#/#5#) (Nécessite de la place){}",
                    },
                }
            },
            j_joy_solfa_dreamia = {
                name = "{C:joy_pendulum_effect}RéSolfaccord Dreamia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}7{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Les cartes impaires marquant des points gagnent {C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Solfaccord\"",
                        "{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_pendulum}Pendule",
                    },
                }
            },
            j_joy_solfa_eliteia = {
                name = "{C:joy_pendulum_effect}MiSolfaccord Éliteia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}6{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Gagne {C:chips}+#2#{} Jetons pour chaque cartes paires marquant des points",
                        "{C:inactive}(Actuellement:{} {C:chips}+#3#{} {C:inactive}Jetons){}",
                    },
                    {
                        "Ajoute {C:attention}#4#{} {C:joy_normal}\"Solfaccord\"{} à l'{C:joy_spell}Extra Deck{}",
                        "après {C:attention}#5#{} cartes paires marquants des points",
                        "{C:inactive}(#6#/#5#) (Nécessite de la place){}",
                    },
                }
            },
            j_joy_solfa_fancia = {
                name = "{C:joy_pendulum_effect}FaSolfaccord Fancia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}5{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Gagne {C:chips}+#2#{} Jetons pour chaque cartes impaires marquant des points",
                        "{C:inactive}(Actuellement:{} {C:chips}+#3#{} {C:inactive}Jetons){}",
                    },
                    {
                        "Crée {C:attention}#4#{} {C:joy_normal}\"Solfaccord\"{} après {C:attention}#5#{} cartes impaires marquant des points",
                        "{C:inactive}(#6#/#5#) (Nécessite de la place){}",
                    },
                }
            },
            j_joy_solfa_gracia = {
                name = "{C:joy_pendulum_effect}SolSolfaccord Gracia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}4{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Redéclenche chaque cartes paires {C:attention}#2#{} fois",
                    },
                    {
                        "Crée {C:attention}#3#{} {C:joy_spell}\"Solfaccord Harmonia\"{}",
                        "après {C:attention}#4#{} cartes paires marquant des points",
                        "{C:inactive}(#5#/#4#) (Nécessite de la place){}",
                    },
                }
            },
            j_joy_solfa_angelia = {
                name = "{C:joy_pendulum_effect}LaSolfaccord Angélia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}3{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Redéclenche chaque cartes impaires {C:attention}#2#{} fois",
                    },
                    {
                        "{C:attention}Ressuscite #3#{} {C:joy_normal}\"Solfaccord\"{} après {C:attention}#4#{} cartes impaires marquant des points",
                        "{C:inactive}(#5#/#4#){}",
                    },
                }
            },
            j_joy_solfa_beautia = {
                name = "{C:joy_pendulum_effect}SiSolfaccord Beautia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}2{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Les cartes paires marquant des points gagnent",
                        "{X:chips,C:white}X#2#{} Jetons pour chaque {C:joy_normal}\"Solfaccord\"{}",
                        "{C:inactive}(Actuellement: {X:chips,C:white}X#3#{} {C:inactive}Jetons)",
                    },
                    {
                        "{C:attention}Bannis #4#{} {C:joy_pendulum}Pendule{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                },
            },
            j_joy_solfa_coolia = {
                name = "{C:joy_pendulum_effect}DoSolfaccord Coolia",
                joy_consumable = {
                    "Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}As{}",
                    "et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{}",
                },
                text = {
                    {
                        "Les cartes impaires marquant des points gagnent",
                        "{X:mult,C:white}X#2#{} Mult pour chaque {C:joy_normal}\"Solfaccord\"{}",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    },
                    {
                        "Les cartes au {C:attention}Cimetière{} comptent pour les effets des {C:joy_normal}\"Solfaccord\"{}",
                    },
                },
            },
            j_joy_solfa_musecia = {
                name = "{C:joy_link}GranSolfaccord Musecia",
                text = {
                    {
                        "Les cartes à jouer affectés par les effets consommables des {C:joy_normal}\"Solfaccord\"{}",
                        "gagnent une {C:dark_edition}édition{} aléatoire si possible",
                        "{C:inactive}(Excepté Négatif){}"
                    },
                    {
                        "Une fois par mise, crée {C:attention}#1#{} {C:joy_normal}\"Solfaccord\"{} {C:joy_pendulum}Pendule{} {C:dark_edition}Négatif{}",
                        "après avoir consommé {C:attention}#2#{} {C:joy_pendulum}Pendules{} {C:inactive}(#3# restant){}",
                        "et augmente les conditions de {C:attention}#4#{}"
                    },
                    {
                        "Si la main marquant des points contient des cartes paires et impaires,",
                        "toutes les cartes comptent pour les deux pour les effets {C:joy_normal}\"Solfaccord\"{}",
                    },
                    {
                        "Les {C:joy_pendulum}Pendules{} comptent pour les effets des {C:joy_normal}\"Solfaccord\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 {C:joy_pendulum}Pendules"
                }
            },
            j_joy_solfa_grancoolia = {
                name = "{C:joy_link}GranSolfaccord Coolia",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:joy_pendulum}Pendule{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
                    },
                    {
                        "Les cartes à jouer affectés par les effets consommables des {C:joy_normal}\"Solfaccord\"{}",
                        "gagnent un {C:attention}Sceau{} aléatoire si possible",
                    },
                    {
                        "{C:money}+#3#${} après que {C:attention}#4#{} {C:joy_pendulum}Pendules{} soient consommés {C:inactive}(#5#/#4#){}",
                    },
                    {
                        "Si la main marquant des points contient des cartes paires et impaires,",
                        "toutes les cartes comptent pour les deux pour les effets {C:joy_normal}\"Solfaccord\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 Jokers{},",
                    "un {C:joy_pendulum}Pendule inclus"
                }
            },
            j_joy_solfa_harmonia = {
                name = "{C:joy_spell}Harmonie Solfaccord",
                text = {
                    {
                        "{C:attention}Ressuscite #1#{} {C:joy_normal}\"Solfaccord\"{} (ou {C:joy_pendulum}Pendule{} si aucun)",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:tarot}Tarot{} {C:attention}La Force{} après avoir consommé un {C:joy_pendulum}Pendule{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Toutes les cartes non améliorées paires deviennent {C:attention}Dorées{} et",
                        "les impaires {C:attention}Acier{} après avoir marqué des points",
                        "si {C:attention}#3# {C:joy_normal}\"Solfaccord\"{} de noms différents sont possédées, en ignorant les autres effets",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_solfa = "Solfaccord",
        }
    }
}
