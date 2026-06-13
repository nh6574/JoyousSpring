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
            j_joy_quintet = {
                name = "{C:joy_fusion}Quintet Magician",
                text = {
                    {
                        "{C:attention}Doubles{} cash out rewards",
                        "for the next {C:attention}#1#{} rounds",
                        "then {C:red}destroys{} itself"
                    },
                    {
                        "Immediately wins every {C:attention}Blind{}",
                        "if {C:attention}summoned{} using {C:attention}Jokers{}",
                        "with different names"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5 {C:joy_normal}Spellcasters{}",
                }
            },
            j_joy_mysterion = {
                name = "{C:joy_fusion}Mysterion the Dragon Crown",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each playing card",
                        "destroyed this run",
                        "{C:mult}-#2#{} Mult for each card",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult) (min. +0)"
                    },
                    {
                        "Once per round, you can {C:attention}banish 1{}",
                        "{C:joy_normal}Dragon{} or {C:joy_normal}Spellcaster{}",
                        "until {C:attention}Blind{} is selected"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1 {C:joy_normal}Spellcaster{}",
                    "+ {C:attention}1{} {C:joy_normal}Dragon{}"
                }
            },
            j_joy_secreterion = {
                name = "{C:joy_fusion}Secreterion Dragon",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each playing card",
                        "destroyed this run",
                        "{C:mult}-#2#{} Mult for each card",
                        "{C:attention}revived{} this run",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult) (min. +0)"
                    },
                    {
                        "Once per round, you can {C:attention}revive 1{}",
                        "{C:joy_normal}Dragon{} or {C:joy_normal}Spellcaster{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1 {C:joy_normal}Dragon{}",
                    "+ {C:attention}1{} {C:joy_normal}Spellcaster{}"
                }
            },
            j_joy_acespades = {
                name = "{C:joy_fusion}Ace{C:joy_fusion,f:joy_font}★{C:joy_fusion}Spades Speculation",
                text = {
                    {
                        "Gains Mult based on the scored cards in played hand:",
                        "{C:mult}+#1#{} Mult for {C:attention}2 of Hearts{},",
                        "{C:attention}10 of Hearts{} or {C:attention}Jack of Hearts{}",
                        "{C:mult}+#2#{} Mult for {C:attention}2 of Spades{},",
                        "{C:attention}10 of Spades{}, {C:attention}Jack of Spades{}",
                        "{C:attention}6 of Diamonds{} or {C:attention}Ace of Spades{}",
                        "{C:mult}-#1#{} Mult for {C:attention}2 of Clubs{},",
                        "{C:attention}10 of Clubs{}, {C:attention}Jack of Clubs{}",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult) (min. +0)"
                    },
                    {
                        "You can tribute any selected {C:attention}Ace of Spades{} in hand",
                        "to {C:attention}double{} this card's current Mult for each"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1 {C:red}Rare{} {C:attention}Joker{}",
                    "+ {C:attention}1{} face-down {C:blue}Common{} {C:attention}Joker{}"
                }
            },
        }
    },
}
