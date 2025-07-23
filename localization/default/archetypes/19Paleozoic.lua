return {
    descriptions = {
        Joker = {
            j_joy_paleo_canadia = {
                name = "{C:joy_trap}Paleozoic Canadia",
                text = {
                    {
                        "Gains {C:mult}+#1#{} Mult for each {C:attention}Joker{} {C:attention}flipped",
                        "{s:0.9,C:inactive}(Gains even while face-down)",
                        "{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Revives #3#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_dino = {
                name = "{C:joy_trap}Paleozoic Dinomischus",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: This card and {C:attention}#1#{} other {C:joy_trap}Trap{} {C:attention}banish{} at end of round",
                        "until {C:attention}Blind{} is selected and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_eldonia = {
                name = "{C:joy_trap}Paleozoic Eldonia",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:chips}+#1#{} Chips this round",
                        "and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_hallu = {
                name = "{C:joy_trap}Paleozoic Hallucigenia",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:mult}+#1#{} Mult this round",
                        "and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_lean = {
                name = "{C:joy_trap}Paleozoic Leanchoilia",
                text = {
                    {
                        "Gains {C:chips}+#1#{} Chips for each {C:attention}Joker{} {C:attention}flipped",
                        "{s:0.9,C:inactive}(Gains even while face-down)",
                        "{C:inactive}(Currently {C:chips}+#2# {C:inactive}Chips)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Revives #3#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_marrella = {
                name = "{C:joy_trap}Paleozoic Marrella",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Revives #1#{} {C:joy_normal}\"Paleozoic\" ",
                        "and sends {C:attention}#2#{} {C:joy_trap}Trap{} {C:joy_normal}\"Paleozoic\"{} to the {C:attention}GY",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_oleno = {
                name = "{C:joy_trap}Paleozoic Olenoides",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:red}+#1#{} Discard this round",
                        "and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_pikaia = {
                name = "{C:joy_trap}Paleozoic Pikaia",
                text = {
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}+#1#{} hand size this round",
                        "and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
                    },
                    {
                        "Can't be debuffed",
                    },
                }
            },
            j_joy_paleo_cambro = {
                name = "{C:joy_link}Paleozoic Cambroraster",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_xyz}Xyz{} {C:joy_normal}\"Paleozoic\"{} to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "{C:joy_normal}\"Paleozoic\"{} {C:attention}revive{} other cards as {C:dark_edition}Negative",
                    },
                    {
                        "Can't be debuffed",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}\"Paleozoic\"{}",
                }
            },
            j_joy_paleo_anomalo = {
                name = "{C:joy_xyz}Paleozoic Anomalocaris",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}: Gains {X:mult,C:white}X#2#{} Mult this round",
                        "{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    },
                    {
                        "Attach {C:attention}#4# {C:joy_xyz}material{} to this card when a {C:joy_trap}Trap{} is flipped face-up",
                    },
                    {
                        "Can't be debuffed",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3+{} {C:joy_trap}Traps{}",
                }
            },
            j_joy_paleo_opa = {
                name = "{C:joy_xyz}Paleozoic Opabinia",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}: Creates {C:attention}#2#{} {C:joy_normal}Main Deck \"Paleozoic\"{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "{C:joy_trap}Traps{} are {C:attention}flipped{} face-up when {C:attention}Blind{} is selected",
                    },
                    {
                        "Can't be debuffed",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_water}Water{} {C:attention}Jokers{}",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_paleo = "Paleozoic",
        }
    }
}
