return {
    descriptions = {
        Joker = {
            j_joy_ltwin_lilla = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Lil-la",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:joy_effect}\"Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Ki-sikil\"{}",
                        "when obtained, if not owned",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_ltwin_kisikil = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Ki-sikil",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:joy_effect}\"Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Lil-la\"{}",
                        "when obtained, if not owned",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_ltwin_lilla_treat = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Lil-la Treat",
                text = {
                    {
                        "{C:red}+#1#{} discard each round",
                    },
                    {
                        "Free if you own a {C:joy_normal}\"Ki-sikil\"{}",
                    },
                },
            },
            j_joy_ltwin_lilla_sweet = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Lil-la Sweet",
                text = {
                    {
                        "{C:blue}+#1#{} hand each round",
                    },
                    {
                        "Free if you own a {C:joy_normal}\"Ki-sikil\"{}",
                    },
                },
            },
            j_joy_ltwin_kisikil_frost = {
                name = "{C:joy_effect}Live{C:joy_effect,f:joy_font}☆{}{C:joy_effect}Twin Ki-sikil Frost",
                text = {
                    {
                        "{C:attention}+#1#{} hand size",
                    },
                    {
                        "Free if you own a {C:joy_normal}\"Lil-la\"{}",
                    },
                },
            },
            j_joy_etwin_kisikil_deal = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ki-sikil Deal",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                        "{C:attention}+#2#{} hand size",
                    },
                    {
                        "Sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Lil-la\"{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Adds {C:attention}#4#{} {C:joy_normal}\"Evil{C:joy_normal,f:joy_font}★{}{C:joy_normal}Twin\"{} to the {C:joy_spell}Extra Deck{}",
                        "when used as {C:attention}material{} for a {C:joy_link}Link{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}\"Ki-sikil\"{}"
                }
            },
            j_joy_etwin_kisikil = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ki-sikil",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Permanently gain {C:attention}+#2#{} hand size if you",
                        "own a {C:joy_normal}\"Lil-la\"{} when summoned",
                    },
                    {
                        "{C:attention}Revives #3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Lil-la\"{} (or {C:attention}#3#{}",
                        "{C:joy_normal}\"Lil-la\"{} if none) when {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "including a {C:joy_normal}\"Ki-sikil\"{}"
                }
            },
            j_joy_etwin_lilla = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Lil-la",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",
                    },
                    {
                        "{C:money}+$#2#{} if you own a {C:joy_normal}\"Ki-sikil\"{} when summoned",
                    },
                    {
                        "{C:attention}Revives #3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ki-sikil\"{} (or {C:attention}#3#{}",
                        "{C:joy_normal}\"Ki-sikil\"{} if none) when {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "including a {C:joy_normal}\"Lil-la\"{}"
                }
            },
            j_joy_etwin_kisikil_lilla = {
                name = "{C:joy_effect}Evil{C:joy_effect,f:joy_font}★{}{C:joy_effect}Twins Ki-sikil & Lil-la",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_normal}\"Lil-la\"{} in the {C:attention}GY{}",
                        "{C:mult}+#2#{} Mult for each {C:joy_normal}\"Ki-sikil\"{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently{} {C:chips}+#4#{} {C:inactive}Chips{} {C:mult}+#5#{} {C:inactive}Mult){}",
                        "{C:red}-#3#{} discards for each {C:joy_link}Link{} when {C:attention}Blind{} is selected",
                    },
                    {
                        "Cannot be {C:attention}revived{}",
                    },
                },
            },
            j_joy_etwin_sunny = {
                name = "{C:joy_link}Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin's Trouble Sunny",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",
                        "{C:mult}+#2#{} Mult",
                    },
                    {
                        "{C:attention}Returns{} to the {C:joy_spell}Extra Deck{} and {C:attention}revives{}",
                        "{C:attention}#3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Ki-sikil\"{} and {C:attention}#3#{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin Lil-la\"{}",
                        "at end of round",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Twin\"{}"
                }
            },
            j_joy_ltwin_channel = {
                name = "{C:joy_spell}Live{C:joy_spell,f:joy_font}☆{}{C:joy_spell}Twin Channel",
                text = {
                    {
                        "During a {C:attention}Blind{}, you can {C:attention}tribute #1#{}",
                        "{C:joy_normal}\"Ki-sikil\"{} or {C:joy_normal}\"Lil-la\"{} {C:joy_link}Link{} to",
                        "{C:attention}double{} current chips scored",
                    },
                    {
                        "{C:attention}Revives #2#{} {C:joy_normal}\"Ki-sikil\"{} or {C:joy_normal}\"Lil-la\"{}",
                        "at the end of the shop",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ltwin = "Live☆Twin",
        }
    }
}
