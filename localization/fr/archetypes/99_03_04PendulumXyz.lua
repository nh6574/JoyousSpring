return {
    descriptions = {
        Joker = {
            j_joy_ooze = {
                name = "{C:joy_pendulum_xyz}Daidaratant le Géant Visqueux",
                joy_consumable = {
                    "Attache {C:attention}#1# matériels{} à un {C:joy_xyz}Xyz{} aléatoire"
                },
                text = {
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}#2#{}: {C:attention}Ressuscite #3#{} {C:joy_pendulum}Pendule{} en {C:dark_edition}Négatif{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_pendulum}Pendule{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive})"
                }
            },
        }
    },
}
