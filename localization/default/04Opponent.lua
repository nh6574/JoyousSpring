return {
    descriptions = {
        joy_Opponent = {
            --#region Effect
            opp_joy_dimensionshifter = {
                name = "{C:joy_effect}Dimension Shifter",
                text = {
                    "{C:attention}Banishes{} the first {C:attention}Joker{} bought",
                    "from each shop until end of ante"
                }
            },
            opp_joy_droll = {
                name = "{C:joy_effect}Droll & Lock Bird",
                text = {
                    "You can only buy",
                    "one item each shop",
                    "{C:inactive}(excluding Vouchers)"
                }
            },
            opp_joy_kurikara = {
                name = "{C:joy_effect}Kurikara Divincarnate",
                text = {
                    "{C:attention}Tributes{} a {C:attention}Joker{} with",
                    "the highest rarity at random", "and {C:attention}revives{} a {C:attention}Joker{} of the",
                    "same rarity but different name",
                    "if possible at end of ante"
                }
            },
            opp_joy_nibiru = {
                name = "{C:joy_effect}Nibiru, the Primal Being",
                text = {
                    "Cards {C:attention}summoned{} are",
                    "immediately {C:attention}tributed{} after",
                    "the 5th summon (#1#/5)"
                }
            },
            opp_joy_theia = {
                name = "{C:joy_effect}Theia, the Primal Being",
                text = {
                    "{C:attention}Tributes{} {C:red}Rare {C:attention}Jokers{} obtained",
                    "if you own another {C:red}Rare {C:attention}Joker{}",
                }
            },
            opp_joy_parasiteparacide = {
                name = "{C:joy_effect}Parasite Paracide",
                text = {
                    "{X:mult,C:white}X#1#{} Mult"
                }
            },
            opp_joy_parasiteparanoid = {
                name = "{C:joy_effect}Parasite Paranoid",
                text = {
                    "All {C:attention}Jokers{} are",
                    "treated as {C:joy_normal}Insects{}",
                }
            },
            --#endregion
            --#region Spell
            opp_joy_bookofeclipse = {
                name = "{C:joy_spell}Book of Eclipse",
                text = {
                    "{C:attention}Jokers{} can't {C:attention}flip{} face-up"
                }
            },
            opp_joy_bookoflunareclipse = {
                name = "{C:joy_spell}Book of Lunar Eclipse",
                text = {
                    "{C:attention}Flips 2 Jokers{}",
                    "each round",
                }
            },
            opp_joy_bookofmoon = {
                name = "{C:joy_spell}Book of Moon",
                text = {
                    "{C:attention}Flips{} a {C:attention}Joker{} face-down",
                    "at end of round",
                }
            },
            opp_joy_bookoftaiyou = {
                name = "{C:joy_spell}Book of Taiyou",
                text = {
                    "{C:attention}Jokers{} can't {C:attention}flip{} face-down"
                }
            },
            opp_joy_cosmiccyclone = {
                name = "{C:joy_spell}Cosmic Cyclone",
                text = {
                    "{C:attention}Banishes{} a {C:joy_spell}Field Spell{}",
                    "when {C:attention}Blind{} is selected",
                    "until start of {C:attention}Boss Blind{}"
                }
            },
            opp_joy_drnm = {
                name = "{C:joy_spell}Dark Ruler No More",
                text = {
                    "A random {C:green}Uncommon {C:attention}Joker",
                    "is debuffed each round"
                }
            },
            opp_joy_forchalice = {
                name = "{C:joy_spell}Forbidden Chalice",
                text = {
                    "Debuffs a different {C:joy_effect}Effect{} {C:attention}Joker{} each round",
                    "but that {C:attention}Joker{} gives {X:mult,C:white}X#1#{} Mult"
                }
            },
            opp_joy_fordress = {
                name = "{C:joy_spell}Forbidden Dress",
                text = {
                    "Scored cards give {X:chips,C:white}X#1#{} Chips",
                    "but playing cards can't be debuffed"
                }
            },
            opp_joy_fordroplet = {
                name = "{C:joy_spell}Forbidden Droplet",
                text = {
                    "Debuffs an {C:joy_effect}Effect{}, {C:joy_trap}Trap",
                    "or {C:joy_spell}Field Spell {C:attention}Joker{}",
                    "Cycles between options each round",
                    "{C:inactive}(Currently #1#){}"
                }
            },
            opp_joy_forlance = {
                name = "{C:joy_spell}Forbidden Lance",
                text = {
                    "All {C:joy_effect}Effect{} {C:attention}Jokers give {X:mult,C:white}X#1#{} Mult",
                    "but they can't be {C:attention}flipped{} face-down",
                    "or debuffed"
                }
            },
            opp_joy_forscript = {
                name = "{C:joy_spell}Forbidden Scripture",
                text = {
                    "{C:dark_edition}Editions{}, {C:attention}Enhancements",
                    "and {C:attention}Seals{} don't activate"
                }
            },
            opp_joy_harpiesfeatherduster = {
                name = "{C:joy_spell}Harpie's Feather Duster",
                text = {
                    "Reduces {C:joy_spell}Field Spell{} slots by {C:attention}1{}",
                }
            },
            opp_joy_lightningstorm = {
                name = "{C:joy_spell}Lightning Storm",
                text = {
                    "Destroys all {C:joy_spell}Field Spells",
                    "or all {C:attention}Jokers{} if none",
                    "at end of ante"
                }
            },
            opp_joy_necrovalley = {
                name = "{C:joy_spell}Necrovalley",
                text = {
                    "{C:attention}Jokers{} can't be {C:attention}revived{}"
                }
            },
            opp_joy_senetswitch = {
                name = "{C:joy_spell}Senet Switch",
                text = {
                    "A random {C:attention}Joker{} is",
                    "{C:attention}pinned{} to the left each round"
                }
            },
            opp_joy_superpoly = {
                name = "{C:joy_spell}Super Polymerization",
                text = {
                    "Can't summon {C:attention}Jokers{}",
                    "except {C:joy_fusion}Fusions{}"
                }
            },
            opp_joy_terminalworld = {
                name = "{C:joy_spell}Terminal World",
                text = {
                    "{C:attention}Big Blind",
                    "can't be selected"
                }
            },
            opp_joy_terminalworldnext = {
                name = "{C:joy_spell}Terminal World NEXT",
                text = {
                    "{C:attention}Joker{} slots are",
                    "reduced by {C:attention}2{}"
                }
            },
            opp_joy_ultimateslayer = {
                name = "{C:joy_spell}Ultimate Slayer",
                text = {
                    "Only {C:joy_effect}#1#{}", -- whatever was destroyed by the blind or links
                    "can be summoned"
                }
            },
            --#endregion
            --#region Trap
            opp_joy_chaindisappearance = {
                name = "{C:joy_trap}Chain Disappearance",
                text = {
                    "Each time a {C:attention}Joker is summoned,",
                    "{C:attention}banishes{} all others that share its {C:attention}Type",
                    "or {C:attention}Attribute{} until end of round"
                }
            },
            opp_joy_chaindispel = {
                name = "{C:joy_trap}Chain Dispel",
                text = {
                    "Destroy all {C:attention}Jokers",
                    "that share the same name except one",
                    "{C:inactive}(including Field Spells)"
                }
            },
            opp_joy_chainhole = {
                name = "{C:joy_trap}Chain Hole",
                text = {
                    "Banishes all {C:attention}Jokers",
                    "that share the same name except one",
                    "when {C:attention}Blind{} is selected",
                    "until end of round",
                    "{C:inactive}(including Field Spells)"
                }
            },
            opp_joy_evenly = {
                name = "{C:joy_trap}Evenly Matched",
                text = {
                    "A {C:attention}Joker{} is {C:attention}banished{}",
                    "when {C:attention}Blind{} is selected",
                    "until next {C:attention}Blind{} is selected"
                }
            },
            opp_joy_imperialironwall = {
                name = "{C:joy_trap}Imperial Iron Wall",
                text = {
                    "Cards can't be {C:attention}banished"
                }
            },
            opp_joy_imperialorder = {
                name = "{C:joy_trap}Imperial Order",
                text = {
                    "{C:joy_spell}Field Spells{} are debuffed"
                }
            },
            opp_joy_imperm = {
                name = "{C:joy_trap}Infinite Impermanence",
                text = {
                    "A non-{C:joy_trap}Trap {C:joy_effect}Effect {C:attention}Joker",
                    "is debuffed each {C:attention}Small{} and {C:attention}Big Blind{}"
                }
            },
            opp_joy_lightforcesword = {
                name = "{C:joy_trap}Lightforce Sword",
                text = {
                    "{C:attention}Banishes 1{} scored card from each", "until end of ante"
                }
            },
            opp_joy_macrocosmos = {
                name = "{C:joy_trap}Macro Cosmos",
                text = {
                    "No cards are sent",
                    "to the {C:attention}GY"
                }
            },
            opp_joy_redreboot = {
                name = "{C:joy_trap}Red Reboot",
                text = {
                    "A {C:joy_trap}Trap{} is debuffed each round"
                }
            },
            --#endregion
        },
    },
    misc = {
        dictionary = {
            k_joy_opponent = "Opponent",
            k_joy_opponentcards = "Opponent cards",
        }
    }
}
