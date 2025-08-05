return {
    descriptions = {
        Joker = {
            j_joy_eld_eldlich = {
                name = "{C:joy_effect}Surnaliche le Seigneur d'Or",
                text = {
                    {
                        "Les cartes {C:attention}Dorées{} donnent {C:money}+#1#${} chacunes lorsqu'elles marquent",
                        "pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
                    },
                    {
                        "Toutes les cartes marquant des points deviennent {C:attention}Dorées{}",
                    },
                    {
                        "Une fois par manche, vous pouvez {C:attention}sacrifier #2#{} {C:attention}Joker{} {C:joy_normal}Zombie{} ou {C:joy_trap}Piège{}",
                        "pour créer {C:attention}#3#{} {C:joy_normal}\"Terre d'Or\" Main Deck{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_eld_conq = {
                name = "{C:joy_trap}Conquistador de la Terre d'Or",
                text = {
                    {
                        "Les cartes {C:attention}Dorées{} donnent {C:chips}+#1#{} Jetons chacunes lorsqu'elles marquent",
                        "pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
                    },
                    {
                        "Déclenche de nouveau les cartes marquant des points avec une augmentation",
                        "cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:red}+#2#{} Défausse cette manche",
                    },
                }
            },
            j_joy_eld_guard = {
                name = "{C:joy_trap}Gardien de la Terre d'Or",
                text = {
                    {
                        "Les cartes {C:attention}Dorées{} donnent {C:mult}+#1#{} Mult chacunes lorsqu'elles marquent",
                        "pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
                    },
                    {
                        "Déclenche de nouveau les cartes marquant des points avec une augmentation",
                        "cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:blue}+#2#{} Main cette manche",
                    },
                }
            },
            j_joy_eld_huaq = {
                name = "{C:joy_trap}Huaquero de la Terre d'Or",
                text = {
                    {
                        "Les cartes {C:attention}Dorées{} donnent {C:chips}+#1#{} Jetons chacunes lorsqu'elles marquent",
                        "pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
                    },
                    {
                        "Déclenche de nouveau les cartes marquant des points avec une augmentation",
                        "cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Bannis #2#{} {C:joy_normal}Zombie{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                }
            },
            j_joy_eld_glorious = {
                name = "{C:joy_trap}Surnalixir de la Glorieuse Terre d'Or",
                text = {
                    {
                        "Les cartes {C:attention}Dorées{} donnent {C:mult}+#1#{} Mult chacunes lorsqu'elles marquent",
                        "pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
                    },
                    {
                        "Déclenche de nouveau les cartes marquant des points avec une augmentation",
                        "cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Ressuscite #2#{} {C:joy_normal}\"Terre d'Or\"{} ou {C:attention}#2#{} {C:joy_trap}Piège{} si aucune",
                    },
                }
            },
            j_joy_eld_mad = {
                name = "{C:joy_fusion}Surnaliche le Furieux Seigneur d'Or",
                text = {
                    {
                        "Les cartes {C:attention}Dorées{} gagnent {X:mult,C:white}X#1#{} Mult chacunes lorsqu'elles marquent",
                        "pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
                    },
                    {
                        "Toutes les cartes marquant des points deviennent {C:attention}Dorées{}",
                    },
                    {
                        "Les {C:joy_trap}Pièges{} ne se {C:attention}posent pas{} face verso d'elles mêmes",
                        "et leurs effets {C:joy_effect}FLIP{} s'activent quand la {C:attention}Blinde{} est choisie",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Surnaliche\"{} + {C:attention}1{} {C:joy_normal}Zombie{}"
                }
            },
            j_joy_eld_angel = {
                name = "{C:joy_fusion}Ange Banni de la Terre d'Or",
                text = {
                    {
                        "Active les mains {C:attention}Surnalixir{}",
                        "Monte d'un niveau le {C:attention}Surnalixir{} quand les {C:joy_trap}Pièges{} sont {C:attention}retournées{} face recto",
                        "{C:inactive}(Ou quand leurs effets FLIP s'activent)",
                    },
                    {
                        "Envoie {C:attention}#1#{} {C:joy_effect}\"Surnaliche le Seigneur d'Or\"{} au {C:attention}Cimetière{}",
                        "si la main contient un {C:attention}Surnalixir{}",
                    },
                    {
                        "{C:attention}Ressuscite #2#{} {C:joy_normal}\"Surnaliche\"{} en {C:dark_edition}Négatif{} si",
                        "cette carte possédée est envoyé au {C:attention}Cimetière{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{}, 1 {C:joy_trap}Piège{} inclus"
                }
            },
        },
        Planet = {
            c_joy_cursed_eldland = {
                name = "{C:joy_spell}Surnaterre Maudite"
            }
        },
        JoyPokerHand = {
            phd_joy_eldlixir = {
                name = "Surnalixir",
                text = {
                    "5 cartes {C:attention}Dorées{}",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_eldlixir = "Surnalixir"
        },
        poker_hand_descriptions = {
            joy_eldlixir = {
                "5 cartes {C:attention}Dorées{}",
                "{C:inactive}(Doit être activé par un effet)"
            }
        },
        dictionary = {
            k_joy_archetype_eld = "Surnaliche",
        }
    }
}
