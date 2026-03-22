return {
    descriptions = {
        Joker = {
            j_joy_purr_purrely = {
                name = "{C:joy_effect}Purrely",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "Adds a {C:attention}Memory Seal{} to each card without a Seal",
                    },
                    {
                        "You can destroy a selected playing card",
                        "with a {C:attention}Memory Seal{} to {C:attention}transform{}",
                        "this card into the appropriate {C:joy_normal}\"Epurrely\"{} {C:joy_xyz}Xyz{}",
                        "{C:inactive}(This is treated as an Xyz summon with 1 material)",
                    }
                }
            },
            j_joy_purr_purrelyly = {
                name = "{C:joy_effect}Purrelyly",
                text = {
                    {
                        "When obtained and at end of round,",
                        "creates {C:attention}#1#{} {C:planet}\"My Friend Purrely\"{}",
                    },
                    {
                        "If there's a card with a {C:attention}Memory Seal{} in deck,",
                        "{C:attention}excavate{} until you hit one when {C:attention}Blind{} is selected,",
                        "add a copy to the deck and {C:attention}transforms{}",
                        "this card into the appropriate {C:joy_normal}\"Epurrely\"{} {C:joy_xyz}Xyz{} for that Seal",
                        "{C:inactive}(This is treated as an Xyz summon with 1 material)",
                    }
                }
            },
            j_joy_purr_eplump = {
                name = "{C:joy_xyz}Epurrely Plump",
                text = {
                    {
                        "Retrigger each scored card with a {C:attention}Delicious Seal{}",
                        "{C:attention}#1#{} time for each different suit in scoring hand",
                        "Increases by {C:attention}#2#{} for every {C:attention}#3#{} {C:attention}Delicious Seals{} in deck"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#4#{}:",
                        "{C:attention}Banishes #5#{} random {C:joy_normal}\"Purrely\"{}",
                        "until {C:attention}Blind{} is selected"
                    },
                    {
                        "If this card has no materials,",
                        "{C:attention}transforms{} into {C:joy_effect}\"Purrely\"{}",
                        "at end of ante"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Fairies{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_ebeauty = {
                name = "{C:joy_xyz}Epurrely Beauty",
                text = {
                    {
                        "Retrigger each scored card with a {C:attention}Pretty Seal{}",
                        "{C:attention}#1#{} time for each different suit in scoring hand",
                        "Increases by {C:attention}#2#{} for every {C:attention}#3#{} {C:attention}Pretty Seals{} in deck"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#4#{}:",
                        "You can {C:attention}tribute #5#{} {C:planet}Planet{}",
                        "to gain {C:attention}#6#{} free reroll in the shop"
                    },
                    {
                        "If this card has no materials,",
                        "{C:attention}transforms{} into {C:joy_effect}\"Purrely\"{}",
                        "at end of ante"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Fairies{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_ehappiness = {
                name = "{C:joy_xyz}Epurrely Happiness",
                text = {
                    {
                        "Retrigger each scored card with a {C:attention}Happy Seal{}",
                        "{C:attention}#1#{} time for each different suit in scoring hand",
                        "Increases by {C:attention}#2#{} for every {C:attention}#3#{} {C:attention}Happy Seals{} in deck"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#4#{}:",
                        "Once per round, creates {C:attention}#5#{}",
                        "{C:joy_normal}Main Deck \"Purrely\"{}"
                    },
                    {
                        "If this card has no materials,",
                        "{C:attention}transforms{} into {C:joy_effect}\"Purrely\"{}",
                        "at end of ante"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Fairies{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_enoir = {
                name = "{C:joy_xyz}Epurrely Noir",
                text = {
                    {
                        "Retrigger each scored card with a {C:attention}Sleepy Seal{}",
                        "{C:attention}#1#{} time for each different suit in scoring hand",
                        "Increases by {C:attention}#2#{} for every {C:attention}#3#{} {C:attention}Sleepy Seals{} in deck"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#4#{}:",
                        "{C:attention}Excavate{} and check the top card in deck,",
                        "turn it into a selected card in hand"
                    },
                    {
                        "If this card has no materials,",
                        "{C:attention}transforms{} into {C:joy_effect}\"Purrelyly\"{}",
                        "at end of ante"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Fairies{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_purr_exhappiness = {
                name = "{C:joy_xyz}Expurrely Happiness",
                text = {
                    {
                        "Scored cards with a {C:attention}Memory Seal{} give {X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}half {C:inactive}(rounded up){}:",
                        "This round {C:planet}\"My Friend Purrely\"{} gives",
                        "its selling ability when used"
                    },
                    {
                        "Creates as many {C:dark_edition}Negative{} {C:planet}\"My Friend Purrely\"{} as",
                        "{C:joy_normal}\"Purrely\"{} you own with different names",
                        "at end of round also, if this card has no materials,",
                        "{C:attention}transforms{} into {C:joy_effect}\"Purrely\"{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:joy_normal}Fairies{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "or {C:attention}1{} {C:joy_normal}Fairy{} {C:joy_xyz}Xyz{}",
                    "{s:0.9,C:inactive}(Transfer its materials)",
                }
            },
            j_joy_purr_exnoir = {
                name = "{C:joy_xyz}Expurrely Noir",
                text = {
                    {
                        "Scored cards with a {C:attention}Memory Seal{} give {X:chips,C:white}X#1#{} Chips"
                    },
                    {
                        "{C:joy_normal}\"Purrely\"{} abilities retrigger playing cards",
                        "twice as many times"
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}half {C:inactive}(rounded up){}:",
                        "This round the abilities of {C:attention}Memory Seals{} in hand",
                        "trigger as if scored"
                    },
                    {
                        "If this card has no materials,",
                        "{C:attention}transforms{} into {C:joy_effect}\"Purrelyly\"{}",
                        "at end of round"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:joy_normal}Fairies{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "or {C:attention}1{} {C:joy_normal}Fairy{} {C:joy_xyz}Xyz{}",
                    "{s:0.9,C:inactive}(Transfer its materials)",
                }
            },
            j_joy_purr_street = {
                name = "{C:joy_spell}Stray Purrely Street",
                text = {
                    {
                        "Enables {C:attention}Purrelyeap!?{} hands"
                    },
                    {
                        "{C:joy_normal}\"Purrely\"{} and cards with a {C:attention}Memory Seal{}",
                        "can't be debuffed"
                    },
                    {
                        "Attach {C:attention}#1#{} material to a random {C:joy_xyz}Xyz{}",
                        "when {C:planet}\"My Friend Purrely\"{} would apply a Seal",
                        "{C:inactive}(Even if already applied){}"
                    },
                    {
                        "Once per round, if you have {C:attention}#2#{} or more",
                        "cards with a {C:attention}Memory Seal{} in your full deck,",
                        "you can {C:attention}transform{} {C:joy_xyz}\"Epurrely Happiness\"{}",
                        "or {C:joy_xyz}\"Epurrely Noir\"{} into the appropriate {C:joy_normal}\"Expurrely\"{}",
                        "{C:inactive}(This is treated as an Xyz summon and transfers all materials including itself){}"
                    }
                }
            },
        },
        Planet = {
            c_joy_purr_friend = {
                name = "{C:joy_spell}My Friend Purrely",
                text = {
                    {
                        "({V:1}lvl.#1#{}) Level up",
                        "{C:attention}#2#",
                        "{C:mult}+#3#{} Mult and",
                        "{C:chips}+#4#{} chips",
                    },
                    {
                        "Apply a {C:attention}Memory Seal{}",
                        "to a selected card in hand",
                        "when sold"
                    }
                },
            }
        },
        Spectral = {
            c_joy_purr_happy = {
                name = "Purrely Happy Memory",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_effect}\"Purrely\"{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Adds a {C:attention}Happy Seal{} to",
                        "up to {C:attention}5{} selected {C:hearts}Hearts{} in hand"
                    },
                    {
                        "A random {C:joy_xyz}Xyz{} {C:attention}Joker{} you own",
                        "gains the following ability:",
                        "{s:0.9}Retrigger each scored card in played hand",
                        "{s:0.9}for each {s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}material{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Detaches 1 material{s:0.9} at end of round",
                    }
                },
                joy_transfer_ability = {
                    "Retrigger each scored card in played hand once",
                    "for each {C:joy_xyz}Xyz{} {C:attention}material{}",
                    " ",
                    "{C:attention}Detaches 1 material{} at end of round",
                }
            },
            c_joy_purr_sleepy = {
                name = "Purrely Sleepy Memory",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_effect}\"Purrelyly\"{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Adds a {C:attention}Sleepy Seal{} to up to",
                        "up to {C:attention}5{} selected {C:clubs}Clubs{} in hand"
                    },
                    {
                        "A random {C:joy_xyz}Xyz{} {C:attention}Joker{} you own",
                        "gains the following ability:",
                        "{s:0.9}When {s:0.9,C:attention}Blind{} is selected, gives {s:0.9,C:attention}+#1#{} hand size",
                        "{s:0.9}this round for each {s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}material{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Detaches 1 material{s:0.9} at end of round",
                    }
                },
                joy_transfer_ability = {
                    "When {C:attention}Blind{} is selected, gives {C:attention}+1{} hand size",
                    "this round for each {C:joy_xyz}Xyz{} {C:attention}material{}",
                    " ",
                    "{C:attention}Detaches 1 material{} at end of round",
                }
            },
            c_joy_purr_pretty = {
                name = "Purrely Pretty Memory",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_effect}\"Purrely\"{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Adds a {C:attention}Pretty Seal{} to up to",
                        "up to {C:attention}5{} selected {C:diamonds}Diamonds{} in hand"
                    },
                    {
                        "A random {C:joy_xyz}Xyz{} {C:attention}Joker{} you own",
                        "gains the following ability:",
                        "{s:0.9}Attach {s:0.9,C:attention}1 {s:0.9,C:joy_xyz}Xyz {s:0.9,C:attention}material{}",
                        "{s:0.9}when a card is {C:attention,s:0.9}tributed{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Detaches 1 material{s:0.9} at end of round",
                    }
                },
                joy_transfer_ability = {
                    "Attach {C:attention}1 {C:joy_xyz}Xyz {C:attention}material{}",
                    "when a card is {C:attention}tributed{}",
                    " ",
                    "{C:attention}Detaches 1 material{} at end of round",
                }
            },
            c_joy_purr_delicious = {
                name = "Purrely Delicious Memory",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_effect}\"Purrely\"{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Adds a {C:attention}Delicious Seal{} to up to",
                        "up to {C:attention}5{} selected {C:spades}Spades{} in hand"
                    },
                    {
                        "A random {C:joy_xyz}Xyz{} {C:attention}Joker{} you own",
                        "gains the following ability:",
                        "{s:0.9}This card gives {s:0.9,C:mult}+#1#{s:0.9} Mult",
                        "{s:0.9}for each {s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}material{}",
                        "{s:0.9} ",
                        "{s:0.9,C:attention}Detaches 1 material{s:0.9} at end of round",
                    }
                },
                joy_transfer_ability = {
                    "This card gives {C:mult}+#1#{} Mult",
                    "for each {C:joy_xyz}Xyz {C:attention}material",
                    " ",
                    "{C:attention}Detaches 1 material{} at end of round",
                }
            },
        },
        Other = {
            joy_purr_memory_seal = {
                name = "Memory Seal",
                text = {
                    "Changes ability when scored depending on the suit:",
                    "{C:hearts}Hearts{}: {C:attention}Happy{}",
                    "{C:clubs}Clubs{}: {C:attention}Sleepy{}",
                    "{C:diamonds}Diamonds{}: {C:attention}Pretty{}",
                    "{C:spades}Spades{}: {C:attention}Delicious{}"
                }
            },
            joy_purr_memory_seal_happy = {
                name = "Happy Seal",
                text = {
                    "{C:green}#1# in #2#{} chance to create",
                    "a {C:joy_effect}\"Purrely\"{} when scored",
                    "{C:inactive}(Must have room)",
                    " ",
                    "{C:mult}+#3#{} Mult when scored",
                    "Increases by {C:mult}+#3#{}",
                    "for each other card",
                    "with a different suit",
                    " ",
                    "Applies to base {C:hearts}Hearts{}"
                }
            },
            joy_purr_memory_seal_sleepy = {
                name = "Sleepy Seal",
                text = {

                    "{C:green}#1# in #2#{} chance to create",
                    "a {C:joy_effect}\"Purrelyly\"{} when scored",
                    "{C:inactive}(Must have room)",
                    " ",
                    "{C:chips}+#4#{} Chips when scored",
                    "Increases by {C:chips}+#4#{}",
                    "for each other card",
                    "with a different suit",
                    " ",
                    "Applies to base {C:clubs}Clubs{}"
                }
            },
            joy_purr_memory_seal_pretty = {
                name = "Pretty Seal",
                text = {
                    "{C:green}#1# in #2#{} chance to create",
                    "a {C:joy_effect}\"Purrely\"{} when scored",
                    "{C:inactive}(Must have room)",
                    " ",
                    "{C:money}+$#5#{} when scored",
                    "Increases by {C:money}$+#5#{}",
                    "for each other card",
                    "with a different suit",
                    " ",
                    "Applies to base {C:diamonds}Diamonds{}"
                }
            },
            joy_purr_memory_seal_delicious = {
                name = "Delicious Seal",
                text = {
                    "{C:green}#1# in #2#{} chance to create",
                    "a {C:joy_effect}\"Purrely\"{} when scored",
                    "{C:inactive}(Must have room)",
                    " ",
                    "{C:green}#6# in #7#{} chance to create",
                    "a {C:planet}\"My Friend Purrely\"{} when scored",
                    "Increases chances",
                    "for each other card",
                    "with a different suit",
                    " ",
                    "Applies to base {C:spades}Spades{}"
                }
            },
            joy_purr_memory_seal_inactive = {
                name = "Memory Seal",
                text = {
                    "Has no ability"
                }
            },
        },
        JoyPokerHand = { -- TODO: delete if not used
            phd_joy_purr_yeap = {
                name = "Purrelyeap!?",
                text = {
                    "4 or more cards with different suits",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_purr_yeap = "Purrelyeap!?"
        },
        poker_hand_descriptions = {
            joy_purr_yeap = {
                "4 or more cards with different suits",
                "{C:inactive}(Must be enabled by an ability)"
            }
        },
        labels = {
            joy_purr_memory_seal = "Memory Seal",
        },
        dictionary = {
            k_joy_archetype_purr = "Purrely",
        }
    }
}
