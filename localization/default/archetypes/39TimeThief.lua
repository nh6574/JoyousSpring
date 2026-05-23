local perpetua = {
    enhancement = {
        text_description = {
            "{C:chips}+#1#{} Chips for each"
        },
        text = {
            "{C:chips}+#1#{} Chips"
        }
    },
    edition = {
        text_description = {
            "{C:green}#1# in #2#{} chance to create",
            "a {C:joy_normal}Main Deck Machine{} at end of round,",
            "increases for each"
        },
        text = {
            "{C:green}#1# in #2#{} chance to create",
            "a {C:joy_normal}Main Deck Machine{} at end of round",
        }
    },
    seal = {
        text_description = {
            "{C:green}#1# in #2#{} chance to {C:attention}revive{}",
            "a {C:joy_normal}Machine{} at end of round,",
            "increases for each {C:inactive}(Doesn't need room){}"
        },
        text = {
            "{C:green}#1# in #2#{} chance to {C:attention}revive{}",
            "a {C:joy_normal}Machine{} at end of round,",
            "{C:inactive}(Doesn't need room){}"
        }
    }
}

local redoer = {
    enhancement = {
        text_description = {
            "{C:mult}+#1#{} Mult for each"
        },
        text = {
            "{C:mult}+#1#{} Mult"
        }
    },
    edition = {
        text_description = {
            "{C:attention}+#1#{} hand size this round,",
            "increases by {C:attention}1{} for each {C:attention}5{}"
        },
        text = {
            "{C:attention}+#1#{} hand size this round",
        }
    },
    seal = {
        text_description = {
            "{C:green}#1# in #2#{} chance to {C:attention}banish{}",
            "all scored {C:attention}modified{} cards in played hand,",
            "until {C:attention}Blind{} is selected, increases for each"
        },
        text = {
            "{C:green}#1# in #2#{} chance to {C:attention}banish{}",
            "all scored {C:attention}modified{} cards in played hand,",
            "until {C:attention}Blind{} is selected"
        }
    }
}

local double = {
    enhancement = {
        text_description = {
            "Extra {X:chips,C:white}X#1#{} Chips for each"
        },
        text = {
            "Extra {X:chips,C:white}X#1#{} Chips"
        }
    },
    edition = {
        text_description = {
            "{C:green}#1# in #2#{} chance to create",
            "to turn a card in deck {C:dark_edition}Negative{}",
            "when {C:attention}Boss Blind{} is defeated,",
            "increases for each"
        },
        text = {
            "{C:green}#1# in #2#{} chance to create",
            "to turn a card in deck {C:dark_edition}Negative{}",
            "when {C:attention}Boss Blind{} is defeated",
        }
    },
    seal = {
        text_description = {
            "{C:money}+$#1#{} when hand is played",
            "for each"
        },
        text = {
            "{C:money}+$#1#{} when hand is played"
        }
    }
}

return {
    descriptions = {
        Joker = {
            j_joy_thief_adjuster = {
                name = "{C:joy_effect}Time Thief Adjuster",
                text = {
                    {
                        "Once per round, {C:attention}revives{} a {C:joy_normal}Main Deck \"Time Thief\"{}",
                        "when a {C:attention}material{} is detached",
                    },
                    {
                        "Attaches a copy of the {C:attention}leftmost{} card in scored hand",
                        "to the leftmost {C:joy_xyz}Xyz{} you own"
                    },
                    {
                        "Free if you own a {C:joy_normal}Psychic{} or {C:joy_normal}Machine{}",
                    }
                }
            },
            j_joy_thief_winder = {
                name = "{C:joy_effect}Time Thief Winder",
                text = {
                    {
                        "Once per round, creates a {C:joy_normal}Main Deck \"Time Thief\"{}",
                        "when a {C:attention}material{} is detached",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Attaches a copy of the {C:attention}rightmost{} card in scored hand",
                        "to the rightmost {C:joy_xyz}Xyz{} you own"
                    },
                    {
                        "Free if you own an {C:joy_xyz}Xyz{}",
                    }
                }
            },
            j_joy_thief_regulator = {
                name = "{C:joy_effect}Time Thief Regulator",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{} {C:joy_normal}Machine{} to",
                        "{C:attention}revive 2{} {C:joy_normal}Psychic{}",
                        "{C:inactive}(Doesn't need room){}"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}3{}:",
                        "{C:attention}Enhances{} a random unenhanced card excavated"
                    },
                    {
                        "At end of round,",
                        "{C:attention}excavate{} and check the top {C:attention}3{}:",
                        "Attach a random {C:attention}enhanced{} card excavated",
                        "to the leftmost {C:joy_normal}\"Time Thief\"{} {C:joy_xyz}Xyz{} you own"
                    }
                }
            },
            j_joy_thief_bezel = {
                name = "{C:joy_effect}Time Thief Bezel Ship",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{} {C:joy_normal}Machine{} to",
                        "attach up to {C:attention}#1#{} selected cards in hand",
                        "to the rightmost {C:joy_xyz}Xyz{} you own"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}3{}:",
                        "Applies an {C:dark_edition}Edition{} to a random card excavated without an {C:dark_edition}Edition{}"
                    },
                    {
                        "At end of round,",
                        "{C:attention}excavate{} and check the top {C:attention}3{}:",
                        "Attach a random card with an {C:dark_edition}Edition{} excavated",
                        "to the rightmost {C:joy_normal}\"Time Thief\"{} {C:joy_xyz}Xyz{} you own"
                    }
                }
            },
            j_joy_thief_whal = {
                name = "{C:joy_effect}Time Thief Temporwhal",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{} {C:joy_normal}Machine{} to",
                        "banish all other {C:joy_normal}Machine{} until {C:attention}Blind{} is selected",
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}3{}:",
                        "{C:attention}Enhances{} a random unenhanced card excavated"
                    },
                    {
                        "At end of round,",
                        "{C:attention}excavate{} and check the top {C:attention}3{}:",
                        "Attach a random {C:attention}enhanced{} card excavated",
                        "to the rightmost {C:joy_normal}\"Time Thief\"{} {C:joy_xyz}Xyz{} you own"
                    }
                }
            },
            j_joy_thief_corder = {
                name = "{C:joy_effect}Time Thief Chronocorder",
                text = {
                    {
                        "You can {C:attention}tribute all{} {C:joy_normal}Machines{} to",
                        "reduce the {C:attention}Blind{}'s requirement by {C:red}50%{} but creates {C:attention}1{}",
                        "{C:joy_mod}Blind{} card in the {C:joy_trap}Opponent{}'s area"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}3{}:",
                        "Applies a {C:attention}Seal{} to a random card excavated without an {C:attention}Seal{}"
                    },
                    {
                        "At end of round,",
                        "{C:attention}excavate{} and check the top {C:attention}3{}:",
                        "Attach a random card with a {C:attention}Seal{} excavated",
                        "to the leftmost {C:joy_normal}\"Time Thief\"{} {C:joy_xyz}Xyz{} you own"
                    }
                }
            },
            j_joy_thief_perpetua_notowned = {
                name = "{C:joy_xyz}Time Thief Perpetua",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Once per round, {C:attention}revives 1{} {C:joy_normal}\"Time Thief\"{}",
                    },
                    {
                        "Attaches a copy of the {C:attention}leftmost{} card",
                        "in scored hand to this card"
                    },
                    {
                        "Gains abilities based on the {C:attention}Playing Cards{}",
                        "that have been attached",
                        "{C:attention}(Check related cards to see!){}"
                    }
                },
            },
            j_joy_thief_perpetua = {
                name = "{C:joy_xyz}Time Thief Perpetua",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Once per round, {C:attention}revives 1{} {C:joy_normal}\"Time Thief\"{}",
                    },
                    {
                        "Attaches a copy of the {C:attention}leftmost{} card",
                        "in scored hand to this card"
                    },
                    {
                        "Gains abilities based on the {C:attention}Playing Cards{}",
                        "that have been attached"
                    }
                },
                joy_extra_effects = { -- im too lazy to change how this works
                    m_bonus = perpetua.enhancement,
                    m_mult = perpetua.enhancement,
                    m_wild = perpetua.enhancement,
                    m_glass = perpetua.enhancement,
                    m_steel = perpetua.enhancement,
                    m_stone = perpetua.enhancement,
                    m_gold = perpetua.enhancement,
                    m_lucky = perpetua.enhancement,
                    m_joy_hanafuda = perpetua.enhancement,
                    e_foil = perpetua.edition,
                    e_holo = perpetua.edition,
                    e_polychrome = perpetua.edition,
                    red_seal = perpetua.seal,
                    blue_seal = perpetua.seal,
                    gold_seal = perpetua.seal,
                    purple_seal = perpetua.seal,
                    joy_purr_memory_seal = perpetua.seal,
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
            j_joy_thief_redoer_notowned = {
                name = "{C:joy_xyz}Time Thief Redoer",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "{C:attention}Banishes{} a random {C:joy_normal}Psychic{} or {C:joy_normal}Machine{}",
                        "until {C:attention}Blind{} is selected"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}1{}:",
                        "Attaches it to this card, then applies the following depending on the suit:",
                        "{C:hearts}Hearts{}: Gain a free shop {C:green}reroll{}",
                        "{C:diamonds}Diamonds{}: {C:money}+$#2#{}",
                        "{C:clubs}Clubs{}: Gets {C:attention}#3#{} {C:attention}Standard Tags{}",
                        "{C:spades}Spades{}: Creates a {C:dark_edition}Negative{} {C:attention}Enhancement{} {C:tarot}Tarot{}",
                    },
                    {
                        "Gains abilities based on the {C:attention}Playing Cards{} that have been attached",
                        "{C:attention}(Check related cards to see!){}"
                    }
                },
            },
            j_joy_thief_redoer = {
                name = "{C:joy_xyz}Time Thief Redoer",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "{C:attention}Banishes{} a random {C:joy_normal}Psychic{} or {C:joy_normal}Machine{}",
                        "until {C:attention}Blind{} is selected"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}1{}:",
                        "Attaches it to this card, then applies the following depending on the suit:",
                        "{C:hearts}Hearts{}: Gain a free shop {C:green}reroll{}",
                        "{C:diamonds}Diamonds{}: {C:money}+$#2#{}",
                        "{C:clubs}Clubs{}: Gets {C:attention}#3#{} {C:attention}Standard Tags{}",
                        "{C:spades}Spades{}: Creates a {C:dark_edition}Negative{} {C:attention}Enhancement{} {C:tarot}Tarot{}",
                    },
                    {
                        "Gains abilities based on the {C:attention}Playing Cards{}",
                        "that have been attached"
                    }
                },
                joy_extra_effects = { -- im too lazy to change how this works
                    m_bonus = redoer.enhancement,
                    m_mult = redoer.enhancement,
                    m_wild = redoer.enhancement,
                    m_glass = redoer.enhancement,
                    m_steel = redoer.enhancement,
                    m_stone = redoer.enhancement,
                    m_gold = redoer.enhancement,
                    m_lucky = redoer.enhancement,
                    m_joy_hanafuda = redoer.enhancement,
                    e_foil = redoer.edition,
                    e_holo = redoer.edition,
                    e_polychrome = redoer.edition,
                    red_seal = redoer.seal,
                    blue_seal = redoer.seal,
                    gold_seal = redoer.seal,
                    purple_seal = redoer.seal,
                    joy_purr_memory_seal = redoer.seal,
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
            j_joy_thief_double_notowned = {
                name = "{C:joy_xyz}Time Thief Double Barrel",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Gains {X:mult,C:white}X#2#{} this round",
                        "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}1{}:",
                        "Attaches it to this card, then gain {C:money}+$#4#{} based on its rank",
                    },
                    {
                        "Gains abilities based on the {C:attention}Playing Cards{} that have been attached",
                        "{C:attention}(Check related cards to see!){}"
                    }
                },
            },
            j_joy_thief_double = {
                name = "{C:joy_xyz}Time Thief Double Barrel",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Gains {X:mult,C:white}X#2#{} this round",
                        "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}1{}:",
                        "Attaches it to this card, then gain {C:money}+$#4#{} based on its rank",
                    },
                    {
                        "Gains abilities based on the {C:attention}Playing Cards{}",
                        "that have been attached"
                    }
                },
                joy_extra_effects = { -- im too lazy to change how this works
                    m_bonus = double.enhancement,
                    m_mult = double.enhancement,
                    m_wild = double.enhancement,
                    m_glass = double.enhancement,
                    m_steel = double.enhancement,
                    m_stone = double.enhancement,
                    m_gold = double.enhancement,
                    m_lucky = double.enhancement,
                    m_joy_hanafuda = double.enhancement,
                    e_foil = double.edition,
                    e_holo = double.edition,
                    e_polychrome = double.edition,
                    red_seal = double.seal,
                    blue_seal = double.seal,
                    gold_seal = double.seal,
                    purple_seal = double.seal,
                    joy_purr_memory_seal = double.seal,
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_thief = "Time Thief",
        }
    }
}
