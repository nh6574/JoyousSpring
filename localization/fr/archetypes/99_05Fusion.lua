return {
    descriptions = {
        Joker = {
            j_joy_mudragon = {
                name = "{C:joy_fusion}Boudragon des Marais",
                text = {
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
                        "et comme n'importe quel {C:attention}Attribut{} quand possédé",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{} de raretés différentes",
                }
            },
            j_joy_garura = {
                name = "{C:joy_fusion}Garura, Ailes de la Vie Retentissante",
                text = {
                    {
                        "{C:attention}+#1#{} cartes en main",
                    },
                    {
                        "Gagne de manière permanente {C:attention}+#2#{} cartes en main",
                        "si utilisé comme {C:attention}matériel{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{} de même rareté",
                    "mais de noms différents",
                }
            },
        }
    },
}
