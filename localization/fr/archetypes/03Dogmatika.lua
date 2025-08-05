return {
    descriptions = {
        Joker = {
            j_joy_dogma_ecclesia = {
                name = "{C:joy_effect}Dogmatika Ecclésia, la Vertueuse",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} vendus",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_dogma_fleur = {
                name = "{C:joy_effect}Dogmatika Fleurdelis, l'Adoubée",
                text = {
                    {
                        "Chaque {C:joy_normal}\"Dogmatika\"{} gagne {C:mult}+#1#{} Mult",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                    },
                },
            },
            j_joy_dogma_maximus = {
                name = "{C:joy_effect}Dogmatika Maximus",
                text = {
                    {
                        "Créé {C:attention}#1#{} {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff mais {C:dark_edition}Négatif{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                },
            },
            j_joy_dogma_adin = {
                name = "{C:joy_effect}Dogmatika Adin, l'Illuminé",
                text = {
                    {
                        "Crée {C:attention}#1#{} non-{C:joy_ritual}Rituel{} {C:joy_normal}\"Dogmatika\"{}",
                        "quand la {C:attention}Blinde Boss{} est vaincue",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                    },
                },
            },
            j_joy_dogma_theo = {
                name = "{C:joy_effect}Dogmatika Théo, le Poing de Fer",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons,",
                        "{C:chips}+#2#{} Jetons pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                        "{C:inactive}(Actuellement:{} {C:chips}+#3# {C:inactive}Jetons){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                    },
                },
            },
            j_joy_dogma_ashiyan = {
                name = "{C:joy_effect}Dogmatika Ashiyan",
                text = {
                    {
                        "{C:attention}Ressuscite #1#{} {C:joy_normal}\"Dogmatika\"{} quand obtenu",
                    },
                    {
                        "Ajoute {C:attention}#2#{} {C:joy_ritual}Rituel{} {C:joy_normal}\"Dogmatika\"{}",
                        "au magasin quand la {C:attention}Blinde Boss{} est vaincue",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                    },
                },
            },
            j_joy_dogma_nexus = {
                name = "{C:joy_effect}Dogmatika Nexus",
                text = {
                    {
                        "{C:attention}Duplique #1#{} {C:attention}Jokers{} {C:joy_spell}Extra Deck{} aléatoire",
                        "en fin de manche",
                        "{C:inactive}(La copie sera debuff mais{} {C:dark_edition}Négatif{}{C:inactive}){}",
                    },
                },
            },
            j_joy_dogma_relic = {
                name = "{C:joy_ritual}Relique Blanche de Dogmatika",
                text = {
                    {
                        "{C:attention}+#1#{} cartes en main pour chaque {C:attention}#2#{} {C:attention}Jokers{}",
                        "{C:joy_spell}Extra Deck{} debuff",
                        "{C:inactive}(Actuellement:{} {C:attention}+#3# {C:inactive}cartes en main){}",
                    },
                    {
                        "Les {C:attention}Jokers{} {C:joy_spell}Extra Deck{} au {C:attention}Cimetière{}",
                        "comptent pour les effets {C:joy_normal}\"Dogmatika\"{} {C:inactive}(comme debuff){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{},",
                    "Un {C:joy_normal}\"Dogmatika\"{} inclus"
                }
            },
            j_joy_dogma_knight = {
                name = "{C:joy_ritual}Chevalier Blanc de Dogmatika",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque",
                        "{C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                        "{C:inactive}(Actuellement:{} {C:mult}+#2# {C:inactive}Mult){}",
                    },
                    {
                        "Tous les {C:attention}Jokers{} {C:joy_spell}Extra Deck{} au magasin",
                        "sont gratuit mais debuff",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{},",
                    "Un {C:joy_normal}\"Dogmatika\"{} inclus"
                }
            },
            j_joy_dogma_albazoa = {
                name = "{C:joy_ritual}Dogmatika Alba Zoa",
                text = {
                    {
                        "Envoie {C:attention}#1#{} copie de chaque {C:attention}Joker{}",
                        "de votre {C:joy_spell}Extra Deck{} au {C:attention}Cimetière{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Chaque {C:attention}Joker{} {C:joy_normal}Main Deck{} gagne {X:mult,C:white}X#2#{} Mult",
                        "pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Dogmatika\"{}"
                }
            },
            j_joy_dogma_nation = {
                name = "{C:joy_spell}Nation Dogmatika",
                text = {
                    {
                        "Gagne {C:money}+#1#${} pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                        "en fin de manche",
                        "{C:inactive}(Actuellement:{} {C:money}+#2#${C:inactive}){}",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier #3#{} {C:attention}Jokers{} {C:joy_spell}Extra Deck{}",
                        "pour créer {C:attention}#4#{} {C:joy_normal}\"Dogmatika\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dogma = "Dogmatika",
        }
    }
}
