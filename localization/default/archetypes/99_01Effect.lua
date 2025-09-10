return {
    descriptions = {
        Joker = {
            j_joy_boarder = {
                name = "{C:joy_effect}Inspector Boarder",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult for each {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "{C:blue}Hands{} equal {C:joy_spell}Extra Deck{} types owned + 1",
                        "No repeat hand types",
                        "{C:joy_normal}Main Deck{} {C:attention}Jokers{} are debuffed",
                        "{C:inactive}(Except \"Inspector Boarder\"){}",
                    },
                },
            },
            j_joy_grenmaju = {
                name = "{C:joy_effect}Gren Maju Da Eiza",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each card",
                        "{C:attention}banished{} this run",
                        "{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
                    },
                },
            },
            j_joy_rhino = {
                name = "{C:joy_effect}Fiendish Rhino Warrior",
                text = {
                    {
                        "Sends {C:attention}#1#{} {C:joy_normal}Fiends{} to the {C:attention}GY{} and",
                        "{C:attention}revive #2#{} {C:joy_normal}Fiend{} when used",
                        "as {C:attention}material{}",
                    },
                }
            },
            j_joy_tourguide = {
                name = "{C:joy_effect}Tour Guide From the Underworld",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_normal}Main Deck{}",
                        "{C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}Fiend{} when obtained",
                    },
                }
            },
            j_joy_heavenlyprison = {
                name = "{C:joy_effect}Lord of the Heavenly Prison",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult,",
                        "gives an extra {X:mult,C:white}X#2#{} Mult for each {C:joy_trap}Trap",
                        "{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    },
                    {
                        "{C:joy_trap}Traps{} don't {C:attention}flip{} face-down on their own",
                        "and their {C:joy_effect}FLIP{} abilities activate when {C:attention}Blind{} is selected",
                    },
                }
            },
            j_joy_backup = {
                name = "{C:joy_effect}Backup Secretary",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_normal}Cyberse{} to the {C:joy_spell}Extra Deck{} when used as {C:attention}material{}",
                    },
                    {
                        "Free if you own a {C:joy_normal}Cyberse{}",
                    },
                }
            },
            j_joy_wizard = {
                name = "{C:joy_effect}Cyberse Wizard",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_normal}Cyberse{}",
                        "{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
                    },
                    {
                        "Free if you own a {C:joy_normal}Cyberse{}",
                    },
                }
            },
            j_joy_formud = {
                name = "{C:joy_effect}Formud Skipper",
                text = {
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_link}Link",
                    },
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}Main Deck{} {C:red}Rare{} {C:joy_normal}Cyberse",
                        "when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
                        "{C:inactive}(Must have room)",
                    },
                }
            },
            j_joy_procession = {
                name = "{C:joy_effect}Procession of the Tea Jar",
                text = {
                    {
                        "Each face-down {C:attention}Joker{} gives {X:mult,C:white}X#1#{} Mult",
                    },
                    {
                        "{C:attention}Flips{} all {C:attention}Jokers{} face-down when {C:attention}Blind{} is selected",
                        "{C:inactive}(Except \"Procession of the Tea Jar\"){}",
                    },
                }
            },
            j_joy_darkcat = {
                name = "{C:joy_effect}Dark Cat with White Tail",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Adds {C:attention}#2#{} {C:dark_edition}Negative{} {C:attention}Lucky{} {C:attention}2{}s to your deck",
                    },
                }
            },
            j_joy_dekoichi = {
                name = "{C:joy_effect}Dekoichi the Battlechanted Locomotive",
                text = {
                    {
                        "{C:mult}+#1#{} Mult,",
                        "{C:mult}+#2#{} for each {C:joy_normal}Normal{} {C:attention}Joker{}",
                        "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}+#4#{} hand size this round,",
                        "{C:attention}+#5#{} for each {C:joy_normal}Normal{} {C:attention}Joker{} then",
                        "creates {C:attention}#6#{} {C:dark_edition}Negative{} {C:joy_normal}\"Bokoichi the Freightening Car\"{}",
                    },
                }
            },
            j_joy_bokoichi = {
                name = "{C:joy_normal}Bokoichi the Freightening Car",
                text = {
                    {
                        "{E:1}A freight car that is exclusively for Dekoichi. It can transport{}",
                        "{E:1}anything, but most cargo arrives broken.{}",
                    },
                }
            },
            j_joy_desertapir = {
                name = "{C:joy_effect}Desertapir",
                text = {
                    {
                        "{C:money}+$#1#{} at end of round",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Flips {C:attention}#2#{} random {C:attention}Jokers{} face-up",
                    },
                }
            },
            j_joy_searchlight = {
                name = "{C:joy_effect}Searchlightman",
                text = {
                    {
                        "{C:mult}+#1#{} Mult,",
                        "gains {C:mult}+#2#{} Mult for each {C:attention}Joker{} {C:attention}flipped{} face-up",
                        "{s:0.9,C:inactive}(Gains even while face-down)",
                        "{C:inactive}(Currently {C:mult}+#3# {C:inactive}Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Flips{} all {C:attention}Jokers{} face-up",
                    },
                    {
                        "{C:green}#4# in #5#{} chance to {C:attention}flip{} when {C:attention}Blind{} is selected",
                    },
                }
            },
            j_joy_sternmystic = {
                name = "{C:joy_effect}The Stern Mystic",
                text = {
                    {
                        "{C:chips}+#1#{} Chips,",
                        "gains {C:chips}+#2#{} Chips for each playing card {C:attention}flipped{}",
                        "{s:0.9,C:inactive}(Gains even while face-down)",
                        "{C:inactive}(Currently {C:chips}+#3# {C:inactive}Chips)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Flips{} all cards in hand",
                    },
                    {
                        "{C:green}#4# in #5#{} chance to {C:attention}flip{} when {C:attention}Blind{} is selected",
                    },
                }
            },
            j_joy_mof = {
                name = "{C:joy_effect}Magician of Faith",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_spell}Field Spell{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Creates {C:attention}#3#{} {C:dark_edition}Negative{} copy of a {C:joy_spell}Field Spell{} in the {C:attention}GY{}",
                    },
                }
            },
            j_joy_mask = {
                name = "{C:joy_effect}Mask of Darkness",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_trap}Trap{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Revives #3#{} {C:joy_trap}Trap{}",
                    },
                }
            },
            j_joy_angraecum = {
                name = "{C:joy_effect}Angraecum Umbrella",
                text = {
                    {
                        "{C:attention}Revives #1#{} non-{C:joy_synchro}Tuner{} as {C:dark_edition}Negative{} and debuffed",
                        "and adds {C:attention}#2#{} {C:joy_synchro}Synchro{} to the shop when obtained",
                    },
                }
            },
            j_joy_eater = {
                name = "{C:joy_effect}Eater of Millions",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult each time an {C:joy_spell}Extra Deck{} {C:attention}Joker{} banishes",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "{C:attention}Banishes #3#{} non-debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{} at end of round",
                        "until {C:attention}Boss Blind{} is selected",
                    },
                }
            },
            j_joy_miradora = {
                name = "{C:joy_effect}Heavenly Zephyr - Miradora",
                text = {
                    {
                        "Debuffs and turns {C:attention}#1#{} random",
                        "{C:joy_spell}Extra Deck{} {C:attention}Joker{} {C:dark_edition}Negative{} when obtained",
                    },
                    {
                        "Each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
                        "gives {X:mult,C:white}X#2#{} Mult",
                    },
                }
            },
            j_joy_beautunaful = {
                name = "{C:joy_effect}Beautunaful Princess",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_normal}Fish{} when obtained and",
                        "when it returns from {C:attention}banishment{}",
                        "{C:inactive}(Must have room)",
                    },
                }
            },
            j_joy_leaffish = {
                name = "{C:joy_effect}Lifeless Leaffish",
                text = {
                    {
                        "Sends {C:attention}#1#{} {C:joy_normal}Main Deck Fish{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Sell this card to {C:attention}revive #2#{} {C:joy_normal}Fish{}",
                        "{C:inactive}(Except \"Lifeless Leaffish\"){}",
                    },
                }
            },
            j_joy_ringowurm = {
                name = "{C:joy_effect}Ringowurm, the Dragon Guarding the Hundred Apples",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_synchro}Tuner{} {C:joy_token}\"Hundred Apples Token\"{}",
                        "when used as {C:attention}material{} for a {C:joy_synchro}Synchro{}",
                    },
                    {
                        "Free if you own a non-{C:joy_effect}Effect{} {C:attention}Joker{}",
                    },
                }
            },
            j_joy_token_ringo = {
                name = "{C:joy_token}Hundred Apples Token",
                text = {
                    {
                        "This card can be used as any {C:joy_token}Token{}",
                    },
                }
            },
            j_joy_stormshooter = {
                name = "{C:joy_effect}Storm Shooter",
                text = {
                    {
                        "Creates as many {C:planet}Planet{} cards for the scoring hand as possible",
                        "if an unscored card is played in this card's {C:attention}column{}",
                        "This card has to be in {C:attention}column #1#{} to use this ability",
                        "{C:inactive}(Changes each round){}",
                        "{C:inactive}(Currently in {C:attention}column #2#{}{C:inactive})",
                    },
                }
            },
            j_joy_ghostbird = {
                name = "{C:joy_effect}Ghost Bird of Bewitchment",
                text = {
                    {
                        "Played cards in this card's {C:attention}column{} are destroyed after scoring",
                        "{C:inactive}(Currently in {C:attention}column #1#{}{C:inactive})",
                    },
                    {
                        "Gets ability based on the {C:attention}column{}",
                        "{V:1}1: Scored card in this {C:attention}column{} {V:1}gains {C:chips}+#2#{} {V:1}Chips{}",
                        "{V:1}and doesn't get destroyed by this card's ability",
                        "{V:2}3: Retrigger scored card in this {C:attention}column{V:2} twice",
                        "{V:3}5: Played card in this {C:attention}column{} {V:3}counts for scoring{}",
                    },
                }
            },
            j_joy_tiamaton = {
                name = "{C:joy_effect}Iron Dragon Tiamaton",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each destroyed playing card",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Played cards in this card's {C:attention}column{} are destroyed after scoring",
                        "{C:inactive}(All played cards if column is 6+)",
                        "{C:inactive}(Currently in {C:attention}column #3#{}{C:inactive})",
                    },
                }
            },
            j_joy_zenoguitar = {
                name = "{C:joy_effect}Rock Band Xenoguitar",
                text = {
                    {
                        "When this owned card is sent to the {C:attention}GY{}",
                        "sends {C:attention}#1#{} {C:joy_normal}Rock{} {C:attention}Jokers{} to the {C:attention}GY{}",
                        "then {C:attention}revives #2#{} {C:joy_normal}Rock{} {C:attention}Joker{}",
                    },
                    {
                        "Adds {C:attention}#3# Enhanced{} {C:diamonds}Diamond{} cards to the Deck",
                        "when used as {C:attention}material{}"
                    },
                    {
                        "Cannot be {C:attention}revived{}",
                    },
                }
            },
            j_joy_revgolem = {
                name = "{C:joy_effect}Revival Golem",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:diamonds}Diamond{} cards with a random {C:attention}Seal{} to the Deck",
                        "and creates {C:attention}#2#{} {C:dark_edition}Negative{} Debuffed {C:joy_effect}\"Revival Golem\"{}",
                        "when used as {C:attention}material{}"
                    }
                }
            },
            j_joy_tackcrusader = {
                name = "{C:joy_effect}Tackle Crusader",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:diamonds}Diamond{} {C:attention}excavated{} this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Once per round, you can {C:attention}tribute #3#{} {C:joy_normal}Rock{} {C:attention}Joker{}",
                        "to add {C:attention}#4# Editioned{} {C:diamonds}Diamond{} cards to the Deck",
                        "and flip all {C:attention}Jokers{} face-up"
                    },
                }
            },
            j_joy_doki = {
                name = "{C:joy_effect}Doki Doki",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:diamonds}Diamond{} {C:attention}excavated{} this run",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Once per ante, you can {C:attention}tribute #3#{} {C:joy_normal}Rock{} {C:attention}Joker{}",
                        "to create {C:attention}#4#{} {C:joy_normal}Main Deck Rock{} {C:attention}Jokers{}",
                        "{C:inactive}(Must have room)"
                    },
                }
            },
            j_joy_blockdragon = {
                name = "{C:joy_effect}Block Dragon",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Rock{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{X:mult,C:white}X#3#{} extra Mult for each {C:diamonds}Diamond{} {C:attention}excavated{} this run",
                        "{C:inactive}(Currently {X:mult,C:white}X#4#{}{C:inactive} Mult)"
                    },
                    {
                        "If this card is used as {C:attention}material{} when there are",
                        "{C:attention}#5#{} or more {C:joy_normal}Rock{} {C:attention}Jokers{} in the {C:attention}GY{},",
                        "creates {C:attention}#6#{} {C:dark_edition}Negative{} {C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}Main Deck{}",
                        "{C:joy_normal}Rock{} {C:attention}Jokers{} but remove all {C:joy_normal}Rock{} {C:attention}Jokers{} from the {C:attention}GY{}"
                    },
                }
            },
            j_joy_elfobia = {
                name = "{C:joy_effect}Ghost Fairy Elfobia",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each {C:joy_wind}WIND{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:joy_wind}WIND{} {C:attention}Jokers{}",
                        "permanently by {C:attention}#3#{} when {C:attention}Boss Blind{} is selected"
                    },
                    {
                        "If you own {C:joy_effect}\"Mystical Fairy Elfuria\"{},",
                        "only {C:joy_wind}WIND{} {C:attention}Jokers{} can be sent to the {C:attention}GY{}"
                    }
                }
            },
            j_joy_elfuria = {
                name = "{C:joy_effect}Mystical Fairy Elfuria",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_wind}WIND{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Attach {C:attention}#3# material{} to each {C:joy_xyz}Xyz{}",
                        "when {C:attention}Boss Blind{} is selected"
                    },
                    {
                        "If you own {C:joy_effect}\"Ghost Fairy Elfobia\"{},",
                        "only {C:joy_wind}WIND{} {C:attention}Jokers{} can appear in the shop",
                    }
                }
            },
            j_joy_lindbloom = {
                name = "{C:joy_effect}Lindbloom",
                text = {
                    {
                        "{C:attention}Jokers{} each give {X:mult,C:white}X#1#{} Mult if they share",
                        "{C:attention}Type{} and {C:attention}Attribute{} with another {C:attention}Joker{}"
                    },
                }
            },
            j_joy_genomix = {
                name = "{C:joy_effect}Genomix Fighter",
                text = {
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
                    },
                    {
                        "A {C:joy_synchro}Synchro{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Mult for each {s:0.9,C:attention}Joker{s:0.9} owned",
                        "{s:0.9}or in the {s:0.9,C:attention}GY{s:0.9} with the same {s:0.9,C:attention}Type{s:0.9} and {s:0.9,C:attention}Attribute{}"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:attention}Joker{} owned",
                    "or in the {C:attention}GY{} with the same {C:attention}Type{} and {C:attention}Attribute{}",
                    "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                },
            },
            j_joy_maxsix = {
                name = "{C:joy_effect}Maximum Six",
                text = {
                    {
                        "{C:green}#1# in #2#{} to give {X:mult,C:white}X#3#{} Mult",
                    },
                    {
                        "{C:green}#4# in #5#{} chance to become {C:dark_edition}Negative{}",
                        "when {C:attention}Blind{} is selected"
                    },
                }
            },
            j_joy_stpolice = {
                name = "{C:joy_effect}Space-Time Police",
                text = {
                    {
                        "This card and another {C:joy_normal}Psychic{} {C:attention}Joker{} {C:attention}banish{} at end of round",
                        "until {C:attention}Boss Blind{} is selected and returns {C:attention}#1#{} {C:attention}Joker{}",
                        "{C:attention}banished{} until {C:attention}Boss Blind{}"
                    },
                }
            },
            j_joy_wannabee = {
                name = "{C:joy_effect}Wannabee!",
                text = {
                    {
                        "{C:attention}Excavate{} and check the top {C:attention}#1#{}:",
                        "Draw {C:attention}#2#{} card for each card with rank {C:attention}2{}",
                    },
                }
            },
            j_joy_merchant = {
                name = "{C:joy_effect}Magical Merchant",
                text = {
                    {
                        "{C:attention}Flips{} at end of round after #1# or more cards",
                        "are {C:attention}excavated{} {C:inactive}(even if face-down)",
                        "{C:inactive}(#2# remaining){}"
                    },
                    {
                        "{C:joy_effect}FLIP{}: When {C:attention}Blind{} is selected,",
                        "{C:attention}excavate{} until you hit a card that is your most owned suit",
                        "draw cards equal to the {C:attention}excavated{} cards up to that card inclusive",
                        "{C:inactive}(Currently {V:1}#3#{}{C:inactive}) (Changes at end of round)"
                    },
                }
            },
            j_joy_catoblepas = {
                name = "{C:joy_effect}Catoblepas and the Witch of Fate",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each {C:joy_normal}Spellcaster{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:green}#3# in #4#{} chance to {C:attention}banish #5#{} {C:joy_normal}Spellcaster{}",
                        "at end of round until {C:attention}Boss Blind{} is selected",
                        "and permanently double its listed {C:green}probabilities{}"
                    }
                }
            },
            j_joy_coupleofaces = {
                name = "{C:joy_effect}Couple of Aces",
                text = {
                    {
                        "If played hand contains a {C:attention}Pair{},",
                        "apply the following effects:",
                        "{X:mult,C:white}X#1#{} Mult",
                        "{C:green}#2# in #3#{} chance for scored {C:attention}Aces{} to give {X:mult,C:white}X#1#{} Mult",
                        "{C:green}#4# in #5#{} chance to level up scored hand",
                        "{C:green}#6# in #7#{} to turn each scored card into a {C:attention}Gold Seal Lucky Ace{}",
                    },
                }
            },
            j_joy_linkslayer = {
                name = "{C:joy_effect}Linkslayer",
                text = {
                    {
                        "Each {C:joy_normal}Cyberse{} gives {C:chips}+#1#{} Chips",
                        "for each discard used",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Free and doesn't need room",
                        "when obtained from the shop",
                        "if you own a {C:joy_normal}Cyberse{}"
                    }
                }
            },
        }
    },
}
