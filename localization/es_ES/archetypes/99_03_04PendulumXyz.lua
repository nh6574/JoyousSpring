return {
    descriptions = {
        Joker = {
            j_joy_ooze = {
                name = "{C:joy_pendulum_xyz}Daidaratant el Gigante de Cieno",
                joy_consumable = {
                    "Attach {C:attention}#1# materials{} to a random {C:joy_xyz}Xyz{}"
                },
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#2#{}: {C:attention}Revives #3#{} {C:joy_pendulum}Pendulum{} as {C:dark_edition}Negative{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_pendulum}Pendulum{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive})"
                }
            },
        }
    },
}
