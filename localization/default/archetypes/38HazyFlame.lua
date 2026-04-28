return {
    descriptions = {
        Joker = {
            j_joy_hazy_sphy = {
                name = "{C:joy_effect}Hazy Flame Sphynx",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "If any are {C:diamonds}Diamonds{}, turn",
                        "a random {C:attention}Joker Eternal{}"
                    },
                    {
                        "{C:attention}Revives 1{} {C:joy_fire}FIRE{} {C:attention}Joker{}",
                        "as {C:attention}Eternal{} when {C:attention}Blind{} is selected",
                        "{C:inactive}(Doesn't need room){}"
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    }
                }
            },
            j_joy_hazy_cerbe = {
                name = "{C:joy_effect}Hazy Flame Cerbereus",
                text = {
                    {
                        "If {C:attention}tributed{}, creates a {C:dark_edition}Negative{}",
                        "{C:attention}Eternal{} {C:joy_effect}\"Hazy Flame Cerbereus\"{}",
                        "and adds {C:attention}1 Eternal{} {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "to the shop"
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    }
                }
            },
            j_joy_hazy_grif = {
                name = "{C:joy_effect}Hazy Flame Griffin",
                text = {
                    {
                        "Each {C:joy_fire}FIRE{} {C:attention}Joker{} gives {C:mult}+#1#{} Mult and",
                        "{X:mult,C:white}X#2#{} Mult if {C:attention}Eternal{}"
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    }
                }
            },
            j_joy_hazy_hydra = {
                name = "{C:joy_effect}Hazy Flame Hydra",
                text = {
                    {
                        "If {C:attention}Eternal{}, adds a {C:joy_xyz}\"Hazy Flame Basiltrice\"{}",
                        "to the {C:joy_spell}Extra Deck{}",
                        "or another random {C:joy_xyz}Xyz{} if already there",
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Attach a {s:0.9,C:attention}material{}",
                        "{s:0.9}for each {s:0.9,C:attention}Eternal{} {s:0.9,C:attention}Joker{}",
                        "{s:0.9}when {s:0.9,C:attention}Boss Blind{s:0.9} is defeated",
                    },
                },
                joy_transfer_ability = {
                    "Attach a {C:attention}material{}",
                    "for each {C:attention}Eternal{} {C:attention}Joker{}",
                    "when {C:attention}Boss Blind{} is defeated",
                }
            },
            j_joy_hazy_hyppo = {
                name = "{C:joy_effect}Hazy Flame Hyppogrif",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{}",
                        "{C:attention}Eternal Joker{} to gain {C:money}+$#1#{}",
                        "and turn a random {C:attention}Joker Eternal{}"
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    },
                }
            },
            j_joy_hazy_manti = {
                name = "{C:joy_effect}Hazy Flame Mantikor",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{}",
                        "{C:attention}Eternal Joker{} to {C:attention}revive 1{}",
                        "{C:joy_normal}Main Deck \"Hazy Flame\"{}",
                        "or {C:joy_fire}FIRE{} if not"
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    },
                }
            },
            j_joy_hazy_pery = {
                name = "{C:joy_effect}Hazy Flame Peryton",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{}",
                        "{C:attention}Eternal Joker{} to create {C:attention}2{}",
                        "{C:attention}Eternal {C:joy_normal}Main Deck \"Hazy Flame\"{}",
                    },
                    {
                        "Can be used as {C:attention}material{}",
                        "even if {C:attention}Eternal{}"
                    },
                }
            },
            j_joy_hazy_basil = {
                name = "{C:joy_xyz}Hazy Flame Basiltrice",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz material{}",
                        "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Attach a {C:attention}material{}",
                        "for each {C:attention}Eternal{} {C:attention}Joker{}",
                        "when {C:attention}Boss Blind{} is defeated",
                    },
                    {
                        "Gains the following abilities based on the number of {C:joy_xyz}Xyz materials{}:",
                        "{C:attention}5+{}: Gains {X:mult,C:white}X#3#{} Mult for each",
                        "{C:attention}tributed Eternal Joker{} this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#4#{}{C:inactive} Mult)",
                        "{C:attention}20+{}: {C:attention}Eternal Jokers{} can appear in the shop",
                        "or, if they already could, removes {C:attention}Perishable{} and {C:attention}Rental{}",
                        "{C:attention}50+{}: {C:attention}Eternal Jokers{} in the shop are {C:dark_edition}Negative{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:attention}Eternal Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_hazy = "Hazy Flame",
        }
    }
}
