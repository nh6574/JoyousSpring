return {
    descriptions = {
        Joker = {
            j_joy_dm_dm = {
                name = "{C:joy_normal}Dark Magician",
                text = {
                    {
                        "{E:1}The ultimate wizard in terms of attack and defense.",
                    }
                }
            },
            j_joy_dm_dmg = {
                name = "{C:joy_effect}Dark Magician Girl",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Spellcaster{} in the {C:attention}GY{}",
                        "Increases by {C:mult}+#2#{} Mult for each {C:joy_normal}\"Dark Magician\"{} owned",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_apprentice = {
                name = "{C:joy_effect}Apprentice Illusion Magician",
                text = {
                    {
                        "Each {C:joy_normal}Spellcaster{} gives {C:mult}+#1#{} Mult"
                    },
                    {
                        "{C:attention}Revives 1{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "for each {C:joy_effect}Effect{} {C:joy_dark}DARK{} {C:joy_normal}Spellcaster{} you own",
                        "when {C:attention}Boss Blind{} is selected",
                        "{C:inactive}(Doesn't need room)",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_chromagician = {
                name = "{C:joy_effect}Chronicle Magician",
                text = {
                    {
                        "Each {C:joy_normal}Normal{} {C:attention}Joker{} gives {X:mult,C:white}X#1#{} Mult",
                        "{C:inactive}(Except Tokens){}"
                    },
                    {
                        "Sends {C:attention}#2#{} {C:joy_normal}Normal{} {C:attention}Jokers{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected"
                    },
                    {
                        "{C:attention}Revives 1{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "when {C:attention}Boss Blind{} is defeated",
                        "{C:inactive}(Doesn't need room)",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_sorceress = {
                name = "{C:joy_effect}Chronicle Sorceress",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_normal}Normal{} {C:attention}Joker{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Sends {C:attention}#2#{} {C:joy_normal}\"Dark Magician\"{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected"
                    },
                    {
                        "Sell this card to {C:attention}revive{} all",
                        "copies of a {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "that shares {C:attention}Type{} and {C:attention}Attribute{} with",
                        "another {C:attention}Joker{} you own",
                        "{C:inactive}(Doesn't need room)",
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_knight = {
                name = "{C:joy_effect}Dark Magician Knight",
                text = {
                    {
                        "Retriggers all {C:attention}Knights{} once",
                        "{C:attention}+1{} retrigger for each {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "{C:inactive}(Except Tokens){}",
                        "{C:inactive}(Currently {C:attention}#1#{}{C:inactive} retriggers)"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_chaos = {
                name = "{C:joy_effect}Dark Magician of Chaos",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute #1#{} {C:tarot}Tarot{} cards",
                        "to create a copy of {C:attention}1{} {C:joy_spell}Field Spell{} in the {C:attention}GY{}"
                    },
                    {
                        "{C:attention}Banishes{} itself and a {C:joy_effect}Effect{} {C:joy_normal}Spellcaster{}",
                        "at end of round until {C:attention}Blind{} is selected"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_darkillusion = {
                name = "{C:joy_effect}Magician of Dark Illusion",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{} {C:tarot}Tarot{}",
                        "to {C:attention}revive 1{} {C:joy_normal}Normal{} {C:attention}Joker{} as {C:dark_edition}Negative{}"
                    },
                    {
                        "Turns a random {C:joy_spell}Field Spell{} {C:dark_edition}Negative{}",
                        "after {C:attention}#1#{} {C:tarot}Tarot{} cards are {C:attention}tributed{}",
                        "{C:inactive}(as soon as it's able to) (#2#/#1#){}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_robe = {
                name = "{C:joy_effect}Magician's Robe",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{} {C:tarot}Tarot{}",
                        "to create {C:attention}1{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "and gain {C:money}$+#1#{}"
                    },
                    {
                        "If you own {C:joy_normal}\"Dark Magician\"{} you can sell this card",
                        "to create {C:attention}1{} {C:joy_spell}\"Magician's Salvation\"{}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_rod = {
                name = "{C:joy_effect}Magician's Rod",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{} {C:joy_normal}Spellcaster{}",
                        "to create {C:attention}1{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "and gain {C:money}$+#1#{}"
                    },
                    {
                        "If you own {C:joy_normal}\"Dark Magician\"{} you can sell this card",
                        "to create {C:attention}1{} {C:joy_spell}\"Magician's Salvation\"{}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_souls = {
                name = "{C:joy_effect}Magicians' Souls",
                text = {
                    {
                        "{C:attention}+#1#{} hand size",
                        "for each {C:attention}#2#{} {C:joy_normal}Normal{} {C:attention}Jokers{}",
                        "{C:inactive}(Currently {C:attention}+#3#{})"
                    },
                    {
                        "If you own {C:joy_normal}\"Dark Magician\"{} you can sell this card",
                        "to create {C:attention}1{} {C:joy_spell}\"Magician's Salvation\"{}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_valkyria = {
                name = "{C:joy_effect}Magician's Valkyria",
                text = {
                    {
                        "{C:joy_normal}Spellcasters{} can't be debuffed",
                        "or {C:attention}flipped{} face-down",
                    },
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "when a {C:attention}consumable{} is {C:attention}tributed{}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                },
            },
            j_joy_dm_kuri = {
                name = "{C:joy_effect}Magikuriboh",
                text = {
                    {
                        "Prevents {C:red}Death{} and destroys itself",
                        "if you own {C:joy_normal}\"Dark Magician\"{} and {C:joy_effect}\"Dark Magician Girl\"{}",
                        "This ability of {C:joy_effect}\"Magikuriboh\"{} can only be used once per game"
                    },
                    {
                        "If the previous ability has been used this run,",
                        "you can sell this card to add a {C:joy_fusion}Fusion{} to the {C:joy_spell}Extra Deck{}",
                        "that lists {C:joy_normal}\"Dark Magician\"{} or",
                        "{C:joy_effect}\"Dark Magician Girl\"{} in their {C:attention}summon conditions{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_conjurer = {
                name = "{C:joy_effect}Dimension Conjurer",
                text = {
                    {
                        "You can sell this card to draw {C:attention}1{} card",
                        "for each other {C:joy_normal}Spellcaster{}"
                    },
                    {
                        "Free and can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_mahad = {
                name = "{C:joy_effect}Palladium Oracle Mahad",
                text = {
                    {
                        "Each {C:joy_normal}\"Dark Magician\"{} gives {X:mult,C:white}X#1#{} Mult"
                    },
                    {
                        "Creates {C:attention}1{} {C:joy_normal}\"Dark Magician\"{}",
                        "at end of ante"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_mana = {
                name = "{C:joy_effect}Palladium Oracle Mana",
                text = {
                    {
                        "Each {C:joy_effect}\"Dark Magician Girl\"{} gives {X:chips,C:white}X#1#{} Chips"
                    },
                    {
                        "Creates {C:attention}1{} {C:joy_normal}\"Dark Magician Girl\"{}",
                        "after {C:attention}#2#{} {C:tarot}Tarot{} cards are {C:attention}tributed{} {C:inactive}(#3#/#2#){}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_timaeus = {
                name = "{C:joy_effect}Timaeus the United Dragon",
                text = {
                    {
                        "Adds a {C:joy_fusion}Fusion{} to the {C:joy_spell}Extra Deck{}",
                        "that lists {C:joy_normal}\"Dark Magician\"{} or",
                        "{C:joy_effect}\"Dark Magician Girl\"{} in their {C:attention}summon conditions{}",
                        "when {C:attention}entering play{}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    },
                    {
                        "A {C:joy_fusion}Fusion{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#1#{} {s:0.9}Mult for each",
                        "{s:0.9,C:joy_normal}Normal{} {s:0.9,C:attention}Joker{} {s:0.9}used for its summon",
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each",
                    "{C:joy_normal}Normal{} {C:attention}Joker{} used for its summon",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                }
            },
            j_joy_dm_warlock = {
                name = "{C:joy_effect}Dark Eradicator Warlock",
                text = {
                    {
                        "Once per round, you can {C:attention}tribute 1{}",
                        "{C:joy_normal}Normal{} or {C:joy_spell}Field Spell{} {C:attention}Joker{}",
                        "to score {C:attention}#1#%{} of the {C:attention}Blind{}'s requirement",
                        "or {C:attention}#2#%{} if {C:joy_normal}\"Dark Magician\"{} was {C:attention}tributed{}"
                    },
                    {
                        "Can be obtained from the shop even if you don't have room",
                        "if you own a {C:joy_normal}Normal{} {C:attention}Joker{}",
                    }
                }
            },
            j_joy_dm_blackchaos = {
                name = "{C:joy_ritual}Magician of Black Chaos",
                text = {
                    {
                        "{C:mult}+#1#{} Mult"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_normal}Spellcaster",
                    "Doesn't need room"
                }
            },
            j_joy_dm_blackchaosmax = {
                name = "{C:joy_ritual}Magician of Black Chaos MAX",
                text = {
                    {
                        "You can {C:attention}tribute{} all {C:joy_normal}Normal{} {C:attention}Jokers{}",
                        "to disable all {C:attention}Blind{} effects this ante",
                    },
                    {
                        "Creates {C:attention}1{} {C:spectral}Spectral{}",
                        "at end of ante",
                        "{C:inactive}(Must have room)"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Spellcasters",
                    "Doesn't need room"
                }
            },
            j_joy_dm_chaosritual = {
                name = "{C:joy_ritual}Magician of Chaos",
                text = {
                    {
                        "Adds a {C:joy_normal}Spellcaster{} {C:joy_ritual}Ritual{}",
                        "to the {C:joy_link}Side Deck{} after {C:attention}#1#{} {C:tarot}Tarot{} cards",
                        "have been consumed or {C:attention}tributed{} {C:inactive}(#2#/#1#){}"
                    },
                    {
                        "{C:joy_normal}Spellcasters{} are also treated",
                        "as {C:joy_normal}Normal{} {C:attention}Jokers{} for abilities"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Spellcasters",
                    "Doesn't need room"
                }
            },
            j_joy_dm_illusion = {
                name = "{C:joy_ritual}Illusion of Chaos",
                text = {
                    {
                        "Creates a {C:dark_edition}Negative{} {C:joy_normal}\"Dark Magician\"{}",
                        "when {C:attention}entering play{} for each {C:joy_normal}Spellcaster{}",
                        "used for its summon"
                    },
                    {
                        "You can sell this card to create one of",
                        "{C:joy_effect}\"Magicians' Souls\"{}, {C:joy_effect}\"Magician's Rod\"{}",
                        "or {C:joy_effect}\"Magician's Robe\""
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:joy_normal}Spellcaster",
                    "or {C:joy_normal}Normal {C:attention}Jokers{}",
                    "Doesn't need room"
                }
            },
            j_joy_dm_amulet = {
                name = "{C:joy_fusion}Amulet Dragon",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each",
                        "{C:joy_normal}Normal{} {C:attention}Joker banished{} this run",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "{C:attention}Revives 1{} {C:joy_normal}Normal Spellcaster{}",
                        "when {C:attention}Blind{} is selected",
                        "and if it did, {C:attention}revives 1{} {C:joy_effect}Effect{} {C:joy_normal}Spellcaster{}",
                        "{C:inactive}(Doesn't need room){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "+ {C:attention}1{} {C:joy_normal}Dragon",
                    "Doesn't need room"
                }
            },
            j_joy_dm_timaeusmagical = {
                name = "{C:joy_fusion}Timaeus the United Magical Dragon",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each",
                        "{C:tarot}Tarot{}, {C:joy_spell}Field Spell{} or {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "{C:attention}tributed{} this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Destroys {C:attention}1{} {C:joy_trap}Opponent{}'s card",
                        "at end of ante for {C:money}+$#3#{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "or {C:joy_effect}\"Dark Magician Girl\"{}",
                    "+ {C:attention}1{} {C:joy_normal}Dragon",
                    "or {C:joy_normal}Spellcaster{}",
                    "Doesn't need room"
                }
            },
            j_joy_dm_cavalry = {
                name = "{C:joy_fusion}Dark Cavalry",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each",
                        "{C:tarot}Tarot{} {C:attention}tributed{} this run",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Creates {C:attention}#3#{} {C:joy_normal}Normal Warriors{}",
                        "when {C:attention}Blind{} is selected"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "+ {C:attention}1{} {C:joy_normal}Warrior",
                    "Doesn't need room"
                }
            },
            j_joy_dm_dragonknight = {
                name = "{C:joy_fusion}Dark Magician the Dragon Knight",
                text = {
                    {
                        "{X:chips,C:white}X#1#{} Chips for each",
                        "{C:joy_trap}Opponent{}'s card",
                        "{C:inactive}(Currently {C:chips}X#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Creates {C:attention}#3#{} {C:joy_normal}Normal Dragons{}",
                        "when {C:attention}Blind{} is selected"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "+ {C:attention}1{} {C:joy_normal}Dragon",
                    "Doesn't need room"
                }
            },
            j_joy_dm_dmgknight = {
                name = "{C:joy_fusion}Dark Magician Girl the Dragon Knight",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each",
                        "{C:joy_normal}Spellcaster{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Sends {C:attention}#3#{} {C:joy_normal}Normal Spellcasters{}",
                        "to the {C:attention}GY{} when {C:attention}Blind{} is selected"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_effect}\"Dark Magician Girl\"{}",
                    "+ {C:attention}1{} {C:joy_normal}Dragon",
                    "Doesn't need room"
                }
            },
            j_joy_dm_destruction = {
                name = "{C:joy_fusion}Dark Magician of Destruction",
                text = {
                    {
                        "Each {C:joy_normal}Normal{} {C:attention}Joker{} gives {C:chips}X#1#{} Chips",
                        "{C:inactive}(Except Tokens){}"
                    },
                    {
                        "Creates {C:attention}1{} {C:joy_dark}DARK{} {C:joy_normal}Spellcaster{}",
                        "when {C:attention}entering play{}",
                        "{C:inactive}(Except \"Dark Magician of Destruction\"){}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "+ {C:attention}1{} {C:joy_light}LIGHT{}",
                    "or {C:joy_dark}DARK{} {C:attention}Joker{}",
                    "Doesn't need room"
                }
            },
            j_joy_dm_dragoon = {
                name = "{C:joy_fusion}Red-Eyes Dark Dragoon",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} for each",
                        "{C:joy_normal}Normal{} {C:attention}Joker{} used for its {C:attention}summon{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "If a {C:joy_normal}Normal{} {C:attention}Dragon{} was used",
                        "for its {C:attention}summon{}, disables the effects",
                        "of all {C:attention}Showdown Blinds{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "+ {C:attention}1+{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                    "{C:inactive}(Except Tokens){}",
                    "Doesn't need room"
                }
            },
            j_joy_dm_dragoon_alt = {
                name = "{C:joy_fusion}Red-Eyes Dark Dragoon",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} for each",
                        "{C:joy_normal}Normal{} {C:attention}Joker{} used for its {C:attention}summon{}",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)"
                    },
                    {
                        "If a {C:joy_normal}Normal{} {C:attention}Dragon{} was used",
                        "for its {C:attention}summon{}, disables the effects",
                        "of all {C:attention}Showdown Blinds{}"
                    },
                    {
                        "If a {C:joy_normal}\"Red-Eyes Black Dragon\"{} was used",
                        "for its {C:attention}summon{}, gives {C:money}+#3#{}",
                        "at end of round"
                    },
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "+ {C:attention}1+{} {C:joy_normal}Normal{} {C:attention}Joker{}",
                    "{C:inactive}(Except Tokens){}",
                    "Doesn't need room"
                }
            },
            j_joy_dm_magicians = {
                name = "{C:joy_fusion}The Dark Magicians",
                text = {
                    {
                        "When this card is {C:attention}tributed{},",
                        "creates {C:attention}1{} {C:joy_normal}\"Dark Magician\"{} and {C:attention}1{} {C:joy_effect}\"Dark Magician Girl\"{}",
                        "and adds a {C:joy_fusion}Fusion{} that lists one of them",
                        "in their {C:attention}summon conditions{} to the shop"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}\"Dark Magician\"{}",
                    "or {C:joy_effect}\"Dark Magician Girl\"{}",
                    "+ {C:attention}1{} {C:joy_normal}Spellcaster{}",
                    "Doesn't need room"
                }
            },
            j_joy_dm_ebonillusion = {
                name = "{C:joy_xyz}Ebon Illusion Magician",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz {C:attention}material{}",
                        "{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#3#{}: Creates {C:attention}#4#{}",
                        "{C:joy_normal}Normal Spellcasters{}"
                    },
                    {
                        "Attaches a {C:attention}material{} when a",
                        "{C:tarot}Tarot{} is {C:attention}tributed{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Spellcasters{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
            j_joy_dm_ebonhigh = {
                name = "{C:joy_xyz}Ebon High Magician",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_xyz}Xyz {C:attention}material{}",
                        "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                    },
                    {
                        "{C:joy_xyz}Detach{} {C:attention}#3#{}: Creates {C:attention}#4#{}",
                        "{C:tarot}Tarot{} cards, also for the rest of the run",
                        "{C:tarot}Tarot{} cards may appear multiple times"
                    },
                    {
                        "Attaches a {C:attention}material{} when a",
                        "{C:joy_normal}Normal{} {C:attention}Joker{} is {C:attention}tributed{}"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:joy_normal}Spellcasters{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
                }
            },
            j_joy_dm_salvation = {
                name = "{C:joy_spell}Magician's Salvation",
                text = {
                    {
                        "{C:attention}Banishes{} all {C:joy_normal}Normal{} {C:attention}Jokers{}",
                        "at end of round until {C:attention}Blind{} is selected",
                        "if you own {C:joy_normal}\"Dark Magician\"{} and {C:joy_effect}\"Dark Magician Girl\"{}",
                    },
                    {
                        "{C:attention}Revives{} up to {C:attention}1{} {C:joy_normal}\"Dark Magician\"{}",
                        "and up to {C:attention}1{} {C:joy_effect}\"Dark Magician Girl\"{}",
                        "at end of round",
                        "{C:inactive}(Doesn't need room){}"
                    },
                    {
                        "{C:joy_normal}Normal{} {C:attention}Jokers{} are also",
                        "treated as {C:joy_normal}Spellcasters{}"
                    }
                }
            },
        }
    },
    JoyousSpring = {
        Blurbs = {
            dm = {
                gameplay = {
                    "These cards are based around supporting other {C:joy_normal}Spellcaster{} archetypes and powering up {C:joy_normal}Normal{} {C:attention}Joker{} strategies!"
                }
            }
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_dm = "Dark Magician",
        }
    }
}
