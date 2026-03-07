return {
    descriptions = {
        Joker = {
            j_joy_mimi_archfiend = {
                name = "{C:joy_effect}Mimighoul Archfiend",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates {C:attention}#3#{} {C:blue}Common{} {C:joy_normal}\"Mimighoul\"{}",
                        "{C:inactive}(Must have room)",
                        "and a {C:joy_effect}\"Mimighoul Archfiend\"{} in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_armor = {
                name = "{C:joy_effect}Mimighoul Armor",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates {C:attention}#3#{} {C:green}Uncommon{} {C:joy_normal}\"Mimighoul\"{}",
                        "{C:inactive}(Must have room)",
                        "and a {C:joy_effect}\"Mimighoul Armor\"{} in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_cerberus = {
                name = "{C:joy_effect}Mimighoul Cerberus",
                text = {
                    {
                        "{C:spell}Field Spells{} give {X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates {C:attention}#2#{} {C:green}Uncommon{} {C:joy_normal}\"Mimighoul\"{}",
                        "{C:inactive}(Must have room)",
                        "and a {C:joy_effect}\"Mimighoul Cerberus\"{} in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_dragon = {
                name = "{C:joy_effect}Mimighoul Dragon",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each card destroyed by",
                        "{C:joy_effect}\"Mimighoul Dragon\"{} this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates {C:attention}#3# Blind{} cards and a {C:joy_effect}\"Mimighoul Dragon\"{}",
                        "both in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_fairy = {
                name = "{C:joy_effect}Mimighoul Fairy",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_trap}Opponent{}'s card",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates {C:attention}#3#{} {C:blue}Common{} {C:joy_normal}\"Mimighoul\"{}",
                        "{C:inactive}(Must have room)",
                        "and a {C:joy_effect}\"Mimighoul Fairy\"{} in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_flower = {
                name = "{C:joy_effect}Mimighoul Flower",
                text = {
                    {
                        "Doubles the {C:joy_trap}Opponent{}'s slots",
                        "{C:inactive}(even if face-down)"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "and creates a {C:joy_effect}\"Mimighoul Flower\"{} in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_slime = {
                name = "{C:joy_effect}Mimighoul Slime",
                text = {
                    {
                        "All {C:joy_effect}Flip{} {C:joy_normal}\"Mimighoul\"{} in any area",
                        "flips when {C:attention}Blind{} is selected",
                        "{C:inactive}(even if this card is face-down)"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates {C:attention}#1#{} {C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}\"Mimighoul\"{}",
                        "{C:inactive}(Must have room)",
                        "and a {C:joy_effect}\"Mimighoul Slime\"{} in the {C:joy_trap}Opponent{}'s area",
                    },
                }
            },
            j_joy_mimi_master = {
                name = "{C:joy_effect}Mimighoul Master",
                text = {
                    {
                        "Each card in the {C:joy_trap}Opponent{}'s area",
                        "gives {X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "Doubles the {C:joy_trap}Opponent{}'s slots",
                        "{C:inactive}(even if face-down)"
                    },
                    {
                        "Once per round, you can {C:attention}flip{} a {C:attention}Joker{}",
                    },
                    {
                        "Once per round, you can {C:attention}flip{} a card in the {C:joy_trap}Opponent{}'s area"
                    },
                }
            },
            j_joy_mimi_giant = {
                name = "{C:joy_xyz}Giant Mimighoul",
                text = {
                    {
                        "{C:attention}Attach #1# material{} when a card",
                        "is {C:attention}flipped{} face-up in the {C:joy_trap}Opponent{}'s area"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#2#{}: Creates as many {C:attention}Blind{} cards",
                        "in the {C:joy_trap}Opponent{}'s area as {C:joy_normal}\"Mimighoul\"{} in that area",
                        "then gives {X:mult,C:white}X#3#{} extra Mult this round",
                        "for each non-{C:joy_normal}\"Mimighoul\"{} in that area",
                        "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Flip{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
            j_joy_mimi_throne = {
                name = "{C:joy_xyz}Mimighoul Throne",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}: Creates {C:attention}#2#{} {C:dark_edition}Negative{} {C:joy_effect}\"Mimighoul Master\"{}"
                    },
                    {
                        "Permanently increases {C:joy_trap}Opponent{}'s slots by {C:attention}#3#{}",
                        "when {C:attention}banished{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_effect}Flip{}",
                    "{C:joy_normal}\"Mimighoul\"{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
            j_joy_mimi_dungeon = {
                name = "{C:joy_spell}Mimighoul Dungeon",
                text = {
                    {
                        "Once per round, if all {C:attention}Jokers{} are face-up",
                        "you can {C:attention}flip{} all {C:attention}Jokers{} face-down"
                    },
                    {
                        "Once per round, if all {C:attention}Jokers{} are face-down",
                        "you can {C:attention}flip{} all {C:attention}Jokers{} face-up"
                    },
                    {
                        "{C:joy_normal}\"Mimighoul\"{} create cards in the",
                        "{C:joy_trap}Opponent{}'s area as {C:dark_edition}Negative{}"
                    }
                }
            },
        },
        joy_Opponent = {
            opp_joy_mimi_archfiend = {
                name = "{C:joy_effect}Mimighoul Archfiend",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself, gives {C:attention}+#3#{} hand size this round",
                        "and creates a {C:joy_effect}\"Mimighoul Archfiend\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            opp_joy_mimi_armor = {
                name = "{C:joy_effect}Mimighoul Armor",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "{C:attention}banishes{} all {C:joy_normal}\"Mimighoul\"{} and face-down {C:attention}Jokers{}",
                        "at end of round until {C:attention}Blind{} is selected",
                        "and creates a {C:joy_effect}\"Mimighoul Armor\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            opp_joy_mimi_cerberus = {
                name = "{C:joy_effect}Mimighoul Cerberus",
                text = {
                    {
                        "{C:spell}Field Spells{} give {X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "creates a {C:joy_spell}Field Spell{}",
                        "and creates a {C:joy_effect}\"Mimighoul Cerberus\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            opp_joy_mimi_dragon = {
                name = "{C:joy_effect}Mimighoul Dragon",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each card destroyed by",
                        "{C:joy_effect}\"Mimighoul Dragon\"{} this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "and a random non-{C:joy_normal}\"Mimighoul\"{} card in this area",
                        "and creates a {C:joy_effect}\"Mimighoul Dragon\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            opp_joy_mimi_fairy = {
                name = "{C:joy_effect}Mimighoul Fairy",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each card in this area",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "rerolls this ante's {C:attention}Boss Blind{} if possible",
                        "and creates a {C:joy_effect}\"Mimighoul Fairy\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            opp_joy_mimi_flower = {
                name = "{C:joy_effect}Mimighoul Flower",
                text = {
                    {
                        "Doubles the this area's slots",
                        "{C:inactive}(even if face-down)"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "and creates a {C:red}Rare{} {C:joy_normal}\"Mimighoul\"{}",
                        "and a {C:joy_effect}\"Mimighoul Flower\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            opp_joy_mimi_slime = {
                name = "{C:joy_effect}Mimighoul Slime",
                text = {
                    {
                        "All {C:joy_effect}Flip{} {C:joy_normal}\"Mimighoul\"{} in any area",
                        "flips when {C:attention}Blind{} is selected",
                        "{C:inactive}(even if this card is face-down)"
                    },
                    {
                        "Destroys itself when {C:attention}Blind{} is selected",
                        "if you don't own a {C:joy_normal}\"Mimighoul\"{}",
                        "or face-down {C:attention}Joker{}"
                    },
                    {
                        "{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Destroys itself,",
                        "adds a {C:joy_normal}\"Mimighoul\"{} to the {C:joy_spell}Extra Deck{}",
                        "and a {C:joy_effect}\"Mimighoul Slime\"{} in the {C:attention}Joker{} area",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_mimi = "Mimighoul",
        }
    }
}
