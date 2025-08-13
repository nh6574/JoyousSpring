return {
    descriptions = {
        Joker = {
            j_joy_psy_driver = {
                name = "{C:joy_normal}Conductor de Armazón-PSÍ",
                text = {
                    {
                        "{E:1}Un soldado Psíquico que entra en batalla en contra de las{}",
                        "{E:1}Fuerzas de Seguridad sobre corrientes de rayos, usando un{}",
                        "{E:1}amplificador autonómico llamado \"Armazón-PSÍ\"{}",
                    },
                },
            },
            j_joy_psy_alpha = {
                name = "{C:joy_effect}Mecanismo Armazón-PSÍ Alfa",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
                        "when {C:attention}Blind{} is selected until end of round to",
                        "make all cards held in hand give {X:mult,C:white}X#2#{} Mult this round",
                    },
                },
            },
            j_joy_psy_beta = {
                name = "{C:joy_effect}Mecanismo Armazón-PSÍ Beta",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
                        "when {C:attention}Blind{} is selected until end of round to",
                        "make all scored cards give {X:mult,C:white}X#2#{} Mult this round",
                    },
                },
            },
            j_joy_psy_gamma = {
                name = "{C:joy_effect}Mecanismo Armazón-PSÍ Gamma",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
                        "when {C:attention}Blind{} is selected until end of round to",
                        "make all {C:attention}Jokers{} each give {X:mult,C:white}X#2#{} Mult this round",
                    },
                },
            },
            j_joy_psy_delta = {
                name = "{C:joy_effect}Mecanismo Armazón-PSÍ Delta",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
                        "when {C:attention}Blind{} is selected until end of round to",
                        "make all {C:tarot}Tarot{} cards in the consumable area",
                        "each give {X:mult,C:white}X#2#{} Mult this round",
                    },
                },
            },
            j_joy_psy_epsilon = {
                name = "{C:joy_effect}Mecanismo Armazón-PSÍ Épsilon",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
                        "when {C:attention}Blind{} is selected until end of round to",
                        "make all {C:planet}Planet{} cards in the consumable area",
                        "each give {X:mult,C:white}X#2#{} Mult this round",
                    },
                },
            },
            j_joy_psy_multithreader = {
                name = "{C:joy_effect}Armazón-PSÍ Multihilo",
                text = {
                    {
                        "This card is treated as {C:joy_normal}\"PSY-Frame Driver\"",
                        "for {C:joy_normal}\"PSY-Frame\"{} abilities",
                    },
                    {
                        "Create {C:attention}#1#{} {C:joy_normal}Main Deck \"PSY-Frame\"{}",
                        "{C:joy_effect}Effect{} {C:attention}Joker{} when this card",
                        "returns from {C:attention}banishment{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_psy_zeta = {
                name = "{C:joy_synchro}Señor Armazón-PSÍ Zeta",
                text = {
                    {
                        "This card and {C:attention}#1#{} cards in the consumable",
                        "area {C:attention}banish{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:blue}Common{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_omega = {
                name = "{C:joy_synchro}Señor Armazón-PSÍ Omega",
                text = {
                    {
                        "This card and another {C:attention}Joker{}",
                        "{C:attention}banish{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:blue}Common{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_psy_lambda = {
                name = "{C:joy_link}Señor Armazón-PSÍ Lambda",
                text = {
                    {
                        "{C:joy_normal}\"PSY-Frame\"{} abilities are active",
                        "without {C:attention}banishing{} {C:joy_normal}\"PSY-Frame Driver\"",
                    },
                    {
                        "Add {C:attention}#1#{} {C:joy_normal}\"PSY-Frame\"",
                        "to the {C:joy_spell}Extra Deck{} when a {C:joy_normal}Psychic{}",
                        "{C:attention}Joker{} returns from {C:attention}banishment{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{},",
                    "except {C:joy_token}Tokens{}",
                }
            },
            j_joy_psy_circuit = {
                name = "{C:joy_spell}Circuito de Armazón-PSÍ",
                text = {
                    {
                        "{C:money}+$#1#{} each time a {C:joy_synchro}Synchro{} is summoned",
                    },
                    {
                        "{C:joy_normal}Psychic{} {C:joy_synchro}Synchros{}",
                        "become {C:dark_edition}Negative{} when summoned",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_psy = "Armazón-PSÍ",
        }
    }
}
