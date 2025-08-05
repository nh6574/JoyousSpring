return {
    descriptions = {
        Joker = {
            j_joy_witch_genni = {
                name = "{C:joy_effect}Genni, Artisanesorcière",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:tarot}Tarot",
                        "quand obtenu",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#2#{} {C:tarot}Tarot",
                        "pour créer {C:attention}#3#{} {C:joy_effect}\"Potterie, Artisanesorcière\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_witch_potterie = {
                name = "{C:joy_effect}Potterie, Artisanesorcière",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:tarot}Tarot",
                        "quand obtenu si la zone consommable est vide",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Cette carte et {C:attention}#2#{} {C:tarot}Tarot{} sont {C:attention}bannis{}",
                        "en fin de manche jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#3#{} {C:tarot}Tarot",
                        "pour créer {C:attention}#4#{} {C:joy_effect}\"Pittore, Artisanesorcière\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_witch_pittore = {
                name = "{C:joy_effect}Pittore, Artisanesorcière",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:tarot}Tarot",
                        "{C:attention}sacrifiés{} cette manche",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
                    },
                    {
                        "Une fois par manche, crée {C:attention}#3#{} {C:tarot}Tarot{}",
                        "quand {C:attention}#4#{} consommables sont utilisés",
                        "{C:inactive}(#5#/#4#) (Nécessite de la place){}",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#6#{} {C:tarot}Tarot",
                        "pour créer {C:attention}#7#{} {C:joy_effect}\"Schmietta, Artisanesorcière\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_witch_schmietta = {
                name = "{C:joy_effect}Schmietta, Artisanesorcière",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:tarot}Tarot",
                        "{C:attention}sacrifiés{} cette manche",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Crée {C:attention}#3#{} {C:tarot}Tarot{}",
                        "chaque première main de manche",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#4#{} {C:tarot}Tarot",
                        "pour créer {C:attention}#5#{} {C:joy_effect}\"Edel, Artisanesorcière\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_witch_edel = {
                name = "{C:joy_effect}Edel, Artisanesorcière",
                text = {
                    {
                        "Une fois par manche, crée {C:attention}#1#{} {C:joy_effect}\"Genni, Artisanesorcière\"{}",
                        "quand {C:attention}#2#{} mains sont joués",
                        "{C:inactive}(#3#/#2#) (Nécessite de la place){}",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#4#{} {C:tarot}Tarot",
                        "pour créer {C:attention}#5#{} {C:joy_effect}\"Indumenti, Artisanesorcière\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_witch_haine = {
                name = "{C:joy_effect}Indumenti, Artisanesorcière",
                text = {
                    {
                        "{C:money}+#1#${} pour chaque {C:tarot}Tarot",
                        "{C:attention}sacrifiés{} cette manche quand obtenu",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:tarot}Tarot{} {C:dark_edition}Négatif",
                        "s'il s'agit de la dernière main cette manche",
                    },
                    {
                        "Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#3#{} {C:tarot}Tarot",
                        "pour créer {C:attention}#4#{} {C:joy_effect}\"Madame Verre, Artisanesorcière\"{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                }
            },
            j_joy_witch_verre = {
                name = "{C:joy_effect}Madame Verre, Artisanesorcière",
                text = {
                    {
                        "Crée tous les {C:tarot}Tarots{} {C:attention}sacrifiés{} cette manche en {C:dark_edition}Négatif{} quand obtenu",
                    },
                    {
                        "{X:mult,C:white}X#1#{} Mult pour chaque {C:tarot}Tarot",
                        "{C:attention}sacrifiés{} cette manche",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                }
            },
            j_joy_witch_aruru = {
                name = "{C:joy_effect}Golem Aruru, Artisanesorcière",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:tarot}Tarot",
                        "{C:attention}sacrifiés{} cette manche",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Utiliser des {C:tarot}Tarots{} en possédant cette carte",
                        "compte comme sacrifiés pour les effets",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}\"Artisanesorcière\"{}",
                    },
                }
            },
            j_joy_witch_vicemadame = {
                name = "{C:joy_fusion}Vice-Madame, Artisanesorcière",
                text = {
                    {
                        "Les {C:tarot}Packs Arcane{} sont gratuits",
                    },
                    {
                        "Les gains de Jetons et Mult d'{C:joy_normal}\"Artisanesorcière\"{} sont conservés chaque manche",
                    },
                    {
                        "Une fois par manche, crée {C:attention}#1#{} {C:joy_effect}\"Genni, Artisanesorcière\"{}",
                        "quand {C:attention}#2#{} {C:tarot}Tarot{} sont utilisés",
                        "{C:inactive}(#3#/#2#) (Nécessite de la place){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Magiciens",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_witch = "Artisanesorcière",
        }
    }
}
