return {
    descriptions = {
        Joker = {
            j_joy_firewall_saber = {
                name = "{C:joy_synchro}Firewall Saber Dragon",
                text = {
                    {
                        "{C:attention}Revives #1#{} {C:joy_spell}Extra Deck{} {C:joy_normal}Cyberse{} as {C:dark_edition}Negative{} when summoned",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:dark_edition}Negative{} {C:spectral}Spectral{} when used as {C:attention}material{} for a {C:joy_link}Link",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Cyberse{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_bishbaalkin = {
                name = "{C:joy_synchro}Phantasmal Lord Ultimitl Bishbaalkin",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each non-debuffed {C:attention}Joker{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Destroys all other non-{C:joy_token}Token{} non-debuffed {C:attention}Jokers{}",
                        "at end of round as possible and creates that many",
                        "{C:dark_edition}Negative{} {C:joy_token}\"Utchatzimime Tokens\"{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_token_utchatzimime = {
                name = "{C:joy_token}Utchatzimime Token",
                text = {
                    {
                        "This card can be used as any {C:joy_token}Token{}",
                    },
                }
            },
            j_joy_fishlamp = {
                name = "{C:joy_synchro}Fish Lamp",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_normal}Fish{} {C:joy_synchro}Synchro{} to the {C:joy_spell}Extra Deck{}",
                        "when used as {C:attention}material{} and creates up to {C:attention}#2#{}",
                        "{C:joy_token}\"Lamp Tokens\"{} that can be treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                        "{C:inactive}(Must have room)",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_token_lamp = {
                name = "{C:joy_token}Lamp Token",
                text = {
                    {
                        "This card can be used as any {C:joy_token}Token{}",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                }
            },
            j_joy_afd = {
                name = "{C:joy_synchro}Ancient Fairy Dragon",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_synchro}Tuner{} when summoned",
                        "{C:inactive}(Must have room)",
                    },
                    {
                        "Destroys {C:attention}#2#{} random {C:joy_spell}Field Spell{} when {C:attention}Blind{} is selected",
                        "to gain {C:money}+$#3#{} then creates {C:attention}#2#{} {C:joy_spell}Field Spell",
                        "{C:inactive}(Must have room)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
        }
    },
}
