return {
    descriptions = {
        Joker = {
            j_joy_fish_keaf = {
                name = "{C:joy_effect}Keaf, Murk of the Ghoti",
                text = {
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected and",
                        "{C:attention}revives #1#{} {C:joy_synchro}Synchro{}",
                    },
                },
            },
            j_joy_fish_paces = {
                name = "{C:joy_effect}Paces, Light of the Ghoti",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",
                    },
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
            },
            j_joy_fish_shif = {
                name = "{C:joy_effect}Shif, Fairy of the Ghoti",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
            },
            j_joy_fish_zep = {
                name = "{C:joy_effect}Zep, Ruby of the Ghoti",
                text = {
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected and",
                        "{C:attention}revives #1#{} {C:joy_normal}Main Deck{} {C:joy_normal}\"Ghoti\"{}",
                    },
                },
            },
            j_joy_fish_ixeep = {
                name = "{C:joy_effect}Ixeep, Omen of the Ghoti",
                text = {
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Boss Blind{} is selected and",
                        "creates {C:attention}#1#{} {C:joy_normal}Main Deck{} {C:joy_normal}\"Ghoti\"{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
            },
            j_joy_fish_eanoc = {
                name = "{C:joy_effect}Eanoc, Sentry of the Ghoti",
                text = {
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                    {
                        "Adds {C:attention}#1#{} {C:joy_normal}\"Ghoti\"{}",
                        "to the {C:joy_spell}Extra Deck{} after returning from",
                        "{C:attention}banishment #2#{} times",
                        "{C:inactive}(Must have room) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_psiics = {
                name = "{C:joy_effect}Psiics, Moonlight of the Ghoti",
                text = {
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Boss Blind{} is selected and revives {C:attention}#1#{}",
                        "{C:joy_synchro}Tuner{} {C:attention}Joker{} as {C:dark_edition}Negative{}",
                    },
                },
            },
            j_joy_fish_snopios = {
                name = "{C:joy_effect}Snopios, Shade of the Ghoti",
                text = {
                    {
                        "This card and {C:attention}#1#{} card in the consumable",
                        "area {C:attention}banish{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                    {
                        "Creates {C:joy_spell}\"The Most Distant, Deepest Depths\"{}",
                        "after returning from {C:attention}banishment #2#{} times",
                        "{C:inactive}(Must have room) (#3#/#2#){}",
                    },
                },
            },
            j_joy_fish_arionpos = {
                name = "{C:joy_synchro}Arionpos, Serpent of the Ghoti",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each card",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                    },
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected and",
                        "adds {C:attention}#3#{} {C:joy_normal}\"Ghoti\"{} to the {C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Must have room){}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Fish{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_askaan = {
                name = "{C:joy_synchro}Askaan, the Bicorned Ghoti",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each card",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "This card and a non-{C:joy_normal}\"Ghoti\"{} {C:attention}Joker{}",
                        "{C:attention}banish{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_guoglim = {
                name = "{C:joy_synchro}Guoglim, Spear of the Ghoti",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each card",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:attention}Revives{} as many different {C:joy_normal}Fish{}",
                        "{C:attention}Jokers{} as possible when summoned",
                    },
                    {
                        "{C:attention}Banishes{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_deepbeyond = {
                name = "{C:joy_synchro}Ghoti of the Deep Beyond",
                text = {
                    {
                        "This card and all other non-{C:joy_normal}\"Ghoti\"{} {C:attention}Jokers{}",
                        "{C:attention}banish{} at the end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Fish{} {C:joy_synchro}Tuners{} +",
                    "{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_fish_depths = {
                name = "{C:joy_spell}The Most Distant, Deepest Depths",
                text = {
                    {
                        "{C:money}+$#1#{} each time a card",
                        "is {C:attention}banished",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_fish = "Ghoti",
        }
    }
}
