return {
    descriptions = {
        Joker = {
            j_joy_boarder = {
                name = "{C:joy_effect}Inspector Boarder",
                text = {
                    "{X:mult,C:white}X#1#{} Mult for each {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    " ",
                    "{C:blue}Hands{} equal {C:joy_spell}Extra Deck{} types owned + 1",
                    "No repeat hand types",
                    "{C:joy_normal}Main Deck{} {C:attention}Jokers{} are debuffed",
                    "{C:inactive}(Except{} {C:joy_effect}\"Inspector Boarder\"{}{C:inactive}){}"
                },
            },
            j_joy_grenmaju = {
                name = "{C:joy_effect}Gren Maju Da Eiza",
                text = {
                    "{C:chips}+#1#{} Chips for each card",
                    "{C:attention}banished{} this run",
                    "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                },
            },
            j_joy_rhino = {
                name = "{C:joy_effect}Fiendish Rhino Warrior",
                text = {
                    "Sends {C:attention}#1#{} {C:joy_normal}Fiends{} to the {C:attention}GY{} and",
                    "{C:attention}revive #2#{} {C:joy_normal}Fiend{} when used",
                    "as {C:attention}material{}",
                }
            },
            j_joy_tourguide = {
                name = "{C:joy_effect}Tour Guide From the Underworld",
                text = {
                    "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_normal}Main Deck{}",
                    "{C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}Fiend{} when obtained",
                }
            },
            j_joy_heavenlyprison = {
                name = "{C:joy_effect}Lord of the Heavenly Prison",
                text = {
                    "{X:mult,C:white}X#1#{} Mult,",
                    "gains {X:mult,C:white}X#2#{} Mult for each {C:joy_trap}Trap",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    " ",
                    "{C:joy_trap}Traps{} don't {C:attention}flip{} face-down on their own",
                    "and their {C:joy_effect}FLIP{} abilities activate when {C:attention}Blind{} is selected",
                }
            },
            j_joy_backup = {
                name = "{C:joy_effect}Backup Secretary",
                text = {
                    "Adds {C:attention}#1#{} {C:joy_normal}Cyberse{} to the {C:joy_spell}Extra Deck{} when used as {C:attention}material{}",
                    " ",
                    "Free if you own a {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_wizard = {
                name = "{C:joy_effect}Cyberse Wizard",
                text = {
                    "{C:chips}+#1#{} Chips for each {C:joy_normal}Cyberse{}",
                    "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
                    " ",
                    "Free if you own a {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_formud = {
                name = "{C:joy_effect}Formud Skipper",
                text = {
                    "Treated as any {C:attention}material{} for a {C:joy_link}Link",
                    " ",
                    "Creates {C:attention}#1#{} {C:joy_normal}Main Deck{} {C:red}Rare{} {C:joy_normal}Cyberse",
                    "when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
                    "{C:inactive}(Must have room)"
                }
            },
            j_joy_procession = {
                name = "{C:joy_effect}Procession of the Tea Jar",
                text = {
                    "Each face-down {C:attention}Joker{} gives {X:mult,C:white}X#1#{} Mult",
                    " ",
                    "{C:attention}Flips{} all {C:attention}Jokers{} face-down when {C:attention}Blind{} is selected",
                    "{C:inactive}(Except \"Procession of the Tea Jar\"){}"
                }
            },
            j_joy_darkcat = {
                name = "{C:joy_effect}Dark Cat with White Tail",
                text = {
                    "{C:mult}+#1#{} Mult",
                    " ",
                    "{C:joy_effect}FLIP{}: Adds {C:attention}#2#{} {C:dark_edition}Negative{} {C:attention}Lucky{} {C:attention}2{}s to your deck"
                }
            },
            j_joy_dekoichi = {
                name = "{C:joy_effect}Dekoichi the Battlechanted Locomotive",
                text = {
                    "{C:mult}+#1#{} Mult,",
                    "{C:mult}+#2#{} for each {C:joy_normal}Normal{} {C:attention}Joker{}",
                    "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)",
                    " ",
                    "{C:joy_effect}FLIP{}: {C:attention}+#4#{} hand size this round,",
                    "{C:attention}+#5#{} for each {C:joy_normal}Normal{} {C:attention}Joker{} then",
                    "creates {C:attention}#6#{} {C:dark_edition}Negative{} {C:joy_normal}\"Bokoichi the Freightening Car\"{}"
                }
            },
            j_joy_bokoichi = {
                name = "{C:joy_normal}Bokoichi the Freightening Car",
                text = {
                    "{E:1}A freight car that is exclusively for Dekoichi. It can transport{}",
                    "{E:1}anything, but most cargo arrives broken.{}",
                }
            },
            j_joy_desertapir = {
                name = "{C:joy_effect}Desertapir",
                text = {
                    "{C:money}+$#1#{} at end of round",
                    " ",
                    "{C:joy_effect}FLIP{}: Flips {C:attention}#2#{} random {C:attention}Jokers{} face-up"
                }
            },
            j_joy_searchlight = {
                name = "{C:joy_effect}Searchlightman",
                text = {
                    "{C:mult}+#1#{} Mult,",
                    "gains {C:mult}+#2#{} Mult for each {C:attention}Joker{} {C:attention}flipped{} face-up",
                    "{s:0.9,C:inactive}(Gains even while face-down)",
                    "{C:inactive}(Currently {C:mult}+#3# {C:inactive}Mult)",
                    " ",
                    "{C:joy_effect}FLIP{}: {C:attention}Flips{} all {C:attention}Jokers{} face-up",
                    " ",
                    "{C:green}#4# in #5#{} chance to {C:attention}flip{} when {C:attention}Blind{} is selected"
                }
            },
            j_joy_sternmystic = {
                name = "{C:joy_effect}The Stern Mystic",
                text = {
                    "{C:chips}+#1#{} Chips,",
                    "gains {C:chips}+#2#{} Chips for each playing card {C:attention}flipped{}",
                    "{s:0.9,C:inactive}(Gains even while face-down)",
                    "{C:inactive}(Currently {C:chips}+#3# {C:inactive}Chips)",
                    " ",
                    "{C:joy_effect}FLIP{}: {C:attention}Flips{} all cards in hand",
                    " ",
                    "{C:green}#4# in #5#{} chance to {C:attention}flip{} when {C:attention}Blind{} is selected"
                }
            },
            j_joy_mof = {
                name = "{C:joy_effect}Magician of Faith",
                text = {
                    "{C:chips}+#1#{} Chips for each {C:joy_spell}Field Spell{} in the {C:attention}GY{}",
                    "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)",
                    " ",
                    "{C:joy_effect}FLIP{}: Creates {C:attention}#3#{} {C:dark_edition}Negative{} copy of a {C:joy_spell}Field Spell{} in the {C:attention}GY{}",
                }
            },
            j_joy_mask = {
                name = "{C:joy_effect}Mask of Darkness",
                text = {
                    "{C:mult}+#1#{} Mult for each {C:joy_trap}Trap{} in the {C:attention}GY{}",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    " ",
                    "{C:joy_effect}FLIP{}: {C:attention}Revives #3#{} {C:joy_trap}Trap{}"
                }
            },
            j_joy_angraecum = {
                name = "{C:joy_effect}Angraecum Umbrella",
                text = {
                    "{C:attention}Revives #1#{} non-{C:joy_synchro}Tuner{} as {C:dark_edition}Negative{} and debuffed",
                    "and adds {C:attention}#2#{} {C:joy_synchro}Synchro{} to the shop when obtained",
                }
            },
            j_joy_eater = {
                name = "{C:joy_effect}Eater of Millions",
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult each time an {C:joy_spell}Extra Deck{} {C:attention}Joker{} banishes",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    " ",
                    "{C:attention}Banishes #3#{} non-debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{} at end of round",
                    "until {C:attention}Boss Blind{} is selected"
                }
            },
            j_joy_miradora = {
                name = "{C:joy_effect}Heavenly Zephyr - Miradora",
                text = {
                    "Debuffs and turns {C:attention}#1#{} random",
                    "{C:joy_spell}Extra Deck{} {C:attention}Joker{} {C:dark_edition}Negative{} when obtained",
                    " ",
                    "Each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                    "gives {X:mult,C:white}X#2#{} Mult"
                }
            },
            j_joy_beautunaful = {
                name = "{C:joy_effect}Beautunaful Princess",
                text = {
                    "Creates {C:attention}#1#{} {C:joy_normal}Fish{} when obtained and",
                    "when it returns from {C:attention}banishment{}",
                    "{C:inactive}(Must have room)"
                }
            },
            j_joy_leaffish = {
                name = "{C:joy_effect}Lifeless Leaffish",
                text = {
                    "Sends {C:attention}#1#{} {C:joy_normal}Main Deck Fish{} to the {C:attention}GY{}",
                    "when {C:attention}Blind{} is selected",
                    " ",
                    "Sell this card to {C:attention}revive #2#{} {C:joy_normal}Fish{}",
                    "{C:inactive}(Except \"Lifeless Leaffish\"){}"
                }
            },
            j_joy_ringowurm = {
                name = "{C:joy_effect}Ringowurm, the Dragon Guarding the Hundred Apples",
                text = {
                    "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_synchro}Tuner{} {C:joy_token}\"Hundred Apples Token\"{}",
                    "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}",
                    " ",
                    "Free if you own a non-{C:joy_effect}Effect{} {C:attention}Joker{}"
                }
            },
            j_joy_token_ringo = {
                name = "{C:joy_token}Hundred Apples Token",
                text = {
                    "This card can be used as any {C:joy_token}Token{}",
                }
            },
            j_joy_stormshooter = {
                name = "{C:joy_effect}Storm Shooter",
                text = {
                    "Creates as many {C:planet}Planet{} cards for the scoring hand as possible",
                    "if an unscored card is played in this card's {C:attention}column{}",
                    "This card has to be in {C:attention}column #1#{} to use this ability",
                    "{C:inactive}(Changes each round){}",
                    "{C:inactive}(Currently in {C:attention}column #2#{}{C:inactive})",
                }
            },
            j_joy_ghostbird = {
                name = "{C:joy_effect}Ghost Bird of Bewitchment",
                text = {
                    "Played cards in this card's {C:attention}column{} are destroyed after scoring",
                    "{C:inactive}(Currently in {C:attention}column #1#{}{C:inactive})",
                    " ",
                    "Gets ability based on the {C:attention}column{}",
                    "{V:1}1: Scored card in this {C:attention}column{} {V:1}gains {C:chips}+#2#{} {V:1}Chips{}",
                    "{V:1}and doesn't get destroyed by this card's ability",
                    "{V:2}3: Retrigger scored card in this {C:attention}column{V:2} twice",
                    "{V:3}5: Played card in this {C:attention}column{} {V:3}counts for scoring{}",
                }
            },
            j_joy_tiamaton = {
                name = "{C:joy_effect}Iron Dragon Tiamaton",
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult for each destroyed playing card",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                    " ",
                    "Played cards in this card's {C:attention}column{} are destroyed after scoring",
                    "{C:inactive}(All played cards if column is 6+)",
                    "{C:inactive}(Currently in {C:attention}column #3#{}{C:inactive})",
                }
            },
            j_joy_zenoguitar = {
                name = "{C:joy_effect}Rock Band Xenoguitar",
                text = { "TBD" }
            },
            j_joy_revgolem = {
                name = "{C:joy_effect}Revival Golem",
                text = { "TBD" }
            },
            j_joy_tackcrusader = {
                name = "{C:joy_effect}Tackle Crusader",
                text = { "TBD" }
            },
            j_joy_doki = {
                name = "{C:joy_effect}Doki Doki",
                text = { "TBD" }
            },
            j_joy_blockdragon = {
                name = "{C:joy_effect}Block Dragon",
                text = { "TBD" }
            },
        }
    },
    misc = {
        dictionary = {
        }
    }
}
