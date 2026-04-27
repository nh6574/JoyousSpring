return {
    descriptions = {
        Joker = {
            j_joy_wforest_astellar = {
                name = "{C:joy_effect}Astellar of the White Forest",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute{}",
                        "one of the following cards to get these abilities:",
                        " ",
                        "{C:joy_trap}Trap{}: {C:attention}Flips{} all {C:attention}Jokers{} face-down",
                        "except {C:joy_normal}\"White Forest\"{} {C:attention}Jokers{}",
                        "{C:tarot}Tarot{}: {C:mult}+#1#{} Mult this round for each {C:joy_normal}Spellcaster{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "{C:planet}Planet{}: Creates the last used {C:planet}Planet{}",
                        "{C:inactive}(Currently {C:planet}#3#{C:inactive})",
                        "{C:spectral}Spectral{}: Creates {C:attention}1{} {C:joy_normal}Main Deck \"White Forest\"{}",
                        "{C:joy_spell}Field Spell{}: Creates {C:attention}2{} {C:joy_normal}Main Deck \"White Forest\"{}",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{} this round"
                    }
                }
            },
            j_joy_wforest_elzette = {
                name = "{C:joy_effect}Elzette of the White Forest",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute{}",
                        "one of the following cards to get these abilities:",
                        " ",
                        "{C:joy_trap}Trap{}: {C:attention}Flips{} all {C:attention}Jokers{} face-up",
                        "{C:tarot}Tarot{}: {C:mult}+#1#{} Mult this round",
                        "for each consumable {C:attention}tributed{} this round",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "{C:planet}Planet{}: Creates the last used {C:tarot}Tarot{}",
                        "{C:inactive}(Currently {C:tarot}#3#{C:inactive})",
                        "{C:spectral}Spectral{}: Adds {C:attention}2{} {C:joy_normal}\"White Forest\"{} to the shop",
                        "{C:joy_spell}Field Spell{}: Adds {C:attention}1{} {C:joy_normal}\"White Forest\"{} to the {C:joy_spell}Extra Deck{}",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{} this round"
                    }
                }
            },
            j_joy_wforest_silvy = {
                name = "{C:joy_effect}Silvy of the White Forest",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute{}",
                        "one of the following cards to get these abilities:",
                        " ",
                        "{C:joy_trap}Trap{}: {C:mult}+#1#{} Mult this round",
                        "for each {C:joy_trap}Trap{} {C:attention}flipped{} this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "{C:tarot}Tarot{}: {C:joy_normal}Spellcasters{} each give {X:mult,C:white}X#3#{} Mult this round",
                        "{C:planet}Planet{}: Creates the last {C:attention}tributed{} consumable",
                        "{C:inactive}(Currently {C:attention}#4#{C:inactive})",
                        "{C:spectral}Spectral{}: {C:attention}Revives 1{} {C:joy_normal}\"White Forest\"{}",
                        "{C:joy_spell}Field Spell{}: Creates {C:attention}1{} {C:dark_edition}Negative{} {C:joy_effect}\"Silvy of the White Forest\"",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{} this round"
                    }
                }
            },
            j_joy_wforest_rucia = {
                name = "{C:joy_effect}Rucia of the White Forest",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute{}",
                        "one of the following cards to get these abilities:",
                        " ",
                        "{C:joy_trap}Trap{}: {C:mult}+#1#{} Mult this round",
                        "for each {C:joy_effect}Flip{} {C:attention}Joker flipped{} this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "{C:tarot}Tarot{}: {C:mult}+#3#{} Mult this round",
                        "for each {C:joy_normal}Illusion{} {C:attention}banished{} this round",
                        "{C:inactive}(Currently {C:mult}+#4#{}{C:inactive} Mult)",
                        "{C:planet}Planet{}: Adds {C:attention}1{} {C:spectral}Spectral Pack{} to the next shop",
                        "{C:spectral}Spectral{}: Adds {C:attention}1{} {C:joy_normal}\"White Forest\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:joy_spell}Field Spell{}: Creates {C:attention}1{} {C:dark_edition}Negative{} {C:joy_effect}\"Rucia of the White Forest\"",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{} this round"
                    }
                }
            },
            j_joy_wforest_poplar = {
                name = "{C:joy_synchro}Poplar of the White Forest",
                text = {
                    {
                        "Creates {C:attention}2{} {C:joy_normal}Main Deck \"White Forest\"{}",
                        "in the {C:joy_link}Side Deck{} when used as {C:attention}material{}"
                    },
                    {
                        "A {C:joy_synchro}Synchro{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Creates all cards tributed by its {s:0.9,C:attention}materials{}",
                        "{s:0.9}when summoned as debuffed and {s:0.9,C:dark_edition}Negative{}"
                    }
                },
                joy_transfer_ability = {
                    "Creates all cards tributed by its {C:attention}materials{}",
                    "when summoned as debuffed and {C:dark_edition}Negative{}"
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1+{} non-{C:joy_synchro}Tuners{}",
                    "including a {C:joy_normal}Spellcaster{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})"
                }
            },
            j_joy_wforest_rciela = {
                name = "{C:joy_synchro}Rciela, Sinister Soul of the White Forest",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute{}",
                        "one of the following cards to get these abilities:",
                        " ",
                        "{C:joy_trap}Trap{}: Creates {C:attention}1{} {C:dark_edition}Negative{} {C:joy_effect}Flip{} {C:attention}Joker{}",
                        "{C:tarot}Tarot{}: Adds {C:attention}1{} {C:joy_normal}\"White Forest\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:planet}Planet{}: Creates {C:attention}1{} {C:spectral}Spectral{}",
                        "{C:spectral}Spectral{}: {C:joy_normal}Spellcasters{} each give an extra {X:mult,C:white}X#1#{} Mult",
                        "for each {C:joy_normal}Illusion{} {C:attention}banished{} this round",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                        "{C:joy_spell}Field Spell{}: Creates all consumables tributed this round",
                        "as debuffed and {C:dark_edition}Negative{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1+{} non-{C:joy_synchro}Tuners{}",
                    "including a {C:joy_normal}Spellcaster{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})"
                }
            },
            j_joy_wforest_silvera = {
                name = "{C:joy_synchro}Silvera, Wolf Tamer of the White Forest",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute{}",
                        "one of the following cards to get these abilities:",
                        " ",
                        "{C:joy_trap}Trap{}: Creates {C:attention}1{} {C:dark_edition}Negative{} {C:joy_trap}Trap{}",
                        "{C:tarot}Tarot{}: {C:attention}Revives 1{} {C:joy_normal}\"White Forest\"{}",
                        "{C:planet}Planet{}: Creates {C:attention}1{} {C:spectral}Spectral{}",
                        "{C:spectral}Spectral{}: {C:joy_normal}Spellcasters{} each give {C:mult}+#1#{} Mult",
                        "for each {C:joy_normal}Illusion{} {C:attention}banished{} this round",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                        "{C:joy_spell}Field Spell{}: Creates {C:attention}2{} {C:dark_edition}Negative{} {C:joy_spell}\"Witch of the White Forest\"{}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1+{} non-{C:joy_synchro}Tuners{}",
                    "including a {C:joy_normal}Spellcaster{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})"
                }
            },
            j_joy_wforest_diabell = {
                name = "{C:joy_synchro}Diabell, Queen of the White Forest",
                text = {
                    {
                        "Gains these abilities based on the",
                        "cards tributed this run:",
                        "{C:inactive}(Even if banished){}",
                        " ",
                        "{V:2}20{V:1}+ {V:3}Traps{V:1}: {V:3}Traps{V:1} don't {V:2}flip{V:1} face-down on their own",
                        "{V:1}and their {V:4}FLIP{V:1} abilities activate when {V:2}Blind{V:1} is selected {C:inactive}(#1#/20){}",
                        "{V:6}50{V:5}+ {V:7}Tarot{V:5}: {V:8}Spellcasters{V:5} in the {V:6}GY{V:5} count",
                        "{V:5}as owned for {V:8}\"White Forest\"{V:5} abilities {C:inactive}(#2#/50){}",
                        "{C:planet}Planet{}: {C:planet}Planet{} cards level up an extra time for each {C:attention}5 tributed{}",
                        "{C:inactive}(Currently {C:inactive}{C:attention}+#3#{}{C:inactive} levels) (#4#)",
                        "{C:spectral}Spectral{}: Gains {X:mult,C:white}X#5#{} Mult for each",
                        "{C:inactive}(Currently {C:inactive}{X:mult,C:white}X#6#{}{C:inactive} Mult)",
                        "{V:10}20{V:9}+ {V:11}Field Spells{V:9}: {V:12}Illusion{V:9} in the {V:10}GY{V:9} count",
                        "{V:9}as banished this round for {V:12}\"White Forest\"{V:9} abilities {C:inactive}(#7#/20){}",
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1+{} non-{C:joy_synchro}Tuners{}",
                    "including a {C:joy_synchro}Synchro{} {C:joy_normal}Spellcaster{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})"
                }
            },
            j_joy_wforest_witch = {
                name = "{C:joy_spell}Witch of the White Forest",
                text = {
                    {
                        "Adds {C:attention}1{} {C:spectral}Spectral Pack{} and",
                        "{C:attention}1{} {C:joy_spell}\"Witch of the White Forest\"",
                        "to the shop when {C:attention}tributed{}"
                    },
                    -- { -- TODO: add
                    --     "Cards in {C:spectral}Spectral Packs{} can be",
                    --     "saved to the consumable area"
                    -- },
                    {
                        "Once, you can {C:attention}tribute 1{} {C:joy_normal}Spellcaster{}",
                        "to create {C:attention}1{} {C:joy_normal}Main Deck \"White Forest\"{}",
                        "{C:inactive}(Must have room)"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_wforest = "White Forest",
        }
    }
}
