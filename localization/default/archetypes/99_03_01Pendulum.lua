return {
    descriptions = {
        Joker = {
            j_joy_foucault = {
                name = "{C:joy_pendulum_normal}Foucault's Cannon",
                joy_consumable = {
                    "Create as many {C:planet}Earth Planet{} cards as possible",
                    "{C:inactive}(Must have room)"
                },
                text = {
                    {
                        "{E:1}A mechanized life form, roving through space-time. But the{}",
                        "{E:1}mysterious thing is that its memory i... m...stly gone. W...at is{}",
                        "{E:1}t...e reason? D..... refuse t... b.... interfered w...h?{}",
                    },
                }
            },
            j_joy_hallo = {
                name = "{C:joy_pendulum_normal}Hallohallo",
                joy_consumable = {
                    "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{}",
                    "permanently by a different random number from {C:attention}#1#{} to {C:attention}#2#{}"
                },
                text = {
                    {
                        "{E:1}Hallo Hallo, brain of tallow,{}",
                        "{E:1}Guts are gone, noggin's hollow.{}",
                        "{E:1}Seeking sweets and marshing mallows,{}",
                        "{E:1}Watch your back, and your candy sack.{}",
                    },
                }
            },
            j_joy_eccentrick = {
                name = "{C:joy_pendulum_effect}Archfiend Eccentrick",
                joy_consumable = {
                    "Destroys up to {C:attention}#1#{} selected cards",
                },
                text = {
                    {
                        "{C:mult}+#2#{} Mult for every destroyed playing card this run",
                        "{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_pendulumoon = {
                name = "{C:joy_pendulum_effect}PenduLuMoon",
                joy_consumable = {
                    "{C:attention}Revive #1#{} {C:joy_pendulum}Pendulum{} as {C:dark_edition}Negative",
                },
                text = {
                    {
                        "Sends {C:attention}#2#{} {C:joy_pendulum}Pendulum{} to the {C:attention}GY{}",
                        "when {C:attention}Blind{} is selected",
                    },
                    {
                        "Cannot be {C:attention}revived{}",
                    },
                },
            },
            j_joy_pandora = {
                name = "{C:joy_pendulum_effect}Pandora's Jewelry Box",
                joy_consumable = {
                    "Give a random {C:joy_pendulum}Pendulum{} a random {C:dark_edition}Edition{}"
                },
                text = {
                    {
                        "{C:blue}+#1#{} Hands when {C:attention}Blind{} is selected",
                        "if you have no cards in the {C:joy_spell}Extra Deck{}",
                    },
                }
            },
            j_joy_anchamoufrite = {
                name = "{C:joy_pendulum_effect}Anchamoufrite",
                joy_consumable = {
                    "During a {C:attention}Blind{}, draw {C:attention}#1#{} extra cards"
                },
                text = {
                    {
                        "{C:attention}+#2#{} hand size when {C:attention}Blind{} is selected",
                        "if you have no cards in the {C:joy_spell}Extra Deck{}",
                    },
                }
            },
            j_joy_zany = {
                name = "{C:joy_pendulum_effect}Zany Zebra",
                joy_consumable = {
                    "If you own {C:attention}#1# Jokers{} or less (after use),",
                    "permanently lose {C:red}#2#{} {C:attention}Joker{} slot and",
                    "give all {C:attention}Jokers{} {C:dark_edition}Polychrome{}"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{} Mult if you own {C:attention}#1# Jokers{} or less",
                    },
                }
            },
            j_joy_pendulumucho = {
                name = "{C:joy_pendulum_effect}Pendulumucho",
                joy_consumable = {
                    "{C:attention}Revive #1#{} {C:joy_pendulum}Pendulum{}",
                },
                text = {
                    {
                        "{C:attention}Revives #2#{} {C:joy_pendulum}Pendulum{} when obtained",
                    },
                    {
                        "Cannot be {C:attention}revived{}",
                    },
                }
            },
            j_joy_moissa = {
                name = "{C:joy_pendulum_effect}Moissa Knight, the Comet General",
                joy_consumable = {
                    "Add {C:attention}#1#{} {C:joy_pendulum}Pendulum{} to the shop"
                },
                text = {
                    {
                        "Gains {C:chips}+#2#{} Chips for each {C:joy_pendulum}Pendulum{} bought",
                        "{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips)",
                    },
                }
            },
            j_joy_pmcaptor = {
                name = "{C:joy_pendulum_effect}P.M. Captor",
                joy_consumable = {
                    "{C:attention}Revive #1#{} {C:joy_pendulum}Pendulum{}",
                    "{C:inactive}(Except \"P.M. Captor\"){}"
                },
                text = {
                    {
                        "{C:joy_normal}Zombies{} cannot be debuffed",
                        "Non-{C:joy_trap}Trap{} {C:joy_normal}Zombies{} cannot be {C:attention}flipped{}",
                    },
                }
            },
            j_joy_metrognome = {
                name = "{C:joy_pendulum_effect}Metrognome",
                joy_consumable = {
                    "Create {C:attention}#1#{} {C:joy_pendulum}Pendulum{} of the most owned rarity",
                    "{C:inactive}(Must have room) (Random if multiple)"
                },
                text = {
                    {
                        "Each {C:joy_pendulum}Pendulum{} that shares the",
                        "most owned rarity gives {C:mult}+#2#{} Mult",
                    },
                }
            },
            j_joy_bozu = {
                name = "{C:joy_pendulum_effect}Rain Bozu",
                joy_consumable = {
                    "A random {C:joy_normal}Monster{} {C:attention}Joker{} gains",
                    "this card's current Chips and Mult"
                },
                text = {
                    {
                        "Gains {C:chips}+#1#{} Chips for each card in the {C:joy_spell}Extra Deck{}",
                        "and {C:mult}+#2#{} Mult for each empty {C:joy_spell}Extra Deck{} slot",
                        "when {C:attention}Blind{} is selected",
                        "{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips and {C:mult}+#4#{} {C:inactive}Mult)",
                    },
                },
                joy_transfer_ability = {
                    "{C:chips}+#1#{} Chips {C:mult}+#2#{} Mult",
                }
            },
            j_joy_disablaster = {
                name = "{C:joy_pendulum_effect}Disablaster the Negation Fortress",
                joy_consumable = {
                    "{C:money}+$#1#{} for each time this card's {C:attention}Joker{} ability",
                    "increased scored Mult",
                    "{C:inactive}(Currently {C:money}+$#2#{}{C:inactive})"
                },
                text = {
                    {
                        "{X:mult,C:white}X#3#{} Mult if no card is played in this {C:attention}column{}",
                        "{C:inactive}(Lowers the higher the column)",
                        "{C:inactive}(Currently in {C:attention}column #4#{}{C:inactive})",
                    },
                }
            },
        }
    },
}
