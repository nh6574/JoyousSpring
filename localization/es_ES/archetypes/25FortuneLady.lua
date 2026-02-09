return {
    descriptions = {
        Joker = {
            j_joy_flady_light = {
                name = "{C:joy_effect}Adivinadora Luz",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to {C:attention}banish #3#{}",
                        "{C:joy_normal}\"Fortune Lady\"{} at end of round",
                        "until {C:attention}Blind{} is selected"
                    },
                    {
                        "Gives {C:money}$#4#{} x {C:green}numerator{} at end of round",
                        "{C:inactive}(Caps at $#4# x #2#){}",
                        "{C:inactive}(Currently {C:money}+$#5#{}{C:inactive})"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{}",
                        "permanently by {C:attention}#6#{} when a card is {C:attention}banished"
                    }
                }
            },
            j_joy_flady_fire = {
                name = "{C:joy_effect}Adivinadora Fuego",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to double",
                        "all other listed {C:green}probabilities{} this round",
                    },
                    {
                        "Gives Mult equal to {C:mult}+#3#{} x all {C:joy_normal}\"Fortune Lady\"{} {C:green}numerators{}",
                        "{C:inactive}(Caps at +#3# x #4#){}",
                        "{C:inactive}(Currently {C:mult}+#5#{}{C:inactive} Mult)"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{}",
                        "permanently by {C:attention}#6#{} at end of round"
                    }
                }
            },
            j_joy_flady_wind = {
                name = "{C:joy_effect}Adivinadora Viento",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to create a {C:planet}Planet{}",
                        "for the played hand",
                    },
                    {
                        "{C:joy_normal}\"Fortune Lady\"{} each give Chips equal to {C:chips}+#3#{} x their {C:green}numerators{}",
                        "{C:inactive}(Caps at +#3# x their denominator){}",
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{} at end of round",
                        "permanently by {C:attention}#4#{} for each {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
            j_joy_flady_water = {
                name = "{C:joy_effect}Adivinadora Agua",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to increase hand size",
                        "by {C:attention}#3#{} when {C:attention}Blind{} is selected",
                        "{C:inactive}(Hand size resets when chance fails) (Max +#8#)",
                        "{C:inactive}(Currently {C:attention}+#4#{}{C:inactive} hand size.)"
                    },
                    {
                        "Gives Chips equal to {C:chips}+#5#{} x {C:green}numerator{}",
                        "{C:inactive}(Caps at +#5# x #2#){}",
                        "{C:inactive}(Currently {C:chips}+#6#{}{C:inactive} Chips)"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{}",
                        "permanently by {C:attention}#7#{} at end of round"
                    }
                }
            },
            j_joy_flady_earth = {
                name = "{C:joy_effect}Adivinadora Tierra",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to create {C:attention}#3#{}",
                        "{C:joy_normal}Main Deck \"Fortune Lady\"{} when {C:attention}Blind{} is selected",
                        "{C:inactive}(Must have room)",
                    },
                    {
                        "Gives {X:mult,C:white}X#4#{} extra Mult for each time",
                        "this card's {C:green}numerator{} increased permanently",
                        "{C:inactive}(Currently {X:mult,C:white}X#5#{}{C:inactive} Mult)"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{}",
                        "permanently by {C:attention}#6#{} when this card's {C:green}numerator{} increases permanently",
                        "{C:inactive}(Except to \"Fortune Lady Earth\"){}"
                    }
                }
            },
            j_joy_flady_dark = {
                name = "{C:joy_effect}Adivinadora Oscura",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to {C:attention}revive{}",
                        "{C:attention}#3#{} {C:joy_normal}\"Fortune Lady\"{} when {C:attention}Blind{} is selected",
                        "(or {C:joy_normal}Spellcaster{} if none)",
                    },
                    {
                        "Gives Mult equal to {C:mult}+#4#{} x {C:green}numerator{}",
                        "{C:inactive}(Caps at +#4# x #2#){}",
                        "{C:inactive}(Currently {C:mult}+#5#{}{C:inactive} Mult)"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{} at end of round",
                        "permanently by {C:attention}#6#{} for each {C:joy_normal}Spellcaster{}",
                    }
                }
            },
            j_joy_flady_past = {
                name = "{C:joy_effect}Adivinadora Pasado",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to {C:attention}banish{}",
                        "all {C:joy_normal}Spellcaster{} {C:attention}Jokers{} at end of round",
                        "until {C:attention}Blind{} is selected",
                    },
                    {
                        "Gives {X:mult,C:white}X#3#{} x {C:green}numerator{} extra Mult",
                        "{C:inactive}(Caps at X#3# x #2#){}",
                        "{C:inactive}(Currently {X:mult,C:white}X#4#{}{C:inactive} Mult)"
                    },
                    {
                        "Increase all listed {C:green}probabilities{} on {C:attention}Jokers{}",
                        "permanently by {C:attention}#5#{} when a card returns from {C:attention}banishment{}"
                    }
                }
            },
            j_joy_flady_every = {
                name = "{C:joy_synchro}Adivinadora Todo",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to give {X:mult,C:white}X#3#{} Mult this round",
                        "{C:green}#4# in #5#{} chance to {C:attention}banish #6#{} {C:joy_normal}\"Fortune Lady\"{}",
                        "at end of round until {C:attention}Blind{} is selected",
                        "{C:green}#7# in #8#{} chance to give {C:money}+$#9#{} at end of round",
                        "{C:green}#10# in #11#{} chance to permanently double",
                        "all listed {C:green}probabilities{} on each scored card",
                        "{C:green}#12# in #13#{} chance to create {C:attention}#14#{} {C:joy_normal}\"Fortune Fairy\"{}",
                        "when {C:attention}Blind{} is selected",
                        "{C:green}#15# in #16#{} chance to {C:attention}revive #17#{} {C:joy_normal}\"Fortune Lady\"{}",
                        "(or {C:joy_normal}Spellcaster{} if none) as {C:dark_edition}Negative{} when {C:attention}Blind{} is selected",
                    },
                    {
                        "Gives Mult equal to {C:mult}+#18#{} x {C:green}numerators{}",
                        "{C:inactive}(Caps at +#18# x #19#){}",
                        "{C:inactive}(Currently {C:mult}+#20#{}{C:inactive} Mult)"
                    },
                    {
                        "When a card returns from {C:attention}banishment{},",
                        "double its listed {C:green}probabilities{} permanently"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1{} {C:joy_normal}Spellcaster{} non-{C:joy_synchro}Tuner{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_ffairy_hikari = {
                name = "{C:joy_effect}Hada de la Fortuna Hikari",
                text = {
                    {
                        "{C:money}+$#1#{} when a listed {C:green}probability{} succeeds"
                    },
                    {
                        "Once per ante, create {C:attention}#2#{} {C:joy_normal}Main Deck Spellcaster{}",
                        "after {C:attention}#3#{} listed {C:green}probabilities{} succeed {C:inactive}(#4#/#3#){}",
                        "{C:inactive}(Must have room)"
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
            j_joy_ffairy_en = {
                name = "{C:joy_effect}Hada de la Fortuna En",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each time a listed",
                        "{C:green}probability{} succeeded this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:green}#3# in #4#{} chance to turn each scored card",
                        "into a {C:attention}Lucky{} card"
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
            j_joy_ffairy_hu = {
                name = "{C:joy_effect}Hada de la Fortuna Hu",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each time a listed",
                        "{C:green}probability{} succeeded this run",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "Next {C:green}probability{} after this card returns",
                        "from {C:attention}banishment{} is guaranteed"
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
            j_joy_ffairy_swee = {
                name = "{C:joy_effect}Hada de la Fortuna Swee",
                text = {
                    {
                        "{C:chips}+#1#{} Chips for each time a listed",
                        "{C:green}probability{} succeeded this run",
                        "{C:inactive}(Currently {C:chips}+#2#{}{C:inactive} Chips)"
                    },
                    {
                        "If a listed {C:green}probability{} succeeded this round,",
                        "{C:attention}banish{} this card and {C:attention}#3#{} other {C:attention}Joker{}",
                        "at end of round until {C:attention}Blind{} is selected"
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
            j_joy_ffairy_chee = {
                name = "{C:joy_effect}Hada de la Fortuna Chee",
                text = {
                    {
                        "{C:mult}+#1#{} Mult for each time a listed",
                        "{C:green}probability{} succeeded this run",
                        "{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Halves listed {C:green}denominator{} of all",
                        "non-{C:joy_normal}Spellcaster{} cards"
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
            j_joy_ffairy_ann = {
                name = "{C:joy_effect}Hada de la Fortuna Ann",
                text = {
                    {
                        "{C:money}+$#1#{} and send {C:attention}#2#{} {C:joy_normal}Spellcaster{}",
                        "to the {C:attention}GY{} when a listed {C:green}probability{} succeeds"
                    },
                    {
                        "{C:green}#3# in #4#{} chance to {C:attention}banish{}",
                        "at end of round until {C:attention}Blind{} is selected"
                    },
                    {
                        "Free and doesn't need room when obtained from the shop",
                        "if you own a {C:joy_normal}\"Fortune Lady\"{}"
                    }
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_flady = "Adivinadora",
        }
    }
}
