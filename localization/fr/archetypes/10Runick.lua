return {
    descriptions = {
        Joker = {
            j_joy_runick_hugin = {
                name = "{C:joy_fusion}Hugin des Ailes Runick",
                text = {
                    {
                        "{C:attention}+#1#{} slot de consommables",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:joy_spell}\"Fontaine Runick\"",
                        "et ajoute {C:attention}#3#{} {C:joy_normal}\"Runick\"{}",
                        "à l'{C:joy_spell}Extra Deck{} quand invoqué",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3{} cartes de {C:tarot}Tarot{}",
                }
            },
            j_joy_runick_munin = {
                name = "{C:joy_fusion}Munin des Ailes Runick",
                text = {
                    {
                        "{C:attention}+#1#{} slot de consommables",
                    },
                    {
                        "Ajoute {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
                        "à l'{C:joy_spell}Extra Deck{} quand invoqué",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Gagne {X:chips,C:white}X#3#{} Jetons pour chaque {C:tarot}Tarot{}",
                        "utilisé durant une {C:attention}Blinde{}",
                        "{C:inactive}(Actuellement:{} {X:chips,C:white}X#4#{} {C:inactive}Jetons){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} cartes de {C:tarot}Tarot{}",
                }
            },
            j_joy_runick_geri = {
                name = "{C:joy_fusion}Geri des Crocs Runick",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_spell}\"Fontaine Runick\"",
                        "quand invoqué si présent dans le {C:attention}Cimetière{}",
                        "et ajoute {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
                        "à l'{C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Vendez cette carte invoquée pour créer",
                        "{C:attention}#3#{} cartes de {C:tarot}Tarot{}",
                        "{C:inactive}(Nécessite de la place)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} cartes de {C:tarot}Tarot{}",
                }
            },
            j_joy_runick_freki = {
                name = "{C:joy_fusion}Freki des Crocs Runick",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
                        "à l'{C:joy_spell}Extra Deck{} quand invoqué",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "Ajoute {C:attention}#2#{} {C:attention}cartes à jouer{} aléatoire",
                        "quand une carte de {C:tarot}Tarot{} est utilisé durant la {C:attention}Blinde{}",
                    },
                    {
                        "Vendez cette carte invoquée pour créer",
                        "{C:attention}#3#{} cartes de {C:tarot}Tarot{}",
                        "{C:inactive}(Nécessite de la place)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} cartes de {C:tarot}Tarot{}",
                }
            },
            j_joy_runick_sleipnir = {
                name = "{C:joy_fusion}Sleipnir de la Crinière Runick",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
                        "à l'{C:joy_spell}Extra Deck{} quand invoqué",
                        "{C:inactive}(Nécessite de la place){}",
                    },
                    {
                        "{C:attention}Se bannis{} en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde{}",
                    },
                    {
                        "Crée {C:attention}#2#{} cartes de {C:tarot}Tarot{} {C:dark_edition}Négatif{}",
                        "quand cette carte revient du {C:attention}bannissement{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{} cartes de {C:tarot}Tarot{}",
                }
            },
            j_joy_runick_fountain = {
                name = "{C:joy_spell}Fontaine Runick",
                text = {
                    {
                        "Crée autant de cartes de {C:tarot}Tarot{} utilisés",
                        "durant cette {C:attention}Blinde{} que possible en fin de manche",
                        "{C:inactive}(Retire les éditions){}",
                    },
                    {
                        "Détruis {C:attention}#1#{} {C:attention}cartes à jouer{} aléatoire",
                        "dans le deck quand la {C:attention}Blinde{} est choisie",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_runick = "Runick",
        }
    }
}
