return {
    descriptions = {
        Joker = {
            j_joy_spright_blue = {
                name = "{C:joy_effect}Spright Blue",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}Main Deck{}",
                        "{C:joy_normal}\"Spright\"{} at end of round",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Free if you own an {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_spright_jet = {
                name = "{C:joy_effect}Spright Jet",
                text = {
                    {
                        "Sends {C:attention}#1#{} {C:green}Uncommon{} {C:attention}Jokers{}",
                        "to the {C:attention}GY{} when {C:attention}Blind{} is selected",
                    },
                    {
                        "Free if you own an {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_spright_carrot = {
                name = "{C:joy_effect}Spright Carrot",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} extra Mult for each",
                        "{C:green}Uncommon{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Free if you own an {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_spright_red = {
                name = "{C:joy_effect}Spright Red",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each",
                        "{C:green}Uncommon{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Free if you own an {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_spright_pixies = {
                name = "{C:joy_effect}Spright Pixies",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each",
                        "{C:green}Uncommon{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                    },
                    {
                        "Free if you own an {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                },
            },
            j_joy_spright_elf = {
                name = "{C:joy_link}Spright Elf",
                text = {
                    {
                        "{C:attention}Revives #1#{} {C:green}Uncommon{} {C:attention}Joker{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "{C:green}Uncommon{} {C:attention}Jokers{} in the {C:attention}GY{}",
                        "count for {C:joy_normal}\"Spright\"{} abilities",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:green}Uncommon{} {C:attention}Jokers{}"
                }
            },
            j_joy_spright_sprind = {
                name = "{C:joy_link}Spright Sprind",
                text = {
                    {
                        "If summoned using a {C:joy_normal}\"Spright\"{} as {C:attention}material{},",
                        "other {C:green}Uncommon{} {C:attention}Jokers{} become {C:dark_edition}Negative{}",
                        "and the rest are debuffed.",
                    },
                    {
                        "Adds {C:joy_xyz}\"Gigantic Spright\"{} to the",
                        "{C:joy_spell}Extra Deck{} after {C:attention}#1# materials{} are {C:joy_xyz}detached{}",
                        "{C:inactive}(Must have room){}",
                        "{C:inactive}(#2#/#1#){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:green}Uncommon{} {C:attention}Jokers{},",
                    "including an {C:joy_xyz}Xyz{}"
                }
            },
            j_joy_spright_gigantic = {
                name = "{C:joy_xyz}Gigantic Spright",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}1{}: Creates",
                        "{C:attention}#1#{} {C:green}Uncommon{} {C:attention}Joker{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:green}Uncommon{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}allowed)"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_spright = "Spright",
        }
    }
}
