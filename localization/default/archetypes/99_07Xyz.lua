return {
    descriptions = {
        Joker = {
            j_joy_zeus = {
                name = "{C:joy_xyz}Divine Arsenal AA-ZEUS - Sky Thunder",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}: Reduces current {C:attention}Blind{}'s requirement by {C:red}#2#%",
                        "but remove all enhancements in the deck",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:red}Rare{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:joy_xyz}Xyz{} that detached",
                    "a {C:attention}material{} this round",
                    "{s:0.9,C:inactive}(Transfer its materials)"
                }
            },
            j_joy_typhon = {
                name = "{C:joy_xyz}Super Starslayer TY-PHON - Sky Crisis",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}: Turns each scored card this round into a",
                        "{C:attention}Red Seal{} {C:dark_edition}Polychrome{} {C:attention}Glass{} card after scoring",
                        "but reduces {C:money}money{} by {C:red}#2#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:red}Rare{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                    "OR {C:attention}1{} {C:attention}Joker{} if {C:attention}2{} or more",
                    "{C:attention}Jokers{} were summoned this round"
                }
            },
        }
    },
}
