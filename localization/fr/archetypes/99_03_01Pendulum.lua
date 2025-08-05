return {
    descriptions = {
        Joker = {
            j_joy_foucault = {
                name = "{C:joy_pendulum_normal}Canon de Foucault",
                joy_consumable = {
                    "Crée autant de {C:planet}Planète Terre{} que possible",
                    "{C:inactive}(Nécessite de la place)"
                },
                text = {
                    {
                        "{E:1}Une forme de vie mécanisée, errant à travers l'espace-temps.{}",
                        "{E:1}Étrangement, elle semble avoir presque perdu tou... sa mémoi...{}",
                        "{E:1}P...ur que...lle raison ? Refu... elle d'interf... avec ??{}",
                    },
                }
            },
            j_joy_hallo = {
                name = "{C:joy_pendulum_normal}Hallohallo",
                joy_consumable = {
                    "Augmente toutes les {C:green}probabilités{} listées des {C:attention}Jokers{}",
                    "de manière permanente d'un nombre aléatoire entre {C:attention}#1#{} et {C:attention}#2#{}"
                },
                text = {
                    {
                        "{E:1}Hallo, hallo, vide du cerveau,{}",
                        "{E:1}Plus d'entrailles, pas de ventre rond.{}",
                        "{E:1}Friand de bonbons et chamallows,{}",
                        "{E:1}Attention à toi et à ton sac de bonbons.{}",
                    },
                }
            },
            j_joy_eccentrick = {
                name = "{C:joy_pendulum_effect}Eccentrick Archdémon",
                joy_consumable = {
                    "Détruis jusqu'à {C:attention}#1#{} cartes choisies",
                },
                text = {
                    {
                        "{C:mult}+#2#{} Mult pour chaque carte à jouer détruite cette partie",
                        "{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_pendulumoon = {
                name = "{C:joy_pendulum_effect}PenduLeLune",
                joy_consumable = {
                    "{C:attention}Ressuscite #1#{} {C:joy_pendulum}Pendule{} en {C:dark_edition}Négatif",
                },
                text = {
                    {
                        "Envoie {C:attention}#2#{} {C:joy_pendulum}Pendule{} au {C:attention}Cimetière{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Ne peut pas être {C:attention}ressuscité{}",
                    },
                },
            },
            j_joy_pandora = {
                name = "{C:joy_pendulum_effect}Boîte à Bijoux de Pandore",
                joy_consumable = {
                    "Donne une {C:dark_edition}Edition{} aléatoire à un {C:joy_pendulum}Pendule{} aléatoire"
                },
                text = {
                    {
                        "{C:blue}+#1#{} Mains quand la {C:attention}Blinde{} est choisie",
                        "si vous n'avez pas de carte dans l'{C:joy_spell}Extra Deck{}",
                    },
                }
            },
            j_joy_anchamoufrite = {
                name = "{C:joy_pendulum_effect}Anachouflagrète",
                joy_consumable = {
                    "Pendant une {C:attention}Blinde{}, pioche {C:attention}#1#{} cartes en plus"
                },
                text = {
                    {
                        "{C:attention}+#2#{} cartes en main quand la {C:attention}Blinde{} est choisie",
                        "si vous n'avez pas de carte dans l'{C:joy_spell}Extra Deck{}",
                    },
                }
            },
            j_joy_zany = {
                name = "{C:joy_pendulum_effect}Zèbre Zinzin",
                joy_consumable = {
                    "Si vous possédez {C:attention}#1# Jokers{} ou moins (après utilisation),",
                    "perdez {C:red}#2#{} slots de {C:attention}Joker{} et",
                    "donnez a vos {C:attention}Jokers{} {C:dark_edition}Polychrome{}"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{} Mult si vous possédez {C:attention}#1# Jokers{} ou moins",
                    },
                }
            },
            j_joy_pendulumucho = {
                name = "{C:joy_pendulum_effect}Pendulemucho",
                joy_consumable = {
                    "{C:attention}Ressuscite #1#{} {C:joy_pendulum}Pendule{}",
                },
                text = {
                    {
                        "{C:attention}Ressuscite #2#{} {C:joy_pendulum}Pendule{} quand obtenu",
                    },
                    {
                        "Ne peut pas être {C:attention}ressuscité{}",
                    },
                }
            },
            j_joy_moissa = {
                name = "{C:joy_pendulum_effect}Chevalier Moissa, le Général des Comètes",
                joy_consumable = {
                    "Ajoute {C:attention}#1#{} {C:joy_pendulum}Pendule{} au magasin"
                },
                text = {
                    {
                        "Gagne {C:chips}+#2#{} Jetons pour chaque {C:joy_pendulum}Pendule{} acheté",
                        "{C:inactive}(Actuellement: {C:chips}+#3#{}{C:inactive} Jetons)",
                    },
                }
            },
            j_joy_pmcaptor = {
                name = "{C:joy_pendulum_effect}P.E. Ravisseur",
                joy_consumable = {
                    "{C:attention}Ressuscite #1#{} {C:joy_pendulum}Pendule{}",
                    "{C:inactive}(Excepté \"P.E. Ravisseur\"){}"
                },
                text = {
                    {
                        "Les {C:joy_normal}Zombies{} ne peuvent pas être debuff",
                        "Les {C:joy_normal}Zombies{} Non-{C:joy_trap}Piège{} ne peuvent pas être {C:attention}retournés{}",
                    },
                }
            },
            j_joy_metrognome = {
                name = "{C:joy_pendulum_effect}Metrognome",
                joy_consumable = {
                    "Crée {C:attention}#1#{} {C:joy_pendulum}Pendule{} de la rareté la plus possédée",
                    "{C:inactive}(Nécessite de la place) (Aléatoire si égalité)"
                },
                text = {
                    {
                        "Chaque {C:joy_pendulum}Pendule{} partageant la",
                        "même rareté (la plus possédée) gagne {C:mult}+#2#{} Mult",
                    },
                }
            },
            j_joy_bozu = {
                name = "{C:joy_pendulum_effect}Pluie Bozu",
                joy_consumable = {
                    "Un {C:attention}Joker{} {C:joy_normal}Monstre{} aléatoire gagne",
                    "les Jetons et Mult actuelle de cette carte"
                },
                text = {
                    {
                        "Gagne {C:chips}+#1#{} Jetons pour chaque carte dans l'{C:joy_spell}Extra Deck{}",
                        "et {C:mult}+#2#{} Mult pour chaque slot d'{C:joy_spell}Extra Deck{} vide",
                        "quand la {C:attention}Blinde{} est choisie",
                        "{C:inactive}(Actuellement: {C:chips}+#3#{}{C:inactive} Jetons et {C:mult}+#4#{} {C:inactive}Mult)",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Jetons {C:mult}+#2#{} Mult",
                }
            },
            j_joy_disablaster = {
                name = "{C:joy_pendulum_effect}Annulexplosion la Forteresse de Négation",
                joy_consumable = {
                    "{C:money}+#1#${} pour chaque effet de ce {C:attention}Joker{}",
                    "augmentant le Mult",
                    "{C:inactive}(Actuellement: {C:money}+$#2#{}{C:inactive})"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{} Mult si aucune carte n'est jouée dans cette {C:attention}colonne{}",
                        "{C:inactive}(Baisse selon la colonne)",
                        "{C:inactive}(Actuellement: en {C:attention}colonne #4#{}{C:inactive})",
                    },
                }
            },
        }
    },
}
