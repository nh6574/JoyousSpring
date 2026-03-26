return {
    descriptions = {
        Joker = {
            j_joy_wasp_pin = {
                name = "{C:joy_effect}Battlewasp - Pin the Bullseye",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}\"Battlewasp\"{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Creates {C:attention}1{} {C:joy_effect}\"Battlewasp - Pin the Bullseye\"",
                        "when obtained {C:inactive}(Except by \"Battlewasp - Pin the Bullseye\"){}",
                    },
                    {
                        "Free and can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_wasp_dart = {
                name = "{C:joy_effect}Battlewasp - Dart the Hunter",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_normal}Main Deck Insect{}",
                        "when used as {C:attention}material{}",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                    {
                        "Free and can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_wasp_sting = {
                name = "{C:joy_effect}Battlewasp - Sting the Poison",
                text = {
                    {
                        "You can {C:attention}tribute 1{} {C:joy_normal}Insect{}",
                        "to gain a free reroll in the shop"
                    },
                    {
                        "Adds {C:attention}1{} {C:joy_normal}\"Battlewasp\"{}",
                        "to the {C:joy_spell}Extra Deck{} when obtained",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_wasp_twinbow = {
                name = "{C:joy_effect}Battlewasp - Twinbow the Attacker",
                text = {
                    {
                        "Adds {C:attention}2{} {C:joy_effect}\"Battlewasp - Twinbow the Attacker\"{}",
                        "to the shop when used as {C:attention}material{} for an {C:joy_normal}Insect{}",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_wasp_arbalest = {
                name = "{C:joy_effect}Battlewasp - Arbalest the Rapidfire",
                text = {
                    {
                        "{C:attention}Revives 1{} {C:joy_normal}Insect{}",
                        "when obtained",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    }
                }
            },
            j_joy_wasp_rapier = {
                name = "{C:joy_effect}Battlewasp - Rapier the Onslaught",
                text = {
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own another {C:joy_normal}Insect{}",
                    },
                    {
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:green}#1# in #2#{s:0.9} chance to retrigger each played card",
                        "{s:0.9}Chances increase for each {s:0.9,C:joy_normal}Insect{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#1# in #2#{} chance to retrigger each played card",
                    "Chances increase for each {C:joy_normal}Insect{}"
                }
            },
            j_joy_wasp_azusa = {
                name = "{C:joy_synchro}Battlewasp - Azusa the Ghost Bow",
                text = {
                    {
                        "Lowers {C:attention}Blind{}'s requirement by {C:red}#1#%{}",
                        "for each {C:joy_normal}Insect{} {C:inactive}(Max 50%){}",
                        "when {C:attention}Blind{} is selected",
                        "{C:inactive}(Currently #2#%)"
                    },
                    {
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:attention}Banishes{s:0.9} itself at end of round",
                        "{s:0.9}until {s:0.9,C:attention}Blind{s:0.9} is selected"
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}Banishes{} itself at end of round",
                    "until {C:attention}Blind{} is selected"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:joy_normal}Insect{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                    "Doesn't need room",
                }
            },
            j_joy_wasp_halberd = {
                name = "{C:joy_synchro}Battlewasp - Halberd the Charge",
                text = {
                    {
                        "{C:joy_normal}Insect{} {C:joy_spell}Special{} {C:attention}Jokers{} give {X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Mult for each {s:0.9,C:joy_normal}Insect{}"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:joy_normal}Insect{}",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Insect{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                    "Doesn't need room",
                }
            },
            j_joy_wasp_sachi = {
                name = "{C:joy_synchro}Battlewasp - Sachi the Ceremonial Bow",
                text = {
                    {
                        "{C:money}+$#1#{} for each {C:joy_normal}Insect{}",
                        "when used as {C:attention}material{} for an {C:joy_normal}Insect{}"
                    },
                    {
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:money}+$#2#{s:0.9} for each {s:0.9,C:joy_normal}Insect{s:0.9} in the {s:0.9,C:attention}GY{}",
                        "at end of ante"
                    },
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} for each {C:joy_normal}Insect{} in the {C:attention}GY{}",
                    "at end of ante",
                    "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Insect{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                    "Doesn't need room",
                }
            },
            j_joy_wasp_hama = {
                name = "{C:joy_synchro}Battlewasp - Hama the Conquering Bow",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                        "{V:1}+#2#{V:2} Mult if summoned using a",
                        "{V:3}Synchro{V:2} as {V:4}material{}"
                    },
                    {
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#3#{s:0.9} Mult"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#3#{} Mult"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Insect{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:joy_synchro}Synchro{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                    "Doesn't need room",
                }
            },
            j_joy_wasp_ballista = {
                name = "{C:joy_synchro}Battlewasp - Ballista the Armageddon",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Insect{}",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains this ability",
                    },
                    {
                        "{C:attention}Banishes{} all {C:joy_normal}\"Battlewasp\"{}",
                        "at end of round until {C:attention}Blind{} is selected"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:joy_normal}Insect{}",
                    "{C:attention}banished{} this run",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Insect{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}2{} non-{C:joy_synchro}Tuners{}",
                    "including a {C:joy_synchro}Synchro{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                    "Doesn't need room",
                }
            },
            j_joy_wasp_partisan = {
                name = "{C:joy_synchro}Battlewasp - Grand Partisan the Revolution",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_normal}Insect{}",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                        "An {C:joy_normal}Insect{} summoned using this card",
                        "as {C:attention}material{} gains this ability",
                    },
                    {
                        "Adds {C:attention}1{} of each {C:joy_normal}\"Battlewasp\"{} {C:joy_synchro}Synchro{}",
                        "to the {C:joy_spell}Extra Deck{} when used as {C:attention}material{}",
                        "{C:inactive}(Except \"Battlewasp - Grand Partisan the Revolution\"){}",
                        "{C:inactive}(Doesn't need room)"
                    },
                },
                joy_transfer_ability = {
                    "Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_normal}Insect{}",
                    "{C:attention}banished{} this run",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Insect{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}3+{} non-{C:joy_synchro}Tuners{}",
                    "including a {C:joy_synchro}Synchro{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                    "Doesn't need room",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_wasp = "Battlewasp",
        }
    }
}
