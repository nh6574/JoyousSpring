return {
    descriptions = {
        Joker = {
            j_joy_mudragon = {
                name = "{C:joy_fusion}Mudragon of the Swamp",
                text = {
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_fusion}Fusion",
                        "and as any {C:attention}Attribute{} while owned",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{} with different rarities",
                }
            },
            j_joy_garura = {
                name = "{C:joy_fusion}Garura, Wings of Resonant Life",
                text = {
                    {
                        "{C:attention}+#1#{} hand size",
                    },
                    {
                        "Permanently gain {C:attention}+#2#{} hand size",
                        "if used as {C:attention}material{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{} with the same rarity",
                    "but with different names",
                }
            },
        }
    },
}
