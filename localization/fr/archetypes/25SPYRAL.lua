return {
    descriptions = {
        Joker = {
            j_joy_spy_drone = {
                name = "{C:joy_effect}MATOS ESPIRALE - Drone",
                text = {
                    {
                        "Une fois par magasin, vous pouvez {C:attention}sacrifier #1# Joker{}",
                        "pour {C:attention}Dévoiler #2#{}"
                    },
                    {
                        "Se détruis si une {C:attention}supposition{} n'a jamais",
                        "été correcte"
                    }
                }
            },
            j_joy_spy_lastresort = {
                name = "{C:joy_effect}MATOS ESPIRALE - Dernier Resort",
                text = {
                    {
                        "Gagne {C:chips}+#1#{} Jetons pour chaque carte {C:attention}dévoilée{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "Se détruis si une {C:attention}supposition{} n'a jamais",
                        "été correcte et la traite comme correcte"
                    },
                    {
                        "Les {C:joy_normal}\"ESPIRAL\"{} ne peuvent être debuff ou retournés face verso"
                    }
                }
            },
            j_joy_spy_double = {
                name = "{C:joy_effect}Espion Double ESPIRALE",
                text = {
                    {
                        "A la fin du magasin, {C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}4{} prochaines enseignes:",
                        "{C:green}Divise par 2{} les conditions de la prochaine {C:attention}Blinde{} pour chaque supposition",
                        "réussie, et {C:red}double{} pour chaque échec"
                    },
                }
            },
            j_joy_spy_masterplan = {
                name = "{C:joy_effect}Plan Directeur ESPIRALE",
                text = {
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}3{} prochains rangs:",
                        "1: Crée {C:attention}#1#{} {C:joy_normal}\"ESPIRAL\" Main Deck{} {C:attention}Périssable{}",
                        "{C:inactive}(Nécessite de la place)",
                        "2: {C:attention}Ressuscite #2#{} {C:joy_normal}\"ESPIRAL\"{} en {C:attention}Périssable{}",
                        "3: Les deux effets précédents n'appliquent pas {C:attention}Périssable{}"
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"ESPIRAL\"{}"
                    }
                }
            },
            j_joy_spy_quik = {
                name = "{C:joy_effect}Quik-Fix ESPIRALE",
                text = {
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}3{} prochaines enseignes:",
                        "1: Crée {C:attention}#1#{} {C:joy_normal}\"MATOS ESPIRALE\"{} {C:attention}Périssable{}",
                        "{C:inactive}(Nécessite de la place)",
                        "2: {C:attention}Ressuscite #2#{} {C:joy_normal}\"MATOS ESPIRALE\"{} en {C:attention}Périssable{}",
                        "3: Les effets précédents n'appliquent pas {C:attention}Périssable{}"
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"ESPIRAL\"{}"
                    }
                }
            },
            j_joy_spy_sleeper = {
                name = "{C:joy_effect}Dormeur ESPIRALE",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque carte {C:attention}dévoilée{}",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Se détruis si une {C:attention}supposition{} n'a jamais été correcte",
                        "ou si aucune supposition n'a été faite quand la {C:attention}Blinde{} est choisie"
                    },
                }
            },
            j_joy_spy_tough = {
                name = "{C:joy_effect}Solidité ESPIRALE",
                text = {
                    {
                        "Gagne {C:mult}+#1#{} Mult pour chaque carte {C:attention}dévoilée{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}5{} prochaines enseignes:",
                        "1: Crée {C:attention}#3#{} {C:tarot}Tarot{}",
                        "{C:inactive}(Nécessite de la place)",
                        "2: Crée {C:attention}#4#{} {C:planet}Planète{} {C:dark_edition}Négatif{}",
                        "de la dernière main jouée",
                        "3: {X:mult,C:white}X#5#{} Mult cette manche",
                        "4: {C:attention}Dévoile{} jusqu'à {C:attention}#6#{} extra cartes après avoir pioché la main",
                        "5: Crée {C:attention}#7#{} {C:joy_effect}\"Super Espion ESPIRALE\"{} {C:dark_edition}Négatif{} "
                    }
                }
            },
            j_joy_spy_super = {
                name = "{C:joy_effect}Super Espion ESPIRALE",
                text = {
                    {
                        "Gagne {C:chips}+#1#{} Jetons pour chaque carte {C:attention}dévoilée{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}5{} prochaines enseignes:",
                        "1: Les cartes marquant des points cards gagnent {C:chips}+#3#{} Jetons cette manche",
                        "2: Les cartes marquant des points gagnent {C:mult}+#3#{} Mult cette manche",
                        "3: Les cartes marquant des points gagnent {X:mult,C:white}X#4#{} Mult cette manche",
                        "4: Les {C:joy_normal}\"ESPIRAL\"{} gagnent {X:mult,C:white}X#4#{} Mult cette manche",
                        "5: Redéclenche les cartes marquant des points deux fois"
                    }
                }
            },
            j_joy_spy_misty = {
                name = "{C:joy_effect}Misty ESPIFEMME",
                text = {
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} la {C:attention}1{}ère enseigne,",
                        "et change {C:attention}#1#{} cartes aléatoire du deck d'une autre enseigne",
                        "en celle ci plus une carte extra pour chaque {C:joy_normal}\"ESPIRAL\"{} si correcte"
                    },
                }
            },
            j_joy_spy_staff = {
                name = "{C:joy_effect}Charmant Personnel Resort",
                text = {
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}3{} prochains rangs des cartes:",
                        "1: Chaque {C:joy_normal}\"ESPIRAL\"{} gagne {C:mult}+#1#{} Mult cette manche",
                        "2: Crée {C:attention}#2#{} {C:joy_spell}\"Resort ESPIRALE\"{}",
                        "{C:inactive}(Nécessite de la place)",
                        "3: L'effet précédent applique {C:dark_edition}Négatif{} et n'a pas besoin de place"
                    },
                }
            },
            j_joy_spy_helix = {
                name = "{C:joy_link}Double Hélice ESPIRALE",
                text = {
                    {
                        "{C:attention}Dévoile{} et {C:attention}devine{} les {C:attention}5{} prochains rangs et enseignes:",
                        "1: {X:mult,C:white}X#1#{} Mult cette manche",
                        "2: {C:mult}+#2#{} Mult cette manche",
                        "3: Monte le niveau des mains jouées cette manche",
                        "4: Donne {C:dark_edition}Polychrome{} a une carte aléatoire dévoilée cette manche",
                        "5: {C:attention}Dévoile{} jusqu'à {C:attention}#3#{} extra cartes après avoir pioché",
                        "6: {C:attention}Ressuscite #4#{} {C:joy_normal}\"ESPIRAL\"{} en {C:dark_edition}Négatif{}",
                        "7: Crée {C:attention}#5#{} {C:joy_normal}\"ESPIRAL\"{} {C:dark_edition}Négatif{}",
                        "8: Change toutes les cartes piochées durant la première main de l'enseigne la plus possédée dans le deck",
                        "9: Change toutes les cartes piochées durant la première main du rang le plus possédé dans le deck",
                        "10: Crée {C:attention}#6#{} {C:joy_effect}\"Super Espion ESPIRALE\"{} {C:dark_edition}Négatif{}",
                    },
                }
            },
            j_joy_spy_resort = {
                name = "{C:joy_spell}Resort ESPIRALE",
                text = {
                    {
                        "Une fois par magasin, vous pouvez {C:attention}sacrifier #1# Joker{}",
                        "pour {C:attention}Dévoiler #2#{}"
                    },
                    {
                        "Une fois par mise, crée {C:attention}#3#{} {C:joy_effect}\"Super Espion ESPIRALE\"{}",
                        "{C:attention}Périssable{} {C:dark_edition}Négatif{}",
                        "après {C:attention}#4#{} suppositions correctes"
                    },
                    {
                        "Se détruis si aucune supposition n'a été faite quand la {C:attention}Blinde{} est choisie",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spy = "ESPIRALE",
        }
    }
}
