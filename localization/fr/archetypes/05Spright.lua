return {
    descriptions = {
        Joker = {
            j_joy_spright_blue = {
                name = "{C:joy_effect}Spright du Bleu",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}\"Spright\"{}",
                        "{C:joy_normal}Main Deck{} en fin de manche",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}",
                    },
                },
            },
            j_joy_spright_jet = {
                name = "{C:joy_effect}Spright du Jet",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:attention}Jokers{} {C:green}Peu Commun{}",
                        "au {C:attention}Cimetière{} quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}",
                    },
                },
            },
            j_joy_spright_carrot = {
                name = "{C:joy_effect}Spright de la Carotte",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque",
                        "{C:attention}Joker{} {C:green}Peu Commun{}",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}",
                    },
                },
            },
            j_joy_spright_red = {
                name = "{C:joy_effect}Spright du Rouge",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque",
                        "{C:attention}Joker{} {C:green}Peu Commun{}",
                        "{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}",
                    },
                },
            },
            j_joy_spright_pixies = {
                name = "{C:joy_effect}Spright des Pixies",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque",
                        "{C:attention}Joker{} {C:green}Peu Commun{}",
                        "{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}",
                    },
                },
            },
            j_joy_spright_elf = {
                name = "{C:joy_link}Spright de l'Elfe",
                text = {
                    {
                        "{C:attention}Ressuscite #1#{} {C:attention}Joker{} {C:green}Peu Commun{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Les {C:attention}Jokers{} {C:green}Peu Commun{} au {C:attention}Cimetière{}",
                        "comptent pour les effets des {C:joy_normal}\"Spright\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} {C:green}Peu Commun{}"
                }
            },
            j_joy_spright_sprind = {
                name = "{C:joy_link}Spright de Sprind",
                text = {
                    {
                        "Les Autres {C:attention}Jokers{} {C:green}Peu Commun{} deviennent {C:dark_edition}Négatifs{}",
                        "et le reste est debuff si invoqué",
                        "en utilisant un {C:joy_normal}\"Spright\"{} comme {C:attention}matériel{}",
                    },
                    {
                        "Ajoute {C:joy_xyz}\"Spright Géant\"{}",
                        "à l'{C:joy_spell}Extra Deck{} après avoir {C:joy_xyz}détaché{} {C:attention}#1# matériels{}",
                        "{C:inactive}(Nécessite de la place){}",
                        "{C:inactive}(#2#/#1#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} {C:green}Peu Commun{},",
                    "1 {C:joy_xyz}Xyz{} inclus"
                }
            },
            j_joy_spright_gigantic = {
                name = "{C:joy_xyz}Spright Géant",
                text = {
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}1{}: Crée",
                        "{C:attention}#1#{} {C:attention}Joker{} {C:green}Peu Commun{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} {C:green}Peu Commun{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_link}Liens{} {s:0.9,C:inactive}autorisés)"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spright = "Spright",
        }
    }
}
