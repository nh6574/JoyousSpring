return {
    descriptions = {
        Joker = {
            j_joy_lab_clock = {
                name = "{C:joy_effect}Penducoucou Labrynth",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte afin de",
                        "{C:attention}retourner #1#{} carte aléatoirement en main",
                        "face verso (et les mélange), elles gagnent de manière",
                        "permanente {C:mult}+#2#{} Mult en marquant des points",
                        "{C:attention}ressuscite #3# {C:joy_normal}\"Labrynth\"{} {C:blue}Commun{} si possible",
                        "{C:inactive}(Excepté \"Penducoucou Labrynth\"){}",
                    },
                }
            },
            j_joy_lab_stovie = {
                name = "{C:joy_effect}Cheminie Torbie Labrynth",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier{} ce {C:attention}Joker{} avec un autre",
                        "pour {C:attention}retourner #1#{} cartes aléatoirement en main",
                        "face verso (et les mélange), elles gagnent de manière",
                        "permanente {C:chips}+#2#{} Jetons en marquant des points",
                        "puis {C:money}+#3#${} si un {C:joy_normal}Démon{} un été sacrifié",
                    },
                }
            },
            j_joy_lab_changdra = {
                name = "{C:joy_effect}Chandraglier Labrynth",
                text = {
                    {
                        "Vous pouvez {C:attention}sacrifier{} ce {C:attention}Joker{} avec un autre",
                        "pour {C:attention}retourner #1#{} cartes aléatoirement en main",
                        "face verso (et les mélange) elles gagnent de manière",
                        "permanente {C:money}+#2#${} en marquant des points",
                        "puis crée {C:attention}#3#{} Badges aléatoires si un",
                        "{C:joy_normal}Démon{} un été sacrifié",
                    },
                }
            },
            j_joy_lab_ariane = {
                name = "{C:joy_effect}Ariane la Domestique Labrynth",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:attention}+#2#{} cartes en main durant la prochaine {C:attention}Blinde{}",
                        "pour chaque cartes {C:attention}retournées{} cette manche quand possédé",
                    },
                    {
                        "Ajoute un {C:joy_normal}\"Labrynth\"{} {C:green}Peu Commun{} au prochain magasin",
                        "si {C:attention}#3#{} cartes ou plus ont été retournés cette manche quand possédé",
                        "{s:0.9,C:inactive}(Retournés cette manche: #4#)",
                    },
                }
            },
            j_joy_lab_arianna = {
                name = "{C:joy_effect}Arianna la Domestique Labrynth",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                    },
                    {
                        "{C:attention}+#2#{} cartes en main durant la prochaine {C:attention}Blinde{}",
                        "pour chaque cartes {C:attention}retournées{} cette manche quand possédé",
                    },
                    {
                        "Ajoute un {C:joy_normal}\"Labrynth\"{} {C:blue}Commun{} au prochain magasin",
                        "si {C:attention}#3#{} cartes ou plus ont été retournés cette manche quand possédé",
                        "{s:0.9,C:inactive}(Retournés cette manche: #4#)",
                    },
                }
            },
            j_joy_lab_arias = {
                name = "{C:joy_effect}Arias l'Intendante Labrynth",
                text = {
                    {
                        "Gagne {C:chips}+#1#{} Jetons pour chaque",
                        "carte de jeu {C:attention}retournées{} quand possédé",
                        "{C:inactive}(Actuellement:{} {C:chips}+#2# {C:inactive}Jetons){}",
                    },
                    {
                        "Ajoute un {C:joy_normal}\"Labrynth\"{} {C:red}Rare{} au prochain magasin",
                        "si {C:attention}#3#{} cartes ou plus ont été retournés cette manche quand possédé",
                        "{s:0.9,C:inactive}(Retournés cette manche: #4#)",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"Labrynth\"{}",
                    },
                }
            },
            j_joy_lab_archfiend = {
                name = "{C:joy_effect}Archdémon Labrynth",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque",
                        "{C:joy_normal}Démon{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement:{} {C:mult}+#2# {C:inactive}Mult){}",
                    },
                    {
                        "Quand une carte de jeu est {C:attention}retournée{},",
                        "{C:attention}retourne{} une carte aléatoire face verso (et les mélange)",
                    },
                }
            },
            j_joy_lab_lovely = {
                name = "{C:joy_effect}Adorable Labrynth du Château d'Argent",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de piocher des cartes face verso",
                        "Les chances augmentent pour chaque {C:joy_normal}Démon{} possédés",
                    },
                    {
                        "Gagne {C:mult}+#3#{} Mult pour chaque",
                        "cartes {C:attention}retournées{} face verso",
                        "{C:inactive}(Actuellement:{} {C:mult}+#4# {C:inactive}Mult){}",
                    },
                }
            },
            j_joy_lab_lady = {
                name = "{C:joy_effect}Mademoiselle Labrynth du Château d'Argent",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult",
                        "chaque fois qu'une carte est {C:attention}retournée{}",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Les {C:joy_normal}Démons{} Non-{C:joy_trap}Piège{} peuvent utiliser",
                        "leurs effets passifs en étant face verso",
                        "{s:0.9,C:inactive}(Cette carte incluse)",
                    },
                }
            },
            j_joy_lab_labyrinth = {
                name = "{C:joy_spell}Labyrinthe Labrynth",
                text = {
                    {
                        "{C:money}+#1#${} à chaque {C:attention}Joker retourné{}",
                    },
                    {
                        "{C:green}#2# chance sur #3#{} de {C:attention}retourner #4#{} carte en main face verso",
                        "(les mélange) quand une carte de jeu est {C:attention}retournée",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_lab = "Labrynth",
        }
    }
}
