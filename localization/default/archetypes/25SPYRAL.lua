return {
    descriptions = {
        Joker = {
            j_joy_spy_drone = {
                name = "{C:joy_effect}SPYRAL GEAR - Drone",
                text = {
                    {
                        "Once per shop, you can {C:attention}tribute #1# Joker{}",
                        "to {C:attention}excavate #2#{}"
                    },
                    {
                        "Destroys itself if a {C:attention}guess{} doesn't have",
                        "any correct matches"
                    }
                }
            },
            j_joy_spy_lastresort = {
                name = "{C:joy_effect}SPYRAL GEAR - Last Resort",
                text = {
                    {
                        "Gains {C:chips}+#1#{} Chips for each card {C:attention}excavated{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Destroys itself if a {C:attention}guess{} doesn't have",
                        "any correct matches and treats them as correct instead"
                    },
                    {
                        "{C:joy_normal}\"SPYRAL\"{} can't be debuffed or flipped face-down"
                    }
                }
            },
            j_joy_spy_double = {
                name = "{C:joy_effect}SPYRAL Double Agent",
                text = {
                    {
                        "At the end of the shop, {C:attention}excavate{} and {C:attention}guess{} the top {C:attention}4{} suits:",
                        "{C:green}Halve{} {C:attention}Blind{}'s requirement for every correct guess,",
                        "{C:red}double{} for every incorrect guess"
                    },
                }
            },
            j_joy_spy_masterplan = {
                name = "{C:joy_effect}SPYRAL Master Plan",
                text = {
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}3{} ranks:",
                        "1: Create {C:attention}#1#{} {C:attention}Perishable{} {C:joy_normal}Main Deck \"SPYRAL\"{}",
                        "{C:inactive}(Must have room)",
                        "2: {C:attention}Revive #2#{} {C:joy_normal}\"SPYRAL\"{} as {C:attention}Perishable{}",
                        "3: Both previous abilities don't apply {C:attention}Perishable{}"
                    },
                    {
                        "Free if you own a {C:joy_normal}\"SPYRAL\"{}"
                    }
                }
            },
            j_joy_spy_quik = {
                name = "{C:joy_effect}SPYRAL Quik-Fix",
                text = {
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}3{} suits:",
                        "1: Create {C:attention}#1#{} {C:attention}Perishable{} {C:joy_normal}\"SPYRAL GEAR\"{}",
                        "{C:inactive}(Must have room)",
                        "2: {C:attention}Revive #2#{} {C:joy_normal}\"SPYRAL GEAR\"{} as {C:attention}Perishable{}",
                        "3: Both previous abilities don't apply {C:attention}Perishable{}"
                    },
                    {
                        "Free if you own a {C:joy_normal}\"SPYRAL\"{}"
                    }
                }
            },
            j_joy_spy_sleeper = {
                name = "{C:joy_effect}SPYRAL Sleeper",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each card {C:attention}excavated{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Destroys itself if a {C:attention}guess{} doesn't have",
                        "any correct matches or no guess is made when {C:attention}Blind{} is selected"
                    },
                }
            },
            j_joy_spy_tough = {
                name = "{C:joy_effect}SPYRAL Tough",
                text = {
                    {
                        "Gains {C:mult}+#1#{} Mult for each card {C:attention}excavated{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}5{} suits:",
                        "1: Create {C:attention}#3#{} {C:tarot}Tarot{}",
                        "{C:inactive}(Must have room)",
                        "2: Create {C:attention}#4#{} {C:dark_edition}Negative{} {C:planet}Planets{}",
                        "for the last hand played",
                        "3: {X:mult,C:white}X#5#{} Mult this round",
                        "4: {C:attention}Excavate{} up to {C:attention}#6#{} extra cards after hand is drawn",
                        "5: Create {C:attention}#7#{} {C:dark_edition}Negative{} {C:joy_effect}\"SPYRAL Super Agent\""
                    }
                }
            },
            j_joy_spy_super = {
                name = "{C:joy_effect}SPYRAL Super Agent",
                text = {
                    {
                        "Gains {C:chips}+#1#{} Chips for each card {C:attention}excavated{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}5{} suits:",
                        "1: Scored cards give {C:chips}+#3#{} Chips this round",
                        "2: Scored cards give {C:mult}+#3#{} Mult this round",
                        "3: Scored cards give {X:mult,C:white}X#4#{} Mult this round",
                        "4: {C:joy_normal}\"SPYRAL\"{} give {X:mult,C:white}X#4#{} Mult this round",
                        "5: Retrigger each scored card twice"
                    }
                }
            },
            j_joy_spy_misty = {
                name = "{C:joy_effect}SPYGAL Misty",
                text = {
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}1{} suit,",
                        "if correct turns {C:attention}#1#{} random cards in your deck of another suit",
                        "into that suit plus an extra card for each {C:joy_normal}\"SPYRAL\"{}"
                    },
                }
            },
            j_joy_spy_staff = {
                name = "{C:joy_effect}Charming Resort Staff",
                text = {
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}3{} ranks:",
                        "1: {C:joy_normal}\"SPYRAL\"{} give {C:mult}+#1#{} Mult this round",
                        "2: Create {C:attention}#2#{} {C:joy_spell}\"SPYRAL Resort\"{}",
                        "{C:inactive}(Must have room)",
                        "3: The previous effect applies {C:dark_edition}Negative{} and doesn't need room"
                    },
                }
            },
            j_joy_spy_helix = {
                name = "{C:joy_link}SPYRAL Double Helix",
                text = {
                    {
                        "{C:attention}Excavate{} and {C:attention}guess{} the top {C:attention}5{} ranks and suits:",
                        "1: {X:mult,C:white}X#1#{} Mult this round",
                        "2: {C:mult}+#2#{} Mult this round",
                        "3: Levels up poker hands played this round",
                        "4: Gives {C:dark_edition}Polychrome{} to a random card excavated this round",
                        "5: {C:attention}Excavates{} up to {C:attention}#3#{} extra cards after hand is drawn",
                        "6: {C:attention}Revives #4#{} {C:joy_normal}\"SPYRAL\"{} as {C:dark_edition}Negative{}",
                        "7: Creates {C:attention}#5#{} {C:dark_edition}Negative{} {C:joy_normal}\"SPYRAL\"{}",
                        "8: Turns all cards drawn in the first hand into the most common suit in your deck",
                        "9: Turns all cards drawn in the first hand into the most common rank in your deck",
                        "10: Creates {C:attention}#6#{} {C:dark_edition}Negative{} {C:joy_effect}\"SPYRAL Super Agent\"{}",
                    },
                }
            },
            j_joy_spy_resort = {
                name = "{C:joy_spell}SPYRAL Resort",
                text = {
                    {
                        "Once per shop, you can {C:attention}tribute #1# Joker{}",
                        "to {C:attention}excavate #2#{}"
                    },
                    {
                        "Once per ante, creates {C:attention}#3#{} {C:dark_edition}Negative{}",
                        "{C:attention}Perishable{} {C:joy_effect}\"SPYRAL Super Agent\"{}",
                        "after {C:attention}#4#{} correct guesses are made"
                    },
                    {
                        "Destroys itself if no guess is made when {C:attention}Blind{} is selected",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spy = "SPYRAL",
        }
    }
}
