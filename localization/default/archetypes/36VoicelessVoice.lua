return {
    descriptions = {
        Joker = {
            j_joy_voice_lo = {
                name = "{C:joy_effect}Lo, the Prayers of the Voiceless Voice",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_light}LIGHT{} {C:joy_ritual}Rituals{}",
                        "to the shop and grants a free {C:green}reroll{}",
                        "when {C:attention}tributed{}"
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_ritual}Ritual",
                    },
                    {
                        "A {C:joy_ritual}Ritual{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Creates {s:0.9,C:attention}1{s:0.9} non-{s:0.9,C:joy_ritual}Ritual{}",
                        "{s:0.9,C:joy_normal}\"Voiceless Voice\"{}",
                        "{s:0.9}at end of round",
                        "{s:0.9,C:inactive}(Must have room)"
                    },
                },
                joy_transfer_ability = {
                    "Creates {C:attention}1{} non-{C:joy_ritual}Ritual{}",
                    "{C:joy_normal}\"Voiceless Voice\"{}",
                    "at end of round",
                    "{C:inactive}(Must have room)"
                }
            },
            j_joy_voice_saffira = {
                name = "{C:joy_effect}Saffira, Dragon Queen of the Voiceless Voice",
                text = {
                    {
                        "Creates {C:attention}1{} {C:joy_light}LIGHT{} {C:joy_ritual}Ritual{}",
                        "in the {C:joy_link}Side Deck{} when {C:attention}tributed{}"
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_ritual}Ritual",
                    },
                    {
                        "A {C:joy_ritual}Ritual{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:money}+$#1#{s:0.9} at end of round",
                        "{s:0.9}for each {s:0.9,C:joy_light}LIGHT{} {s:0.9,C:attention}Joker{}",
                        "{s:0.9,C:attention}tributed{s:0.9} this round",
                    },
                },
                joy_transfer_ability = {
                    "{C:money}+$#1#{} at end of round",
                    "for each {C:joy_light}LIGHT{} {C:attention}Joker{}",
                    "{C:attention}tributed{} this round",
                    "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                }
            },
            j_joy_voice_sauravis = {
                name = "{C:joy_effect}Sauravis, Dragon Sage of the Voiceless Voice",
                text = {
                    {
                        "{C:attention}Revives 1{} {C:joy_light}LIGHT{} {C:joy_ritual}Ritual{}",
                        "as {C:dark_edition}Negative{} when {C:attention}tributed{}"
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_ritual}Ritual",
                    },
                    {
                        "A {C:joy_ritual}Ritual{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:chips}+#1#{s:0.9} Chips",
                        "{s:0.9}for each {s:0.9,C:joy_light}LIGHT{} {s:0.9,C:attention}Joker{}",
                        "{s:0.9,C:attention}tributed{s:0.9} this round",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Chips",
                    "for each {C:joy_light}LIGHT{} {C:attention}Joker{}",
                    "{C:attention}tributed{} this round",
                    "{C:inactive}(Currently {C:chips}+$#2#{}{C:inactive} Chips)"
                }
            },
            j_joy_voice_divine = {
                name = "{C:joy_ritual}Saffira, Divine Dragon of the Voiceless Voice",
                text = {
                    {
                        "{C:attention}+#1#{} hand size for each",
                        "{C:joy_effect}\"Lo, the Prayers of the Voiceless Voice\"{}",
                        "in the {C:attention}GY{} the round this card is summoned",
                        "{C:inactive}(Currently {C:attention}+#2#{}{C:inactive})"
                    },
                    {
                        "Opens {C:attention}2 Ritual Support Secret Packs{}",
                        "at end of round"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_light}LIGHT{} {C:attention}Jokers{}"
                }
            },
            j_joy_voice_skull = {
                name = "{C:joy_ritual}Skull Guardian, Protector of the Voiceless Voice",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                        "for each {C:joy_light}LIGHT{} {C:attention}Joker{}",
                        "{C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:mult}+$#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Gains {X:chips,C:white}X#3#{} Chips for each",
                        "{C:joy_effect}\"Lo, the Prayers of the Voiceless Voice\"{}",
                        "in the {C:attention}GY{}",
                        "{C:inactive}(Currently {X:chips,C:white}X#4#{}{C:inactive} Chips)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_light}LIGHT{} {C:attention}Jokers{}"
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_voice = "Voiceless Voice",
        }
    }
}
