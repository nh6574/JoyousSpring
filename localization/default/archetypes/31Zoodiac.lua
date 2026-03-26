return {
    descriptions = {
        Joker = {
            j_joy_zoo_horse = {
                name = "{C:joy_effect}Zoodiac Thoroughblade",
                text = {
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} {C:joy_xyz}Xyz{} to the shop",
                        "when obtained"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Adds {s:0.9,C:attention}1{} {s:0.9,C:joy_normal}\"Zoodiac\"{s:0.9} to the shop",
                        "{s:0.9}at end of round"
                    },
                },
                joy_transfer_ability = {
                    "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} to the shop",
                    "at end of round"
                },
            },
            j_joy_zoo_bunny = {
                name = "{C:joy_effect}Zoodiac Bunnyblast",
                text = {
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} {C:joy_xyz}Xyz{} to the shop",
                        "when obtained"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Creates {s:0.9,C:attention}1{} {s:0.9,C:dark_edition}Negative{} {s:0.9,C:tarot}Tarot{s:0.9} and",
                        "{s:0.9,C:attention}1{} {s:0.9,C:dark_edition}Negative{} {s:0.9,C:planet}Planet{}",
                        "{s:0.9}at end of round"
                    },
                },
                joy_transfer_ability = {
                    "Creates {C:attention}1{} {C:dark_edition}Negative{} {C:tarot}Tarot{} and",
                    "{C:attention}1{} {C:dark_edition}Negative{} {C:planet}Planet{}",
                    "at end of round"
                },
            },
            j_joy_zoo_snake = {
                name = "{C:joy_effect}Zoodiac Whiptail",
                text = {
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} {C:joy_xyz}Xyz{} to the shop",
                        "when obtained"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:attention}Banishes{s:0.9} itself at end of round",
                        "{s:0.9}until {s:0.9,C:attention}Blind{s:0.9} is selected"
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Banishes{} itself at end of round",
                    "until {C:attention}Blind{} is selected"
                },
            },
            j_joy_zoo_rooster = {
                name = "{C:joy_effect}Zoodiac Kataroost",
                text = {
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} {C:joy_xyz}Xyz{} to the shop",
                        "when obtained"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:money}+$#1#{s:0.9} when a {s:0.9,C:attention}material{}",
                        "{s:0.9}is detached from an {s:0.9,C:joy_xyz}Xyz{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} when a {C:attention}material{}",
                    "is detached from an {C:joy_xyz}Xyz{}"
                },
            },
            j_joy_zoo_ram = {
                name = "{C:joy_effect}Zoodiac Ramram",
                text = {
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} {C:joy_xyz}Xyz{} to the shop",
                        "when obtained"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:attention}Revives 1{} {s:0.9,C:joy_normal}\"Zoodiac\"",
                        "{s:0.9}at end of round"
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Revives 1{} {C:joy_normal}\"Zoodiac\"{}",
                    "at end of round"
                },
            },
            j_joy_zoo_rat = {
                name = "{C:joy_effect}Zoodiac Ratpier",
                text = {
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} {C:joy_xyz}Xyz{} to the shop",
                        "when obtained"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Once per round, creates {s:0.9,C:attention}1{} {s:0.9,C:joy_effect}\"Zoodiac Ratpier\"",
                        "{s:0.9}when a {s:0.9,C:attention}material{s:0.9} is detached from an {s:0.9,C:joy_xyz}Xyz{}"
                    },
                },
                joy_transfer_ability = {
                    "Once per round, creates {C:attention}1{} {C:joy_effect}\"Zoodiac Ratpier\"",
                    "when a {C:attention}material{} is detached from an {C:joy_xyz}Xyz{}"
                },
            },
            j_joy_zoo_bull = {
                name = "{C:joy_xyz}Zoodiac Broadbull",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Once per round, creates {C:attention}1{}",
                        "{C:joy_normal}Main Deck \"Zoodiac\"{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Keeps all {C:joy_normal}\"Zoodiac\"{} {C:attention}transferred abilities{}",
                        "from the {C:attention}materials{} used to summon it"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,X:mult,C:white}X#2#{s:0.9} Mult for each {s:0.9,C:joy_normal}\"Zoodiac\"{}"
                    },
                },
                joy_transfer_ability = {
                    "{X:mult,C:white}X#1#{} Mult for each {C:joy_normal}\"Zoodiac\"{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}"
                }
            },
            j_joy_zoo_dog = {
                name = "{C:joy_xyz}Zoodiac Chakanine",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Once per round, {C:attention}revives 1{}",
                        "{C:joy_normal}\"Zoodiac\"{}",
                    },
                    {
                        "Keeps all {C:joy_normal}\"Zoodiac\"{} {C:attention}transferred abilities{}",
                        "from the {C:attention}materials{} used to summon it"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#2#{s:0.9} Mult for each card",
                        "{s:0.9,C:attention}revived{s:0.9} this run"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each card",
                    "{C:attention}revived{} this run",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}"
                }
            },
            j_joy_zoo_tiger = {
                name = "{C:joy_xyz}Zoodiac Tigermortar",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Attaches as many {C:joy_normal}\"Zoodiac\"{} to itself as possible"
                    },
                    {
                        "Keeps all {C:joy_normal}\"Zoodiac\"{} {C:attention}transferred abilities{}",
                        "from the {C:attention}materials{} used to summon it"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#2#{s:0.9} Mult for each",
                        "{s:0.9,C:joy_xyz}Xyz{} {s:0.9,C:attention}material{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each",
                    "{C:joy_xyz}Xyz{} {C:attention}material{}",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                },
                joy_summon_conditions = {
                    "{C:attention}3{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}"
                }
            },
            j_joy_zoo_monkey = {
                name = "{C:joy_xyz}Zoodiac Hammerkong",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Add {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}",
                        "to the {C:joy_spell}Extra Deck{}"
                    },
                    {
                        "Keeps all {C:joy_normal}\"Zoodiac\"{} {C:attention}transferred abilities{}",
                        "from the {C:attention}materials{} used to summon it"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Can't be debuffed",
                        "{s:0.9}or {s:0.9,C:attention}flipped{s:0.9} face-down"
                    },
                },
                joy_transfer_ability = {
                    "Can't be debuffed",
                    "or {C:attention}flipped{} face-down"
                },
                joy_summon_conditions = {
                    "{C:attention}3+{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}"
                }
            },
            j_joy_zoo_dragon = {
                name = "{C:joy_xyz}Zoodiac Drident",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Destroys {C:attention}1{} random {C:joy_trap}Opponent{} card",
                        "(or 1 other random {C:attention}Joker{} if none),",
                        "and if it does, gives {X:mult,C:white}X#2#{}",
                        "for each {C:joy_xyz}Xyz{} {C:attention}material{} this round",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Keeps all {C:joy_normal}\"Zoodiac\"{} {C:attention}transferred abilities{}",
                        "from the {C:attention}materials{} used to summon it"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Adds {s:0.9,C:attention}1{} {s:0.9,C:joy_normal}\"Zoodiac\"{s:0.9} to the shop",
                        "{s:0.9}when used as {s:0.9,C:attention}material{s:0.9} for a {s:0.9,C:joy_normal}\"Zoodiac\"{}",
                        "{s:0.9}with a different name to those {s:0.9,C:attention}summoned{s:0.9} this ante"
                    },
                },
                joy_transfer_ability = {
                    "Adds {C:attention}1{} {C:joy_normal}\"Zoodiac\"{} to the shop",
                    "when used as {C:attention}material{} for a {C:joy_normal}\"Zoodiac\"{}",
                    "with a different name to those {C:attention}summoned{} this ante"
                },
                joy_summon_conditions = {
                    "{C:attention}4{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}"
                }
            },
            j_joy_zoo_boar = {
                name = "{C:joy_xyz}Zoodiac Boarbow",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}:",
                        "Immediately wins the current {C:attention}Blind{}"
                    },
                    {
                        "Keeps all {C:joy_normal}\"Zoodiac\"{} {C:attention}transferred abilities{}",
                        "from the {C:attention}materials{} used to summon it"
                    },
                    {
                        "An {C:joy_xyz}Xyz{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#2#{s:0.9} Mult for each {s:0.9,C:joy_xyz}Xyz{}",
                        "{s:0.9,C:attention}summoned{s:0.9} this run"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz{}",
                    "{C:attention}summoned{} this run",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:blue}Common{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_normal}\"Zoodiac\"{}"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_zoo = "Zoodiac",
        }
    }
}
