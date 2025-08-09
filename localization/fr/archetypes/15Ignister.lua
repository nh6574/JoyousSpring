return {
    descriptions = {
        Joker = {
            j_joy_ignis_achichi = {
                name = "{C:joy_effect}Achichi @Ignister",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:joy_normal}\"@Ignister\"{} {C:joy_normal}Main Deck",
                        "{C:blue}Commun{} quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_ignis_pikari = {
                name = "{C:joy_effect}Pikari @Ignister",
                text = {
                    {
                        "{C:money}+#1#${} en fin de manche",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:tarot}Tarot{} aléatoires",
                        "quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_ignis_hiyari = {
                name = "{C:joy_effect}Hiyari @Ignister",
                text = {
                    {
                        "{C:attention}+#1#{} cartes en main",
                    },
                    {
                        "Une fois par manche, vous pouvez {C:attention}sacrifier #2#{} {C:joy_normal}Cyberse{}",
                        "pour créer {C:attention}#3#{} {C:joy_normal}\"@Ignister\"{} {C:joy_normal}Main Deck{} {C:green}Peu Commun{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"@Ignister\"",
                    },
                }
            },
            j_joy_ignis_bururu = {
                name = "{C:joy_effect}Bururu @Ignister",
                text = {
                    {
                        "Envoie {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} au {C:attention}Cimetière{} quand obtenu",
                    },
                    {
                        "{C:attention}Ressuscite #2#{} {C:joy_normal}\"@Ignister\" Main Deck{} en {C:dark_edition}Négatif",
                        "quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
                    },
                }
            },
            j_joy_ignis_doshin = {
                name = "{C:joy_effect}Doshin @Ignister",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                    },
                    {
                        "{C:attention}Ressuscite #2#{} {C:joy_normal}\"@Ignister\"{} {C:joy_spell}Extra Deck{}",
                        "quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
                    },
                }
            },
            j_joy_ignis_gatchiri = {
                name = "{C:joy_effect}Gatchiri @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult",
                    },
                    {
                        "Peut être utilisé comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
                    },
                    {
                        "Un {C:joy_normal}Cyberse{} invoqué utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9}Ne peut être debuff ou {s:0.9,C:attention}retourné {s:0.9}face verso",
                    },
                },
                joy_transfer_ability = {
                    "Ne peut être debuff ou {C:attention}retourné{} face verso"
                }
            },
            j_joy_ignis_gussari = {
                name = "{C:joy_effect}Gussari @Ignister",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Peut être utilisé comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
                    },
                    {
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:mult}+#1# {s:0.9}Mult pour chaque {s:0.9,C:attention}matériel {s:0.9}utilisé pour son invocation",
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult pour chaque {C:attention}matériel{} utilisé pour son invocation",
                    "{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)"
                }
            },
            j_joy_ignis_danmari = {
                name = "{C:joy_effect}Danmari @Ignister",
                text = {
                    {
                        "Peut être utilisé comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
                    },
                    {
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9}Baisse les conditions de la {s:0.9,C:attention}Blinde{}{s:0.9} de {s:0.9,C:red}#1#%{}",
                        "{s:0.9}quand la {s:0.9,C:attention}Blinde{}{s:0.9} est choisie",
                    },
                },
                joy_transfer_ability = {
                    "Baisse les conditions de la {C:attention}Blinde{} de {C:red}#1#%{}",
                    "quand la {C:attention}Blinde{} est choisie",
                }
            },
            j_joy_ignis_doyon = {
                name = "{C:joy_effect}Doyon @Ignister",
                text = {
                    {
                        "{C:attention}Ressuscite #1#{} {C:joy_normal}\"@Ignister\" Main Deck{} quand obtenu",
                    },
                    {
                        "Ajoute {C:attention}#2#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck",
                        "quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
                    },
                }
            },
            j_joy_ignis_donyoribo = {
                name = "{C:joy_effect}Donyoribo @Ignister",
                text = {
                    {
                        "{C:money}+#1#${} à chaque achat d'{C:joy_normal}\"@Ignister\"{}",
                    },
                    {
                        "Vendez cette carte pour {C:attention}bannir #2#{} {C:joy_normal}\"@Ignister\"{}",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                }
            },
            j_joy_ignis_backup = {
                name = "{C:joy_effect}Sauvegarde @Ignister",
                text = {
                    {
                        "Ajoute {C:dark_edition}Négatif{} à {C:attention}#1#{} autre {C:joy_normal}Cyberse{} aléatoire quand obtenu",
                    },
                    {
                        "Ajoute {C:dark_edition}Négatif{} à un {C:joy_normal}Cyberse{} invoqué",
                        "utilisant cette carte comme {C:attention}matériel{} (si possible)",
                    },
                }
            },
            j_joy_ignis_wizard = {
                name = "{C:joy_effect}Sorcier @Ignister",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte pour {C:attention}ressusciter{} jusqu'à {C:attention}#1#{}",
                        "{C:joy_normal}Cyberses{} de noms différents",
                        "Si vous possédez un {C:joy_normal}Cyberse{} {C:joy_spell}Extra Deck{} invoqué,",
                        "{C:attention}ressuscite{} un extra {C:joy_normal}\"@Ignister\"{} en {C:dark_edition}Négatif",
                    },
                }
            },
            j_joy_ignis_kiruku = {
                name = "{C:joy_effect}Kurikurinku @Ignister",
                text = {
                    {
                        "Vendez cette carte pour désactiver la {C:attention}Blinde Boss{} actuelle et",
                        "l'ajoute au prochain magasin si vous possédez un {C:joy_normal}Cyberse{} {C:joy_spell}Extra Deck{} invoqué",
                    },
                }
            },
            j_joy_ignis_leviathan = {
                name = "{C:joy_ritual}Léviathan d'Eau @Ignister",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{}",
                        "non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
                    },
                    {
                        "Les cartes marquant des points gagnent {C:chips}+#2#{} Jetons pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                        "{C:inactive}(Actuellement: {C:chips}+#3# {C:inactive}Jetons)",
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
                    },
                },
                joy_transfer_ability = {
                    "Les cartes marquant des points gagnent {C:chips}+#1#{} Jetons pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                    "{C:inactive}(Actuellement: {C:chips}+#2# {C:inactive}Jetons)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_golem = {
                name = "{C:joy_fusion}Golem de Terre @Ignister",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{}",
                        "non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
                    },
                    {
                        "{C:attention}+#2# slot de Joker{} pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                        "{C:inactive}(Actuellement: {C:attention}+#3#{C:inactive})",
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}+#1# slot de Joker{} pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                    "{C:inactive}(Actuellement: {C:attention}+#2#{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_pegasus = {
                name = "{C:joy_synchro}Pégase du Vent @Ignister",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{}",
                        "non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
                    },
                    {
                        "{C:green}#2# chance sur #3#{} de redéclencher cartes à jouer",
                        "Chance augmenté pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#1# chance sur #2#{} de redéclencher les cartes à jouer",
                    "Chance augmenté pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1+{} non-{C:joy_synchro}Syntoniseur{} {C:joy_normal}Cyberse{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
            j_joy_ignis_dragon = {
                name = "{C:joy_xyz}Dragon de Lumière @Ignister",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{}",
                        "non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
                    },
                    {
                        "Les cartes marquant des points gagnent {C:money}+#2#${} si tenues en main en fin de manche",
                        "pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                        "{C:inactive}(Actuellement: {C:money}+$#3#{C:inactive})",
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
                    },
                },
                joy_transfer_ability = {
                    "Les cartes marquant des points gagnent {C:money}+#1#${} si tenues en main",
                    "pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                    "{C:inactive}(Actuellement: {C:money}+$#2#{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
                    "{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
                }
            },
            j_joy_ignis_phoenix = {
                name = "{C:joy_link}Phénix de Feu @Ignister",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{}",
                        "non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:joy_link}\"Phénix de Feu @Ignister\"{} {C:dark_edition}Négatif{} et debuff",
                        "quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
                    },
                    {
                        "Les cartes marquant des points gagnent {X:mult,C:white}X#3#{} Mult pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#4#{} {C:inactive}Mult)",
                        "Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
                    },
                },
                joy_transfer_ability = {
                    "Les cartes marquant des points gagnent {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                    "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_allied = {
                name = "{C:joy_link}Codeur Bavard Allié @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult pour chaque {C:joy_link}Lien",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "{C:attention}Ressuscite #3#{} {C:joy_link}Liens{} quand invoqué",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 {C:joy_link}Liens{}"
                }
            },
            j_joy_ignis_infant = {
                name = "{C:joy_link}Enfant des Ténèbres @Ignister",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_spell}\"Ignister A.I.Land\"{} quand invoqué",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour un lien {C:joy_link}Lien",
                        "et n'importe quel {C:attention}Attribut{} quand possédé",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1 {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_templar = {
                name = "{C:joy_link}Templier des Ténèbres @Ignister",
                text = {
                    {
                        "{C:attention}Ressuscite{} autant d'{C:joy_normal}\"@Ignister\"{} que possible",
                        "de noms différents en {C:dark_edition}Négatif{} mais debuff",
                    },
                    {
                        "{C:attention}Ressuscite #1#{} {C:joy_normal}Cyberse Main Deck{} quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 {C:joy_normal}\"@Ignister\"{}"
                }
            },
            j_joy_ignis_arrival = {
                name = "{C:joy_link}L'Arrivée Cyberse @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Attribut{} utilisé pour son invocation",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Gagne ces effets en fonction des {C:attention}matériels{} utilisé pour son invocation",
                        "{V:1}LUMIÈRE{V:3}: {V:2}+#3#${V:3} en fin de manche",
                        "{V:4}TÉNÈBRES{V:7}: Crée {V:5}#4#{} {V:6}Spectral{V:7} en fin de manche {s:0.9,C:inactive}(Nécessite de la place)",
                        "{V:8}EAU{V:10}: {V:9}+#5#{V:10} Jetons",
                        "{V:11}FEU{V:13}: {V:12}+#6#{V:13} Mult",
                        "{V:14}VENT{V:17}: {V:15}#7# chance sur #8#{V:17} de créer une copie {V:16}Négative{V:17} d'un consommable utilisé",
                        "{V:19}TERRE{V:21}: {V:20}+#9#{V:21} cartes en main",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_ailand = {
                name = "{C:joy_spell}Ignister A.I.Land",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\" Main Deck{} au magasin",
                        "quand un {C:joy_normal}\"@Ignister\"{} est utilisé comme {C:attention}matériel",
                    },
                    {
                        "Si vous possédez des {C:attention}Jokers{} avec {C:attention}#2#{} {C:attention}Attributs{} différents en fin de manche,",
                        "{C:attention}bannis{} tous les {C:joy_normal}Cyberses{} jusqu'à la prochaine {C:attention}Blinde{}",
                        "mais debuff tous les non-{C:joy_normal}Cyberses{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ignis = "@Ignister",
            k_joy_arrival_text1 = ": Baisse ",
            k_joy_arrival_text2 = "les objectifs",
            k_joy_arrival_text3 = "de la Mise de ",
            k_joy_arrival_text4 = "50%",
        }
    },
}
