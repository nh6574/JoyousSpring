return {
    descriptions = {
        Joker = {
            j_joy_invoked_aleister = {
                name = "{C:joy_effect}Aleister the Invoker",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into an {C:joy_normal}\"Invoked\"",
                        "{C:inactive}(This is treated as a Fusion summon)",
                    },
                    {
                        "A {C:joy_fusion}Fusion{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:chips}+#2#{} {s:0.9}Chips for each {s:0.9,C:joy_fusion}Fusion{} {s:0.9}summoned this run",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Chips for each {C:joy_fusion}Fusion{} summoned this run",
                    "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)"
                }
            },
            j_joy_invoked_madness = {
                name = "{C:joy_link}Aleister the Invoker of Madness",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into an {C:joy_normal}\"Invoked\"",
                        "{C:inactive}(This is treated as a Fusion summon)",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:joy_spell}\"Magical Meltdown\"{} when used",
                        "as {C:attention}material{} for a {C:joy_fusion}Fusion{}",
                        "{C:inactive}(Must have room)",
                    },
                    {
                        "A {C:joy_fusion}Fusion{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#3#{} {s:0.9}Mult for each {s:0.9,C:joy_fusion}Fusion{} {s:0.9}summoned this run",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{} with",
                    "different {C:attention}Types",
                    "and {C:attention}Attributes"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:joy_fusion}Fusion{} summoned this run",
                    "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
                }
            },
            j_joy_invoked_caliga = {
                name = "{C:joy_fusion}Invoked Caliga",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Gains {X:mult,C:white}X#2#{} Mult for each {C:attention}Joker{} {C:attention}tributed{} this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Reduces price of {C:joy_effect}Monster Packs{} by {C:money}$#4#",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_dark}DARK {C:attention}Joker{}",
                    "{s:0.8,C:inactive}(Random chance when tributing",
                    "{s:0.8,C:inactive}a non-Monster)"
                },
                joy_transfer_ability = {
                    "Gains {X:mult,C:white}X#1#{} Mult for each {C:attention}Joker{} {C:attention}tributed{} this run",
                    "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "Reduces price of {C:joy_effect}Monster Packs{} by {C:money}$#3#"
                }
            },
            j_joy_invoked_raidjin = {
                name = "{C:joy_fusion}Invoked Raidjin",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Gains {X:mult,C:white}X#2#{} Mult for each {C:attention}Joker{} {C:attention}flipped{} this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:attention}Flip #4#{} other random {C:attention}Joker{} face-up when {C:attention}Blind{} is selected",
                        "{C:attention}Flip #4#{} other random {C:attention}Joker{} face-down at end of round",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_wind}WIND {C:attention}Joker{}",
                    "{s:0.8,C:inactive}(Random chance when tributing",
                    "{s:0.8,C:inactive}a non-Monster)"
                },
                joy_transfer_ability = {
                    "Gains {X:mult,C:white}X#1#{} Mult for each {C:attention}Joker{} {C:attention}flipped{} this run",
                    "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "{C:attention}Flip #3#{} other random {C:attention}Joker{} face-up when {C:attention}Blind{} is selected",
                    "{C:attention}Flip #3#{} other random {C:attention}Joker{} face-down at end of round",
                }
            },
            j_joy_invoked_cocytus = {
                name = "{C:joy_fusion}Invoked Cocytus",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Reduces {C:attention}Blind{}'s requirement by {C:red}#2#%",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_water}WATER {C:attention}Joker{}",
                    "{s:0.8,C:inactive}(Random chance when tributing",
                    "{s:0.8,C:inactive}a non-Monster)"
                },
                joy_transfer_ability = {
                    "Reduces {C:attention}Blind{}'s requirement by {C:red}#1#%",
                }
            },
            j_joy_invoked_purgatorio = {
                name = "{C:joy_fusion}Invoked Purgatrio",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Each {C:joy_fusion}Fusion{} gives {X:mult,C:white}X#2#{} Mult",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_fire}FIRE {C:attention}Joker{}",
                    "{s:0.8,C:inactive}(Random chance when tributing",
                    "{s:0.8,C:inactive}a non-Monster)"
                },
                joy_transfer_ability = {
                    "Each {C:joy_fusion}Fusion{} gives {X:mult,C:white}X#1#{} Mult",
                }
            },
            j_joy_invoked_mage = {
                name = "{C:joy_fusion}Invoked Magellanica",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "{C:mult}+#2#{} Mult",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_earth}EARTH {C:attention}Joker{}",
                    "{s:0.8,C:inactive}(Random chance when tributing",
                    "{s:0.8,C:inactive}a non-Monster)"
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult",
                }
            },
            j_joy_invoked_mechaba = {
                name = "{C:joy_fusion}Invoked Mechaba",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Disables effect of {C:attention}Boss Blind{} after {C:attention}#2#{} cards are sold this round",
                        "{C:inactive}(#3#/#2#)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_light}LIGHT {C:attention}Joker{}",
                    "{s:0.8,C:inactive}(Random chance when tributing",
                    "{s:0.8,C:inactive}a non-Monster)"
                },
                joy_transfer_ability = {
                    "Disables effect of {C:attention}Boss Blind{} after {C:attention}#1#{} cards are sold this round",
                    "{C:inactive}(#2#/#1#)"
                }
            },
            j_joy_invoked_augo = {
                name = "{C:joy_fusion}Invoked Augoeides",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Gains {X:mult,C:white}X#2#{} Mult for each {C:joy_fusion}Fusion{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
                    },
                    {
                        "Sends {C:attention}#4#{} non-{C:joy_normal}\"Invoked\"{} {C:joy_fusion}Fusions{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} {C:joy_fusion}Fusion",
                    "{s:0.8,C:inactive}(Supersedes other conditions)",
                },
                joy_transfer_ability = {
                    "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_fusion}Fusion{} in the {C:attention}GY{}",
                    "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "Sends {C:attention}#3#{} non-{C:joy_normal}\"Invoked\"{} {C:joy_fusion}Fusions{} to the {C:attention}GY{}",
                    "when {C:attention}Blind{} is selected",
                }
            },
            j_joy_invoked_elysium = {
                name = "{C:joy_fusion}Invoked Elysium",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:attention}Joker",
                        "to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Gains abilities of each different {C:joy_normal}\"Invoked\"{} in the {C:attention}GY{}",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_fusion}Fusion",
                        "and as any {C:attention}Attribute{} while owned",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}Tribute 1{} summoned",
                    "non-{C:joy_fusion}Fusion",
                    "{s:0.8,C:inactive}(Supersedes other conditions)",
                }
            },
            j_joy_invoked_meltdown = {
                name = "{C:joy_spell}Magical Meltdown",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} {C:joy_fusion}Fusions{} to create {C:attention}#2#{} {C:joy_effect}\"Aleister the Invoker\"",
                    },
                    {
                        "Gains {X:mult,C:white}X#3#{} Mult for each {C:joy_fusion}fusion{} summoned this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:joy_fusion}Fusions{} can't be flipped or debuffed",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_invoked = "Invoked",
        }
    }
}
