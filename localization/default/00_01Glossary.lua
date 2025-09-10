return {
    descriptions = {
        Other = {
            --#region Tooltips
            joy_face_down = {
                name = "Face-down monster",
                text = {
                    "Can't use or activate abilities",
                    "and counts as a blank Joker for abilities",
                    "{C:inactive}(Unless specified)",
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
            joy_tooltip_transform = {
                name = "Transform",
                text = {
                    "Changes a {C:attention}Joker{} into another",
                    "Keeps any modifiers",
                },
            },
            joy_tooltip_revive = {
                name = "Revive",
                text = {
                    "Create and remove a random card from the {C:attention}GY{}",
                    "Must have room and might have",
                    "a random edition, unless specified",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_spell}Special{} {s:0.9,C:attention}Jokers{} {s:0.9,C:inactive}that were not properly",
                    "{s:0.9,C:inactive}summoned and {s:0.9,C:joy_spell}Field Spells{{s:0.9,C:inactive} can't be revived)",
                    "{s:0.9,C:inactive}(Revived Jokers have a sell value of 1)"
                },
            },
            joy_tooltip_extra_deck_joker = {
                name = "Extra Deck Joker",
                text = {
                    "{C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{},",
                    "{C:joy_xyz}Xyz{} and {C:joy_link}Link{} {C:attention}Jokers{}",
                    "{s:0.9,C:inactive}(Cards in the Extra Deck don't count",
                    "{s:0.9,C:inactive}as owned for abilities)"
                },
            },
            joy_tooltip_main_deck_joker = {
                name = "Main Deck Joker",
                text = {
                    "{C:joy_normal}Normal{}, {C:joy_effect}Effect{},",
                    "and {C:joy_ritual}Ritual{} {C:attention}Jokers{}"
                },
            },
            joy_tooltip_special = {
                name = "Special Joker",
                text = {
                    "{C:joy_ritual}Ritual{}, {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{},",
                    "{C:joy_xyz}Xyz{} and {C:joy_link}Link{} {C:attention}Jokers{}"
                },
            },
            joy_tooltip_pendulum_joker = {
                name = "Pendulum Joker",
                text = {
                    "Can be used as consumable",
                    "{C:inactive}({C:joy_spell}Special{} {C:inactive}Jokers have to be",
                    "{C:inactive}properly summoned first)"
                },
            },
            joy_tooltip_field_spell_joker = {
                name = "Field Spell Joker",
                text = {
                    "Goes to the {C:joy_spell}Field Spell Area{}",
                    "They don't count as owned {C:attention}Jokers{} for abilities",
                    "while in that area unless specified"
                },
            },
            joy_tooltip_banish = {
                name = "Banish",
                text = {
                    "Card temporarily disappears until specified time,",
                    "keeping only some effects active.",
                    "They can return even if you don't have room"
                },
            },
            joy_tooltip_tribute = {
                name = "Tribute",
                text = {
                    "Destroy card to activate an ability",
                },
            },
            joy_tooltip_excavate = {
                name = "Excavate",
                text = {
                    "Reveal the top cards of the deck",
                    "up to the maximum number listed on a card",
                    "This occurs when {C:attention}Blind{} is selected unless specified",
                },
            },
            joy_tooltip_material = {
                name = "Material",
                text = {
                    "Cards used for a summon",
                    "{C:inactive}({}{C:joy_xyz}Xyz Jokers{} {C:inactive}start with a counter equal{}",
                    "{C:inactive}to the number used){}",
                },
            },
            joy_tooltip_detach = {
                name = "Detach",
                text = {
                    "Remove an Xyz material counter",
                    "to activate an ability",
                },
            },
            joy_tooltip_token = {
                name = "Token",
                text = {
                    "{C:joy_normal}Monster{} card crated by abilities",
                    "It has no with no abilities of its own",
                },
            },
            joy_tooltip_flip = {
                name = "FLIP ability",
                text = {
                    "Triggers once per round when card is",
                    "{C:attention}flipped{} face-up and lasts until",
                    "the next end of round {C:inactive}(Unless specified)",
                    "{C:inactive}(Cards are flipped by abilities){}"
                },
            },
            joy_tooltip_trap = {
                name = "Trap Joker",
                text = {
                    "{C:attention}Flips{} when obtained",
                    "and at every end of round",
                },
            },
            joy_tooltip_monster = {
                name = "Monster Joker",
                text = {
                    "{C:attention}Jokers{} from {C:joy_mod}JoyousSpring",
                },
            },
            joy_tooltip_no_shop = {
                name = "No Purchasable",
                text = {
                    "Can't be obtained from the shop",
                    "or non-{C:attention}Monster{} abilities",
                },
            },
            --#endregion
            --#region Glossary
            joy_glossary_monster = {
                name = "",
                text = {
                    "{C:joy_normal,s:1.3}Monster{} {C:attention,s:1.3}Jokers{}: {C:attention}Jokers{} from this mod",
                },
            },
            joy_glossary_gy = {
                name = "",
                text = {
                    "{C:attention,s:1.3}Graveyard{} (also {C:attention}GY{}): List of {C:joy_normal}Monster{} {C:attention}Jokers{} sold, destroyed or used for a {C:attention}Summon{}. They lose any enhacements."
                },
            },
            joy_glossary_revive = {
                name = "",
                text = {
                    "{C:attention,s:1.3}Revive{}: Create and remove a random card from the {C:attention}GY{}. Must have room and might have a random edition, unless specified",
                    "{C:joy_spell}Extra Deck{} and {C:joy_ritual}Ritual{} {C:attention}Jokers{} that were not properly summoned can't be revived",
                    "Revived Jokers have a sell value of 1"
                },
            },
            joy_glossary_banish = {
                name = "",
                text = {
                    "{C:attention,s:1.3}Banish{}: Card temporarily disappears until specified time, keeping only some effects active.",
                    "They can return even if you don't have room, unless specified",
                    "{C:attention}Banished{} cards return before all other abilities activate"
                },
            },
            joy_glossary_transform = {
                name = "",
                text = {
                    "{C:attention,s:1.3}Transform{}: Changes a {C:attention}Joker{} into another. Keeps any enhancements",
                },
            },
            joy_glossary_facedown = {
                name = "",
                text = {
                    "{C:attention,s:1.3}Face-down{}: Flipped {C:joy_normal}Monster{} {C:attention}Jokers{} can't use their abilities (unless specified). {C:joy_link}Links{} can't be face-down",
                },
            },
            joy_glossary_maindeck = {
                name = "",
                text = {
                    "{C:joy_normal,s:1.3}Main Deck{} {C:attention,s:1.3}Jokers{}: Any {C:joy_normal}Monster{} {C:attention}Joker{} that is not an {C:joy_spell}Extra Deck{} {C:attention}Joker{} (See Summon Glossary)",
                },
            },
            joy_glossary_pendulum = {
                name = "",
                text = {
                    "{C:joy_pendulum,s:1.3}Pendulum{} {C:attention,s:1.3}Jokers{}: {C:attention}Jokers{} that can also be used as consumables",
                },
            },
            joy_glossary_fieldspell = {
                name = "",
                text = {
                    "{C:joy_spell,s:1.3}Field Spells{}: They go into the {C:joy_spell}Field Spell{} area (press the {C:joy_spell}Extra Deck{} button) but otherwise act like any other {C:attention}Joker{}",
                },
            },
            joy_glossary_extradeck = {
                name = "",
                text = {
                    "{C:joy_spell,s:1.3}Extra Deck{} {C:attention,s:1.3}Jokers{}: When obtanied from the shop they are put in the {C:joy_spell}Extra Deck{}.",
                    "To use them, you have to sacrifice {C:attention}Jokers{} listed on the card's summoning requirements.",
                    "This includes {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{}, {C:joy_xyz}Xyz{} and {C:joy_link}Link{} {C:attention}Jokers{}",
                    "{C:joy_xyz}Xyz{} and {C:joy_link}Link{} {C:attention}Jokers{} can't be used for {C:joy_synchro}Synchro{} and {C:joy_xyz}Xyz{} summons unless specified",
                    "{C:joy_token}Tokens{} can't be used for {C:joy_xyz}Xyz{} summons unless specified",
                    "Summoned Jokers have a sell value equal to their cost"
                },
            },
            joy_glossary_material = {
                name = "",
                text = {
                    "{C:attention,s:1.3}Material{}: Cards used to summon a {C:attention}Joker{}",
                },
            },
            joy_glossary_detach = {
                name = "",
                text = {
                    "{C:joy_xyz,s:1.3}Detach{}: {C:joy_xyz}Xyz{} {C:attention}Jokers{} start with a number equal to the materials used to summon it.",
                    "Some abilities might {C:joy_xyz}detach{} these or allow you to do it to activate some ability",
                },
            },
            joy_glossary_ritual = {
                name = "",
                text = {
                    "{C:joy_ritual,s:1.3}Ritual{} {C:attention,s:1.3}Jokers{}: These don't go in the {C:joy_spell}Extra Deck{} but are summoned directly from the shop instead. They count as {C:joy_normal}Main Deck{} {C:attention}Jokers{}",
                },
            },
            --#endregion
        },
    },
    misc = {
        dictionary = {
            k_joy_glossary = "Basic Glossary",
            k_joy_summon_glosary = "Summon Glossary",
        }
    },
}
