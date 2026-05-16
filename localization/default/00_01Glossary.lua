return {
    descriptions = {
        Other = {
            joy_face_down = {
                name = "Face-down monster",
                text = {
                    "Can't use or activate abilities",
                    "and counts as a blank Joker for abilities",
                    "unless specified",
                    "{C:inactive}(Editions still apply)",
                },
            },
            joy_tooltip_related = {
                name = "Related Cards",
                text = {
                    "Press {C:attention}d{} to see",
                    "related cards",
                },
            },
            joy_tooltip_glossary = {
                name = "Glossary",
                text = {
                    "Press {C:attention}g{} to see",
                    "the glossary",
                },
            },
            joy_tooltip_alt_art = {
                name = "Alternative Artwork",
                text = {
                    "Press {C:attention}a{} to switch",
                    "between artworks",
                    "{C:inactive,s:0.8}(For only this card)"
                },
            },
            joy_tooltip_transferred = {
                name = "Transferred Abilities",
                text = {
                    "Press {C:attention}t{} to switch",
                    "between main ability",
                    "and transferred abilities"
                },
            },
            joy_tooltip_illusion_joker = {
                name = "Illusion Joker",
                text = {
                    "{C:attention}Jokers{} with this {C:attention}original type{}",
                    "{C:attention}banish{} when {C:attention}Blind{} is selected",
                    "until end of round",
                },
            },
            joy_tooltip_trap = {
                name = "Trap Joker",
                text = {
                    "{C:attention}Flips{} when it enters play",
                    "and at every end of round",
                },
            },
            joy_tooltip_no_shop = {
                name = "Can't be purchased",
                text = {
                    "Can't be obtained from the shop",
                    "or non-{C:attention}Monster{} abilities",
                },
            },
        },
    },
    misc = {
        dictionary = {
            k_joy_glossary = "Glossary",
        },
        joyous_spring = {
            modifier = {
                name = "[Modifier]",
                text = {
                    "{C:attention}Editions{}, {C:attention}Enhancements{},",
                    "{C:attention}Seals{} or {C:attention}Stickers{}"
                }
            },
            transform = {
                name = "[Transform]",
                text = {
                    "Changes a {C:attention}Joker{} into another",
                    "Keeps any modifiers",
                }
            },
            facedown = {
                name = "[Face-down]",
                text = {
                    "{C:attention}Flipped {C:joy_normal}Monster{} {C:attention}Jokers{} can't use their abilities {C:inactive}(unless specified)",
                    "and count as blank {C:attention}Jokers{} for abilities and {C:attention}summons{} {C:inactive}(except Ritual and Fusion){}",
                    " ",
                    "{C:joy_link}Links{} can't be face-down",
                    "{C:attention}Editions{} still apply"
                }
            },
            monster = {
                name = "[{C:joy_normal}Monster{} Joker]",
                text = {
                    "{C:attention}Jokers{} from {C:joy_mod}JoyousSpring{}",
                    "{C:inactive}(Includes Field Spells){}"
                }
            },
            graveyard = {
                name = "[Graveyard]",
                text = {
                    "Abbreviated as {C:attention}GY{}",
                    "When a {C:joy_normal}Monster{} {C:attention}Joker{} is sold, destroyed",
                    "or used for a {C:attention}Summon{} they go to the {C:attention}Graveyard{}",
                    "and lose any modifiers"
                },
            },
            revive = {
                name = "[Revive]",
                text = {
                    "Create and removes a random card from the {C:attention}GY{} that meets the specified conditions",
                    "Must have room and might have a random edition, unless specified",
                    " ",
                    "{C:joy_spell}Special{} {C:attention}Jokers{} that were not properly {C:attention}summoned{} can't be revived",
                    "{C:attention}Revived Jokers{} have a sell value of {C:money}$1"
                },
            },
            banish = {
                name = "[Banish]",
                text = {
                    "Card temporarily disappears until specified time",
                    "They can return even if you don't have room, unless specified",
                    " ",
                    "{C:attention}Banished{} cards return before all other abilities activate",
                },
            },
            tribute = {
                name = "[Tribute]",
                text = {
                    "Abilities may {C:attention}tribute{} cards and destroy them",
                    "These act like any other destroyed card but may be relevant to other abilities"
                },
            },
            excavate = {
                name = "[Excavate]",
                text = {
                    "Reveals the top cards of the deck up to the maximum number listed on a card",
                    "Each card may {C:attention}check{} the top {C:attention}X{} cards excavated",
                    "or excavate until they hit a specific card",
                    " ",
                    "If not specified, this occurs when {C:attention}Blind{} is selected",
                }
            },
            sidedeck = {
                name = "[{C:joy_link}Side Deck{}]",
                text = {
                    "Allows saving {C:attention}Jokers{} between rounds",
                    "Cards may be bought directly to the {C:joy_link}Side Deck{} if it has room",
                    "Drag {C:attention}Jokers{} during the {C:joy_link}Side Deck{} stage",
                    "to move them between areas or use them as {C:attention}materials{} for {C:attention}summons{}",
                    " ",
                    "Note: This is a WIP feature, in the full release cards in the Side Deck",
                    "may be checked and sold at any time"
                }
            },
            blinds = {
                name = "[{C:joy_mod}JoyousSpring{} Blinds]",
                text = {
                    "{C:attention}Blinds{} from this mod have special properties",
                    "Some {C:attention}Blinds{} might have ante-wide abilities and",
                    "losing to any of these {C:attention}Blinds{}",
                    "(including {C:attention}Small{} or {C:blue}Big{} {C:attention}Blinds{} if it has ante-wide abilities)",
                    "will create a special card in the {C:joy_trap}Opponent{} area instead of causing a game over",
                    "This will only happen once per {C:attention}Blind{} and it will be debuffed",
                }
            },
            blind_card = {
                name = "[Blind card]",
                text = {
                    "Special {C:joy_trap}Opponent{} card associated with a {C:attention}Blind{}",
                }
            },
            opponent = {
                name = "[{C:joy_trap}Opponent{} card]",
                text = {
                    "Placed in the {C:joy_trap}Opponent{} area",
                    "If the area goes over capacity the oldest non-{C:dark_edition}Negative{} card",
                    "will be destroyed",
                    "These cards don't count as owned for abilities"
                }
            },
            normal = {
                name = "[{C:joy_normal}Normal{} Joker]",
                text = {
                    "{C:joy_normal}Main Deck{} {C:attention}Jokers{} with no abilities",
                    "Can't be found in the shop normally",
                    " ",
                    "Descriptions may contain flavor text"
                },
            },
            effect = {
                name = "[{C:joy_effect}Effect{} Joker]",
                text = {
                    "{C:attention}Jokers{} with abilities",
                    "Most {C:joy_normal}Monster{} {C:attention}Jokers{} fall under this category",
                },
            },
            maindeck = {
                name = "[{C:joy_normal}Main Deck{} Joker]",
                text = {
                    "{C:joy_normal}Normal{}, non-{C:joy_spell}Extra Deck{} {C:joy_effect}Effect{},",
                    "and {C:joy_ritual}Ritual{} {C:attention}Jokers{}",
                },
            },
            token = {
                name = "[{C:joy_token}Token{} Joker]",
                text = {
                    "{C:joy_normal}Normal{} {C:attention}Jokers{} created by abilities",
                    "May be given abilities when created but still count as {C:joy_normal}Normal{} {C:attention}Jokers{}",
                    " ",
                    "{C:joy_token}Tokens{} don't go to the {C:attention}Graveyard{}"
                },
            },
            pendulum = {
                name = "[{C:joy_pendulum}Pendulum{} Joker]",
                text = {
                    "{C:attention}Jokers{} that can also be used as consumables",
                    " ",
                    "{C:joy_spell}Special{} {C:attention}Jokers{} must be {C:attention}properly summoned{} first"
                },
            },
            flip = {
                name = "[{C:joy_effect}Flip{} Joker]",
                text = {
                    "{C:joy_effect}Flip{} {C:attention}Joker{} have {C:joy_effect}FLIP{} abilities",
                    "that triggers when it's {C:attention}flipped{} face-up",
                    "lasts until the next end of round {C:inactive}(unless specified)",
                    "All {C:joy_effect}FLIP{} abilities are once per round",
                    " ",
                    "Note: Cards are flipped by abilities and not manually"
                },
            },
            illusion_joker = {
                name = "[{C:joy_normal}Illusion{} Joker]",
                text = {
                    "{C:attention}Jokers{} with this {C:attention}original type{}",
                    "{C:attention}banish{} when {C:attention}Blind{} is selected until end of round",
                },
            },
            trap = {
                name = "[{C:joy_trap}Trap{} Joker]",
                text = {
                    "{C:attention}Flips{} when it enters play and at every end of round",
                },
            },
            no_shop = {
                name = "[Can't be purchased]",
                text = {
                    "This card can't be obtained from the shop",
                    "or non-{C:attention}Monster{} abilities",
                },
            },
            fieldspell = {
                name = "[{C:joy_spell}Field Spell{} Joker]",
                text = {
                    "Placed in the {C:joy_spell}Field Spell{} area"
                },
            },
            special = {
                name = "[{C:joy_spell}Special{} Joker]",
                text = {
                    "{C:attention}Jokers{} that must first be {C:attention}summoned{} by",
                    "destroying cards listed on their summoning requirements",
                    "May also enter play from abilities but won't count as properly {C:attention}summoned{}",
                    " ",
                    "This includes {C:joy_ritual}Ritual{}, {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{}, {C:joy_xyz}Xyz{} and {C:joy_link}Link{} {C:attention}Jokers{}",
                },
            },
            extradeck_joker = {
                name = "[{C:joy_spell}Extra Deck{} Joker]",
                text = {
                    "When obtained from the shop they are placed in the {C:joy_spell}Extra Deck{}",
                    "They enter play after destroying cards listed on their summoning requirements",
                    " ",
                    "This includes {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{}, {C:joy_xyz}Xyz{} and {C:joy_link}Link{} {C:attention}Jokers{}",
                    "{C:attention}Summoned{} Jokers have a sell value equal to their cost"
                },
            },
            extradeck = {
                name = "[{C:joy_spell}Extra Deck{}]",
                text = {
                    "Stores {C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
                    "Cards in this area don't count as {C:attention}owned{}",
                    " ",
                    "Card may be returned to the {C:joy_spell}Extra Deck{} from the {C:attention}Joker{} slots",
                    "in which case they must be {C:attention}summoned{} again before entering play"
                },
            },
            summon = {
                name = "[Summon]",
                text = {
                    "To enter play, {C:joy_spell}Special{} {C:attention}Jokers{} may be {C:attention}summoned{} by destroying cards",
                    "listed on their summoning requirements",
                    "{C:attention}Jokers{} that enter play this way are said to be properly {C:attention}summoned{}",
                    "To {C:attention}summon{} a card you must have room after the {C:attention}materials{} have been destroyed,",
                    "unless specified"
                },
            },
            transfer = {
                name = "[Transferred abilities]",
                text = {
                    "Some cards may make {C:attention}Joker{} gain extra abilities,",
                    "usually when used as {C:attention}material{}",
                    "If a {C:attention}Joker{} with a transferred ability is used for a {C:attention}summon{}",
                    "it will {C:red}not{} transfer these abiltiies, unless specified",
                    " ",
                    "Press {C:attention}t{} while hovering a {C:attention}Joker{} to see its transferred abilities"
                },
            },
            enter = {
                name = "[Enter play]",
                text = {
                    "A {C:attention}Joker{} added to the {C:attention}Joker{} slots",
                    "or the {C:joy_spell}Field Spell{} area for the first time is said to have entered play",
                    "as well as {C:joy_trap}Opponent{} cards added to the {C:joy_trap}Opponent{} area for the first time",
                    " ",
                    "This includes buying non-{C:joy_spell}Special{} {C:attention}Jokers{}, {C:attention}summoning{} {C:joy_spell}Special{} {C:attention}Jokers{},",
                    "moving a card from the {C:joy_link}Side Deck{} for the first time, {C:attention}reviving{} a card or",
                    "{C:attention}transforming{} into a card",
                },
            },
            material = {
                name = "[Material]",
                text = {
                    "Cards used to summon a {C:attention}Joker{}",
                },
            },
            xyz_material = {
                name = "[{C:joy_xyz}Xyz{} material]",
                text = {
                    "{C:joy_xyz}Xyz{} start with a counter equal to",
                    "the number of {C:attention}materials{} used for its {C:attention}summon"
                },
            },
            detach = {
                name = "[{C:joy_xyz}Detach{}]",
                text = {
                    "Remove {C:joy_xyz}Xyz{} {C:attention}materials{} for an ability",
                    " ",
                    "\"{C:joy_xyz}Detach{} {C:attention}X{}\" means the card can {C:attention}activate{} an ability",
                    "that requires detaching that many counters"
                },
            },
            attach = {
                name = "[{C:joy_xyz}Attach{}]",
                text = {
                    "Add {C:joy_xyz}Xyz{} {C:attention}materials{} to a card",
                    " ",
                    "{C:joy_xyz}Xyz{} {C:attention}materials{} might be added directly by an ability",
                    "or the may {C:attention}attach{} another card, in which case that card is removed",
                    "from that location but doesn't count as a {C:attention}summon material{} and doesn't {C:attention}transfers{} abilities"
                },
            },
            ritual = {
                name = "[{C:joy_ritual}Ritual{} Jokers]",
                text = {
                    "{C:joy_spell}Special{} {C:attention}Jokers{} that don't go in the {C:joy_spell}Extra Deck{}",
                    "but are instead {C:attention}summoned{} directly from the shop instead",
                    "Can't be bought but may be added to the {C:joy_link}Side Deck{} for free",
                    " ",
                    "{C:attention}Materials{} used for a {C:joy_ritual}Ritual{} count as {C:attention}tributed{}",
                    "and their properties will be checked even if face-down"
                },
            },
            fusion = {
                name = "[{C:joy_fusion}Fusion{} Joker]",
                text = {
                    "{C:joy_spell}Special{} {C:attention}Jokers{} that must first be {C:attention}summoned{}",
                    "from the {C:joy_spell}Extra Deck{}",
                    " ",
                    "{C:attention}Materials{} used for a {C:joy_fusion}Fusion{}",
                    "will have their properties checked even if face-down"
                },
            },
            synchro = {
                name = "[{C:joy_synchro}Synchro{} Joker]",
                text = {
                    "{C:joy_spell}Special{} {C:attention}Jokers{} that must first be {C:attention}summoned{}",
                    "from the {C:joy_spell}Extra Deck{}",
                    " ",
                    "{C:joy_synchro}Tuners{} are often required as {C:attention}material{}",
                    "{C:joy_xyz}Xyz{} and {C:joy_link}Links{} can't be used as {C:attention}materials{}, unless specified"
                },
            },
            xyz = {
                name = "[{C:joy_xyz}Xyz{} Joker]",
                text = {
                    "{C:joy_spell}Special{} {C:attention}Jokers{} that must first be {C:attention}summoned{}",
                    "from the {C:joy_spell}Extra Deck{}",
                    " ",
                    "They start with {C:joy_xyz}Xyz{} {C:attention}materials{} equal to the number of {C:attention}materials{} used for the {C:attention}summon",
                    "{C:joy_xyz}Xyz{}, {C:joy_link}Links{} and {C:joy_token}Tokens{} can't be used as {C:attention}materials{}, unless specified",
                    "If specified, {C:joy_xyz}Xyz{} used to summon other {C:joy_xyz}Xyz{} may transfer their {C:joy_xyz}Xyz{} {C:attention}materials{}",
                },
            },
            link = {
                name = "[{C:joy_link}Link{} Joker]",
                text = {
                    "{C:joy_spell}Special{} {C:attention}Jokers{} that must first be {C:attention}summoned{}",
                    "from the {C:joy_spell}Extra Deck{}",
                    " ",
                    "{C:joy_link}Links{} can't be {C:attention}flipped{} face-down"
                },
            },
        }
    },
}
