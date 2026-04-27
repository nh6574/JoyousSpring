return {
    descriptions = {
        Joker = {
            j_joy_dracotail_lukias = {
                name = "{C:joy_effect}Dracotail Lukias",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_normal}Main Deck \"Dracotail\"{}",
                        "after {C:attention}#1#{} playing cards are destroyed",
                        "{C:inactive}(Must have room) (#2#/#1#)",
                        "A {C:joy_fusion}Fusion{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                    {
                        "If {C:attention}first hand{} of round",
                        "has exactly {C:attention}3{} cards,",
                        "destroys them and adds",
                        "a {C:attention}Jumbo Standard Pack{} to the shop"
                    }
                },
                joy_transfer_ability = {
                    "Creates {C:attention}1{} {C:joy_normal}Main Deck \"Dracotail\"{}",
                    "after {C:attention}#1#{} playing cards are destroyed",
                    "{C:inactive}(Must have room) (#2#/#1#)",
                }
            },
            j_joy_dracotail_faimena = {
                name = "{C:joy_effect}Dracotail Faimena",
                text = {
                    {
                        "Adds a {C:joy_normal}\"Dracotail\"{} to the {C:joy_spell}Extra Deck{}",
                        "after {C:attention}#1#{} playing cards are destroyed {C:inactive}(#2#/#1#)",
                        "A {C:joy_fusion}Fusion{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                    {
                        "If {C:attention}second hand{} of round",
                        "has exactly {C:attention}3{} cards,",
                        "destroys them and gives {C:attention}2 Standard Tags{}"
                    }
                },
                joy_transfer_ability = {
                    "Adds a {C:joy_normal}\"Dracotail\"{} to the {C:joy_spell}Extra Deck{}",
                    "after {C:attention}#1#{} playing cards are destroyed {C:inactive}(#2#/#1#)",
                }
            },
            j_joy_dracotail_phry = {
                name = "{C:joy_effect}Dracotail Phryxul",
                text = {
                    {
                        "{C:attention}Revives 1{} {C:joy_normal}\"Dracotail\"{}",
                        "{C:inactive}(Except \"Dracotail Phryxul\" or \"Dracotail Arthalion\"){}",
                        "after {C:attention}#1#{} playing cards are destroyed {C:inactive}(#2#/#1#)",
                        "A {C:joy_fusion}Fusion{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                    {
                        "If {C:attention}third hand{} of round",
                        "has exactly {C:attention}3{} cards,",
                        "destroys them and adds {C:attention}5{} random",
                        "unmodified playing cards to the deck",
                        "{C:inactive}(Must have room)"
                    }
                },
                joy_transfer_ability = {
                    "{C:attention}Revives 1{} {C:joy_normal}\"Dracotail\"{}",
                    "{C:inactive}(Except \"Dracotail Phryxul\" or \"Dracotail Arthalion\"){}",
                    "after {C:attention}#1#{} playing cards are destroyed {C:inactive}(#2#/#1#)",
                }
            },
            j_joy_dracotail_mululu = {
                name = "{C:joy_effect}Dracotail Mululu",
                text = {
                    {
                        "After a hand is played, {C:attention}transforms{} into",
                        "a random {C:joy_normal}\"Dracotail\"{} using this card",
                        "and the scored cards in played hand as material",
                        "{C:inactive}(This is treated as a Fusion){}"
                    },
                    {
                        "A {C:joy_fusion}Fusion{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:attention}Transforms{s:0.9} into {s:0.9,C:joy_effect}\"Dracotail Mululu\"{s:0.9} at end of round",
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Transforms{} into {C:joy_effect}\"Dracotail Mululu\"{} at end of round",
                }
            },
            j_joy_dracotail_urgula = {
                name = "{C:joy_effect}Dracotail Urgula",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each playing card",
                        "destroyed this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "A {C:joy_fusion}Fusion{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                    {
                        "Adds {C:attention}#3#{} random {C:attention}Enhanced{}",
                        "playing cards to the deck",
                        "when used as {C:attention}material{}"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each playing card",
                    "destroyed this run",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                }
            },
            j_joy_dracotail_pan = {
                name = "{C:joy_effect}Dracotail Pan",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each playing card",
                        "destroyed this run",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)",
                        "A {C:joy_fusion}Fusion{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                    {
                        "Adds {C:attention}#3#{} random playing cards",
                        "with a {C:attention}Seal{} to the deck",
                        "when used as {C:attention}material{}"
                    }
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Chips for each playing card",
                    "destroyed this run",
                    "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)",
                }
            },
            j_joy_dracotail_shaulas = {
                name = "{C:joy_fusion}Dracotail Shaulas",
                text = {
                    {
                        "When obtained, gives {C:money}+$#1#{}",
                        "for each playing card destroyed this run",
                        "and adds a {C:joy_normal}\"Dracotail\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "A {C:joy_fusion}Fusion{} summoned using this card",
                        "{s:0.9}When summoned, adds a copy of each playing card destroyed",
                        "{s:0.9}this round to the deck as {s:0.9,C:dark_edition}Negative{}",
                        "{s:0.9}but they are removed at end of round",
                    },
                },
                joy_transfer_ability = {
                    "When summoned, adds a copy of each playing card destroyed",
                    "this round to the deck as {C:dark_edition}Negative{}",
                    "but they are removed at end of round"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Spellcaster{} +",
                    "{C:attention}1{} {C:joy_normal}Dragon{} +",
                    "{C:attention}2{} playing cards in hand"
                }
            },
            j_joy_dracotail_gulamel = {
                name = "{C:joy_fusion}Dracotail Gulamel",
                text = {
                    {
                        "When obtained, destroys a card in deck",
                        "for each playing card destroyed this run",
                        "and adds a {C:joy_normal}\"Dracotail\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "A {C:joy_fusion}Fusion{} summoned using this card",
                        "{s:0.9}Gives {s:0.9,C:attention}2 Standard Tags{s:0.9} when summoned",
                    },
                },
                joy_transfer_ability = {
                    "Gives {C:attention}2 Standard Tags{} when summoned",
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Spellcaster{} +",
                    "{C:attention}1{} {C:joy_normal}Dragon{} +",
                    "{C:attention}2{} playing cards in hand"
                }
            },
            j_joy_dracotail_arthalion = {
                name = "{C:joy_fusion}Dracotail Arthalion",
                text = {
                    {
                        "Adds a {C:joy_normal}\"Dracotail\"{} to the {C:joy_spell}Extra Deck{}",
                        "when obtained",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Gains abilities based on the playing cards",
                        "used as {C:attention}material{} for its summon",
                        "until end of round"
                    }
                },
                joy_extra_effects = {
                    m_bonus = {
                        text_description = {
                            "{C:chips}+#1#{} Chips for each"
                        },
                        text = {
                            "{C:chips}+#1#{} Chips"
                        }
                    },
                    m_mult = {
                        text_description = {
                            "{C:mult}+#1#{} Mult for each"
                        },
                        text = {
                            "{C:mult}+#1#{} Mult"
                        }
                    },
                    m_wild = {
                        text_description = {
                            "{C:attention}Revives #1#{}",
                            "{C:joy_normal}Main Deck \"Dracotail\"",
                            "at end of round for each"
                        },
                        text = {
                            "{C:attention}Revives #1#{}",
                            "{C:joy_normal}Main Deck \"Dracotail\"",
                            "at end of round"
                        }
                    },
                    m_glass = {
                        text_description = {
                            "{X:mult,C:white}X#1#{} Mult",
                            "and destroys a random card played for each"
                        },
                        text = {
                            "{X:mult,C:white}X#1#{} Mult",
                            "and destroys {C:attention}#2#{} random card(s) played"
                        }
                    },
                    m_steel = {
                        text_description = {
                            "{X:mult,C:white}X#1#{} Mult",
                            "and retriggers random scoring cards",
                            "held in hand up to {C:attention}#2#{} time for each"
                        },
                        text = {
                            "{X:mult,C:white}X#1#{} Mult",
                            "and retriggers random scoring cards",
                            "held in hand up to {C:attention}#2#{} time(s)"
                        }
                    },
                    m_stone = {
                        text_description = {
                            "{C:chips}+#1#{} Chips for each"
                        },
                        text = {
                            "{C:chips}+#1#{} Chips"
                        }
                    },
                    m_gold = {
                        text_description = {
                            "{C:money}+$#1#{} for each",
                            "when a hand is played"
                        },
                        text = {
                            "{C:money}+$#1#{} when a hand is played"
                        }
                    },
                    m_lucky = {
                        text_description = {
                            "{C:attention}Doubles{} all listed",
                            "{C:green}probabilities{} for each"
                        },
                        text = {
                            "{X:green,C:white}X#1#{} all listed probabilities"
                        }
                    },
                    m_joy_hanafuda = {
                        text_description = {
                            "Creates {C:attention}#1#{}",
                            "{C:joy_normal}Main Deck \"Flower Cardian\"{}",
                            "at end of round for each"
                        },
                        text = {
                            "Creates {C:attention}#1#{}",
                            "{C:joy_normal}Main Deck \"Flower Cardian\"",
                            "at end of round"
                        }
                    },
                    e_foil = {
                        text_description = {
                            "{C:chips}+#1#{} Chips for each"
                        },
                        text = {
                            "{C:chips}+#1#{} Chips"
                        }
                    },
                    e_holo = {
                        text_description = {
                            "{C:mult}+#1#{} Mult for each"
                        },
                        text = {
                            "{C:mult}+#1#{} Mult"
                        }
                    },
                    e_polychrome = {
                        text_description = {
                            "{X:mult,C:white}X#1#{} Mult for each"
                        },
                        text = {
                            "{X:mult,C:white}X#1#{} Mult",
                        }
                    },
                    red_seal = {
                        text_description = {
                            "Retriggers each scored card",
                            "in played hand {C:attention}#1#{} time for each"
                        },
                        text = {
                            "Retriggers each scored card",
                            "in played hand {C:attention}#1#{} times"
                        }
                    },
                    blue_seal = {
                        text_description = {
                            "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet{}",
                            "for the played hand for each"
                        },
                        text = {
                            "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:planet}Planet(s){}",
                            "for the played hand"
                        }
                    },
                    gold_seal = {
                        text_description = {
                            "{C:money}+$#1#{} for each",
                            "when a hand is played"
                        },
                        text = {
                            "{C:money}+$#1#{} when a hand is played"
                        }
                    },
                    purple_seal = {
                        text_description = {
                            "For each, creates {C:attention}#1#{} random {C:dark_edition}Negative{} {C:tarot}Tarot{}",
                            "that applies an {C:attention}Enhancement{}",
                            "or {C:dark_edition}Negative{} {C:spectral}Spectral{} that applies a {C:attention}Seal{}",
                        },
                        text = {
                            "Creates {C:attention}#1#{} random {C:dark_edition}Negative{} {C:tarot}Tarot{}",
                            "that applies an {C:attention}Enhancement{}",
                            "or {C:dark_edition}Negative{} {C:spectral}Spectral{} that applies a {C:attention}Seal{}",
                        }
                    },
                    joy_purr_memory_seal = {
                        text_description = {
                            "{C:attention}Revives #1#{}",
                            "{C:joy_normal}Main Deck \"Purrely\"{} {C:attention}Joker{}",
                            "at end of round for each"
                        },
                        text = {
                            "{C:attention}Revives #1#{}",
                            "{C:joy_normal}Main Deck \"Purrely\"{} {C:attention}Joker{}",
                            "at end of round"
                        }
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1+{} playing cards in hand +",
                    "{C:attention}1+ Jokers{},",
                    "including a {C:joy_normal}\"Dracotail\"{}"
                }
            },
            j_joy_dracotail_arthalion_notsummoned = {
                name = "{C:joy_fusion}Dracotail Arthalion",
                text = {
                    {
                        "Adds a {C:joy_normal}\"Dracotail\"{} to the {C:joy_spell}Extra Deck{}",
                        "when obtained",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Gains abilities based on the playing cards",
                        "used as {C:attention}material{} for its summon",
                        "until end of round",
                        "{C:attention}(Check related cards to see!){}"
                    }
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dracotail = "Dracotail",
            k_joy_arthalion_effects = "Abilities"
        }
    }
}
