return {
    descriptions = {
        JoyousSpringTutorial = {
            welcome = {
                name = "Welcome to {C:joy_mod}JoyousSpring{}!",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "Hi, hello! Thank you for playing JoyousSpring!",
                                "This mod tries to recreate the feeling of playing",
                                "modern {C:joy_effect}Yu-Gi-Oh!{} decks in {C:attention}Balatro{}"
                            },
                            {
                                "Knowledge about the card game is not necessary and",
                                "there will be more pop-ups like this one explaining the mechanics",
                                "You can reread them or disable them entirely in the mod's menu,",
                                "as well as the glossary for all the important keywords",
                                " ",
                                "Please let me know if anything is unclear so I can improve on it!"
                            },
                            {
                                "Make sure to check out the config in the mod's menu!",
                                "{C:joy_effect,button:joy_open_config,u:joy_effect}(Or click here!)"
                            },
                        }
                    },
                },
            },
            extra_deck = {
                name = "{C:joy_spell}Extra Deck{}",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "The {C:joy_spell}Extra Deck{} stores special kinds of {C:attention}Jokers{}",
                                "that must be {C:attention}summoned{} before entering play."
                            },
                            {
                                "To {C:attention}summon{} a {C:attention}Joker{} from the {C:joy_spell}Extra Deck{} check its {C:attention}tooltips{}",
                                "to see the {C:attention}summoning conditions{}, then click on it and press \"summon\"",
                                "to select the required cards to destroy."
                            },
                            {
                                "{C:joy_ritual}Ritual{} {C:attention}Jokers{} don't go into the {C:joy_spell}Extra Deck{}",
                                "but are summoned directly from the shop instead!"
                            },
                        }
                    },
                },
            },
            graveyard = {
                name = "{C:joy_trap}Graveyard{} & {C:joy_trap}Banishment{}",
                text = {
                    {
                        name = "Graveyard",
                        text = {
                            {
                                "The {C:attention}Graveyard{} (or {C:attention}GY{}) is where {C:joy_normal}Monster{} {C:attention}Jokers{}",
                                "go when they're destroyed."
                            },
                            {
                                "These {C:attention}Jokers{} lose any attributes then had while in play,",
                                "but can be used by other abilities that check the {C:attention}graveyard{} or {C:attention}revive Jokers{}."
                            },
                            {
                                "{C:joy_spell}Special{} {C:attention}Jokers{} must be {C:attention}summoned{} before",
                                "being able to be {C:attention}revived{}"
                            },
                        }
                    },
                    {
                        name = "Banishment",
                        text = {
                            {
                                "Some {C:attention}Jokers{} have the ability to leave the {C:attention}Joker{} slots",
                                "temporarily until a specified time or make other cards do so,",
                                "including {C:attention}consumables{} and {C:attention}playing cards{}.",
                                "This is called {C:attention}banishing{}."
                            },
                            {
                                "These cards will come back even if the slots are full,",
                                "making them similar to {C:dark_edition}Negative{} cards."
                            },
                            {
                                "Cards return before other abilities trigger and are usually",
                                "{C:attention}banished{} after all other abilities trigger"
                            },
                        }
                    },
                },
            },
            side_deck = {
                name = "{C:joy_link}Side Deck{}",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "The {C:joy_link}Side Deck{} can store {C:attention}Jokers{} between rounds.",
                                "This frees up slots for creating or buying more {C:attention}Jokers{}",
                                "and allows planning strategies long term."
                            },
                            {
                                "You can drag {C:attention}Jokers{} between the appropriate areas during the",
                                "{C:joy_link}Side Deck{} screen but you may look and sell the stored {C:attention}Jokers{}",
                                "at any time.",
                            },
                            {
                                "During the {C:joy_link}Side Deck{} screen you can use {C:attention}Jokers{} stored",
                                "for a {C:attention}summon{} and perform {C:joy_ritual}Ritual{} {C:attention}summons{}.",
                                "{C:inactive}(Special Jokers that have not entered play can't be used this way){}"
                            },
                        }
                    },
                },
            },
            blinds = {
                name = "{C:joy_mod}Blinds{} & {C:joy_trap}Opponent{}",
                text = {
                    {
                        name = "JoyousSpring Blinds",
                        text = {
                            {
                                "{C:attention}Boss Blinds{} from {C:joy_mod}JoyousSpring{} have",
                                "special characteristics."
                            },
                            {
                                "Some can have abilities that last for the entire {C:attention}ante{},",
                                "indicated by a card that appears at the top of the deck."
                            },
                            {
                                "When losing to a {C:attention}Blind{} from this mod, your {C:joy_trap}Opponent{}",
                                "gains a special card that gives you a permanent debuff in exchange for",
                                "an extra life. This can happen once per {C:attention}ante{} and only when",
                                "the {C:attention}Blind{}'s abilities are active."
                            },
                        }
                    },
                    {
                        name = "Opponent",
                        text = {
                            {
                                "{C:joy_trap}Opponent{} cards go into the {C:joy_trap}Opponent{}'s area.",
                                "Only up to {C:attention}5{} cards can be stored there but if an extra",
                                "one is added the oldest card gets destroyed.",
                                "{C:inactive}(Abilities might modify this limit){}"
                            },
                            {
                                "{C:attention}Blinds{} add detrimental cards to this area",
                                "when you lose to them."
                            },
                            {
                                "Cards in this area cannot be sold, moved",
                                "or selected for abilities, unless specified."
                            },
                        }
                    },
                },
            },
            secret_pack = {
                name = "{C:joy_mod}Selection Packs{} & {C:joy_mod}Secret Packs{}",
                text = {
                    {
                        name = "",
                        text = {
                            {
                                "{C:joy_mod}Seletion Packs{} appear every shop and contain",
                                "{C:attention}4{} {C:joy_mod}Secret Packs{} that can be opened."
                            },
                            {
                                "{C:joy_mod}Secret Packs{} contain {C:attention}Jokers{} from a",
                                "specified theme, and allow you to more easily aim for certain strategies",
                                "or find useful {C:attention}Jokers{} for your current situation."
                            },
                            {
                                "You can see the {C:attention}Jokers{} a {C:joy_mod}Secret Pack{} can contain",
                                "by pressing {C:attention}d{} over them and looking at the related cards"
                            },
                        }
                    },
                },
            },
            card_attributes = {
                name = "{C:joy_normal}Monster{} {C:attention}Jokers{}",
                text = {
                    {
                        name = "Basic Information",
                        text = {
                            {
                                "{C:joy_normal}Monster{} {C:attention}Jokers{} are {C:attention}Jokers{} from {C:joy_mod}JoyousSpring{}.",
                                "These have different characteristics carried from the {C:joy_effect}Yu-Gi-Oh!{} TCG."
                            },
                            {
                                "For most of these {C:attention}Jokers{} you can see {C:red}Related Cards",
                                "(such as the Archetype they belong to) by pressing {C:attention}d{} over them",
                                "and you can see the {C:red}Glossary{} of {C:attention}keywords{} in the descriptions by pressing {C:attention}g{}"
                            },
                            {
                                "If a card has {C:attention}transferred{} abilities {C:inactive}(see Glossary){},",
                                "you can press {C:attention}t{} to switch between ability pages",
                                " ",
                                "If a card has alternate artworks, you can press {C:attention}a{} to change them",
                                "or change the default one from the mod's settings"
                            },
                            {
                                "If a card has an {C:attention}activated{} ability",
                                "{C:inactive}(it says \"you can\" or \"Detach\"){}",
                                "then you need to click on the card and press the button to use it"
                            },
                        }
                    },
                    {
                        name = "Card Types",
                        text = {
                            {
                                "{C:joy_normal}Monster{} {C:attention}Jokers{} are roughly divided",
                                "into three types: non-{C:joy_spell}Special{}, {C:joy_spell}Special{} and {C:joy_spell}Field Spells{}",
                            },
                            {
                                "Non-{C:joy_spell}Special{} {C:attention}Jokers{} act mostly like any other {C:attention}Joker{}",
                                " ",
                                "{C:joy_spell}Special{} {C:attention}Jokers{} must be {C:attention}summoned{} to enter play,",
                                "these include {C:joy_ritual}Ritual{}, {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{}, {C:joy_xyz}Xyz{} and {C:joy_link}Link{}.",
                                " ",
                                "{C:joy_spell}Field Spells{} go to the {C:joy_spell}Field Spell{} area and don't count",
                                "as owned {C:attention}Jokers{} for abilities, unless specified"
                            },
                            {
                                "Unlike regular {C:attention}Jokers{}, {C:joy_normal}Monster{} {C:attention}Joker{} abilities",
                                "don't work while {C:attention}face-down{}, but you get to see their information.",
                            }
                        }
                    },
                    {
                        name = "Monster Characteristics",
                        text = {
                            {
                                "Aside from the ability text, {C:joy_normal}Monster{} {C:attention}Jokers{} have",
                                "other characteristics that can be seen in the description box"
                            },
                            {
                                "{C:joy_normal}Monster{} {C:attention}Jokers{} are usually {C:joy_effect}Effect{} {C:attention}Jokers{}, regular {C:attention}Jokers{} with abilities,",
                                "but can sometimes be {C:joy_normal}Normal{} {C:attention}Jokers{} instead,",
                                "{C:attention}Jokers{} without abilities that don't appear normally in the shop"
                            },
                            {
                                "They can also have an {C:joy_normal}Attribute{} (e.g. {C:joy_dark}DARK{})",
                                "and a {C:joy_normal}Type{} (e.g. {C:joy_normal}Spellcaster{})",
                                " ",
                                "These are important for abiltities but don't affect gameplay otherwise,",
                                "except for the {C:joy_normal}Illusion{} type which has the inherent ability",
                                "to {C:attention}banish{} before a {C:attention}Blind{}"
                            }
                        }
                    },
                    {
                        name = "Monster Characteristics (cont.)",
                        text = {
                            {
                                "These are other characteristics a {C:joy_normal}Monster{} {C:attention}Joker{} can be:",
                                "{C:joy_trap}Trap{}, that inherently {C:attention}flip{} every round",
                                "{C:joy_pendulum}Pendulum{}, that can be used as {C:attention}consumables{}",
                                "{C:joy_effect}Flip{}, that have abilities when {C:attention}flipped{} face-up",
                                "and/or {C:joy_synchro}Tuner{}, that are used for {C:joy_synchro}Synchro{} {C:attention}summons{}"
                            },
                            {
                                "Names are also an important detail,",
                                "for example a card is considered a {C:joy_normal}\"Dragonmaid\"{} {C:attention}Joker{}",
                                "if it contains {C:joy_normal}\"Dragonmaid\"{} in its name."
                            },
                            {
                                "Again, if anything is unclear at any moment you can press {C:attention}g{}",
                                "over a {C:attention}Joker{} to see its Glossary, and you can read",
                                "all the Tutorials and Glossaries in the mod's menu.",
                                " ",
                                "Good luck!"
                            }
                        }
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            joy_tutorial_disable = "Do not show again",
        }
    }
}
