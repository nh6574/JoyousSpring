return {
    descriptions = {
        Joker = {
            j_joy_token_generaider = {
                name = "{C:joy_token}Generaider Token",
                text = {
                    {
                        "This card can be used as any {C:joy_token}Token{}",
                    },
                },
            },
            j_joy_generaider_loptr = {
                name = "{C:joy_effect}Loptr, Shadow of the Generaider Bosses",
                text = {
                    {
                        "Destroys itself when {C:attention}Boss Blind{}",
                        "is defeated to create {C:joy_spell}\"Generaider Boss Stage\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_generaider_vala = {
                name = "{C:joy_effect}Vala, Seidhr of the Generaider Bosses",
                text = {
                    {
                        "Sends {C:attention}#1#{} {C:red}Rare{} {C:joy_normal}Main Deck \"Generaider\"{}",
                        "to the {C:attention}GY{} when obtained",
                    },
                    {
                        "Destroys itself when {C:attention}Boss Blind{} is defeated to",
                        "{C:attention}revive #2#{} {C:red}Rare{} {C:joy_normal}\"Generaider\"{}",
                        "and creates {C:attention}#3#{} {C:joy_effect}\"Loptr, Shadow of the Generaider Bosses\"",
                        "{C:inactive}(Must have room)",
                    },
                },
            },
            j_joy_generaider_harr = {
                name = "{C:joy_effect}Harr, Generaider Boss of Storms",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Spellcaster{} {C:attention}Jokers{}",
                        "to disable the current {C:attention}Boss Blind{}",
                    },
                },
            },
            j_joy_generaider_nidhogg = {
                name = "{C:joy_effect}Nidhogg, Generaider Boss of Ice",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} other {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Wyrm{} {C:attention}Jokers{}",
                        "to retrigger each scored card this round",
                    },
                },
            },
            j_joy_generaider_frodi = {
                name = "{C:joy_effect}Frodi, Generaider Boss of Swords",
                text = {
                    {
                        "You can {C:attention}tribute{} any number of other {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Warrior{} {C:attention}Jokers{}",
                        "to gain that much hand size this round",
                    },
                },
            },
            j_joy_generaider_utgarda = {
                name = "{C:joy_effect}Utgarda, Generaider Boss of Delusion",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Rock{} {C:attention}Joker{}",
                        "to {C:attention}banish{} a card in the consumable area",
                        "until {C:attention}Blind{} is selected",
                    },
                },
            },
            j_joy_generaider_mardel = {
                name = "{C:joy_effect}Mardel, Generaider Boss of Light",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Plant{} {C:attention}Joker{} to create {C:attention}#2#{}",
                        "{C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}\"Generaider\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_generaider_dovelgus = {
                name = "{C:joy_effect}Dovelgus, Generaider Boss of Iron",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute #1#{} other {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Machine{} {C:attention}Jokers{}",
                        "to make each {C:joy_normal}\"Generaider\"{} and {C:joy_normal}Machine{}",
                        "give {X:mult,C:white}X#2#{} Mult this round",
                    },
                },
            },
            j_joy_generaider_naglfar = {
                name = "{C:joy_effect}Naglfar, Generaider Boss of Fire",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Beast-Warrior{} {C:attention}Jokers{}",
                        "to gain {C:blue}+#2#{} Hand and {C:red}+#3#{} Discard this {C:attention}Blind{}",
                    },
                },
            },
            j_joy_generaider_hela = {
                name = "{C:joy_effect}Hela, Generaider Boss of Doom",
                text = {
                    {
                        "You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
                        "and/or {C:joy_normal}Zombie{} {C:attention}Jokers{} to {C:attention}revive #2#{}",
                        "{C:red}Rare{} {C:joy_normal}\"Generaider\"{} {C:attention}Joker{} as {C:dark_edition}Negative{}",
                    },
                },
            },
            j_joy_generaider_jormungandr = {
                name = "{C:joy_xyz}Jormungandr, Generaider Boss of Eternity",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz material{}",
                        "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#3#{}: Permanently",
                        "gain {C:attention}+#4#{} hand size",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:red}Rare{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_generaider_laevatein = {
                name = "{C:joy_xyz}Laevatein, Generaider Boss of Shadows",
                text = {
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#1#{}: Destroys all other {C:attention}Jokers{} and",
                        "creates a {C:joy_xyz}\"Jormungandr, Generaider Boss of Eternity\"{}",
                        "attaching all cards in the {C:attention}GY{} to it as {C:joy_xyz}Xyz materials{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5{} {C:red}Rare{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_generaider_boss_stage = {
                name = "{C:joy_spell}Generaider Boss Stage",
                text = {
                    {
                        "{C:joy_normal}\"Generaider\"{} each give {C:mult}+#1#{} Mult",
                        "for each card {C:attention}tributed{} while owned",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Creates as many {C:joy_token}\"Generaider Tokens\"{}",
                        "as possible when {C:attention}Blind{} is selected",
                        "{C:inactive}(\"Generaiders\" are treated as Negative){}",
                    },
                    {
                        "Once per round, you can {C:attention}tribute #3#{}",
                        "{C:joy_token}\"Generaider Tokens\"{} to create {C:attention}#4#{}",
                        "not owned {C:red}Rare{} {C:joy_normal}Main Deck \"Generaider\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_generaider = "Generaider",
        }
    }
}
