return {
    descriptions = {
        Joker = {
            j_joy_apollousa = {
                name = "{C:joy_link}Apollousa, Bow of the Goddess",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:attention}material{}",
                        "used for its summon, reduces by {C:red}#2#{} each round",
                        "{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+ Jokers{} with different names",
                }
            },
            j_joy_beyond = {
                name = "{C:joy_link}Beyond the Pendulum",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_pendulum}Pendulum{}",
                        "consumed this run",
                        "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Creates {C:attention}#3#{} {C:joy_pendulum}Pendulum{} after {C:attention}#4#{} are consumed",
                        "{C:inactive}(#5#/#4#) (Must have room)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2 Jokers{},",
                    "including a {C:joy_pendulum}Pendulum"
                }
            },
            j_joy_exceed = {
                name = "{C:joy_link}Exceed the Pendulum",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_pendulum}Pendulum{} consumed this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Creates {C:attention}#3#{} {C:dark_edition}Negative{} {C:joy_normal}Main Deck{} {C:joy_pendulum}Pendulum{}",
                        "the first time a {C:attention}Boss Blind{} is defeated",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 Jokers{},",
                    "including a {C:joy_pendulum}Pendulum"
                }
            },
            j_joy_linkuriboh = {
                name = "{C:joy_link}Linkuriboh",
                text = {
                    {
                        "Sell this card to disable the current {C:attention}Boss Blind{}",
                        "but sets {C:money}money{} to {C:money}$0",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:blue}Common{} {C:attention}Joker",
                }
            },
            j_joy_linguriboh = {
                name = "{C:joy_link}Linguriboh",
                text = {
                    {
                        "Sell this card to disable the current {C:attention}Boss Blind{}",
                        "but reduces hand size by {C:attention}#1#{} if not summoned",
                        "using an {C:joy_normal}\"@Ignister\"{} as {C:attention}material",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Cyberse",
                }
            },
            j_joy_ipmasq = {
                name = "{C:joy_link}I:P Masquerena",
                text = {
                    {
                        "{C:attention}Transforms{} into a random {C:joy_link}Link{} when {C:attention}Blind{} is selected",
                        "{C:inactive}(This is treated as a Link summon with 2 materials){}",
                        "A {C:joy_link}Link{} summoned this way gains the following ability:",
                        "{s:0.9,C:attention}Transforms{s:0.9} into {s:0.9,C:joy_link}\"I:P Masquerena\"{s:0.9} at end of round",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Effect {C:attention}Jokers{}",
                },
                joy_transfer_ability = {
                    "{C:attention}Transforms{} into {C:joy_link}\"I:P Masquerena\"{} at end of round",
                }
            },
            j_joy_spknight = {
                name = "{C:joy_link}S:P Little Knight",
                text = {
                    {
                        "{C:attention}Banishes{} itself and {C:attention}#1#{} other {C:attention}Joker{}",
                        "at end of round until {C:attention}Boss Blind{} is selected",
                        "OR until {C:attention}Blind{} is selected if summoned",
                        "using {C:attention}2{} {C:joy_spell}Extra Deck{} {C:attention}Jokers{} as {C:attention}material{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Effect {C:attention}Jokers{}",
                }
            },
            j_joy_progleo = {
                name = "{C:joy_link}Progleo",
                text = {
                    {
                        "{C:attention}Banishes #1#{} adjacent {C:attention}Joker{} at end of round",
                        "until {C:attention}Boss Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "except {C:joy_token}Tokens"
                }
            },
            j_joy_raster = {
                name = "{C:joy_link}Rasterliger",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_link}Link{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "You can {C:attention}tribute{} all other {C:attention}Jokers{}",
                        "to reduce {C:attention}Blind{}'s requirement by {C:red}#3#%{} for each",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:attention}Jokers{},",
                    "except {C:joy_token}Tokens"
                }
            },
        }
    },
}
