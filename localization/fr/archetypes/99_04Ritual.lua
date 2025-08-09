return {
    descriptions = {
        Joker = {
            j_joy_sauravis = {
                name = "{C:joy_ritual}Sauravis, l'Ancien et Ascensionné",
                text = {
                    {
                        "Vendez cette carte pour désactiver la",
                        "{C:attention}Blinde Boss{} et l'ajouter",
                        "au prochain magasin",
                    },
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque",
                        "activation de cet effet cette partie",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{}",
                }
            },
            j_joy_lycanthrope = {
                name = "{C:joy_ritual}Lycanthrope",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} {C:joy_normal}Normal{} possédé ou au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{}",
                    "OU {C:attention}1{} {C:attention}Joker{} {C:joy_normal}Normal",
                }
            },
        }
    },
}
