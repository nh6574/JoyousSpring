return {
    descriptions = {
        Joker = {
            j_joy_ignis_achichi = {
                name = "{C:joy_effect}Achichi @Ignister",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:blue}Common{} {C:joy_normal}Main Deck",
                        "{C:joy_normal}\"@Ignister\"{} when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_ignis_pikari = {
                name = "{C:joy_effect}Pikari @Ignister",
                text = {
                    {
                        "{C:money}+$#1#{} at end of round",
                    },
                    {
                        "Creates {C:attention}#2#{} random {C:tarot}Tarot",
                        "when obtained",
                        "{C:inactive}(Must have room){}",
                    },
                }
            },
            j_joy_ignis_hiyari = {
                name = "{C:joy_effect}Hiyari @Ignister",
                text = {
                    {
                        "{C:attention}+#1#{} hand size",
                    },
                    {
                        "Once per round, you can {C:attention}tribute #2#{} {C:joy_normal}Cyberse{}",
                        "to create {C:attention}#3#{} {C:green}Uncommon{} {C:joy_normal}Main Deck \"@Ignister\"",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Free if you own an {C:joy_normal}\"@Ignister\"",
                    },
                }
            },
            j_joy_ignis_bururu = {
                name = "{C:joy_effect}Bururu @Ignister",
                text = {
                    {
                        "Sends {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:attention}GY{} when obtained",
                    },
                    {
                        "{C:attention}Revives #2#{} {C:joy_normal}Main Deck \"@Ignister\"{} as {C:dark_edition}Negative",
                        "when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
                    },
                }
            },
            j_joy_ignis_doshin = {
                name = "{C:joy_effect}Doshin @Ignister",
                text = {
                    {
                        "{C:chips}+#1#{} Chips",
                    },
                    {
                        "{C:attention}Revives #2#{} {C:joy_spell}Extra Deck{} {C:joy_normal}\"@Ignister\"{}",
                        "when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
                    },
                }
            },
            j_joy_ignis_gatchiri = {
                name = "{C:joy_effect}Gatchiri @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult",
                    },
                    {
                        "Can be used as any {C:attention}material{} for a {C:joy_link}Link",
                    },
                    {
                        "A {C:joy_normal}Cyberse{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Can't be debuffed or {s:0.9,C:attention}flipped {s:0.9}face-down",
                    },
                },
                joy_transfer_ability = {
                    "Can't be debuffed or {C:attention}flipped{} face-down"
                }
            },
            j_joy_ignis_gussari = {
                name = "{C:joy_effect}Gussari @Ignister",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "Can be used as any {C:attention}material{} for a {C:joy_link}Link",
                    },
                    {
                        "A {C:joy_link}Link{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9,C:mult}+#1# {s:0.9}Mult for each {s:0.9,C:attention}material {s:0.9}used for its summon",
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult for each {C:attention}material{} used for its summon",
                    "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
                }
            },
            j_joy_ignis_danmari = {
                name = "{C:joy_effect}Danmari @Ignister",
                text = {
                    {
                        "Can be used as any {C:attention}material{} for a {C:joy_link}Link",
                    },
                    {
                        "A {C:joy_link}Link{} summoned using this card",
                        "as {C:attention}material{} gains the following ability:",
                        "{s:0.9}Lowers {s:0.9,C:attention}Blind{}{s:0.9}'s requirement by {s:0.9,C:red}#1#%{}",
                        "{s:0.9}when {s:0.9,C:attention}Blind{}{s:0.9} is selected",
                    },
                },
                joy_transfer_ability = {
                    "Lowers {C:attention}Blind{}'s requirement by {C:red}#1#%{}",
                    "when {C:attention}Blind{} is selected",
                }
            },
            j_joy_ignis_doyon = {
                name = "{C:joy_effect}Doyon @Ignister",
                text = {
                    {
                        "{C:attention}Revives #1#{} {C:joy_normal}Main Deck \"@Ignister\"{} when obtained",
                    },
                    {
                        "Adds {C:attention}#2#{} not obtained {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck",
                        "when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
                    },
                }
            },
            j_joy_ignis_donyoribo = {
                name = "{C:joy_effect}Donyoribo @Ignister",
                text = {
                    {
                        "{C:money}+$#1#{} each time an {C:joy_normal}\"@Ignister\"{} is bought",
                    },
                    {
                        "Sell this card to {C:attention}banish #2#{} {C:joy_normal}\"@Ignister\"{}",
                        "until {C:attention}Blind{} is selected",
                    },
                }
            },
            j_joy_ignis_backup = {
                name = "{C:joy_effect}Respaldo @Ignister",
                text = {
                    {
                        "Adds {C:dark_edition}Negative{} to {C:attention}#1#{} other random {C:joy_normal}Cyberse{} when obtained",
                    },
                    {
                        "Adds {C:dark_edition}Negative{} to a {C:joy_normal}Cyberse{} summoned",
                        "using this card as {C:attention}material{} if possible",
                    },
                }
            },
            j_joy_ignis_wizard = {
                name = "{C:joy_effect}Mago @Ignister",
                text = {
                    {
                        "You can {C:attention}tribute{} this card to {C:attention}revive{} up to {C:attention}#1#{}",
                        "{C:joy_normal}Cyberse{} with different names",
                        "If you own a summoned {C:joy_spell}Extra Deck{} {C:joy_normal}Cyberse{},",
                        "{C:attention}revives{} an extra {C:joy_normal}\"@Ignister\"{} as {C:dark_edition}Negative",
                    },
                }
            },
            j_joy_ignis_kiruku = {
                name = "{C:joy_effect}Kurikurinku @Ignister",
                text = {
                    {
                        "Sell this card to disable the current {C:attention}Boss Blind{} and",
                        "add it to the next shop if you own a summoned {C:joy_spell}Extra Deck{} {C:joy_normal}Cyberse{}",
                    },
                }
            },
            j_joy_ignis_leviathan = {
                name = "{C:joy_ritual}Leviatán de Agua @Ignister",
                text = {
                    {
                        "Adds {C:attention}#1#{} not obtained {C:joy_normal}\"@Ignister\"",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "Scored cards gain {C:chips}+#2#{} Chips for each {C:attention}Attribute{} used for its summon",
                        "{C:inactive}(Currently {C:chips}+#3# {C:inactive}Chips)",
                        "A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                },
                joy_transfer_ability = {
                    "Scored cards gain {C:chips}+#1#{} Chips for each {C:attention}Attribute{} used for its summon",
                    "{C:inactive}(Currently {C:chips}+#2# {C:inactive}Chips)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_golem = {
                name = "{C:joy_fusion}Gólem de Tierra @Ignister",
                text = {
                    {
                        "Adds {C:attention}#1#{} not obtained {C:joy_normal}\"@Ignister\"",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "{C:attention}+#2# Joker{} slot for each {C:attention}Attribute{} used for its summon",
                        "{C:inactive}(Currently {C:attention}+#3#{C:inactive})",
                        "A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                },
                joy_transfer_ability = {
                    "{C:attention}+#1# Joker{} slot for each {C:attention}Attribute{} used for its summon",
                    "{C:inactive}(Currently {C:attention}+#2#{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_pegasus = {
                name = "{C:joy_synchro}Pegaso de Viento @Ignister",
                text = {
                    {
                        "Adds {C:attention}#1#{} not obtained {C:joy_normal}\"@Ignister\"",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "{C:green}#2# in #3#{} chance to retrigger playing cards",
                        "Chances increase for each {C:attention}Attribute{} used for its summon",
                        "A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#1# in #2#{} chance to retrigger playing cards",
                    "Chances increase for each {C:attention}Attribute{} used for its summon",
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Tuner{} +",
                    "{C:attention}1+{} non-{C:joy_synchro}Tuner{} {C:joy_normal}Cyberse{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
                }
            },
            j_joy_ignis_dragon = {
                name = "{C:joy_xyz}Dragón de Luz @Ignister",
                text = {
                    {
                        "Adds {C:attention}#1#{} not obtained {C:joy_normal}\"@Ignister\"",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "Scored cards gain {C:money}+$#2#{} when held in hand at end of round",
                        "for each {C:attention}Attribute{} used for its summon",
                        "{C:inactive}(Currently {C:money}+$#3#{C:inactive})",
                        "A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                },
                joy_transfer_ability = {
                    "Scored cards gain {C:money}+$#1#{} when held in hand",
                    "for each {C:attention}Attribute{} used for its summon",
                    "{C:inactive}(Currently {C:money}+$#2#{C:inactive})",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}",
                    "{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
                    "{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
                }
            },
            j_joy_ignis_phoenix = {
                name = "{C:joy_link}Fénix de Fuego @Ignister",
                text = {
                    {
                        "Adds {C:attention}#1#{} not obtained {C:joy_normal}\"@Ignister\"",
                        "to the {C:joy_spell}Extra Deck{} when summoned",
                    },
                    {
                        "Creates {C:attention}#2#{} {C:dark_edition}Negative{} Debuffed {C:joy_link}\"Fire Phoenix @Ignister\"{}",
                        "when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
                    },
                    {
                        "Scored cards gain {C:mult}+#3#{} Mult for each {C:attention}Attribute{} used for its summon",
                        "{C:inactive}(Currently {C:mult}+#4#{} {C:inactive}Mult)",
                        "A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
                    },
                },
                joy_transfer_ability = {
                    "Scored cards gain {C:mult}+#1#{} Mult for each {C:attention}Attribute{} used for its summon",
                    "{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
                },
                joy_summon_conditions = {
                    "{C:attention}2+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_allied = {
                name = "{C:joy_link}Codificador Hablador Aliado @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult for each {C:joy_link}Link",
                        "{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "{C:attention}Revives #3#{} {C:joy_link}Links{} when summoned",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 {C:joy_link}Links{}"
                }
            },
            j_joy_ignis_infant = {
                name = "{C:joy_link}Infante Oscuro @Ignister",
                text = {
                    {
                        "Creates {C:attention}#1#{} {C:joy_spell}\"Ignister A.I.Land\"{} when summoned",
                        "{C:inactive}(Must have room){}",
                    },
                    {
                        "Treated as any {C:attention}material{} for a {C:joy_link}Link",
                        "and as any {C:attention}Attribute{} while owned",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1 {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_templar = {
                name = "{C:joy_link}Templario Oscuro @Ignister",
                text = {
                    {
                        "{C:attention}Revives{} as many {C:joy_normal}\"@Ignister\"{} as possible",
                        "with different names as {C:dark_edition}Negative{} and debuffed when summoned",
                    },
                    {
                        "{C:attention}Revives #1#{} {C:joy_normal}Main Deck Cyberse{} when used as {C:attention}material{} for a {C:joy_normal}Cyberse{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}3 {C:joy_normal}\"@Ignister\"{}"
                }
            },
            j_joy_ignis_arrival = {
                name = "{C:joy_link}La Llegada Ciberso @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult for each {C:attention}Attribute{} used for its summon",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Gains abilities based on the {C:attention}materials{} used for its summon",
                        "{V:1}LIGHT{V:3}: {V:2}+$#3#{V:3} at end of round",
                        "{V:4}DARK{V:7}: Creates {V:5}#4#{} {V:6}Spectral{V:7} at end of round {s:0.9,C:inactive}(Must have room)",
                        "{V:8}WATER{V:10}: {V:9}+#5#{V:10} Chips",
                        "{V:11}FIRE{V:13}: {V:12}+#6#{V:13} Mult",
                        "{V:14}WIND{V:17}: {V:15}#7# in #8#{V:17} chance to create a {V:16}Negative{V:17} copy of a used {V:18}Spectral",
                        "{V:19}EARTH{V:21}: {V:20}+#9#{V:21} hand size",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_arrival_divine = {
                name = "{C:joy_link}La Llegada Ciberso @Ignister",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult for each {C:attention}Attribute{} used for its summon",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "Gains abilities based on the {C:attention}materials{} used for its summon",
                        "{V:1}LIGHT{V:3}: {V:2}+$#3#{V:3} at end of round",
                        "{V:4}DARK{V:7}: Creates {V:5}#4#{} {V:6}Spectral{V:7} at end of round {s:0.9,C:inactive}(Must have room)",
                        "{V:8}WATER{V:10}: {V:9}+#5#{V:10} Chips",
                        "{V:11}FIRE{V:13}: {V:12}+#6#{V:13} Mult",
                        "{V:14}WIND{V:17}: {V:15}#7# in #8#{V:17} chance to create a {V:16}Negative{V:17} copy of a used {V:18}Spectral",
                        "{V:19}EARTH{V:21}: {V:20}+#9#{V:21} hand size",
                        "{C:joy_divine}DIVINE{}: Lowers {C:attention}Blind{}'s requirement by {C:red}50%{}"
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}5+ {C:joy_normal}Cyberse{}"
                }
            },
            j_joy_ignis_ailand = {
                name = "{C:joy_spell}Tierra A.I. Ignister",
                text = {
                    {
                        "Adds {C:attention}#1#{} {C:joy_normal}Main Deck \"@Ignister\"{} to the shop",
                        "when an {C:joy_normal}\"@Ignister\"{} is used as {C:attention}material",
                    },
                    {
                        "If you own {C:attention}Jokers{} with {C:attention}#2#{} different {C:attention}Attributes{} at end of round,",
                        "{C:attention}banishes{} all {C:joy_normal}Cyberse{} until {C:attention}Blind{} is selected",
                        "but debuffs all non-{C:joy_normal}Cyberse{}",
                    },
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_ignis = "@Ignister",
        }
    },
}
