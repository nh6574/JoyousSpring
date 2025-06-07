return {
    descriptions = {
        Joker = {
            j_joy_adaman_analyzer = {
                name = "{C:joy_effect}Adamancipator Analyzer",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "Scored {C:diamonds}Diamonds{} give {C:chips}+#2#{} Chips this round",
                        "for each {C:diamonds}Diamond{} excavated",
                        "{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips)"
                    },
                    {
                        "Once per ante, create {C:attention}#4#{} {C:joy_normal}Main Deck Rock{}",
                        "after {C:attention}#5#{} hands containing a {C:diamonds}Diamond{} {C:attention}Flush{} are played",
                        "{C:inactive}(Must have room) {C:inactive}(#6# remaining){}"
                    },
                    {
                        "Free if you own a {C:joy_normal}Rock{} {C:attention}Joker{}"
                    },
                }
            },
            j_joy_adaman_researcher = {
                name = "{C:joy_effect}Adamancipator Researcher",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "Scored {C:diamonds}Diamonds{} give {C:money}+$#2#{} this round",
                        "for each {C:diamonds}Diamond{} excavated",
                        "{C:inactive}(Currently {C:money}+$#3#{}{C:inactive})"
                    },
                    {
                        "Once per ante, create {C:attention}#4#{} {C:joy_normal}Main Deck Rock{}",
                        "after {C:attention}#5#{} hands containing a {C:diamonds}Diamond{} {C:attention}Flush{} are played",
                        "{C:inactive}(Must have room) {C:inactive}(#6# remaining){}"
                    },
                    {
                        "Free if you own a {C:joy_normal}Rock{} {C:attention}Joker{}"
                    },
                }
            },
            j_joy_adaman_seeker = {
                name = "{C:joy_effect}Adamancipator Seeker",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "Scored {C:diamonds}Diamonds{} give {C:mult}+#2#{} Mult this round",
                        "for each {C:diamonds}Diamond{} excavated",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)"
                    },
                    {
                        "Once per ante, create {C:attention}#4#{} {C:joy_normal}Main Deck Rock{}",
                        "after {C:attention}#5#{} hands containing a {C:diamonds}Diamond{} {C:attention}Flush{} are played",
                        "{C:inactive}(Must have room) {C:inactive}(#6# remaining){}"
                    },
                    {
                        "Free if you own a {C:joy_normal}Rock{} {C:attention}Joker{}"
                    },
                }
            },
            j_joy_adaman_crysdragite = {
                name = "{C:joy_effect}Adamancipator Crystal - Dragite",
                text = {
                    {
                        "Each {C:diamonds}Diamond{} held in hand gives",
                        "{C:chips}+#1#{} Chips for each {C:joy_normal}Rock{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "A {C:joy_synchro}Synchro{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:chips}+#1#{s:0.9} Chips for each {s:0.9,C:diamonds}Diamond{s:0.9} in deck"
                    }
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Chips for each {C:diamonds}Diamond{} in deck",
                    "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                },
            },
            j_joy_adaman_crysraptite = {
                name = "{C:joy_effect}Adamancipator Crystal - Raptite",
                text = {
                    {
                        "Each {C:diamonds}Diamond{} held in hand gives",
                        "{C:money}+$#1#{} for each {C:joy_normal}Rock{}",
                        "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                    },
                    {
                        "A {C:joy_synchro}Synchro{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:money}+$#1#{s:0.9} at end of round for each {s:0.9,C:diamonds}Diamond{s:0.9} in deck"
                    }
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} at end of round for each {C:diamonds}Diamond{} in deck",
                    "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                },
            },
            j_joy_adaman_crysleonite = {
                name = "{C:joy_effect}Adamancipator Crystal - Leonite",
                text = {
                    {
                        "Each {C:diamonds}Diamond{} held in hand gives",
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Rock{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "A {C:joy_synchro}Synchro{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Mult for each {s:0.9,C:diamonds}Diamond{s:0.9} in deck"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:diamonds}Diamond{} in deck",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                },
            },
            j_joy_adaman_dragite = {
                name = "{C:joy_synchro}Adamancipator Risen - Dragite",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "{X:chips,C:white}X#2#{} extra Chips this round",
                        "for each {C:diamonds}Diamond{} excavated",
                        "and create {C:attention}#3#{} {C:joy_normal}Main Deck Rock{} if {C:attention}#1#{} or more were excavated",
                        "{C:inactive}(Currently {X:chips,C:white}X#4#{}{C:inactive} Chips)",
                    },
                    {
                        "Scored {C:diamonds}Diamonds{} permanently gain",
                        "{C:chips}+#5#{} extra Chips when held in hand"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Rock{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_leonite = {
                name = "{C:joy_synchro}Adamancipator Risen - Leonite",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "{X:mult,C:white}X#2#{} extra Mult this round",
                        "for each {C:diamonds}Diamond{} excavated",
                        "and create {C:attention}#3#{} {C:joy_normal}Main Deck Rock{} if {C:attention}#1#{} or more were excavated",
                        "{C:inactive}(Currently {X:mult,C:white}X#4#{}{C:inactive} Mult)",
                    },
                    {
                        "Scored {C:diamonds}Diamonds{} permanently gain",
                        "{C:mult}+#5#{} extra Mult when held in hand"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Rock{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_raptite = {
                name = "{C:joy_synchro}Adamancipator Risen - Raptite",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "{C:money}+$#2#{} for each {C:diamonds}Diamond{} excavated",
                        "and create {C:attention}#3#{} {C:joy_normal}Main Deck Rock{} if {C:attention}#1#{} or more were excavated",
                    },
                    {
                        "Scored {C:diamonds}Diamonds{} permanently gain",
                        "an extra {C:money}+$#4#{} when held in hand at end of round"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Rock{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_adaman_laputite = {
                name = "{C:joy_spell}Adamancipator Laputite",
                text = {
                    {
                        "Each {C:joy_normal}Rock{} gives {C:mult}+#1#{} Mult",
                    },
                    {
                        "Adds a random enhanced {C:diamonds}Diamond{} to the hand",
                        "when {C:attention}Blind{} is selected"
                    },
                    {
                        "All cards {C:attention}excavated{} when {C:attention}Blind{} is selected",
                        "are checked for {C:joy_normal}\"Adamancipator\"{} abilities"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_adaman = "Adamancipator",
        }
    }
}
