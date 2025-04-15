return {
	descriptions = {
		Mod = {
			JoyousSpring = {
				name = "JoyousSpring",
				text = {
					"Adds modern {C:joy_effect}Yu-Gi-Oh!{} cards and mechanics",
				},
			}
		},
		Joker = {
			j_joy_token = {
				name = "{C:joy_token}Token",
				text = {
					"This card can be used as any {C:joy_token}Token{}",
				},
			},
			--#region Dragonmaid
			j_joy_dmaid_kitchen = {
				name = "{C:joy_effect}Kitchen Dragonmaid",
				text = {
					"{C:attention}#1#{} free {C:green}Reroll{} for each",
					"{C:joy_normal}\"Dragonmaid\"{} when obtained",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Dragonmaid Tinkhec\"",
					"when {C:attention}Blind{} is selected",
				},
			},
			j_joy_dmaid_tinkhec = {
				name = "{C:joy_effect}Dragonmaid Tinkhec",
				text = {
					"{C:joy_normal}\"Dragonmaids\"{} each",
					"give {C:mult}+#1#{} Mult",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Kitchen Dragonmaid\"",
					"at end of round",
				},
			},
			j_joy_dmaid_parlor = {
				name = "{C:joy_effect}Parlor Dragonmaid",
				text = {
					"{C:attention}#1# Booster Tag{} when obtained",
					"if you own {C:attention}#2#{} {C:joy_normal}\"Dragonmaids\"{},",
					"gaining an extra for every {C:attention}#3#{} more",
					"and send {C:attention}#4#{} {C:joy_normal}\"Dragonmaid\"{} to the {C:attention}GY{}",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Dragonmaid Lorpar\"",
					"when {C:attention}Blind{} is selected",
				},
			},
			j_joy_dmaid_lorpar = {
				name = "{C:joy_effect}Dragonmaid Lorpar",
				text = {
					"{C:joy_normal}\"Dragonmaids\"{} each",
					"give {X:mult,C:white}X#1#{} Mult",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Parlor Dragonmaid\"",
					"at end of round",
				},
			},
			j_joy_dmaid_nurse = {
				name = "{C:joy_effect}Nurse Dragonmaid",
				text = {
					"{C:green}#1# in #2#{} chance to {C:attention}revive #3#{}",
					"{C:blue}Common{} {C:joy_normal}\"Dragonmaid\"{} when obtained",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Dragonmaid Ernus\"",
					"when {C:attention}Blind{} is selected",
				},
			},
			j_joy_dmaid_ernus = {
				name = "{C:joy_effect}Dragonmaid Ernus",
				text = {
					"{C:mult}+#1#{} Mult for each",
					"{C:joy_normal}\"Dragonmaid\"{} in the {C:attention}GY{}",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Nurse Dragonmaid\"",
					"at end of round",
				},
			},
			j_joy_dmaid_laundry = {
				name = "{C:joy_effect}Laundry Dragonmaid",
				text = {
					"Sends {C:attention}#1#{} random {C:joy_normal}Main Deck{}",
					"{C:joy_normal}\"Dragonmaids\"{} to the {C:attention}GY{}",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Dragonmaid Nudyarl\"",
					"when {C:attention}Blind{} is selected",
				},
			},
			j_joy_dmaid_nudyarl = {
				name = "{C:joy_effect}Dragonmaid Nudyarl",
				text = {
					"{C:chips}+#1#{} Chips for each",
					"{C:joy_normal}\"Dragonmaid\"{} in the {C:attention}GY{}",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Laundry Dragonmaid\"",
					"at end of round",
				},
			},
			j_joy_dmaid_chamber = {
				name = "{C:joy_effect}Chamber Dragonmaid",
				text = {
					"{C:attention}#1# Voucher Tag{} when obtained",
					"if you own {C:attention}#2#{} {C:joy_normal}\"Dragonmaids\"{},",
					"gaining an extra for every {C:attention}#3#{} more",
					"and send {C:attention}#4#{} {C:joy_normal}\"Dragonmaid\"{} to the {C:attention}GY{}",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Dragonmaid Stern\"",
					"when {C:attention}Blind{} is selected",
				},
			},
			j_joy_dmaid_stern = {
				name = "{C:joy_effect}Dragonmaid Stern",
				text = {
					"{C:green}#1# in #2#{} chance to {C:attention}revive #3#{}",
					"{C:green}Uncommon{} or {C:red}Rare{} {C:joy_normal}\"Dragonmaid\"{}",
					"when obtained",
					" ",
					"{C:attention}Transforms{} into {C:joy_effect}\"Chamber Dragonmaid\"",
					"at end of round",
				},
			},
			j_joy_dmaid_lady = {
				name = "{C:joy_fusion}Lady's Dragonmaid",
				text = {
					"Adds {C:joy_fusion}\"House Dragonmaid\"{} to the",
					"{C:joy_spell}Extra Deck{} when summoned",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:green}#1# in #2#{} chance to {C:attention}transform{} into an",
					"{C:green}Uncommon{} {C:joy_normal}\"Dragonmaid\"{}",
					"when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"including a {C:joy_normal}\"Dragonmaid\"{}"
				}
			},
			j_joy_dmaid_house = {
				name = "{C:joy_fusion}House Dragonmaid",
				text = {
					"{X:mult,C:white}X#1#{} Mult for each {C:joy_normal}\"Dragonmaid\"{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Jokers{} in the {C:attention}GY{} count for",
					"{C:joy_normal}\"Dragonmaid\"{} abilities",
					" ",
					"{C:attention}Transforms{} into {C:joy_fusion}\"Dragonmaid Sheou\"",
					"after {C:attention}#3#{} rounds {C:inactive}(#4#/#3#){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Dragonmaids\"{}"
				}
			},
			j_joy_dmaid_sheou = {
				name = "{C:joy_fusion}Dragonmaid Sheou",
				text = {
					"{C:attention}Jokers{} in the {C:attention}GY{} count for",
					"{C:joy_normal}\"Dragonmaid\"{} abilities",
					" ",
					"When {C:attention}Boss Blind{} is selected,",
					"disables its effects then {C:attention}transforms{} into",
					"{C:joy_fusion}\"House Dragonmaid\"{} and creates {C:attention}#1#{}",
					"{C:blue}Common{} {C:joy_normal}\"Dragonmaid\"{}",
					"{C:inactive}(Must have room){}"
				},
			},
			--#endregion
			--#region Live Twin
			j_joy_ltwin_lilla = {
				name = "{C:joy_effect}Live☆Twin Lil-la",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"Creates {C:attention}#2#{} {C:joy_effect}\"Live☆Twin Ki-sikil\"{}",
					"when obtained, if not owned",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_ltwin_kisikil = {
				name = "{C:joy_effect}Live☆Twin Ki-sikil",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Creates {C:attention}#2#{} {C:joy_effect}\"Live☆Twin Lil-la\"{}",
					"when obtained, if not owned",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_ltwin_lilla_treat = {
				name = "{C:joy_effect}Live☆Twin Lil-la Treat",
				text = {
					"{C:red}+#1#{} discard each round",
					" ",
					"Free if you own a {C:joy_normal}\"Ki-sikil\"{}"
				},
			},
			j_joy_ltwin_lilla_sweet = {
				name = "{C:joy_effect}Live☆Twin Lil-la Sweet",
				text = {
					"{C:blue}+#1#{} hand each round",
					" ",
					"Free if you own a {C:joy_normal}\"Ki-sikil\"{}"
				},
			},
			j_joy_ltwin_kisikil_frost = {
				name = "{C:joy_effect}Live☆Twin Ki-sikil Frost",
				text = {
					"{C:attention}+#1#{} hand size",
					" ",
					"Free if you own a {C:joy_normal}\"Lil-la\"{}"
				},
			},
			j_joy_etwin_kisikil_deal = {
				name = "{C:joy_link}Evil★Twin Ki-sikil Deal",
				text = {
					"{C:mult}+#1#{} Mult",
					"{C:attention}+#2#{} hand size",
					" ",
					"Sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Lil-la\"{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"Adds {C:attention}#4#{} {C:joy_normal}\"Evil Twin\"{} to the {C:joy_spell}Extra Deck{}",
					"when used as {C:attention}material{} for a {C:joy_link}Link{}",
					"{C:inactive}(Must have room){}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}\"Ki-sikil\"{}"
				}
			},
			j_joy_etwin_kisikil = {
				name = "{C:joy_link}Evil★Twin Ki-sikil",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Permanently gain {C:attention}+#2#{} hand size if you",
					"own a {C:joy_normal}\"Lil-la\"{} when summoned",
					" ",
					"{C:attention}Revives #3#{} {C:joy_link}Evil★Twin Lil-la{} or {C:attention}#3#{}",
					"{C:joy_normal}\"Lil-la\"{} when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"including a {C:joy_normal}\"Ki-sikil\"{}"
				}
			},
			j_joy_etwin_lilla = {
				name = "{C:joy_link}Evil★Twin Lil-la",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"{C:money}+$#2#{} if you own a {C:joy_normal}\"Ki-sikil\"{} when summoned",
					" ",
					"{C:attention}Revives #3#{} {C:joy_link}Evil★Twin Ki-sikil{} or {C:attention}#3#{}",
					"{C:joy_normal}\"Ki-sikil\"{} when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"including a {C:joy_normal}\"Lil-la\"{}"
				}
			},
			j_joy_etwin_kisikil_lilla = {
				name = "{C:joy_effect}Evil★Twins Ki-sikil & Lil-la",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Lil-la\"{} in the {C:attention}GY{}",
					"{C:mult}+#2#{} Mult for each {C:joy_normal}\"Ki-sikil\"{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {C:chips}+#4#{} {C:inactive}Chips{} {C:mult}+#5#{} {C:inactive}Mult){}",
					"{C:red}-#3#{} discards for each {C:joy_link}Link{} when {C:attention}Blind{} is selected",
					" ",
					"Cannot be {C:attention}revived{}",
				},
			},
			j_joy_etwin_sunny = {
				name = "{C:joy_link}Evil★Twin's Trouble Sunny",
				text = {
					"{C:chips}+#1#{} Chips",
					"{C:mult}+#2#{} Mult",
					" ",
					"{C:attention}Returns{} to the {C:joy_spell}Extra Deck{} and {C:attention}revives{}",
					"{C:attention}#3#{} {C:joy_link}\"Evil★Twin Ki-sikil\"{} and {C:attention}#3#{} {C:joy_link}\"Evil★Twin Lil-la\"{}",
					"at end of round",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Evil★Twin\"{}"
				}
			},
			j_joy_ltwin_channel = {
				name = "{C:joy_spell}Live☆Twin Channel",
				text = {
					"During a {C:attention}Blind{}, you can {C:attention}tribute #1#{}",
					"{C:joy_normal}\"Ki-sikil\"{} or {C:joy_normal}\"Lil-la\"{} {C:joy_link}Link{} to",
					"{C:attention}double{} current chips scored",
					" ",
					"{C:attention}Revives #2#{} {C:joy_normal}\"Ki-sikil\"{} or {C:joy_normal}\"Lil-la\"{}",
					"at the end of the shop"
				}
			},
			--#endregion
			--#region Dogmatika
			j_joy_dogma_ecclesia = {
				name = "{C:joy_effect}Dogmatika Ecclesia, the Virtuous",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_spell}Extra Deck{} {C:attention}Joker{} sold",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_dogma_fleur = {
				name = "{C:joy_effect}Dogmatika Fleurdelis, the Knighted",
				text = {
					"{C:joy_normal}\"Dogmatika\"{} each give {C:mult}+#1#{} Mult",
					" ",
					"Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}"
				},
			},
			j_joy_dogma_maximus = {
				name = "{C:joy_effect}Dogmatika Maximus",
				text = {
					"Creates {C:attention}#1#{} debuffed {C:dark_edition}Negative{} {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
					"when {C:attention}Blind{} is selected",
				},
			},
			j_joy_dogma_adin = {
				name = "{C:joy_effect}Dogmatika Adin, the Enlightened",
				text = {
					"Creates {C:attention}#1#{} non-{C:joy_ritual}Ritual{} {C:joy_normal}\"Dogmatika\"{}",
					"when {C:attention}Boss Blind{} is defeated",
					"{C:inactive}(Must have room){}",
					" ",
					"Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}"
				},
			},
			j_joy_dogma_theo = {
				name = "{C:joy_effect}Dogmatika Theo, the Iron Punch",
				text = {
					"{C:chips}+#1#{} Chips,",
					"{C:chips}+#2#{} Chips for each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
					"{C:inactive}(Currently{} {C:chips}+#3# {C:inactive}Chips){}",
					" ",
					"Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}"
				},
			},
			j_joy_dogma_ashiyan = {
				name = "{C:joy_effect}Dogmatika Ashiyan",
				text = {
					"{C:attention}Revives #1#{} {C:joy_normal}\"Dogmatika\"{} when obtained",
					" ",
					"Adds {C:attention}#2#{} {C:joy_ritual}Ritual{} {C:joy_normal}\"Dogmatika\"{}",
					"to the shop when {C:attention}Boss Blind{} is defeated",
					" ",
					"Free if you own a debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}"
				},
			},
			j_joy_dogma_nexus = {
				name = "{C:joy_effect}Dogmatika Nexus",
				text = {
					"{C:attention}Duplicates #1#{} random {{C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
					"at end of round",
					"{C:inactive}(The copy will be debuffed and{} {C:dark_edition}Negative{}{C:inactive}){}"
				},
			},
			j_joy_dogma_relic = {
				name = "{C:joy_ritual}White Relic of Dogmatika",
				text = {
					"{C:attention}+#1#{} hand size for every {C:attention}#2#{} debuffed",
					"{C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
					"{C:inactive}(Currently{} {C:attention}+#3# {C:inactive}hand size){}",
					" ",
					"{C:joy_spell}Extra Deck{} {C:attention}Jokers{} in the {C:attention}GY{}",
					"count for {C:joy_normal}\"Dogmatika\"{} abilities {C:inactive}(as debuffed){}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"including a {C:joy_normal}\"Dogmatika\"{}"
				}
			},
			j_joy_dogma_knight = {
				name = "{C:joy_ritual}White Knight of Dogmatika",
				text = {
					"{C:mult}+#1#{} Mult for each debuffed",
					"{C:joy_spell}Extra Deck{} {C:attention}Joker{}",
					"{C:inactive}(Currently{} {C:mult}+#2# {C:inactive}Mult){}",
					" ",
					"All {C:joy_spell}Extra Deck{} {C:attention}Jokers{} in the shop",
					"are debuffed and free",
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"including a {C:joy_normal}\"Dogmatika\"{}"
				}
			},
			j_joy_dogma_albazoa = {
				name = "{C:joy_ritual}Dogmatika Alba Zoa",
				text = {
					"Sends {C:attention}#1#{} copy of each {C:attention}Joker{}",
					"in your {C:joy_spell}Extra Deck{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"Each {C:joy_normal}Main Deck{} {C:attention}Joker{} gives an extra {X:mult,C:white}X#2#{} Mult",
					"for each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Dogmatika\"{}"
				}
			},
			j_joy_dogma_nation = {
				name = "{C:joy_spell}Dogmatika Nation",
				text = {
					"{C:money}+$#1#{} for each debuffed {C:joy_spell}Extra Deck{} {C:attention}Joker{}",
					"at end of round",
					"{C:inactive}(Currently{} {C:money}+$#2#{C:inactive}){}",
					" ",
					"You can {C:attention}tribute #3#{} {C:joy_spell}Extra Deck{} {C:attention}Jokers{}",
					"to create {C:attention}#4#{} {C:joy_normal}\"Dogmatika\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			--#endregion
			--#region Ghost Girls
			j_joy_yokai_ogre = {
				name = "{C:joy_effect}Ghost Ogre & Snow Rabbit",
				text = {
					"Destroys every scored card",
					"Gains {X:mult,C:white}X#1#{} Mult for each",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_reaper = {
				name = "{C:joy_effect}Ghost Reaper & Winter Cherries",
				text = {
					"{X:mult,C:white}X#1#{} Mult for each",
					"{C:joy_spell}Extra Deck{} {C:attention}Joker{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_ash = {
				name = "{C:joy_effect}Ash Blossom & Joyous Spring",
				text = {
					"{C:green}#1# in #2#{} chance to not draw cards",
					"after playing/discarding",
					"Gains {X:mult,C:white}X#3#{} Mult each time",
					"this effect is triggered",
					"{C:inactive}(Currently{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_belle = {
				name = "{C:joy_effect}Ghost Belle & Haunted Mansion",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult when a {C:attention}Joker{}",
					"is {C:attention}revived{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_sister = {
				name = "{C:joy_effect}Ghost Sister & Spooky Dogwood",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult per consumable used",
					"during a {C:attention}Blind{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"If none are used this round, {C:red}you lose{}",
				},
			},
			j_joy_yokai_mourner = {
				name = "{C:joy_effect}Ghost Mourner & Moonlit Chill",
				text = {
					"Permanently debuffs every obtained",
					"{C:blue}Common{} and {C:green}Uncommon{} {C:attention}Joker{}",
					"Gains {X:mult,C:white}X#1#{} Mult for each debuffed card sold",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
				},
			},
			--#endregion
			--#region Spright
			j_joy_spright_blue = {
				name = "{C:joy_effect}Spright Blue",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}Main Deck{}",
					"{C:joy_normal}\"Spright\"{} at end of round",
					"{C:inactive}(Must have room){}",
					" ",
					"Free if you own an {C:green}Uncommon{} {C:attention}Joker{}"
				},
			},
			j_joy_spright_jet = {
				name = "{C:joy_effect}Spright Jet",
				text = {
					"Adds {C:attention}#1#{} {C:green}Uncommon{} {C:attention}Jokers{}",
					"to the {C:attention}GY{} when {C:attention}Blind{} is selected",
					" ",
					"Free if you own an {C:green}Uncommon{} {C:attention}Joker{}"
				},
			},
			j_joy_spright_carrot = {
				name = "{C:joy_effect}Spright Carrot",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each",
					"{C:green}Uncommon{} {C:attention}Joker{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Free if you own an {C:green}Uncommon{} {C:attention}Joker{}"
				},
			},
			j_joy_spright_red = {
				name = "{C:joy_effect}Spright Red",
				text = {
					"{C:mult}+#1#{} Mult for each",
					"{C:green}Uncommon{} {C:attention}Joker{}",
					"{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"Free if you own an {C:green}Uncommon{} {C:attention}Joker{}"
				},
			},
			j_joy_spright_pixies = {
				name = "{C:joy_effect}Spright Pixies",
				text = {
					"{C:chips}+#1#{} Chips for each",
					"{C:green}Uncommon{} {C:attention}Joker{}",
					"{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
					" ",
					"Free if you own an {C:green}Uncommon{} {C:attention}Joker{}"
				},
			},
			j_joy_spright_elf = {
				name = "{C:joy_link}Spright Elf",
				text = {
					"{C:attention}Revives #1#{} {C:green}Uncommon{} {C:attention}Joker{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"{C:green}Uncommon{} {C:attention}Jokers{} in the {C:attention}GY{}",
					"count for {C:joy_normal}\"Spright\"{} abilities"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:green}Uncommon{} {C:attention}Jokers{}"
				}
			},
			j_joy_spright_sprind = {
				name = "{C:joy_link}Spright Sprind",
				text = {
					"Other {C:green}Uncommon{} {C:attention}Jokers{} become {C:dark_edition}Negative{},",
					"the rest are debuffed if summoned",
					"using a {C:joy_normal}\"Spright\"{} as {C:attention}material{}",
					" ",
					"Adds {C:joy_xyz}\"Gigantic Spright\"{} to the",
					"{C:joy_spell}Extra Deck{} after {C:attention}#1# materials{} are {C:joy_xyz}detached{}",
					"{C:inactive}(Must have room){}",
					"{C:inactive}(#2#/#1#){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:green}Uncommon{} {C:attention}Jokers{},",
					"including an {C:joy_xyz}Xyz{}"
				}
			},
			j_joy_spright_gigantic = {
				name = "{C:joy_xyz}Gigantic Spright",
				text = {
					"{C:joy_xyz}Detach{} {C:attention}1{}: Creates",
					"{C:attention}#1#{} {C:green}Uncommon{} {C:attention}Joker{}",
					"{C:inactive}(Must have room){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:green}Uncommon{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
					"{s:0.9,C:inactive}({s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}allowed)"
				}
			},
			--#endregion
			--#region Mekk-Knight
			j_joy_mekk_avram = {
				name = "{C:joy_normal}Mekk-Knight Avram",
				text = {
					"{E:1}\"Check THIS out!\"{}",
				},
			},
			j_joy_mekk_red = {
				name = "{C:joy_effect}Mekk-Knight Red Moon",
				text = {
					"Scored card in this {C:attention}column{}",
					"gives {C:mult}+#1#{} Mult times its rank",
					"{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_orange = {
				name = "{C:joy_effect}Mekk-Knight Orange Sunset",
				text = {
					"Played card in this {C:attention}column{}",
					"counts for scoring",
					"{C:inactive}(Currently in column{} {C:attention}#1#{}{C:inactive}){}",
					" ",
					"Gains {X:chips,C:white}X#2#{} Chips each time",
					"this ability triggers",
					"{C:inactive}(Currently {X:chips,C:white}X#3#{}{C:inactive} Chips)"
				},
			},
			j_joy_mekk_yellow = {
				name = "{C:joy_effect}Mekk-Knight Yellow Star",
				text = {
					"Scored card in this {C:attention}column{}",
					"gives {C:money}+$#1#{} times its rank",
					"{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_green = {
				name = "{C:joy_effect}Mekk-Knight Green Horizon",
				text = {
					"Scored card in this {C:attention}column{}",
					"has a chance {C:green}#1# in <rank>{} to",
					"retrigger that many times,",
					"chance increases for each {C:joy_normal}\"Mekk-Knight\"{}",
					"{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_blue = {
				name = "{C:joy_effect}Mekk-Knight Blue Sky",
				text = {
					"Scored card in this {C:attention}column{}",
					"gives {C:chips}+#1#{} Chips times its rank",
					"{C:inactive}(Currently in column{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_indigo = {
				name = "{C:joy_effect}Mekk-Knight Indigo Eclipse",
				text = {
					"Gets ability based on the {C:attention}column{}",
					"{V:1}1: All scored cards retrigger once{}",
					"{V:2}2:{} {C:chips}+#1#{} {V:2}Chips{}",
					"{V:3}3:{} {C:mult}+#2#{} {V:3}Mult{}",
					"{V:4}4:{} {X:mult,C:white}X#3#{} {V:4}Mult{}",
					"{V:5}5+:{} {C:money}+$#4#{} {V:5}at end of round{}",
				},
			},
			j_joy_mekk_purple = {
				name = "{C:joy_effect}Mekk-Knight Purple Nightfall",
				text = {
					"{C:attention}Banishes{} when {C:attention}Blind{} is selected",
					"until {C:attention}Boss Blind{} is defeated to create {C:attention}#1#{}",
					"{C:joy_normal}Main Deck \"Mekk-Knight\"{}",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_mekk_morningstar = {
				name = "{C:joy_link}Mekk-Knight of the Morning Star",
				text = {
					"Scored card in adjacent {C:attention}columns{}",
					"gives {X:mult,C:white}X#1#{} Mult if there's a",
					"{C:joy_normal}\"Mekk-Knight\"{} in that {C:attention}column{}",
					"{C:inactive}(Currently in columns{} {C:attention}#2#{} {C:inactive}and{} {C:attention}#3#{}{C:inactive}){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{}",
				}
			},
			j_joy_mekk_spectrum = {
				name = "{C:joy_link}Mekk-Knight Spectrum Supreme",
				text = {
					"{C:joy_normal}\"Mekk-Knight\"{} abilities apply to",
					"all played cards",
					" ",
					"Once per round, sell {C:attention}#1#{} {C:joy_normal}\"Mekk-Knight\"{}",
					"to create {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_normal}Main Deck \"Mekk-Knight\"{}",
				},
				joy_summon_conditions = {
					"{C:attention}3{} {C:joy_normal}\"Mekk-Knight\"{}",
				}
			},
			j_joy_mekkcrus_avramax = {
				name = "{C:joy_link}Mekk-Knight Crusadia Avramax",
				text = {
					"Immediately wins every {C:attention}Blind{}",
					" ",
					"Destroys itself after a number",
					"of {C:attention}Blinds{} is defeated",
					"equal to the {C:attention}materials{} used",
					"for its summon {C:inactive}(#1#/#2#){}",
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:joy_spell}Extra Deck{} summoned {C:attention}Jokers{}",
				}
			},
			j_joy_mekkleg_scars = {
				name = "{C:joy_spell}World Legacy Scars",
				text = {
					"Each {C:joy_normal}\"Mekk-Knight\"{} gives {C:mult}+#1#{} Mult",
					" ",
					"During a {C:attention}Blind{}, you can {C:attention}tribute #2#{}",
					"{C:joy_normal}\"Mekk-Knight\"{} to gain {C:blue}+#3#{} Hand",
					" ",
					"Sell this card when there are",
					"{C:attention}#4# {C:joy_normal}\"Mekk-Knight\"{} in the {C:attention}GY",
					"with different names",
					"to win the current {C:attention}Blind{}"
				}
			},
			--#endregion
			--#region Generaider
			j_joy_token_generaider = {
				name = "{C:joy_token}Generaider Token",
				text = {
					"This card can be used as any {C:joy_token}Token{}",
				},
			},
			j_joy_generaider_loptr = {
				name = "{C:joy_effect}Loptr, Shadow of the Generaider Bosses",
				text = {
					"Destroys itself when {C:attention}Boss Blind{}",
					"is defeated to create {C:joy_spell}\"Generaider Boss Stage\"{}",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_generaider_vala = {
				name = "{C:joy_effect}Vala, Seidhr of the Generaider Bosses",
				text = {
					"Sends {C:attention}#1#{} {C:red}Rare{} {C:joy_normal}Main Deck \"Generaider\"{}",
					"to the {C:attention}GY{} when obtained",
					" ",
					"Destroys itself when {C:attention}Boss Blind{} is defeated to",
					"{C:attention}revive #2#{} {C:red}Rare{} {C:joy_normal}\"Generaider\"{}",
					"and creates {C:attention}#3#{} {C:joy_effect}\"Loptr, Shadow of the Generaider Bosses\"",
					"{C:inactive}(Must have room)"
				},
			},
			j_joy_generaider_harr = {
				name = "{C:joy_effect}Harr, Generaider Boss of Storms",
				text = {
					"You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Spellcaster{} {C:attention}Jokers{}",
					"to disable the current {C:attention}Boss Blind{}",
				},
			},
			j_joy_generaider_nidhogg = {
				name = "{C:joy_effect}Nidhogg, Generaider Boss of Ice",
				text = {
					"You can {C:attention}tribute #1#{} other {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Wyrm{} {C:attention}Jokers{}",
					"to retrigger each scored card this round",
				},
			},
			j_joy_generaider_frodi = {
				name = "{C:joy_effect}Frodi, Generaider Boss of Swords",
				text = {
					"You can {C:attention}tribute{} any number of other {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Warrior{} {C:attention}Jokers{}",
					"to gain that much hand size this round",
				},
			},
			j_joy_generaider_utgarda = {
				name = "{C:joy_effect}Utgarda, Generaider Boss of Delusion",
				text = {
					"You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Rock{} {C:attention}Joker{}",
					"to {C:attention}banish{} a card in the consumable area",
					"until {C:attention}Blind{} is selected",
				},
			},
			j_joy_generaider_mardel = {
				name = "{C:joy_effect}Mardel, Generaider Boss of Light",
				text = {
					"Once per round, you can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Plant{} {C:attention}Joker{} to create {C:attention}#2#{}",
					"{C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}\"Generaider\"{}",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_generaider_dovelgus = {
				name = "{C:joy_effect}Dovelgus, Generaider Boss of Iron",
				text = {
					"Once per round, you can {C:attention}tribute #1#{} other {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Machine{} {C:attention}Jokers{}",
					"to make each {C:joy_normal}\"Generaider\"{} and {C:joy_normal}Machine{}",
					"give {X:mult,C:white}X#2#{} Mult this round",
				},
			},
			j_joy_generaider_naglfar = {
				name = "{C:joy_effect}Naglfar, Generaider Boss of Fire",
				text = {
					"You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Beast-Warrior{} {C:attention}Jokers{}",
					"to gain {C:blue}+#2#{} Hand and {C:red}+#3#{} Discard this {C:attention}Blind{}",
				},
			},
			j_joy_generaider_hela = {
				name = "{C:joy_effect}Hela, Generaider Boss of Doom",
				text = {
					"You can {C:attention}tribute #1#{} {C:joy_normal}\"Generaider\"{}",
					"and/or {C:joy_normal}Zombie{} {C:attention}Jokers{} to {C:attention}revive #2#{}",
					"{C:red}Rare{} {C:joy_normal}\"Generaider\"{} {C:attention}Joker{} as {C:dark_edition}Negative{}",
				},
			},
			j_joy_generaider_jormungandr = {
				name = "{C:joy_xyz}Jormungandr, Generaider Boss of Eternity",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz material{}",
					"{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_xyz}Detach{} {C:attention}#3#{}: Permanently",
					"gain {C:attention}+#4#{} hand size",
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:red}Rare{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
					"{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
				}
			},
			j_joy_generaider_laevatein = {
				name = "{C:joy_xyz}Laevatein, Generaider Boss of Shadows",
				text = {
					"{C:joy_xyz}Detach{} {C:attention}#1#{}: Destroys all other {C:attention}Jokers{} and",
					"creates a {C:joy_xyz}\"Jormungandr, Generaider Boss of Eternity\"{}",
					"attaching all cards in the {C:attention}GY{} to it as {C:joy_xyz}Xyz materials{}",
				},
				joy_summon_conditions = {
					"{C:attention}5{} {C:red}Rare{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
					"{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
				}
			},
			j_joy_generaider_boss_stage = {
				name = "{C:joy_spell}Generaider Boss Stage",
				text = {
					"{C:joy_normal}\"Generaider\"{} each give {C:mult}+#1#{} Mult",
					"for each {C:attention}tributed{} card",
					"{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"Creates as many {C:joy_token}\"Generaider Tokens\"{}",
					"as possible when {C:attention}Blind{} is selected",
					"{C:inactive}(\"Generaiders\" are treated as Negative){}",
					" ",
					"Once per round, you can {C:attention}tribute #3#{}",
					"{C:joy_token}\"Generaider Tokens\"{} to create {C:attention}#4#{}",
					"not owned {C:red}Rare{} {C:joy_normal}Main Deck \"Generaider\"{}",
					"{C:inactive}(Must have room){}",
				},
			},
			--#endregion
			--#region Ghoti
			j_joy_fish_keaf = {
				name = "{C:joy_effect}Keaf, Murk of the Ghoti",
				text = {
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected and",
					"{C:attention}revives #1#{} {C:joy_spell}Extra Deck{} {C:joy_normal}\"Ghoti\"{}",
				},
			},
			j_joy_fish_paces = {
				name = "{C:joy_effect}Paces, Light of the Ghoti",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
			},
			j_joy_fish_shif = {
				name = "{C:joy_effect}Shif, Fairy of the Ghoti",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
			},
			j_joy_fish_zep = {
				name = "{C:joy_effect}Zep, Ruby of the Ghoti",
				text = {
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected and",
					"{C:attention}revives #1#{} {C:joy_normal}Main Deck{} {C:joy_normal}\"Ghoti\"{}",
				},
			},
			j_joy_fish_ixeep = {
				name = "{C:joy_effect}Ixeep, Omen of the Ghoti",
				text = {
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Boss Blind{} is selected and",
					"creates {C:attention}#1#{} {C:joy_normal}Main Deck{} {C:joy_normal}\"Ghoti\"{}",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_fish_eanoc = {
				name = "{C:joy_effect}Eanoc, Sentry of the Ghoti",
				text = {
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected",
					" ",
					"Adds {C:attention}#1#{} {C:joy_normal}\"Ghoti\"{}",
					"to the {C:joy_spell}Extra Deck{} after returning from",
					"{C:attention}banishment #2#{} times",
					"{C:inactive}(Must have room) (#3#/#2#){}",
				},
			},
			j_joy_fish_psiics = {
				name = "{C:joy_effect}Psiics, Moonlight of the Ghoti",
				text = {
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Boss Blind{} is selected and revives {C:attention}#1#{}",
					"{C:joy_synchro}Tuner{} {C:attention}Joker{} as {C:dark_edition}Negative{}",
				},
			},
			j_joy_fish_snopios = {
				name = "{C:joy_effect}Snopios, Shade of the Ghoti",
				text = {
					"This card and {C:attention}#1#{} card in the consumable",
					"area {C:attention}banish{} at the end of round",
					"until {C:attention}Blind{} is selected",
					" ",
					"Creates {C:joy_spell}\"The Most Distant, Deepest Depths\"{}",
					"after returning from {C:attention}banishment #2#{} times",
					"{C:inactive}(Must have room) (#3#/#2#){}",
				},
			},
			j_joy_fish_arionpos = {
				name = "{C:joy_synchro}Arionpos, Serpent of the Ghoti",
				text = {
					"{C:chips}+#1#{} Chips for each card",
					"{C:attention}banished{} this run",
					"{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
					" ",
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected and",
					"adds {C:attention}#3#{} {C:joy_normal}\"Ghoti\"{} to the {C:joy_spell}Extra Deck{}",
					"{C:inactive}(Must have room){}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Fish{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_askaan = {
				name = "{C:joy_synchro}Askaan, the Bicorned Ghoti",
				text = {
					"{C:mult}+#1#{} Mult for each card",
					"{C:attention}banished{} this run",
					"{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"This card and a non-{C:joy_normal}\"Ghoti\"{} {C:attention}Joker{}",
					"{C:attention}banish{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_guoglim = {
				name = "{C:joy_synchro}Guoglim, Spear of the Ghoti",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each card",
					"{C:attention}banished{} this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Revives{} as many different {C:joy_normal}Fish{}",
					"{C:attention}Jokers{} as possible when summoned",
					" ",
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_deepbeyond = {
				name = "{C:joy_synchro}Ghoti of the Deep Beyond",
				text = {
					"This card and all other non-{C:joy_normal}\"Ghoti\"{} {C:attention}Jokers{}",
					"{C:attention}banish{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Fish{} {C:joy_synchro}Tuners{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_depths = {
				name = "{C:joy_spell}The Most Distant, Deepest Depths",
				text = {
					"{C:money}+$#1#{} each time a card",
					"is {C:attention}banished",
				}
			},
			--#endregion
			--#region PSY-Frame
			j_joy_psy_driver = {
				name = "{C:joy_normal}PSY-Frame Driver",
				text = {
					"{E:1}A Psychic soldier that rides into battle against the Security{}",
					"{E:1}Forces on currents of lightning, using an autonomic amplifier{}",
					"{E:1}called \"PSY-Frame\"{}",
				},
			},
			j_joy_psy_alpha = {
				name = "{C:joy_effect}PSY-Framegear Alpha",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
					"when {C:attention}Blind{} is selected until end of round to",
					"make all cards held in hand give {X:mult,C:white}X#2#{} Mult this round",
				},
			},
			j_joy_psy_beta = {
				name = "{C:joy_effect}PSY-Framegear Beta",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
					"when {C:attention}Blind{} is selected until end of round to",
					"make all scored cards give {X:mult,C:white}X#2#{} Mult this round",
				},
			},
			j_joy_psy_gamma = {
				name = "{C:joy_effect}PSY-Framegear Gamma",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
					"when {C:attention}Blind{} is selected until end of round to",
					"make all {C:attention}Jokers{} each give {X:mult,C:white}X#2#{} Mult this round",
				},
			},
			j_joy_psy_delta = {
				name = "{C:joy_effect}PSY-Framegear Delta",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
					"when {C:attention}Blind{} is selected until end of round to",
					"make all {C:tarot}Tarot{} cards in the consumable area",
					"each give {X:mult,C:white}X#2#{} Mult this round",
				},
			},
			j_joy_psy_epsilon = {
				name = "{C:joy_effect}PSY-Framegear Epsilon",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}\"PSY-Frame Driver\"{} when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:attention}Banishes{} a {C:joy_normal}\"PSY-Frame Driver\"",
					"when {C:attention}Blind{} is selected until end of round to",
					"make all {C:planet}Planet{} cards in the consumable area",
					"each give {X:mult,C:white}X#2#{} Mult this round",
				},
			},
			j_joy_psy_multithreader = {
				name = "{C:joy_effect}PSY-Frame Multi-Threader",
				text = {
					"This card is treated as {C:joy_normal}\"PSY-Frame Driver\"",
					"for {C:joy_normal}\"PSY-Frame\"{} abilities",
					" ",
					"Create {C:attention}#1#{} {C:joy_normal}Main Deck \"PSY-Frame\"{}",
					"{C:joy_effect}Effect{} {C:attention}Joker{} when this card",
					"returns from {C:attention}banishment{}",
					"{C:inactive}(Must have room){}",
				},
			},
			j_joy_psy_zeta = {
				name = "{C:joy_synchro}PSY-Framelord Zeta",
				text = {
					"This card and {C:attention}#1#{} cards in the consumable",
					"area {C:attention}banish{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:blue}Common{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_psy_omega = {
				name = "{C:joy_synchro}PSY-Framelord Omega",
				text = {
					"This card and another {C:attention}Joker{}",
					"{C:attention}banish{} at the end of round",
					"until {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:blue}Common{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_psy_lambda = {
				name = "{C:joy_link}PSY-Framelord Lambda",
				text = {
					"{C:joy_normal}\"PSY-Frame\"{} abilities are active",
					"without {C:attention}banishing{} {C:joy_normal}\"PSY-Frame Driver\"",
					" ",
					"Add {C:attention}#1#{} {C:joy_normal}\"PSY-Frame\"",
					"to the {C:joy_spell}Extra Deck{} when a {C:joy_normal}Psychic{}",
					"{C:attention}Joker{} returns from {C:attention}banishment{}",
					"{C:inactive}(Must have room){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"except {C:joy_token}Tokens{}",
				}
			},
			j_joy_psy_circuit = {
				name = "{C:joy_spell}PSY-Frame Circuit",
				text = {
					"{C:money}+$#1#{} each time a {C:joy_synchro}Synchro{} is summoned",
					" ",
					"{C:joy_normal}Psychic{} {C:joy_synchro}Synchros{}",
					"become {C:dark_edition}Negative{} when summoned"
				}
			},
			--#endregion
			--#region Runick
			j_joy_runick_hugin = {
				name = "{C:joy_fusion}Hugin the Runick Wings",
				text = {
					"{C:attention}+#1#{} consumable slot",
					" ",
					"Creates {C:attention}#2#{} {C:joy_spell}\"Runick Fountain\"",
					"and adds {C:attention}#3#{} {C:joy_normal}\"Runick\"{}",
					"to the {C:joy_spell}Extra Deck{} when summoned",
					"{C:inactive}(Must have room){}",
				},
				joy_summon_conditions = {
					"{C:attention}3{} {C:tarot}Tarot{} cards",
				}
			},
			j_joy_runick_munin = {
				name = "{C:joy_fusion}Munin the Runick Wings",
				text = {
					"{C:attention}+#1#{} consumable slot",
					" ",
					"Adds {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
					"to the {C:joy_spell}Extra Deck{} when summoned",
					"{C:inactive}(Must have room){}",
					" ",
					"Gains {X:chips,C:white}X#3#{} Chips for each {C:tarot}Tarot{}",
					"used during a {C:attention}Blind{}",
					"{C:inactive}(Currently{} {X:chips,C:white}X#4#{} {C:inactive}Chips){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:tarot}Tarot{} cards",
				}
			},
			j_joy_runick_geri = {
				name = "{C:joy_fusion}Geri the Runick Fangs",
				text = {
					"Creates {C:attention}#1#{} {C:joy_spell}\"Runick Fountain\"",
					"when summoned if there's any in the {C:attention}GY{}",
					"and adds {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
					"to the {C:joy_spell}Extra Deck{}",
					"{C:inactive}(Must have room){}",
					" ",
					"Sell this summoned card to create up to",
					"{C:attention}#3#{} {C:tarot}Tarot{} cards",
					"{C:inactive}(Must have room)"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:tarot}Tarot{} cards",
				}
			},
			j_joy_runick_freki = {
				name = "{C:joy_fusion}Freki the Runick Fangs",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
					"to the {C:joy_spell}Extra Deck{} when summoned",
					"{C:inactive}(Must have room){}",
					" ",
					"Adds {C:attention}#2#{} random {C:attention}playing cards{}",
					"when a {C:tarot}Tarot{} card is used during a {C:attention}Blind{}",
					" ",
					"Sell this summoned card to create up to",
					"{C:attention}#3#{} {C:tarot}Tarot{} cards",
					"{C:inactive}(Must have room)"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:tarot}Tarot{} cards",
				}
			},
			j_joy_runick_sleipnir = {
				name = "{C:joy_fusion}Sleipnir the Runick Mane",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
					"to the {C:joy_spell}Extra Deck{} when summoned",
					"{C:inactive}(Must have room){}",
					" ",
					"{C:attention}Banishes{} at the end of round",
					"until {C:attention}Blind{} is selected",
					" ",
					"Creates {C:attention}#2#{} {C:dark_edition}Negative{} {C:tarot}Tarot{} cards",
					"when it returns from {C:attention}banishment{}",
				},
				joy_summon_conditions = {
					"{C:attention}4{} {C:tarot}Tarot{} cards",
				}
			},
			j_joy_runick_fountain = {
				name = "{C:joy_spell}Runick Fountain",
				text = {
					"Creates as many {C:tarot}Tarot{} cards used during",
					"this {C:attention}Blind{} as possible at end of round",
					"{C:inactive}(Removes Editions){}",
					" ",
					"Destroys {C:attention}#1#{} random {C:attention}playing cards{}",
					"in the deck when {C:attention}Blind{} is selected",
				},
			},
			--#endregion
			--#region Burning Abyss
			j_joy_ba_alich = {
				name = "{C:joy_effect}Alich, Malebranche of the Burning Abyss",
				text = {
					"Lowers {C:attention}Blind{}'s requirement by {C:red}#1#%{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_barbar = {
				name = "{C:joy_effect}Barbar, Malebranche of the Burning Abyss",
				text = {
					"{C:mult}+#1#{} Mult",
					"{C:mult}+#2#{} Mult for every {C:joy_normal}Fiend{} {C:attention}Joker{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult total){}",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_cagna = {
				name = "{C:joy_effect}Cagna, Malebranche of the Burning Abyss",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"Sends {C:attention}#2#{} {C:joy_normal}Fiend{} {C:attention}Jokers{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_calcab = {
				name = "{C:joy_effect}Calcab, Malebranche of the Burning Abyss",
				text = {
					"{C:attention}+#1#{} hand size",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_cir = {
				name = "{C:joy_effect}Cir, Malebranche of the Burning Abyss",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					" ",
					"{C:attention}Revives{} {C:attention}#2#{} {C:joy_normal}\"Burning Abyss\"{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_draghig = {
				name = "{C:joy_effect}Draghig, Malebranche of the Burning Abyss",
				text = {
					"{C:joy_normal}Fiends{} each give {C:chips}+#1#{} Chips",
					" ",
					"Creates {C:attention}#2#{} non-{C:joy_spell}Special{} {C:joy_normal}\"Burning Abyss\"{}",
					"when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_farfa = {
				name = "{C:joy_effect}Farfa, Malebranche of the Burning Abyss",
				text = {
					"{C:attention}Banishes{} {C:attention}#1#{} other Joker when obtained",
					"until end of round",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_graff = {
				name = "{C:joy_effect}Graff, Malebranche of the Burning Abyss",
				text = {
					"{C:joy_normal}Fiends{} each give {C:mult}+#1#{} Mult",
					" ",
					"Creates {C:attention}#2#{} non-{C:joy_spell}Special{} {C:joy_normal}\"Burning Abyss\"{}",
					"when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected"
				}
			},
			j_joy_ba_libic = {
				name = "{C:joy_effect}Libic, Malebranche of the Burning Abyss",
				text = {
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"and {C:attention}revives{} {C:attention}#1#{} {C:joy_normal}Fiend{} {C:attention}Joker{}",
					"{s:0.9,C:inactive}(This also triggers on sell)"
				}
			},
			j_joy_ba_rubic = {
				name = "{C:joy_effect}Rubic, Malebranche of the Burning Abyss",
				text = {
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"and adds {C:attention}#1#{} {C:joy_normal}\"Burning Abyss\"{} to the {C:joy_spell}Extra Deck{}",
					"{s:0.9,C:inactive}(This also triggers on sell)"
				}
			},
			j_joy_ba_scarm = {
				name = "{C:joy_effect}Scarm, Malebranche of the Burning Abyss",
				text = {
					"Destroys itself if you own a non-{C:joy_normal}Fiend{}",
					"{C:joy_normal}Monster{} {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"and creates {C:attention}#1#{} {C:joy_normal}Main Deck Fiends{}",
					"{C:inactive}(Must have room){}",
					"{s:0.9,C:inactive}(This also triggers on sell)"
				}
			},
			j_joy_ba_malacoda = {
				name = "{C:joy_ritual}Malacoda, Netherlord of the Burning Abyss",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_normal}Fiend{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_normal}\"Burning Abyss\"{} don't get destroyed by their own effects"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"including a {C:joy_normal}Fiend{}",
				}
			},
			j_joy_ba_cherubini = {
				name = "{C:joy_link}Cherubini, Ebon Angel of the Burning Abyss",
				text = {
					"Sends {C:attention}#1#{} {C:joy_normal}\"Burning Abyss\"{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"{C:joy_normal}\"Burning Abyss\"{} don't get destroyed by their own effects"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Fiends{}",
				}
			},
			j_joy_ba_dante = {
				name = "{C:joy_xyz}Dante, Traveler of the Burning Abyss",
				text = {
					"{C:mult}+#1#{} Mult for each {C:attention}Joker{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_xyz}Detach{} {C:attention}#3#{}: Sends {C:attention}#4#{}",
					"random cards to the {C:attention}GY{}",
					" ",
					"{C:joy_normal}\"Burning Abyss\"{} don't get destroyed by their own effects"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:blue}Common{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{}",
					"{s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})"
				}
			},
			j_joy_ba_pilgrim = {
				name = "{C:joy_fusion}Dante, Pilgrim of the Burning Abyss",
				text = {
					"{C:blue}+#1#{} Hands",
					"{C:red}+#2#{} Discards",
					" ",
					"{C:joy_normal}\"Burning Abyss\"{} don't get destroyed by their own effects"
				},
				joy_summon_conditions = {
					"{C:attention}3{} {C:joy_normal}\"Burning Abyss\"{}",
					"with different names",
				}
			},
			j_joy_ba_virgil = {
				name = "{C:joy_synchro}Virgil, Rock Star of the Burning Abyss",
				text = {
					"Permanently gain {C:attention}+#1#{} hand size when summoned",
					" ",
					"{C:joy_normal}\"Burning Abyss\"{} don't get destroyed by their own effects"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:joy_normal}Fiend{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_ba_beatrice = {
				name = "{C:joy_xyz}Beatrice, Lady of the Eternal",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:attention}Joker{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_xyz}Detach{} {C:attention}#3#{}: {C:attention}Revives #4#{} {C:joy_normal}\"Burning Abyss\"{} as {C:dark_edition}Negative{}",
					"(or any {C:attention}Joker{} if none)",
					" ",
					"Sell this summoned card to add",
					"{C:joy_xyz}\"Dante, Traveler of the Burning Abyss\"{}",
					"and {C:joy_fusion}\"Dante, Pilgrim of the Burning Abyss\"{}",
					"to the {C:joy_spell}Extra Deck{} {C:inactive}(Must have room){}",
					" ",
					"{C:joy_normal}\"Burning Abyss\"{} don't get destroyed by their own effects"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:red}Rare{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
					"or {C:attention}1{} {C:joy_normal}\"Dante\"{}",
					"{s:0.9,C:inactive}(If {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, transfer its materials)",
				}
			},
			--#endregion
			--#region Labrynth
			j_joy_lab_clock = {
				name = "{C:joy_effect}Labrynth Cooclock",
				text = {
					"You can {C:attention}tribute{} this card to",
					"{C:attention}flip #1#{} random card in hand",
					"face-down (and shuffle them) and it permanently",
					"gains {C:mult}+#2#{} Mult when scored then",
					"{C:attention}revive #3# {C:blue}Common{} {C:joy_normal}\"Labrynth\"{} if possible",
					"{C:inactive}(Except \"Labrynth Cooclock\"){}"
				}
			},
			j_joy_lab_stovie = {
				name = "{C:joy_effect}Labrynth Stovie Torbie",
				text = {
					"You can {C:attention}tribute{} this and another {C:attention}Joker{} to",
					"{C:attention}flip #1#{} random cards in hand",
					"face-down (and shuffle them) and it permanently",
					"gains {C:chips}+#2#{} Chips when scored then",
					"gain {C:money}+$#3#{} if a {C:joy_normal}Fiend{} was tributed"
				}
			},
			j_joy_lab_changdra = {
				name = "{C:joy_effect}Labrynth Chandraglier",
				text = {
					"You can {C:attention}tribute{} this and another {C:attention}Joker{} to",
					"{C:attention}flip #1#{} random cards in hand",
					"face-down (and shuffle them) and it permanently",
					"gains {C:money}+$#2#{} when scored then",
					"create {C:attention}#3#{} random Tags if a",
					"{C:joy_normal}Fiend{} was tributed"
				}
			},
			j_joy_lab_ariane = {
				name = "{C:joy_effect}Ariane the Labrynth Servant",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"{C:attention}+#2#{} hand size next {C:attention}Blind{} for each",
					"playing card {C:attention}flipped{} this round while owned",
					" ",
					"Adds an {C:green}Uncommon{} {C:joy_normal}\"Labrynth\"{} to the next shop",
					"if {C:attention}#3#{} or more cards are flipped this round while owned",
					"{s:0.9,C:inactive}(Flipped this round #4#)"
				}
			},
			j_joy_lab_arianna = {
				name = "{C:joy_effect}Arianna the Labrynth Servant",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"{C:attention}+#2#{} hand size next {C:attention}Blind{} for each",
					"playing card {C:attention}flipped{} this round while owned",
					" ",
					"Adds a {C:blue}Common{} {C:joy_normal}\"Labrynth\"{} to the next shop",
					"if {C:attention}#3#{} or more cards are flipped this round while owned",
					"{s:0.9,C:inactive}(Flipped this round #4#)"
				}
			},
			j_joy_lab_arias = {
				name = "{C:joy_effect}Arias the Labrynth Butler",
				text = {
					"Gains {C:chips}+#1#{} Chips for each",
					"playing card {C:attention}flipped{} while owned",
					"{C:inactive}(Currently{} {C:chips}+#2# {C:inactive}Chips){}",
					" ",
					"Adds a {C:red}Rare{} {C:joy_normal}\"Labrynth\"{} to the next shop",
					"if {C:attention}#3#{} or more cards are flipped this round while owned",
					"{s:0.9,C:inactive}(Flipped this round #4#)",
					" ",
					"Free if you own a {C:joy_normal}\"Labrynth\"{}"
				}
			},
			j_joy_lab_archfiend = {
				name = "{C:joy_effect}Labrynth Archfiend",
				text = {
					"{C:mult}+#1#{} Mult for each",
					"{C:joy_normal}Fiend{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {C:mult}+#2# {C:inactive}Mult){}",
					" ",
					"When a playing card is {C:attention}flipped{},",
					"{C:attention}flips{} a random card in hand face-down (and shuffles them)"
				}
			},
			j_joy_lab_lovely = {
				name = "{C:joy_effect}Lovely Labrynth of the Silver Castle",
				text = {
					"{C:green}#1# in #2#{} chances of drawing cards face-down",
					"Chances increase for each {C:joy_normal}Fiend{} owned",
					" ",
					"Gains {C:mult}+#3#{} Mult for each",
					"card {C:attention}flipped{} face-down",
					"{C:inactive}(Currently{} {C:mult}+#4# {C:inactive}Mult){}",
				}
			},
			j_joy_lab_lady = {
				name = "{C:joy_effect}Lady Labrynth of the Silver Castle",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult",
					"each time a card is {C:attention}flipped{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Non-{C:joy_trap}Trap{} {C:joy_normal}Fiends{} can use their",
					"non-activated abilities while face-down",
					"{s:0.9,C:inactive}(Including this card)"
				}
			},
			j_joy_lab_labyrinth = {
				name = "{C:joy_spell}Labrynth Labyrinth",
				text = {
					"{C:money}+$#1#{} for each {C:attention}Joker flipped{}",
					" ",
					"{C:green}#2# in #3#{} chance to {C:attention}flip #4#{} card in hand face-down",
					"(and shuffles them) when a playing card is {C:attention}flipped",
				}
			},
			--#endregion
			--#region Subterror
			j_joy_sub_fiendess = {
				name = "{C:joy_effect}Subterror Fiendess",
				text = {
					"Once per round, you can {C:attention}flip{} this card",
					"and another {C:attention}Joker{} face-down",
					"to {C:attention}revive #1#{} {C:joy_normal}\"Subterror\"{} as {C:dark_edition}Negative{}"
				}
			},
			j_joy_sub_defender = {
				name = "{C:joy_effect}Subterror Nemesis Defender",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Subterror\"{} or face-down {C:attention}Joker{}",
					"{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
					" ",
					"Sell this card to {C:attention}flip{} all cards face-up"
				}
			},
			j_joy_sub_archer = {
				name = "{C:joy_effect}Subterror Nemesis Archer",
				text = {
					"Once per ante, you can {C:attention}flip{} this card",
					"and another {C:attention}Joker{} face-down",
					"to create {C:attention}#1#{} {C:dark_edition}Negative{} {C:blue}Common{} or",
					"{C:green}Uncommon{} {C:joy_normal}\"Subterror\"{}"
				}
			},
			j_joy_sub_warrior = {
				name = "{C:joy_effect}Subterror Nemesis Warrior",
				text = {
					"You can {C:attention}tribute{} this card and another {C:attention}Joker{}",
					"to {C:attention}revive #1#{} {C:joy_normal}\"Subterror Behemoth\"{} or {C:joy_normal}\"Subterror\"{} if none",
					" ",
					"{C:joy_effect}FLIP{}: Sends {C:attention}#2#{} {C:joy_normal}\"Subterror Behemoth\"{} to the {C:attention}GY{}"
				}
			},
			j_joy_sub_guru = {
				name = "{C:joy_effect}Subterror Guru",
				text = {
					"Once per round during a {C:attention}Blind{},",
					"you can {C:attention}flip{} this card and {C:attention}#1#{} other {C:attention}Jokers{}:",
					"This round, this card gives {X:mult,C:white}X#2#{} Mult for each {C:attention}flipped{} face-down",
					"and {C:attention}+#3#{} hand size for each {C:attention}flipped{} face-up",
					"{s:0.9,C:inactive}(Even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: Creates {C:attention}#4#{} {C:blue}Common{} or {C:green}Uncommon{} {C:joy_normal}\"Subterror\"{}",
					"{C:inactive}(Must have room)",
					" ",
					"{C:attention}Flips{} face-up when {C:attention}Blind{} is selected",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_stygo = {
				name = "{C:joy_effect}Subterror Behemoth Stygokraken",
				text = {
					"{C:joy_effect}FLIP{}: Each face-down card gives {X:mult,C:white}X#1#{} Mult this round",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is defeated",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_drago = {
				name = "{C:joy_effect}Subterror Behemoth Dragossuary",
				text = {
					"{C:joy_effect}FLIP{}: Gives a {C:joy_normal}\"Subterror\"{} or face-down {C:attention}Joker{} a random edition",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is defeated",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_uma = {
				name = "{C:joy_effect}Subterror Behemoth Umastryx",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}Banishes #1#{} other {C:attention}Jokers{} at end of round",
					"until {C:attention}Blind{} is selected",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is defeated",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_phos = {
				name = "{C:joy_effect}Subterror Behemoth Phospheroglacier",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Subterror\"{} or {C:joy_normal}Aqua{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
					" ",
					"{C:joy_effect}FLIP{}: Sends {C:attention}#3#{} {C:joy_normal}\"Subterror\"{} to the {C:attention}GY{}",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is defeated",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_volt = {
				name = "{C:joy_effect}Subterror Behemoth Voltelluric",
				text = {
					"{C:mult}+#1#{} Mult for each face-down card",
					"{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Flips{} all cards in hand face-down (and shuffles them)",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is selected",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_stala = {
				name = "{C:joy_effect}Subterror Behemoth Stalagmo",
				text = {
					"{C:joy_effect}FLIP{}: Draws {C:attention}#1#{} cards face-down",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is selected",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_speleo = {
				name = "{C:joy_effect}Subterror Behemoth Speleogeist",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult each time a card is {C:attention}flipped{}",
					"{s:0.9,C:inactive}(Gains even if face-down)",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Flips{} all other {C:attention}Jokers{} face-up",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is defeated",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_ultra = {
				name = "{C:joy_effect}Subterror Behemoth Ultramafus",
				text = {
					"{C:chips}+#1#{} Chips for each face-down card",
					"{C:inactive}(Currently{} {C:chips}+#2#{} {C:inactive}Chips){}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Flips{} all other {C:attention}Jokers{} face-down",
					" ",
					"{C:attention}Flips{} face-down when obtained",
					"{C:attention}Flips{} when {C:attention}Boss Blind{} is defeated",
					"{s:0.9,C:inactive}(Even if face-down)",
				}
			},
			j_joy_sub_befiendess = {
				name = "{C:joy_link}Subterror Behemoth Fiendess",
				text = {
					"{C:chips}+#1#{} Chips for each {C:attention}material{} used for its summon and",
					"{C:mult}+#2#{} Mult for each {C:joy_normal}\"Subterror\"{} used",
					"{C:inactive}(Currently{} {C:chips}+#3#{} {C:inactive}Chips and {C:mult}+#4#{} {C:inactive}Mult){}",
					" ",
					"Once per round, you can {C:attention}flip",
					"{C:attention}#5# Jokers{} face-down to create {C:attention}#6# {C:joy_normal}\"Subterror Behemoth\"{}",
					"{C:inactive}(Must have room){}"
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:joy_effect}Flip{} or",
					"face-down {C:attention}Jokers"
				}
			},
			j_joy_sub_city = {
				name = "{C:joy_spell}The Hidden City",
				text = {
					"Once per round, you can {C:attention}flip{} a {C:attention}Joker",
					" ",
					"{C:money}+$#1#{} when a {C:joy_normal}Monster{} {C:attention}Joker{} is {C:attention}flipped{} face-down",
					"or when a non-{C:joy_normal}Monster{} {C:attention}Joker{} is {C:attention}flipped{} face-up"
				}
			},
			--#endregion
			--#region Eldlich
			j_joy_eld_eldlich = {
				name = "{C:joy_effect}Eldlich the Golden Lord",
				text = {
					"{C:attention}Gold{} cards give {C:money}+$#1#{} when scored for each",
					"{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
					" ",
					"Scored cards become {C:attention}Gold{} cards after scoring",
					" ",
					"Once per round, you can {C:attention}tribute #2#{} {C:joy_normal}Zombie{} or {C:joy_trap}Trap{} {C:attention}Joker",
					"to create {C:attention}#3#{} {C:joy_normal}Main Deck \"Golden Land\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_eld_conq = {
				name = "{C:joy_trap}Conquistador of the Golden Land",
				text = {
					"{C:attention}Gold{} cards give {C:chips}+#1#{} Chips when scored for each",
					"{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
					" ",
					"Retriggers all scored cards with an enhancement once",
					"including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
					" ",
					"{C:joy_effect}FLIP{}: {C:red}+#2#{} Discard this round"
				}
			},
			j_joy_eld_guard = {
				name = "{C:joy_trap}Guardian of the Golden Land",
				text = {
					"{C:attention}Gold{} cards give {C:mult}+#1#{} Mult when scored for each",
					"{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
					" ",
					"Retriggers all scored cards with an enhancement once",
					"including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
					" ",
					"{C:joy_effect}FLIP{}: {C:blue}+#2#{} Hand this round"
				}
			},
			j_joy_eld_huaq = {
				name = "{C:joy_trap}Huaquero of the Golden Land",
				text = {
					"{C:attention}Gold{} cards give {C:chips}+#1#{} Chips when scored for each",
					"{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
					" ",
					"Retriggers all scored cards with an enhancement once",
					"including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Banish #2#{} {C:joy_normal}Zombie{} at end of round",
					"until {C:attention}Blind{} is selected"
				}
			},
			j_joy_eld_glorious = {
				name = "{C:joy_trap}Eldlixir of the Glorious Golden Land",
				text = {
					"{C:attention}Gold{} cards give {C:mult}+#1#{} Mult when scored for each",
					"{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
					" ",
					"Retriggers all scored cards with an enhancement once",
					"including cards held in hand if an {C:joy_normal}\"Eldlich\"{} is owned",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Revive #2#{} {C:joy_normal}\"Golden Land\"{} or {C:attention}#2#{} {C:joy_trap}Trap{} if none"
				}
			},
			j_joy_eld_mad = {
				name = "{C:joy_fusion}Eldlich the Mad Golden Lord",
				text = {
					"{C:attention}Gold{} cards give an extra {X:mult,C:white}X#1#{} Mult when scored for each",
					"{C:joy_normal}Zombie{} owned or in the {C:attention}GY{}",
					" ",
					"All played cards become {C:attention}Gold{} cards after scoring",
					" ",
					"{C:joy_trap}Traps{} don't {C:attention}flip{} face-down on their own",
					"and their {C:joy_effect}FLIP{} abilities activate when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}\"Eldlich\"{} + {C:attention}1{} {C:joy_normal}Zombie{}"
				}
			},
			j_joy_eld_angel = {
				name = "{C:joy_fusion}Angelcaido of the Golden Land",
				text = {
					"Enables {C:attention}Eldlixir{} hands",
					"Levels up {C:attention}Eldlixir{} when {C:joy_trap}Traps{} are {C:attention}flipped{} face-up",
					"{C:inactive}(Or their FLIP abilities activate)",
					" ",
					"Sends {C:attention}#1#{} {C:joy_effect}\"Eldlich the Golden Lord\"{} to the {C:attention}GY{}",
					"if played hand contains an {C:attention}Eldlixir{}",
					" ",
					"{C:attention}Revives #2#{} {C:joy_normal}\"Eldlich\"{} as {C:dark_edition}Negative{} if",
					"this owned card is sent to the {C:attention}GY{}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{}, including a {C:joy_trap}Trap{}"
				}
			},
			--#endregion
			--#region @Ignister
			j_joy_ignis_achichi = {
				name = "{C:joy_effect}Achichi @Ignister",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Creates {C:attention}#2#{} {C:blue}Common{} {C:joy_normal}Main Deck",
					"{C:joy_normal}\"@Ignister\"{} when obtained",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_ignis_pikari = {
				name = "{C:joy_effect}Pikari @Ignister",
				text = {
					"{C:money}+$#1#{} at end of round",
					" ",
					"Creates {C:attention}#2#{} random {C:tarot}Tarot",
					"when obtained",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_ignis_hiyari = {
				name = "{C:joy_effect}Hiyari @Ignister",
				text = {
					"{C:attention}+#1#{} hand size",
					" ",
					"Once per round, you can {C:attention}tribute #2#{} {C:joy_normal}Cyberse{}",
					"to create {C:attention}#3#{} {C:joy_normal}Main Deck {C:green}Uncommon{} {C:joy_normal}\"@Ignister\"",
					"{C:inactive}(Must have room){}",
					" ",
					"Free if you own an {C:joy_normal}\"@Ignister\""
				}
			},
			j_joy_ignis_bururu = {
				name = "{C:joy_effect}Bururu @Ignister",
				text = {
					"Sends {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:attention}GY{} when obtained",
					" ",
					"{C:attention}Revives #2#{} {C:joy_normal}Main Deck \"@Ignister\"{} as {C:dark_edition}Negative",
					"when used as {C:attention}material{} for a {C:joy_normal}Cyberse"
				}
			},
			j_joy_ignis_doshin = {
				name = "{C:joy_effect}Doshin @Ignister",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"{C:attention}Revives #2#{} {C:joy_spell}Extra Deck{} {C:joy_normal}\"@Ignister\"{}",
					"when used as {C:attention}material{} for a {C:joy_normal}Cyberse"
				}
			},
			j_joy_ignis_gatchiri = {
				name = "{C:joy_effect}Gatchiri @Ignister",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					" ",
					"Can be used as any {C:attention}material{} for a {C:joy_link}Link",
					" ",
					"A {C:joy_normal}Cyberse{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9}Can't be debuffed or {s:0.9,C:attention}flipped {s:0.9}face-down"
				},
				joy_transfer_ability = {
					"Can't be debuffed or {C:attention}flipped{} face-down"
				}
			},
			j_joy_ignis_gussari = {
				name = "{C:joy_effect}Gussari @Ignister",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Can be used as any {C:attention}material{} for a {C:joy_link}Link",
					" ",
					"A {C:joy_link}Link{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9,C:mult}+#1# {s:0.9}Mult for each {s:0.9,C:attention}material {s:0.9}used for its summon",
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult for each {C:attention}material{} used for its summon",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_ignis_danmari = {
				name = "{C:joy_effect}Danmari @Ignister",
				text = {
					"Can be used as any {C:attention}material{} for a {C:joy_link}Link",
					" ",
					"A {C:joy_link}Link{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9}Lowers {s:0.9,C:attention}Blind{}{s:0.9}'s requirement by {s:0.9,C:red}#1#%{}",
					"{s:0.9}when {s:0.9,C:attention}Blind{}{s:0.9} is selected",
				},
				joy_transfer_ability = {
					"Lowers {C:attention}Blind{}'s requirement by {C:red}#1#%{}",
					"when {C:attention}Blind{} is selected",
				}
			},
			j_joy_ignis_doyon = {
				name = "{C:joy_effect}Doyon @Ignister",
				text = {
					"{C:attention}Revives #1#{} {C:joy_normal}Main Deck \"@Ignister\"{} when obtained",
					" ",
					"Adds {C:attention}#2#{} {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material{} for a {C:joy_normal}Cyberse"
				}
			},
			j_joy_ignis_donyoribo = {
				name = "{C:joy_effect}Donyoribo @Ignister",
				text = {
					"{C:money}+$#1#{} each time an {C:joy_normal}\"@Ignister\"{} is bought",
					" ",
					"Sell this card to {C:attention}banish #2#{} {C:joy_normal}\"@Ignister\"{}",
					"until {C:attention}Blind{} is selected"
				}
			},
			j_joy_ignis_backup = {
				name = "{C:joy_effect}Backup @Ignister",
				text = {
					"Adds {C:dark_edition}Negative{} to {C:attention}#1#{} other random {C:joy_normal}Cyberse{} when obtained",
					" ",
					"Adds {C:dark_edition}Negative{} to a {C:joy_normal}Cyberse{} summoned",
					"using this card as {C:attention}material{} if possible"
				}
			},
			j_joy_ignis_wizard = {
				name = "{C:joy_effect}Wizard @Ignister",
				text = {
					"You can {C:attention}tribute{} this card to {C:attention}revive{} up to {C:attention}#1#{}",
					"{C:joy_normal}Cyberse{} with different names",
					"If you own a summoned {C:joy_spell}Extra Deck{} {C:joy_normal}Cyberse{},",
					"{C:attention}revives{} an extra {C:joy_normal}\"@Ignister\"{} as {C:dark_edition}Negative"
				}
			},
			j_joy_ignis_kiruku = {
				name = "{C:joy_effect}Kurikurinku @Ignister",
				text = {
					"Sell this card to disable the current {C:attention}Boss Blind{} and",
					"add it to the next shop if you own a summoned {C:joy_spell}Extra Deck{} {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_leviathan = {
				name = "{C:joy_ritual}Water Leviathan @Ignister",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck{} when summoned",
					" ",
					"Scored cards gain {C:chips}+#2#{} Chips for each {C:attention}Attribute{} used for its summon",
					"Amount increases by {C:chips}+#3#{} when a {C:joy_link}Link{} is summoned",
					"{C:inactive}(Currently {C:chips}+#4# {C:inactive}Chips)",
					"A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability"
				},
				joy_transfer_ability = {
					"Scored cards gain {C:chips}+#1#{} Chips for each {C:attention}Attribute{} used for its summon",
					"Amount increases by {C:chips}+#2#{} when a {C:joy_link}Link{} is summoned",
					"{C:inactive}(Currently {C:chips}+#3# {C:inactive}Chips)",
				},
				joy_summon_conditions = {
					"{C:attention}2+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_golem = {
				name = "{C:joy_fusion}Earth Golem @Ignister",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck{} when summoned",
					" ",
					"{C:attention}+#2# Joker{} slot for each {C:attention}Attribute{} used for its summon",
					"{C:inactive}(Currently {C:attention}+#3#{C:inactive})",
					"A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability"
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
				name = "{C:joy_synchro}Wind Pegasus @Ignister",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck{} when summoned",
					" ",
					"{C:green}#2# in #3#{} chance to retrigger playing cards",
					"Chances increase for each {C:attention}Attribute{} used for its summon",
					"A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
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
				name = "{C:joy_xyz}Light Dragon @Ignister",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck{} when summoned",
					" ",
					"Scored cards gain {C:money}+$#2#{} when held in hand at end of round",
					"for each {C:attention}Attribute{} used for its summon",
					"{C:inactive}(Currently {C:money}+$#3#{C:inactive})",
					"A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
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
				name = "{C:joy_link}Fire Phoenix @Ignister",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} to the {C:joy_spell}Extra Deck{} when summoned",
					" ",
					"Creates {C:attention}#2#{} {C:dark_edition}Negative{} Debuffed {C:joy_link}\"Fire Phoenix @Ignister\"{}",
					"when used as {C:attention}material{} for a {C:joy_normal}Cyberse",
					" ",
					"Scored cards gain {X:mult,C:white}X#3#{} extra Mult for each {C:attention}Attribute{} used for its summon",
					"Amount increases {X:mult,C:white}X#4#{} when a {C:joy_link}Link{} is summoned",
					"{C:inactive}(Currently {X:mult,C:white}X#5#{} extra {C:inactive}Mult)",
					"A {C:joy_link}Link{} summoned using this card as {C:attention}material{} gains this ability",
				},
				joy_transfer_ability = {
					"Scored cards gain {X:mult,C:white}X#1#{} extra Mult for each {C:attention}Attribute{} used for its summon",
					"Amount increases {X:mult,C:white}X#2#{} when a {C:joy_link}Link{} is summoned",
					"{C:inactive}(Currently {X:mult,C:white}X#3#{} extra {C:inactive}Mult)",
				},
				joy_summon_conditions = {
					"{C:attention}2+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_allied = {
				name = "{C:joy_link}Allied Code Talker @Ignister",
				text = {
					"{X:mult,C:white}X#1#{} Mult for each {C:joy_link}Link",
					"{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					" ",
					"{C:attention}Revives #3#{} {C:joy_link}Links{} when summoned"
				},
				joy_summon_conditions = {
					"{C:attention}3 {C:joy_link}Links{}"
				}
			},
			j_joy_ignis_infant = {
				name = "{C:joy_link}Dark Infant @Ignister",
				text = {
					"Creates {C:attention}#1#{} {C:joy_spell}\"Ignister A.I.Land\"{} when summoned",
					"{C:inactive}(Must have room){}",
					" ",
					"Treated as any {C:attention}material{} for a {C:joy_link}Link",
					"and as any {C:attention}Attribute{} while owned"
				},
				joy_summon_conditions = {
					"{C:attention}1 {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_templar = {
				name = "{C:joy_link}Dark Templar @Ignister",
				text = {
					"{C:attention}Revives{} as many {C:joy_normal}\"@Ignister\"{} as possible",
					"with different names as {C:dark_edition}Negative{} and debuffed when summoned",
					" ",
					"{C:attention}Revives #1#{} {C:joy_normal}Main Deck Cyberse{} when used as {C:attention}material{} for a {C:joy_normal}Cyberse{}"
				},
				joy_summon_conditions = {
					"{C:attention}3 {C:joy_normal}\"@Ignister\"{}"
				}
			},
			j_joy_ignis_arrival = {
				name = "{C:joy_link}The Arrival Cyberse @Ignister",
				text = {
					"{X:mult,C:white}X#1#{} Mult for each {C:attention}Attribute{} used for its summon",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					" ",
					"Gains abilities based on the {C:attention}materials{} used for its summon",
					"{V:1}LIGHT{V:3}: {V:2}+$#3#{V:3} at end of round",
					"{V:4}DARK{V:7}: Creates {V:5}#4#{} {V:6}Spectral{V:7} at end of round {s:0.9,C:inactive}(Must have room)",
					"{V:8}WATER{V:10}: {V:9}+#5#{V:10} Chips",
					"{V:11}FIRE{V:13}: {V:12}+#6#{V:13} Mult",
					"{V:14}WIND{V:17}: {V:15}#7# in #8#{V:17} chance to create a {V:16}Negative{V:17} copy of a used consumable",
					"{V:18}EARTH{V:20}: {V:19}+#9#{V:20} hand size"
				},
				joy_summon_conditions = {
					"{C:attention}5+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_ailand = {
				name = "{C:joy_spell}Ignister A.I.Land",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}Main Deck \"@Ignister\"{} to the shop",
					"when an {C:joy_normal}\"@Ignister\"{} is used as {C:attention}material",
					" ",
					"If you own {C:attention}Jokers{} with {C:attention}#2#{} different {C:attention}Attributes{} at end of round,",
					"{C:attention}banishes{} all {C:joy_normal}Cyberse{} until {C:attention}Blind{} is selected",
					"but debuffs all non-{C:joy_normal}Cyberse{}"
				}
			},
			--#endregion
			--#region Solfachord
			j_joy_solfa_cutia = {
				name = "{C:joy_pendulum_effect}DoSolfachord Cutia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}8{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Scored cards with even rank give {C:mult}+#2#{} Mult for each {C:joy_normal}\"Solfachord\"",
					"{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
					" ",
					"Once per round, creates {C:attention}#4#{} {C:joy_pendulum}Pendulum{} {C:joy_normal}\"Solfachord\"{}",
					"after {C:attention}#5#{} {C:joy_pendulum}Pendulum{} are consumed",
					"{C:inactive}(#6#/#5#) (Must have room){}",
				}
			},
			j_joy_solfa_dreamia = {
				name = "{C:joy_pendulum_effect}ReSolfachord Dreamia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}7{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Scored cards with odd rank give {C:mult}+#2#{} Mult for each {C:joy_normal}\"Solfachord\"",
					"{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
					" ",
					"Free if you own a {C:joy_pendulum}Pendulum"
				}
			},
			j_joy_solfa_eliteia = {
				name = "{C:joy_pendulum_effect}MiSolfachord Eliteia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}6{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Gains {C:chips}+#2#{} Chips for each scored card with even rank",
					"{C:inactive}(Currently{} {C:chips}+#3#{} {C:inactive}Chips){}",
					" ",
					"Adds {C:attention}#4#{} {C:joy_normal}\"Solfachord\"{} to the {C:joy_spell}Extra Deck{}",
					"after {C:attention}#5#{} even cards are scored",
					"{C:inactive}(#6#/#5#) (Must have room){}",
				}
			},
			j_joy_solfa_fancia = {
				name = "{C:joy_pendulum_effect}FaSolfachord Fancia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}5{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Gains {C:chips}+#2#{} Chips for each scored card with odd rank",
					"{C:inactive}(Currently{} {C:chips}+#3#{} {C:inactive}Chips){}",
					" ",
					"Creates {C:attention}#4#{} {C:joy_normal}\"Solfachord\"{} after {C:attention}#5#{} odd cards are scored",
					"{C:inactive}(#6#/#5#) (Must have room){}",
				}
			},
			j_joy_solfa_gracia = {
				name = "{C:joy_pendulum_effect}SolSolfachord Gracia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}4{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Retrigger each even card {C:attention}#2#{} times",
					" ",
					"Creates {C:attention}#3#{} {C:joy_spell}\"Solfachord Harmonia\"{}",
					"after {C:attention}#4#{} even cards are scored",
					"{C:inactive}(#5#/#4#) (Must have room){}",
				}
			},
			j_joy_solfa_angelia = {
				name = "{C:joy_pendulum_effect}LaSolfachord Angelia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}3{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Retrigger each odd card {C:attention}#2#{} times",
					" ",
					"{C:attention}Revives #3#{} {C:joy_normal}\"Solfachord\"{} after {C:attention}#4#{} odd cards are scored",
					"{C:inactive}(#5#/#4#){}",
				}
			},
			j_joy_solfa_beautia = {
				name = "{C:joy_pendulum_effect}TiSolfachord Beautia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}2{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Scored cards with even rank give an extra",
					"{X:chips,C:white}X#2#{} Chips for each {C:joy_normal}\"Solfachord\"{}",
					"{C:inactive}(Currently {X:chips,C:white}X#3#{} {C:inactive}Chips)",
					" ",
					"{C:attention}Banishes #4#{} {C:joy_pendulum}Pendulum{} at end of round",
					"until {C:attention}Blind{} is selected"
				},
			},
			j_joy_solfa_coolia = {
				name = "{C:joy_pendulum_effect}DoSolfachord Coolia",
				joy_consumable = {
					"Change rank of up to {C:attention}#1#{} selected cards to {C:attention}Aces{}",
					"and level up {C:attention}Full House{}, {C:attention}Straight{} and {C:attention}Two Pair{} by {C:attention}#1#",
				},
				text = {
					"Scored cards with odd rank give an extra",
					"{X:mult,C:white}X#2#{} Mult for each {C:joy_normal}\"Solfachord\"{}",
					"{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Cards in the {C:attention}GY{} count for {C:joy_normal}\"Solfachord\"{} abilities",
				},
			},
			j_joy_solfa_musecia = {
				name = "{C:joy_link}GranSolfachord Musecia",
				text = {
					"Playing cards affected by {C:joy_normal}\"Solfachord\"{} consumable abilities",
					"gain a random edition if possible",
					" ",
					"Once per round, creates {C:attention}#1#{} {C:dark_edition}Negative{} {C:joy_pendulum}Pendulum{} {C:joy_normal}\"Solfachord\"{}",
					"after {C:attention}#2#{} {C:joy_pendulum}Pendulum{} are consumed {C:inactive}(#3#/#2#){}",
					" ",
					"If scoring hand contains both even and odd ranks,",
					"all scored cards count as both for {C:joy_normal}\"Solfachord\"{} abilities",
					" ",
					"{C:joy_pendulum}Pendulum{} count for {C:joy_normal}\"Solfachord\"{} abilities"
				},
				joy_summon_conditions = {
					"{C:attention}2 {C:joy_pendulum}Pendulum"
				}
			},
			j_joy_solfa_grancoolia = {
				name = "{C:joy_link}GranSolfachord Coolia",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_pendulum}Pendulum{}",
					"{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
					" ",
					"Playing cards affected by {C:joy_normal}\"Solfachord\"{} consumable abilities",
					"gain a random seal if possible",
					" ",
					"{C:money}+$#3#{} after {C:attention}#4#{} {C:joy_pendulum}Pendulum{} are consumed {C:inactive}(#5#/#4#){}",
					" ",
					"If scoring hand contains both even and odd ranks,",
					"all cards held in hand count as scored for {C:joy_normal}\"Solfachord\"{} abilities",
				},
				joy_summon_conditions = {
					"{C:attention}3 Jokers{},",
					"including a {C:joy_pendulum}Pendulum"
				}
			},
			j_joy_solfa_harmonia = {
				name = "{C:joy_spell}Solfachord Harmonia",
				text = {
					"{C:attention}Revives #1#{} {C:joy_normal}\"Solfachord\"{} (or {C:joy_pendulum}Pendulum{} if none)",
					"when {C:attention}Blind{} is selected",
					" ",
					"Creates {C:attention}#2# Strength{} {C:tarot}Tarot{} after a {C:joy_pendulum}Pendulum{} is consumed",
					"{C:inactive}(Must have room){}",
					" ",
					"All even cards become {C:attention}Gold{} and all odd cards become {C:attention}Steel{} after scoring",
					"if {C:attention}#3# {C:joy_normal}\"Solfachord\"{} with different names are owned, ignoring other abilities"
				}
			},
			--#endregion
			--#region Witchcrafter
			j_joy_witch_genni = {
				name = "{C:joy_effect}Witchcrafter Genni",
				text = {
					"Creates {C:attention}#1#{} {C:tarot}Tarot",
					"when obtained",
					"{C:inactive}(Must have room){}",
					" ",
					"You can {C:attention}tribute{} this card and {C:attention}#2#{} {C:tarot}Tarot",
					"to create {C:attention}#3#{} {C:joy_effect}\"Witchcrafter Potterie\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_witch_potterie = {
				name = "{C:joy_effect}Witchcrafter Potterie",
				text = {
					"Creates {C:attention}#1#{} {C:tarot}Tarot",
					"when obtained if Consumable area is empty",
					"{C:inactive}(Must have room){}",
					" ",
					"This card and {C:attention}#2#{} {C:tarot}Tarot{} cards {C:attention}banish{}",
					"at end of round until {C:attention}Blind{} selected",
					" ",
					"You can {C:attention}tribute{} this card and {C:attention}#3#{} {C:tarot}Tarot",
					"to create {C:attention}#4#{} {C:joy_effect}\"Witchcrafter Pittore\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_witch_pittore = {
				name = "{C:joy_effect}Witchcrafter Pittore",
				text = {
					"{C:chips}+#1#{} Chips for each {C:tarot}Tarot",
					"{C:attention}tributed{} this round",
					"{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
					" ",
					"Once per round, creates {C:attention}#3#{} {C:tarot}Tarot{}",
					"when {C:attention}#4#{} consumables are used",
					"{C:inactive}(#5#/#4#) (Must have room){}",
					" ",
					"You can {C:attention}tribute{} this card and {C:attention}#6#{} {C:tarot}Tarot",
					"to create {C:attention}#7#{} {C:joy_effect}\"Witchcrafter Schmietta\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_witch_schmietta = {
				name = "{C:joy_effect}Witchcrafter Schmietta",
				text = {
					"{C:mult}+#1#{} Mult for each for each {C:tarot}Tarot",
					"{C:attention}tributed{} this round",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
					" ",
					"Creates {C:attention}#3#{} {C:tarot}Tarot{}",
					"when playing first hand of round",
					"{C:inactive}(Must have room){}",
					" ",
					"You can {C:attention}tribute{} this card and {C:attention}#4#{} {C:tarot}Tarot",
					"to create {C:attention}#5#{} {C:joy_effect}\"Witchcrafter Edel\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_witch_edel = {
				name = "{C:joy_effect}Witchcrafter Edel",
				text = {
					"Once per round, creates {C:attention}#1#{} {C:joy_effect}\"Witchcrafter Genni\"{}",
					"when {C:attention}#2#{} hands are played",
					"{C:inactive}(#3#/#2#) (Must have room){}",
					" ",
					"You can {C:attention}tribute{} this card and {C:attention}#4#{} {C:tarot}Tarot",
					"to create {C:attention}#5#{} {C:joy_effect}\"Witchcrafter Haine\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_witch_haine = {
				name = "{C:joy_effect}Witchcrafter Haine",
				text = {
					"{C:money}+$#1#{} for each for each {C:tarot}Tarot",
					"{C:attention}tributed{} this round when obtained",
					" ",
					"Creates {C:attention}#2#{} {C:dark_edition}Negative {C:tarot}Tarot{}",
					"if it's the last hand of round",
					" ",
					"You can {C:attention}tribute{} this card and {C:attention}#3#{} {C:tarot}Tarot",
					"to create {C:attention}#4#{} {C:joy_effect}\"Witchcrafter Madame Verre\"{}",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_witch_verre = {
				name = "{C:joy_effect}Witchcrafter Madame Verre",
				text = {
					"Creates all {C:tarot}Tarot{} {C:attention}tributed{} this round as {C:dark_edition}Negative{} when obtained",
					" ",
					"{X:mult,C:white}X#1#{} Mult for each {C:tarot}Tarot",
					"{C:attention}tributed{} this round",
					"{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
				}
			},
			j_joy_witch_aruru = {
				name = "{C:joy_effect}Witchcrafter Golem Aruru",
				text = {
					"{C:mult}+#1#{} Mult for each for each {C:tarot}Tarot",
					"{C:attention}tributed{} this round",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
					" ",
					"Used {C:tarot}Tarot{} cards while this card is owned",
					"count as tributed for abilities",
					" ",
					"Free if you own a {C:joy_normal}\"Witchcrafter\"{}",
				}
			},
			j_joy_witch_vicemadame = {
				name = "{C:joy_fusion}Witchcrafter Vice-Madame",
				text = {
					"{C:tarot}Arcana Packs{} are free",
					" ",
					"{C:joy_normal}\"Witchcrafter\"{} Chips and Mult don't reset each round",
					" ",
					"Once per round, create {C:attention}#1#{} {C:joy_effect}\"Witchcrafter Genni\"{}",
					"when {C:attention}#2#{} {C:tarot}Tarot{} cards are used",
					"{C:inactive}(#3#/#2#) (Must have room){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Spellcasters",
				}
			},
			--#endregion
			--#region Shaddoll
			j_joy_shaddoll_beast = {
				name = "{C:joy_effect}Shaddoll Beast",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}+#1#{} hand size this round,",
					"{C:attention}revive #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and send {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"Turn {C:attention}#4#{} random non-enhanced cards in deck to",
					"{C:attention}Blue Seal Wild{} cards when used as {C:attention}material{} for a {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_dragon = {
				name = "{C:joy_effect}Shaddoll Dragon",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: {C:blue}+#1#{} Hand this round,",
					"{C:attention}revives #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"Turns {C:attention}#4#{} random non-enhanced cards in deck to",
					"{C:attention}Gold Seal Glass{} cards when used as {C:attention}material{} for a {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_falco = {
				name = "{C:joy_effect}Shaddoll Falco",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Revives #1#{} {C:joy_effect}Flip{} {C:attention}Joker{} face-down if any,",
					"{C:attention}revives #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and send {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"Creates {C:attention}#4#{} face-down {C:dark_edition}Negative {C:joy_effect}\"Shaddoll Falco\"",
					"when used as {C:attention}material{} for a {C:joy_fusion}Fusion",
				}
			},
			j_joy_shaddoll_hedgehog = {
				name = "{C:joy_effect}Shaddoll Hedgehog",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: Creates {C:attention}#1#{} {C:tarot}Tarot{} {C:inactive}(Must have room){},",
					"{C:attention}revives #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"Creates {C:attention}#4#{} {C:spectral}Spectral",
					"when used as {C:attention}material{} for a {C:joy_fusion}Fusion",
					"{C:inactive}(Must have room)",
				}
			},
			j_joy_shaddoll_hound = {
				name = "{C:joy_effect}Shaddoll Hound",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: {C:money}+$#1#{},",
					"{C:attention}revives #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"{C:attention}Flips{} all {C:attention}Jokers{} face-up",
					"when used as {C:attention}material{} for a {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_squamata = {
				name = "{C:joy_effect}Shaddoll Squamata",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: {C:red}+#1#{} Discard this round,",
					"{C:attention}revives #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"Turns {C:attention}#4#{} random non-enhanced cards in deck to",
					"{C:attention}Purple Seal Steel{} cards when used as {C:attention}material{} for a {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_core = {
				name = "{C:joy_trap}Shaddoll Core",
				text = {
					"{C:joy_effect}FLIP{}: {X:mult,C:white}X#1#{} Mult this round,",
					"{C:attention}revives #2#{} {C:joy_normal}\"Shaddoll\"{} if any",
					"and sends {C:attention}#3#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{}",
					" ",
					"Can be used as any {C:attention}material{} for a {C:joy_fusion}Fusion",
					" ",
					"Creates {C:attention}#4#{} {C:joy_spell}\"Curse of the Shadow Prison\"",
					"when used as {C:attention}material{} for a {C:joy_fusion}Fusion",
					"{C:inactive}(Must have room)",
				}
			},
			j_joy_shaddoll_ariel = {
				name = "{C:joy_effect}Naelshaddoll Ariel",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Banishes #1#{} other {C:attention}Joker{} at end of round",
					"until {C:attention}Blind{} is selected",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card as {C:attention}material{} gains the following ability:",
					"{s:0.9,C:attention}Banishes{} {s:0.9}at end of round",
					"{s:0.9}until {s:0.9,C:attention}Blind{} {s:0.9}is selected"
				},
				joy_transfer_ability = {
					"{C:attention}Banishes{} at end of round",
					"until {C:attention}Blind{} is selected"
				},
			},
			j_joy_shaddoll_genius = {
				name = "{C:joy_effect}Nehshaddoll Genius",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: You can {C:attention}flip #1#{} {C:attention}Joker{} this round",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9}Can't be debuffed or {s:0.9,C:attention}flipped{s:0.9} face-down",
				},
				joy_transfer_ability = {
					"Can't be debuffed or {C:attention}flipped{} face-down",
				},
			},
			j_joy_shaddoll_keios = {
				name = "{C:joy_effect}Qadshaddoll Keios",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: Adds {C:attention}#1#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"{C:inactive}(Must have room)",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9,C:mult}+#2#{s:0.9} Mult for each {s:0.9,C:joy_normal}\"Shaddoll\"{s:0.9} or {s:0.9,C:joy_normal}Spellcaster{s:0.9} in the {s:0.9,C:attention}GY"
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult for each {C:joy_normal}\"Shaddoll\"{} or {C:joy_normal}Spellcaster{} in the {C:attention}GY",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
				},
			},
			j_joy_shaddoll_wendi = {
				name = "{C:joy_effect}Reeshaddoll Wendi",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: Creates {C:attention}#1#{} {C:joy_normal}Main Deck \"Shaddoll\"{}",
					"{C:inactive}(Must have room)",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9,C:attention}Revives #2#{s:0.9,C:joy_effect} Flip {s:0.9,C:attention}Joker{s:0.9} as {s:0.9,C:dark_edition}Negative{s:0.9} when {s:0.9,C:attention}Boss Blind{s:0.9} is selected",
				},
				joy_transfer_ability = {
					"{C:attention}Revives #1# {C:joy_effect}Flip {C:attention}Joker{} as {C:dark_edition}Negative{} when {C:attention}Boss Blind{} is selected",
				},
			},
			j_joy_shaddoll_hollow = {
				name = "{C:joy_effect}Helshaddoll Hollow",
				text = {
					"{C:attention}Flips{} at end of round {C:inactive}(even if face-down)",
					" ",
					"{C:joy_effect}FLIP{}: Sends {C:attention}#1#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9}Sends {s:0.9,C:attention}#2#{} {s:0.9,C:joy_normal}Main Deck \"Shaddoll\"{s:0.9} to the {s:0.9,C:attention}GY{s:0.9} when {s:0.9,C:attention}Blind{s:0.9} is selected",
				},
				joy_transfer_ability = {
					"Sends {C:attention}#1#{} {C:joy_normal}Main Deck \"Shaddoll\"{} to the {C:attention}GY{} when {C:attention}Blind{} is selected",
				},
			},
			j_joy_shaddoll_anoya = {
				name = "{C:joy_fusion}El Shaddoll Anoyatyllis",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Shaddoll\"{} in the {C:attention}GY",
					"{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#3#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Shaddoll\"{} in the {C:attention}GY",
					"{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Spellcaster{} +",
					"{C:attention}1{} {C:joy_water}WATER{} {C:attention}Joker{}",
				}
			},
			j_joy_shaddoll_apka = {
				name = "{C:joy_fusion}El Shaddoll Apkallone",
				text = {
					"{C:joy_normal}\"Shaddoll\"{} {C:joy_fusion}Fusions{} can't be debuffed or {C:attention}flipped{} face-down",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#1#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"{C:joy_normal}\"Shaddoll\"{} {C:joy_fusion}Fusions{} can't be debuffed or {C:attention}flipped{} face-down",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Spellcasters{}",
					"with different {C:attention}attributes{}",
				}
			},
			j_joy_shaddoll_winda = {
				name = "{C:joy_fusion}El Shaddoll Winda",
				text = {
					"{X:mult,C:white}X#1#{} Mult for each {C:joy_normal}\"Shaddoll\"{}, face-down {C:attention}Joker{} or empty {C:attention}Joker{} slot",
					"{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#3#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"{X:mult,C:white}X#1#{} Mult for each {C:joy_normal}\"Shaddoll\"{}, face-down {C:attention}Joker{} or empty {C:attention}Joker{} slot",
					"{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Spellcaster{} +",
					"{C:attention}1{} {C:joy_dark}DARK{} {C:attention}Joker{}",
				}
			},
			j_joy_shaddoll_elconstruct = {
				name = "{C:joy_fusion}El Shaddoll Construct",
				text = {
					"Sends {C:attention}#1# {C:joy_normal}\"Shaddoll\"{} to the {C:attention}GY{} when {C:attention}Blind{} is selected",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#2#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"Sends {C:attention}#1# {C:joy_normal}\"Shaddoll\"{} to the {C:attention}GY{} when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Spellcaster{} +",
					"{C:attention}1{} {C:joy_light}LIGHT{} {C:attention}Joker{}",
				}
			},
			j_joy_shaddoll_grysta = {
				name = "{C:joy_fusion}El Shaddoll Grysta",
				text = {
					"Gains {X:chips,C:white}X#1#{} Chips for each {C:joy_normal}\"Shaddoll\"{} in the {C:attention}GY",
					"{C:inactive}(Currently {X:chips,C:white}X#2#{} {C:inactive}Chips)",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#3#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"Gains {X:chips,C:white}X#1#{} Chips for each {C:joy_normal}\"Shaddoll\"{} in the {C:attention}GY",
					"{C:inactive}(Currently {X:chips,C:white}X#2#{} {C:inactive}Chips)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Spellcaster{} +",
					"{C:attention}1{} {C:joy_fire}FIRE{} {C:attention}Joker{}",
				}
			},
			j_joy_shaddoll_shekh = {
				name = "{C:joy_fusion}El Shaddoll Shekhinaga",
				text = {
					"Disables effect of every {C:attention}Boss Blind",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#1#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"Disables effect of every {C:attention}Boss Blind"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Spellcaster{} +",
					"{C:attention}1{} {C:joy_earth}EARTH{} {C:attention}Joker{}",
				}
			},
			j_joy_shaddoll_wendigo = {
				name = "{C:joy_fusion}El Shaddoll Wendigo",
				text = {
					"{C:joy_normal}\"Shaddoll\"{} {C:joy_effect}Flip{} {C:attention}Jokers{} don't {C:attention}flip{} face-down on their own",
					"and their {C:joy_effect}FLIP{} abilities activate when {C:attention}Blind{} is selected",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#1#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"{C:joy_normal}\"Shaddoll\"{} {C:joy_effect}Flip{} {C:attention}Jokers{} don't {C:attention}flip{} face-down on their own",
					"and their {C:joy_effect}FLIP{} abilities activate when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Spellcaster{} +",
					"{C:attention}1{} {C:joy_wind}WIND{} {C:attention}Joker{}",
				}
			},
			j_joy_shaddoll_construct = {
				name = "{C:joy_link}Shaddoll Construct",
				text = {
					"Can be treated as any {C:attention}material{} for a {C:joy_fusion}Fusion",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains this ability",
					" ",
					"Adds {C:attention}#1#{} {C:joy_normal}\"Shaddoll\"{} to the {C:joy_spell}Extra Deck",
					"when used as {C:attention}material",
					"{C:inactive}(Must have room)",
				},
				joy_transfer_ability = {
					"Can be treated as any {C:attention}material{} for a {C:joy_fusion}Fusion",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_effect}Flip{} or",
					"face-down {C:attention}Jokers"
				}
			},
			j_joy_shaddoll_prison = {
				name = "{C:joy_spell}Curse of the Shadow Prison",
				text = {
					"Each time a {C:joy_normal}\"Shaddoll\"{}, {C:joy_normal}Spellcaster{} or {C:joy_effect}Flip{} {C:attention}Joker",
					"is sent to the {C:attention}GY{}, add {C:attention}#1#{} {C:joy_token}Counter{} to this card",
					"{C:inactive}(Currently {C:attention}#2#{C:inactive})",
					" ",
					"{C:chips}+#3#{} Chips for each {C:joy_token}Counter{}",
					"{C:inactive}(Currently {C:chips}+#4#{C:inactive} Chips)",
					" ",
					"You can remove {C:attention}#5#{} {C:joy_token}Counters{} to {C:attention}revive #6#{} {C:joy_fusion}Fusion"
				}
			},
			--#endregion
			--#region Paleozoic
			j_joy_paleo_canadia = {
				name = "{C:joy_trap}Paleozoic Canadia",
				text = {
					"Gains {C:mult}+#1#{} Mult for each {C:attention}Joker{} {C:attention}flipped",
					"{s:0.9,C:inactive}(Gains even while face-down)",
					"{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Revives #3#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_dino = {
				name = "{C:joy_trap}Paleozoic Dinomischus",
				text = {
					"{C:joy_effect}FLIP{}: This card and {C:attention}#1#{} other {C:joy_trap}Trap{} {C:attention}banish{} at end of round",
					"until {C:attention}Blind{} is selected and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_eldonia = {
				name = "{C:joy_trap}Paleozoic Eldonia",
				text = {
					"{C:joy_effect}FLIP{}: {C:chips}+#1#{} Chips this round",
					"and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_hallu = {
				name = "{C:joy_trap}Paleozoic Hallucigenia",
				text = {
					"{C:joy_effect}FLIP{}: {C:mult}+#1#{} Mult this round",
					"and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_lean = {
				name = "{C:joy_trap}Paleozoic Leanchoilia",
				text = {
					"Gains {C:chips}+#1#{} Chips for each {C:attention}Joker{} {C:attention}flipped",
					"{s:0.9,C:inactive}(Gains even while face-down)",
					"{C:inactive}(Currently {C:chips}+#2# {C:inactive}Chips)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Revives #3#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_marrella = {
				name = "{C:joy_trap}Paleozoic Marrella",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}Revives #1#{} {C:joy_normal}\"Paleozoic\" ",
					"and sends {C:attention}#2#{} {C:joy_trap}Trap{} {C:joy_normal}\"Paleozoic\"{} to the {C:attention}GY",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_oleno = {
				name = "{C:joy_trap}Paleozoic Olenoides",
				text = {
					"{C:joy_effect}FLIP{}: {C:red}+#1#{} Discard this round",
					"and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_pikaia = {
				name = "{C:joy_trap}Paleozoic Pikaia",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}+#1#{} hand size this round",
					"and {C:attention}revives #2#{} {C:joy_normal}\"Paleozoic\"",
					" ",
					"Can't be debuffed"
				}
			},
			j_joy_paleo_cambro = {
				name = "{C:joy_link}Paleozoic Cambroraster",
				text = {
					"Adds {C:attention}#1#{} {C:joy_xyz}Xyz{} {C:joy_normal}\"Paleozoic\"{} to the {C:joy_spell}Extra Deck{} when summoned",
					" ",
					"{C:joy_normal}\"Paleozoic\"{} {C:attention}revive{} other cards as {C:dark_edition}Negative",
					" ",
					"Can't be debuffed"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Paleozoic\"{}",
				}
			},
			j_joy_paleo_anomalo = {
				name = "{C:joy_xyz}Paleozoic Anomalocaris",
				text = {
					"{C:joy_xyz}Detach{} {C:attention}#1#{}: Gains {X:mult,C:white}X#2#{} Mult this round",
					"{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Attach {C:attention}#4# {C:joy_xyz}material{} to this card when a {C:joy_trap}Trap{} is flipped face-up",
					" ",
					"Can't be debuffed"
				},
				joy_summon_conditions = {
					"{C:attention}3+{} {C:joy_trap}Traps{}",
				}
			},
			j_joy_paleo_opa = {
				name = "{C:joy_xyz}Paleozoic Opabinia",
				text = {
					"{C:joy_xyz}Detach{} {C:attention}#1#{}: Creates {C:attention}#2#{} {C:joy_normal}Main Deck \"Paleozoic\"{}",
					" ",
					"{C:joy_trap}Traps{} are {C:attention}flipped{} face-up when {C:attention}Blind{} is selected",
					" ",
					"Can't be debuffed"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_water}Water{} {C:attention}Jokers{}",
				}
			},
			--#endregion
			--#region Invoked
			j_joy_invoked_aleister = {
				name = "{C:joy_effect}Aleister the Invoker",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into an {C:joy_normal}\"Invoked\"",
					"{C:inactive}(This is treated as a Fusion summon)",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9,C:chips}+#2#{} {s:0.9}Chips for each {s:0.9,C:joy_fusion}Fusion{} {s:0.9}summoned this run"
				},
				joy_transfer_ability = {
					"{C:chips}+#1#{} Chips for each {C:joy_fusion}Fusion{} summoned this run",
					"{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)"
				}
			},
			j_joy_invoked_madness = {
				name = "{C:joy_link}Aleister the Invoker of Madness",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into an {C:joy_normal}\"Invoked\"",
					"{C:inactive}(This is treated as a Fusion summon)",
					" ",
					"Creates {C:attention}#2#{} {C:joy_spell}\"Magical Meltdown\"{} when used",
					"as {C:attention}material{} for a {C:joy_fusion}Fusion{}",
					"{C:inactive}(Must have room)",
					" ",
					"A {C:joy_fusion}Fusion{} summoned using this card",
					"as {C:attention}material{} gains the following ability:",
					"{s:0.9,C:mult}+#3#{} {s:0.9}Mult for each {s:0.9,C:joy_fusion}Fusion{} {s:0.9}summoned this run"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{} with",
					"different {C:attention}Types",
					"and {C:attention}Attributes"
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult for each {C:joy_fusion}Fusion{} summoned this run",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_invoked_caliga = {
				name = "{C:joy_fusion}Invoked Caliga",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Gains {X:mult,C:white}X#2#{} Mult for each {C:attention}Joker{} {C:attention}tributed{} this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					" ",
					"Reduces price of {C:joy_effect}Monster Packs{} by {C:money}$#4#"
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_dark}DARK {C:attention}Joker{}",
					"{s:0.8,C:inactive}(Random chance when tributing",
					"{s:0.8,C:inactive}a non-Monster)"
				},
				joy_transfer_ability = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:attention}Joker{} {C:attention}tributed{} this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Reduces price of {C:joy_effect}Monster Packs{} by {C:money}$#3#"
				}
			},
			j_joy_invoked_raidjin = {
				name = "{C:joy_fusion}Invoked Raidjin",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Gains {X:mult,C:white}X#2#{} Mult for each {C:attention}Joker{} {C:attention}flipped{} this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Flip #4#{} other random {C:attention}Joker{} face-up when {C:attention}Blind{} is selected",
					"{C:attention}Flip #4#{} other random {C:attention}Joker{} face-down at end of round",
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_wind}WIND {C:attention}Joker{}",
					"{s:0.8,C:inactive}(Random chance when tributing",
					"{s:0.8,C:inactive}a non-Monster)"
				},
				joy_transfer_ability = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:attention}Joker{} {C:attention}flipped{} this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Flip #3#{} other random {C:attention}Joker{} face-up when {C:attention}Blind{} is selected",
					"{C:attention}Flip #3#{} other random {C:attention}Joker{} face-down at end of round",
				}
			},
			j_joy_invoked_cocytus = {
				name = "{C:joy_fusion}Invoked Cocytus",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Reduces {C:attention}Blind{}'s requirement by {C:red}#2#%",
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_water}WATER {C:attention}Joker{}",
					"{s:0.8,C:inactive}(Random chance when tributing",
					"{s:0.8,C:inactive}a non-Monster)"
				},
				joy_transfer_ability = {
					"Reduces {C:attention}Blind{}'s requirement by {C:red}#1#%",
				}
			},
			j_joy_invoked_purgatorio = {
				name = "{C:joy_fusion}Invoked Purgatrio",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Each {C:joy_fusion}Fusion{} gives {X:mult,C:white}X#2#{} Mult",
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_fire}FIRE {C:attention}Joker{}",
					"{s:0.8,C:inactive}(Random chance when tributing",
					"{s:0.8,C:inactive}a non-Monster)"
				},
				joy_transfer_ability = {
					"Each {C:joy_fusion}Fusion{} gives {X:mult,C:white}X#1#{} Mult",
				}
			},
			j_joy_invoked_mage = {
				name = "{C:joy_fusion}Invoked Magellanica",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"{C:mult}+#2#{} Mult",
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_earth}EARTH {C:attention}Joker{}",
					"{s:0.8,C:inactive}(Random chance when tributing",
					"{s:0.8,C:inactive}a non-Monster)"
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult",
				}
			},
			j_joy_invoked_mechaba = {
				name = "{C:joy_fusion}Invoked Mechaba",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Disables effect of {C:attention}Boss Blind{} after {C:attention}#2#{} cards are sold this round",
					"{C:inactive}(#3#/#2#)"
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_light}LIGHT {C:attention}Joker{}",
					"{s:0.8,C:inactive}(Random chance when tributing",
					"{s:0.8,C:inactive}a non-Monster)"
				},
				joy_transfer_ability = {
					"Disables effect of {C:attention}Boss Blind{} after {C:attention}#1#{} cards are sold this round",
					"{C:inactive}(#2#/#1#)"
				}
			},
			j_joy_invoked_augo = {
				name = "{C:joy_fusion}Invoked Augoeides",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Gains {X:mult,C:white}X#2#{} Mult for each {C:joy_fusion}Fusion{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					" ",
					"Sends {C:attention}#4#{} non-{C:joy_normal}\"Invoked\"{} {C:joy_fusion}Fusion{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} {C:joy_fusion}Fusion",
					"{s:0.8,C:inactive}(Supersedes other conditions)",
				},
				joy_transfer_ability = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_fusion}Fusion{} in the {C:attention}GY{}",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Sends {C:attention}#3#{} non-{C:joy_normal}\"Invoked\"{} {C:joy_fusion}Fusion{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
				}
			},
			j_joy_invoked_elysium = {
				name = "{C:joy_fusion}Invoked Elysium",
				text = {
					"You can {C:attention}tribute #1#{} other {C:attention}Joker",
					"to {C:attention}transform{} this card into {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Gains abilities of each different {C:joy_normal}\"Invoked\"{} in the {C:attention}GY{}",
					" ",
					"Treated as any {C:attention}material{} for a {C:joy_fusion}Fusion",
					"and as any {C:attention}Attribute{} while owned"
				},
				joy_summon_conditions = {
					"{C:attention}Tribute 1{} summoned",
					"non-{C:joy_fusion}Fusion",
					"{s:0.8,C:inactive}(Supersedes other conditions)",
				}
			},
			j_joy_invoked_meltdown = {
				name = "{C:joy_spell}Magical Meltdown",
				text = {
					"You can {C:attention}tribute #1#{} {C:joy_fusion}Fusions{} to create {C:attention}#2#{} {C:joy_effect}\"Aleister the Invoker\"",
					" ",
					"Gains {X:mult,C:white}X#3#{} Mult for each {C:joy_fusion}fusion{} summoned this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_fusion}Fusions{} can't be flipped or debuffed"
				}
			},
			--#endregion
			--#region Danger!
			j_joy_danger_jack = {
				name = "{C:joy_effect}Danger!? Jackalope?",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Danger!\"{}",
					"destruction ability triggered this run,",
					"gains {C:chips}+#2#{} Chips when {C:attention}Blind{} is selected,",
					"{C:inactive}(Currently {C:chips}+#3# {C:inactive}Chips)",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Creates {C:attention}#4#{} {C:joy_normal}\"Danger!\"",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_danger_tsuch = {
				name = "{C:joy_effect}Danger!? Tsuchinoko?",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_normal}\"Danger!\"{}",
					"destruction ability triggered this run,",
					"gains {C:mult}+#2#{} Mult when {C:attention}Blind{} is selected",
					"{C:inactive}(Currently {C:mult}+#3# {C:inactive}Mult)",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Creates {C:attention}#4#{} {C:joy_normal}\"Danger!\"",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_danger_chup = {
				name = "{C:joy_effect}Danger! Chupacabra!",
				text = {
					"{C:money}+$#1#{} at end of round",
					"Increases by {C:money}#2#{} when {C:attention}Blind{} is selected",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"{C:attention}Revives #3#{} {C:joy_normal}\"Danger!\"",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability"
				}
			},
			j_joy_danger_moth = {
				name = "{C:joy_effect}Danger! Mothman!",
				text = {
					"{C:red}+#1#{} Discards",
					"Increases by {C:red}#2#{} when {C:attention}Blind{} is selected",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"{C:attention}Revives #3#{} {C:joy_normal}\"Danger!\"",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability"
				}
			},
			j_joy_danger_dog = {
				name = "{C:joy_effect}Danger! Dogman!",
				text = {
					"Reduces {C:attention}Blind{}'s requirements by {C:red}#1#%{}",
					"Increases by {C:red}#2#%{} when {C:attention}Blind{} is selected",
					"{s:0.9,C:inactive}(Max. 25%)",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Adds {C:attention}#3#{} {C:joy_normal}\"Danger!\"{} to the shop",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability"
				}
			},
			j_joy_danger_ness = {
				name = "{C:joy_effect}Danger! Nessie!",
				text = {
					"{C:attention}+#1#{} hand size",
					"Increases by {C:attention}#2#{} when {C:attention}Blind{} is selected",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Adds {C:attention}#3#{} {C:joy_normal}\"Danger!\"{} to the shop",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability"
				}
			},
			j_joy_danger_big = {
				name = "{C:joy_effect}Danger! Bigfoot!",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_normal}\"Danger!\"{}",
					"destruction ability triggered this run,",
					"gains {X:mult,C:white}X#2#{} Mult when {C:attention}Blind{} is selected",
					"{C:inactive}(Currently {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Destroys all other {C:attention}Jokers{}",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability",
				}
			},
			j_joy_danger_ogo = {
				name = "{C:joy_effect}Danger! Ogopogo!",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_normal}\"Danger!\"{} in the {C:attention}GY{}",
					"{C:inactive}(Currently {C:chips}+#2# {C:inactive}Chips)",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Sends {C:attention}#3#{} {C:joy_normal}\"Danger!\"{} to the {C:attention}GY{}",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability",
					"{C:inactive}(Must have room){}",
				}
			},
			j_joy_danger_thunder = {
				name = "{C:joy_effect}Danger! Thunderbird!",
				text = {
					"Gains {X:chips,C:white}X#1#{} Chips for each {C:joy_normal}\"Danger!\"{}",
					"destruction ability triggered this run,",
					"gains {X:chips,C:white}X#2#{} Chips when {C:attention}Blind{} is selected",
					"{C:inactive}(Currently {X:chips,C:white}X#3#{} {C:inactive}Chips)",
					" ",
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"{C:inactive}(itself included)",
					" ",
					"Destroys {C:attention}#4#{} other {C:attention}Joker{} and all {C:attention}Consumables",
					"when destroyed by a {C:joy_normal}\"Danger!\"{} ability",
				}
			},
			j_joy_danger_realm = {
				name = "{C:joy_spell}Realm of Danger!",
				text = {
					"Destroys a random {C:attention}Joker{} when {C:attention}Blind{} is selected",
					"and gives {C:money}+$#1#{}",
					" ",
					"{C:joy_normal}\"Danger!\"{} {C:attention}revive{} and create cards as {C:dark_edition}Polychrome{}"
				}
			},
			j_joy_danger_disorder = {
				name = "{C:joy_spell}Danger! Disturbance! Disorder!",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_normal}\"Danger!\"{} in the {C:attention}GY{}",
					"{C:inactive}(Currently {C:mult}+#2# {C:inactive}Mult)",
					" ",
					"Creates {C:attention}#3#{} {C:joy_normal}\"Danger!\"{}",
					"when {C:attention}Blind{} is selected",
					"{C:inactive}(Must have room){}",
					" ",
					"All non-{C:joy_normal}\"Danger!\"{} are debuffed"
				}
			},
			--#endregion
			--#region Adamancipator
			j_joy_adaman_analyzer = {
				name = "Adamancipator Analyzer",
				text = { "TBD" }
			},
			j_joy_adaman_researcher = {
				name = "Adamancipator Researcher",
				text = { "TBD" }
			},
			j_joy_adaman_seeker = {
				name = "Adamancipator Seeker",
				text = { "TBD" }
			},
			j_joy_adaman_crysdragite = {
				name = "Adamancipator Crystal - Dragite",
				text = { "TBD" }
			},
			j_joy_adaman_crysraptite = {
				name = "Adamancipator Crystal - Raptite",
				text = { "TBD" }
			},
			j_joy_adaman_crysleonite = {
				name = "Adamancipator Crystal - Leonite",
				text = { "TBD" }
			},
			j_joy_adaman_dragite = {
				name = "Adamancipator Risen - Dragite",
				text = { "TBD" }
			},
			j_joy_adaman_leonite = {
				name = "Adamancipator Risen - Leonite",
				text = { "TBD" }
			},
			j_joy_adaman_raptite = {
				name = "Adamancipator Risen - Raptite",
				text = { "TBD" }
			},
			j_joy_adaman_laputite = {
				name = "Adamancipator Laputite",
				text = { "TBD" }
			},
			--#endregion
			--#region Free Agents
			--#region Effect
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
					"as {C:attention}material{C:attention}",
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
					"gives {X:mult,C:white}X#2#"
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
			j_joy_beautunaful = {
				name = "{C:joy_effect}Beautunaful Princess",
				text = {
					"Creates {C:attention}#1#{} {C:joy_normal}Fish{} when obtained and",
					"when it returns from {C:attention}banishment{}",
					"{C:inactive}(Must have room)"
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
			--#endregion
			--#region Trap
			j_joy_quantumcat = {
				name = "{C:joy_trap}Quantum Cat",
				text = {
					"{C:chips}+#1#{} Chips",
					" ",
					"Treated as any {C:attention}Type{} and as any {C:attention}Attribute{} while owned"
				}
			},
			j_joy_anguish = {
				name = "{C:joy_trap}Statue of Anguish Pattern",
				text = {
					"{C:joy_effect}FLIP{}: {C:money}+$#1#{} for each {C:joy_trap}Trap",
					" ",
					"{C:joy_trap}Traps{} can't be debuffed",
					"{C:inactive}(Even while face-down)"
				}
			},
			j_joy_tiki_curse = {
				name = "{C:joy_trap}Tiki Curse",
				text = {
					"{C:chips}+#1#{} Chips for each {C:joy_trap}Trap",
					"{C:inactive}(Currently {C:chips}+#2#{} {C:inactive}Chips)"
				}
			},
			j_joy_tiki_soul = {
				name = "{C:joy_trap}Tiki Soul",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_trap}Trap",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_zoma = {
				name = "{C:joy_trap}Zoma the Spirit",
				text = {
					"Sell this card to lower {C:attention}Blind{}'s requirement by {C:red}#1#%",
					"for each time this card was {C:attention}flipped{} face-up",
					"{C:inactive}(Currently {C:red}#2#%{}{C:inactive})"
				}
			},
			j_joy_zoma_earthbound = {
				name = "{C:joy_trap}Zoma the Earthbound Spirit",
				text = {
					"{C:mult}+#1#{} Mult for each time this card was {C:attention}flipped{} face-up",
					"{C:inactive}(Currently {C:mult}+#2#{} {C:inactive}Mult)",
					" ",
					"Sell this card to lower {C:attention}Blind{}'s requirement by {C:red}#3#%",
					"for each time this card was {C:attention}flipped{} face-up",
					"{C:inactive}(Currently {C:red}#4#%{}{C:inactive})"
				}
			},
			j_joy_finished = {
				name = "{C:joy_trap}You're Finished",
				text = {
					"{X:mult,C:white}X#1#{} Mult if you own {C:attention}#1# Jokers{} or more",
					" ",
					"You can {C:attention}tribute{} this card and",
					"all other {C:attention}Jokers{} to win the current {C:attention}Blind"
				}
			},
			j_joy_apophis = {
				name = "{C:joy_trap}Embodiment of Apophis",
				text = {
					"{C:mult}+#1#{} Mult"
				}
			},
			j_joy_azurune = {
				name = "{C:joy_trap}Angel Statue - Azurune",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each",
					"{C:attention}Joker{} summoned this run",
					"{C:inactive}(Currently {X:mult,C:white}X#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_crukra = {
				name = "{C:joy_trap}Crusadia Krawler",
				text = {
					"Each {C:joy_link}Link{} gives {X:mult,C:white}X#1#{} Mult",
				}
			},
			--#endregion
			--#region Pendulum
			--#region Pendulum Normal
			j_joy_foucault = {
				name = "{C:joy_pendulum_normal}Foucault's Cannon",
				joy_consumable = {
					"Create as many {C:attention}Earth{} as possible",
					"{C:inactive}(Must have room)"
				},
				text = {
					"{E:1}A mechanized life form, roving through space-time. But the{}",
					"{E:1}mysterious thing is that its memory i... m...stly gone. W...at is{}",
					"{E:1}t...e reason? D..... refuse t... b.... interfered w...h?{}",
				}
			},
			--#endregion
			--#region Pendulum Effect
			j_joy_eccentrick = {
				name = "{C:joy_pendulum_effect}Archfiend Eccentrick",
				joy_consumable = {
					"Destroys up to {C:attention}#1#{} selected cards",
				},
				text = {
					"{C:mult}+#2#{} Mult for every destroyed playing card this run",
					"{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
				},
			},
			j_joy_pendulumoon = {
				name = "{C:joy_pendulum_effect}PenduLuMoon",
				joy_consumable = {
					"{C:attention}Revive #1#{} {C:joy_pendulum}Pendulum{} as {C:dark_edition}Negative",
				},
				text = {
					"Sends {C:attention}#2#{} {C:joy_pendulum}Pendulum{} to the {C:attention}GY{}",
					"when {C:attention}Blind{} is selected",
					" ",
					"Cannot be {C:attention}revived{}",
				},
			},
			j_joy_pandora = {
				name = "{C:joy_pendulum_effect}Pandora's Jewelry Box",
				joy_consumable = {
					"Give a random {C:joy_pendulum}Pendulum{} a random {C:dark_edition}Edition{}"
				},
				text = {
					"{C:blue}+#1#{} Hands when {C:attention}Blind{} is selected",
					"if you have no cards in the {C:joy_spell}Extra Deck{}"
				}
			},
			j_joy_anchamoufrite = {
				name = "{C:joy_pendulum_effect}Anchamoufrite",
				joy_consumable = {
					"During a {C:attention}Blind{}, draw {C:attention}#1#{} extra cards"
				},
				text = {
					"{C:attention}+#2#{} hand size when {C:attention}Blind{} is selected",
					"if you have no cards in the {C:joy_spell}Extra Deck{}"
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
					"{X:mult,C:white}X#3#{} Mult if you own {C:attention}#1# Jokers{} or less"
				}
			},
			j_joy_pendulumucho = {
				name = "{C:joy_pendulum_effect}Pendulumucho",
				joy_consumable = {
					"{C:attention}Revive #1#{} {C:joy_pendulum}Pendulum{}",
				},
				text = {
					"{C:attention}Revives #2#{} {C:joy_pendulum}Pendulum{} when obtained",
					" ",
					"Cannot be {C:attention}revived{}",
				}
			},
			j_joy_moissa = {
				name = "{C:joy_pendulum_effect}Moissa Knight, the Comet General",
				joy_consumable = {
					"Add {C:attention}#1#{} {C:joy_pendulum}Pendulum{} to the shop"
				},
				text = {
					"Gains {C:chips}+#2#{} Chips for each {C:joy_pendulum}Pendulum{} bought",
					"{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips)"
				}
			},
			j_joy_pmcaptor = {
				name = "{C:joy_pendulum_effect}P.M. Captor",
				joy_consumable = {
					"{C:attention}Revive #1#{} {C:joy_pendulum}Pendulum{}",
					"{C:inactive}(Except \"P.M. Captor\"){}"
				},
				text = {
					"{C:joy_normal}Zombies{} cannot be debuffed",
					"Non-{C:joy_trap}Trap{} {C:joy_normal}Zombies{} cannot be {C:attention}flipped{}"
				}
			},
			j_joy_metrognome = {
				name = "{C:joy_pendulum_effect}Metrognome",
				joy_consumable = {
					"Create {C:attention}#1#{} {C:joy_pendulum}Pendulum{} of the most owned rarity",
					"{C:inactive}(Must have room) (Random if multiple)"
				},
				text = {
					"Each {C:joy_pendulum}Pendulum{} that shares the",
					"most owned rarity gives {C:mult}+#2#{} Mult"
				}
			},
			j_joy_bozu = {
				name = "{C:joy_pendulum_effect}Rain Bozu",
				joy_consumable = {
					"A random {C:joy_normal}Monster{} {C:attention}Joker{} gains",
					"this card's current Chips and Mult"
				},
				text = {
					"Gains {C:chips}+#1#{} Chips for each card in the {C:joy_spell}Extra Deck{}",
					"and {C:mult}+#2#{} Mult for each empty {C:joy_spell}Extra Deck{} slot",
					"when {C:attention}Blind{} is selected",
					"{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips and {C:mult}+#4#{} {C:inactive}Mult)"
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
					"{X:mult,C:white}X#3#{} Mult if no card is played in this {C:attention}column{}",
					"{C:inactive}(Lowers the higher the column)",
					"{C:inactive}(Currently in {C:attention}column #4#{}{C:inactive})",
				}
			},
			--#endregion
			--#region Pendulum Fusion
			j_joy_couverture = {
				name = "{C:joy_pendulum_fusion}Patissciel Couverture",
				joy_consumable = {
					"Create {C:attention}#1#{} {C:red}Rare{} {C:joy_pendulum}Pendulum{}",
					"{C:inactive}(Must have room)"
				},
				text = {
					"Adds {C:attention}#2#{} {C:joy_pendulum_fusion}Patissciel Couverture{}",
					"to the {C:joy_spell}Extra Deck{} if this card is consumed",
					"{C:inactive}(Must have room)"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_pendulum}Pendulum{}"
				}
			},
			--#endregion
			--#region Pendulum Synchro
			j_joy_nirvana = {
				name = "{C:joy_pendulum_synchro}Nirvana High Paladin",
				joy_consumable = {
					"All {C:joy_pendulum}Pendulum{} become {C:dark_edition}Polychrome{}"
				},
				text = {
					"Each {C:joy_pendulum}Pendulum{} gives {X:mult,C:white}X#1#{} Mult"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} non-{C:joy_synchro}Tuner Synchro",
				}
			},
			--#endregion
			--#region Pendulum Xyz
			j_joy_ooze = {
				name = "{C:joy_pendulum_xyz}Daidaratant the Ooze Giant",
				joy_consumable = {
					"Attach {C:attention}#1# materials{} to a random {C:joy_xyz}Xyz{}"
				},
				text = {
					"{C:joy_xyz}Detach{} {C:attention}#2#{}: {C:attention}Revives #3#{} {C:joy_pendulum}Pendulum{} as {C:dark_edition}Negative{}"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_pendulum}Pendulum{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive})"
				}
			},
			--#endregion
			--#endregion
			--#region Ritual
			j_joy_sauravis = {
				name = "{C:joy_ritual}Sauravis, the Ancient and Ascended",
				text = {
					"Sell this card to disable the current",
					"{C:attention}Boss Blind{} and add it to",
					"the next shop",
					" ",
					"Gains {X:mult,C:white}X#1#{} for each time",
					"this ability was used this run",
					"{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{}",
				}
			},
			j_joy_lycanthrope = {
				name = "{C:joy_ritual}Lycanthrope",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_normal}Normal{} {C:attention}Joker{} owned or in the {C:attention}GY{}",
					"{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{}",
					"OR {C:attention}1{} {C:joy_normal}Normal {C:attention}Joker{}",
				}
			},
			--#endregion
			--#region Fusion
			j_joy_mudragon = {
				name = "{C:joy_fusion}Mudragon of the Swamp",
				text = {
					"Treated as any {C:attention}material{} for a {C:joy_fusion}Fusion",
					"and as any {C:attention}Attribute{} while owned"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{} with different rarities",
				}
			},
			j_joy_garura = {
				name = "{C:joy_fusion}Garura, Wings of Resonant Life",
				text = {
					"{C:attention}+#1#{} hand size",
					" ",
					"Permanently gain {C:attention}+#2#{} hand size",
					"if used as {C:attention}material{}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{} with the same rarity",
					"but with different names",
				}
			},
			--#endregion
			--#region Synchro
			j_joy_firewall_saber = {
				name = "{C:joy_synchro}Firewall Saber Dragon",
				text = {
					"{C:attention}Revives #1#{} {C:joy_spell}Extra Deck{} {C:joy_normal}Cyberse{} as {C:dark_edition}Negative{} when summoned",
					" ",
					"Creates {C:attention}#2#{} {C:dark_edition}Negative{} {C:spectral}Spectral{} when used as {C:attention}material{} for a {C:joy_link}Link"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Cyberse{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},

			j_joy_bishbaalkin = {
				name = "{C:joy_synchro}Phantasmal Lord Ultimitl Bishbaalkin",
				text = {
					"{C:mult}+#1#{} Mult for each non-debuffed {C:attention}Joker{}",
					"{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"Destroys all other non-{C:joy_token}Token{} non-debuffed {C:attention}Jokers{} at end of round and",
					"creates as many {C:dark_edition}Negative{} {C:joy_token}\"Utchatzimime Tokens\"{}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_token_utchatzimime = {
				name = "{C:joy_token}Utchatzimime Token",
				text = {
					"This card can be used as any {C:joy_token}Token{}",
				}
			},
			j_joy_afd = {
				name = "{C:joy_synchro}Ancient Fairy Dragon",
				text = {
					"Creates {C:attention}#1#{} {C:joy_synchro}Tuner{} when summoned",
					"{C:inactive}(Must have room)",
					" ",
					"Destroys {C:attention}#2#{} random {C:joy_spell}Field Spell{} when {C:attention}Blind{} is selected",
					"to gain {C:money}+$#3#{} then creates {C:attention}#2#{} {C:joy_spell}Field Spell",
					"{C:inactive}(Must have room)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fishlamp = {
				name = "{C:joy_synchro}Fish Lamp",
				text = {
					"Adds {C:attention}#1#{} {C:joy_normal}Fish{} {C:joy_synchro}Synchro{} to the {C:joy_spell}Extra Deck{}",
					"when used as {C:attention}material{} and creates up to {C:attention}#2#{}",
					"{C:joy_token}\"Lamp Tokens\"{} that can be treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
					"{C:inactive}(Must have room)",
					" ",
					"Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
				}
			},
			j_joy_token_lamp = {
				name = "{C:joy_token}Lamp Token",
				text = {
					"This card can be used as any {C:joy_token}Token{}",
					" ",
					"Treated as any {C:attention}material{} for a {C:joy_synchro}Synchro",
				}
			},
			--#endregion
			--#region Xyz
			j_joy_zeus = {
				name = "{C:joy_xyz}Divine Arsenal AA-ZEUS - Sky Thunder",
				text = {
					"{C:joy_xyz}Detach{} {C:attention}#1#{}: Reduces current {C:attention}Blind{}'s requirement by {C:red}#2#%",
					"but remove all enhancements in the deck"
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:red}Rare{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
					"OR {C:attention}1{} {C:joy_xyz}Xyz{} that detached",
					"a {C:attention}material{} this round",
					"{s:0.9,C:inactive}(Transfer its materials)"
				}
			},
			j_joy_typhon = {
				name = "{C:joy_xyz}Super Starslayer TY-PHON - Sky Crisis",
				text = {
					"{C:joy_xyz}Detach{} {C:attention}#1#{}: Turns each scored card this round into a",
					"{C:attention}Red Seal{} {C:dark_edition}Polychrome{} {C:attention}Glass{} card after scoring",
					"but reduces {C:money}money{} by {C:red}#2#%{}"
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:red}Rare{} {C:attention}Jokers{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Links{} {s:0.9,C:inactive}or {s:0.9,C:joy_token}Tokens{s:0.9,C:inactive})",
					"OR {C:attention}1{} {C:attention}Joker{} if {C:attention}2{} or more",
					"{C:attention}Jokers{} were summoned this round"
				}
			},
			--#endregion
			--#region Link
			j_joy_apollousa = {
				name = "{C:joy_link}Apollousa, Bow of the Goddess",
				text = {
					"{C:mult}+#1#{} Mult for each {C:attention}material{}",
					"used for its summon, reduces by {C:red}#2#{} each round",
					"{C:inactive}(Currently{} {C:mult}+#3#{} {C:inactive}Mult){}",
				},
				joy_summon_conditions = {
					"{C:attention}2+ Jokers{} with different names",
				}
			},
			j_joy_beyond = {
				name = "{C:joy_link}Beyond the Pendulum",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_pendulum}Pendulum{}",
					"consumed this run",
					"{C:inactive}(Currently{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"Creates {C:attention}#3#{} {C:joy_pendulum}Pendulum{} after {C:attention}#4#{} are consumed",
					"{C:inactive}(#5#/#4#) (Must have room)"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"including a {C:joy_pendulum}Pendulum"
				}
			},
			j_joy_exceed = {
				name = "{C:joy_link}Exceed the Pendulum",
				text = {
					"Gains {X:mult,C:white}X#1#{} Mult for each {C:joy_pendulum}Pendulum{} consumed this run",
					"{C:inactive}(Currently {X:mult,C:white}X#2#{}{C:inactive} Mult)",
					" ",
					"Creates {C:attention}#3#{} {C:dark_edition}Negative{} {C:joy_normal}Main Deck{} {C:joy_pendulum}Pendulum{}",
					"when {C:attention}Boss Blind{} is defeated"
				},
				joy_summon_conditions = {
					"{C:attention}3 Jokers{},",
					"including a {C:joy_pendulum}Pendulum"
				}
			},
			j_joy_linkuriboh = {
				name = "{C:joy_link}Linkuriboh",
				text = {
					"Sell this card to disable the current {C:attention}Boss Blind{} and",
					"but sets {C:money}money{} to {C:money}$0"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:blue}Common{} {C:attention}Joker",
				}
			},
			j_joy_linguriboh = {
				name = "{C:joy_link}Linguriboh",
				text = {
					"Sell this card to disable the current {C:attention}Boss Blind{}",
					"but reduces hand size by {C:attention}#1#{} if not summoned",
					"using an {C:joy_normal}\"@Ignister\"{} as {C:attention}material"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Cyberse",
				}
			},
			j_joy_ipmasq = {
				name = "{C:joy_link}I:P Masquerena",
				text = {
					"{C:attention}Transforms{} into a random {C:joy_link}Link{} when {C:attention}Blind{} is selected",
					"{C:inactive}(This is treated as a Link summon with 2 materials){}",
					"A {C:joy_link}Link{} summoned this way gains the following ability:",
					"{s:0.9,C:attention}Transforms{s:0.9} into {s:0.9,C:joy_link}\"I:P Masquerena\"{s:0.9} at end of round"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_effect}Effect {C:attention}Jokers{}",
				},
				joy_transfer_ability = {
					"{C:attention}Transforms{} into {C:joy_link}\"I:P Masquerena\"{} at end of round",
				}
			},
			j_joy_spknight = {
				name = "{C:joy_link}S:P Little Knight",
				text = {
					"{C:attention}Banishes{} itself and {C:attention}#1#{} other {C:attention}Joker{}",
					"at end of round until {C:attention}Boss Blind{} is selected",
					"OR until {C:attention}Blind{} is selected if summoned",
					"using {C:attention}2{} {C:joy_spell}Extra Deck{} {C:attention}Jokers{} as {C:attention}material{}"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_effect}Effect {C:attention}Jokers{}",
				}
			},
			j_joy_progleo = {
				name = "{C:joy_link}Progleo",
				text = {
					"{C:attention}Banishes #1#{} adjacent {C:attention}Joker{} at end of round",
					"until {C:attention}Boss Blind{} is selected",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"except {C:joy_token}Tokens"
				}
			},
			j_joy_raster = {
				name = "{C:joy_link}Rasterliger",
				text = {
					"{C:mult}+#1#{} Mult for each {C:joy_link}Link{} in the {C:attention}GY{}",
					"{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"You can {C:attention}tribute{} all other {C:attention}Jokers{}",
					"to reduce {C:attention}Blind{}'s requirement by {C:red}#3#%{} for each"
				},
				joy_summon_conditions = {
					"{C:attention}4{} {C:attention}Jokers{},",
					"except {C:joy_token}Tokens"
				}
			},
			--#endregion
			--#region Field Spell
			j_joy_chickengame = {
				name = "{C:joy_spell}Chicken Game",
				text = {
					"You can increase {C:attention}Blind{}'s requirement by {C:red}#1#%",
					"to gain {C:blue}+#2#{} Hand and {C:red}+#3#{} Discard this round"
				}
			},
			j_joy_fusiongate = {
				name = "{C:joy_spell}Fusion Gate",
				text = {
					"Adds {C:attention}#1#{} {C:joy_fusion}Fusion{} to the {C:joy_spell}Extra Deck{}",
					"when {C:attention}Boss Blind{} is defeated"
				}
			},
			j_joy_xyzterritory = {
				name = "{C:joy_spell}Xyz Territory",
				text = {
					"Gains {C:mult}+#1#{} Mult for each {C:joy_xyz}Xyz{} owned at end of round",
					"{C:inactive}(Currently {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"{C:money}+$#3#{} when a {C:attention}material{} is {C:joy_xyz}detached{}"
				}
			},
			j_joy_xyzoverride = {
				name = "{C:joy_spell}Xyz Override",
				text = {
					"Once per round, you can {C:attention}tribute #1#{} {C:attention}Joker{}",
					"to attach {C:attention}#2# material{} to each {C:joy_xyz}Xyz{}"
				}
			},
			j_joy_summonbreaker = {
				name = "{C:joy_spell}Summon Breaker",
				text = {
					"The third {C:attention}Joker{} summoned this round becomes {C:dark_edition}Negative{}",
					"and this card is destroyed {C:inactive}(#1#/#2#){}"
				}
			},
			j_joy_extranet = {
				name = "{C:joy_spell}Extra Net",
				text = {
					"{C:attention}+#1#{} hand size for each {C:attention}Joker{} summoned this round",
				}
			},
			j_joy_futurevisions = {
				name = "{C:joy_spell}Future Visions",
				text = {
					"{C:attention}Banishes #1#{} random {C:joy_normal}Main Deck{} {C:attention}Joker{} at end of round",
					"until {C:attention}Boss Blind{} is selected"
				}
			},
			j_joy_midbreaker = {
				name = "{C:joy_spell}Magical Mid-Breaker Field",
				text = {
					"{C:attention}Jokers{} each give {X:mult,C:white}X#1#{} Mult",
					"and cannot be debuffed or {C:attention}flipped{}",
					"during a {C:attention}Boss Blind{}",
					" ",
					"{C:attention}Jokers{} are {C:attention}flipped{} face-down when {C:attention}Small{} or {C:attention}Big Blind{} are selected",
					"and {C:attention}flipped{} face-up at end of round"
				}
			},
			--#endregion
			--#endregion
		},
		Tag = {
			tag_joy_booster = {
				name = "Booster Tag",
				text = {
					"Adds one {C:booster}Booster",
					"to the next shop",
				},
			},
			tag_joy_monster = {
				name = "Monster Tag",
				text = {
					"Adds",
					"{V:1}#1#{}",
					"to the shop"
				},
			},
		},
		Planet = {
			c_joy_cursed_eldland = {
				name = "{C:joy_spell}Cursed Eldland"
			}
		},
		Other = {
			--#region Boosters
			p_joy_monster_pack = {
				name = "Champion Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:joy_normal}Monster{} {C:joker}Joker{} cards",
				},
			},
			p_joy_jumbo_monster_pack = {
				name = "Turbo Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:joy_normal}Monster{} {C:joker}Joker{} cards",
				},
			},
			p_joy_mega_monster_pack = {
				name = "Duelist Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:joy_normal}Monster{} {C:joker}Joker{} cards",
				},
			},
			p_joy_extra_pack = {
				name = "Astral Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:joy_spell}Special Summon{} {C:joker}Joker{} cards",
				},
			},
			p_joy_jumbo_extra_pack = {
				name = "Star Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:joy_spell}Special Summon{} {C:joker}Joker{} cards",
				},
			},
			p_joy_mega_extra_pack = {
				name = "Premium Pack",
				text = {
					"Choose {C:attention}#1#{} of up to",
					"{C:attention}#2#{} {C:joy_spell}Special Summon{} {C:joker}Joker{} cards",
				},
			},
			--#endregion
			joy_credits = {
				name = " ",
				text = {
					"{C:joy_mod}Booster Art:{} IcyEthics",
					" ",
					"{C:joy_normal}Archetype Ideas:{}",
					"{C:joy_link}@Ignister{}: gyro",
					" ",
					"Some ideas taken from these mods:",
					"{C:joy_effect}Aikoyori's Shenanigans{}, {C:joy_effect}Balatro: Star Rail{}, {C:joy_effect}Cartomancer",
					"{C:joy_effect}Cryptid{s:0.95}, {C:joy_effect}Lobotomy Corporation{}, {C:joy_effect}Ortalab",
					" ",
					"{C:joy_mod}Special Thanks{} to the folks in",
					"the {C:joy_mod}JoyousSpring{} and {C:attention}Balatro{} Discord servers <3"
				}
			},
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
			joy_tooltip_transform = {
				name = "Transform",
				text = {
					"Changes a {C:attention}Joker{} into another",
					"Keeps any enhancements",
				},
			},
			joy_tooltip_revive = {
				name = "Revive",
				text = {
					"Create and remove a random card from the {C:attention}GY{}",
					"Must have room and might have",
					"a random edition, unless specified",
					"{s:0.9,C:inactive}({s:0.9,C:joy_spell}Extra Deck{} {s:0.9,C:inactive}and {s:0.9,C:joy_ritual}Ritual{} {s:0.9,C:attention}Jokers{} {s:0.9,C:inactive}that were not",
					"{s:0.9,C:inactive}properly summoned can't be revived)",
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
					"the next end of round {C:inactive}(Unless specified)"
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
		JoyPokerHand = {
			phd_joy_eldlixir = {
				name = "Eldlixir",
				text = {
					"5 {C:attention}Gold{} cards",
				},
			}
		}
	},
	misc = {
		challenge_names = {
			c_joy_mystic_wok = "Mystic Wok",
			c_joy_mistake = "Mistake",
			c_joy_monster_reborn = "Monster Reborn",
			c_joy_domain = "Domain of the True Monarchs",
		},
		v_text = {
			ch_c_joy_gy_start = {
				"Start with some cards in the {C:attention}GY{}",
			},
			ch_c_joy_extra_deck_slots = {
				"Start with {C:attention}#1#{} {C:joy_spell}Extra Deck{} slots",
			},
			ch_c_joy_no_extra_deck_jokers = {
				"{C:joy_spell}Extra Deck{} {C:attention}Jokers{} don't appear in the shop",
			},
		},
		poker_hands = {
			joy_eldlixir = "Eldlixir"
		},
		poker_hand_descriptions = {
			joy_eldlixir = {
				"5 Gold cards",
				"(Must be enabled by an ability)"
			}
		},
		dictionary = {
			--#region General UI
			k_joy_extra_deck = "Extra Deck",
			k_joy_summon_conditions = "Summoning Conditions",
			k_joy_graveyard = "Graveyard",
			k_joy_banishment = "Banishment",
			k_joy_column = "Column",
			k_joy_flipped = "Flipped:",
			k_joy_banish_blind_selected = "Start of Blind",
			k_joy_banish_end_of_round = "End of Round",
			k_joy_banish_boss_selected = "Start of Boss Blind",
			k_joy_banish_end_of_ante = "End of Ante",
			k_joy_select_materials = "Select Materials",
			k_joy_summon_warning =
			"Due to limitations, this list might not contain a valid material combination",
			k_joy_select_tributes = "Select Tributes",
			k_joy_transferred_abilities = "Transferred Abilities:",
			k_joy_select = "Select",
			k_joy_summon = "Summon",
			k_joy_detach = "Detach",
			k_joy_activate = "Activate",
			--#endregion
			--#region Effect text
			k_joy_activated_ex = "Activated!",
			k_joy_token = "Token",
			k_joy_splash = "Splash!",
			k_joy_defeated = "Defeated!",
			k_joy_banished = "Banished!",
			k_joy_flip_ex = "Flip!",
			k_joy_set = "Set!",
			k_joy_revive = "Revive!",
			k_joy_mill = "Mill!",
			k_joy_add = "Add!",
			k_joy_return = "Return!",
			--#endregion
			--#region Booster
			k_joy_booster_group = "Monster Pack",
			k_joy_monster_tag_default = "a Monster Joker",
			--#endregion
			--#region Mod Description
			k_joy_glossary = "Basic Glossary",
			k_joy_summon_glosary = "Summon Glossary",
			k_joy_credits = "Credits",
			k_joy_discord = "Discord",
			k_joy_github = "Github",
			--#endregion
			--#region Config
			k_joy_disable_tooltips = "Disable glossary tooltips",
			k_joy_disable_booster_tag = "Disable Booster Tag from appearing naturally",
			k_joy_disable_main_menu = "Disable Main Menu modifications",
			k_joy_only_ygo_cards = "Only Monster Cards appear",
			k_joy_extra_ygo_booster = "Extra Monster Card booster each shop",
			k_joy_instant_poker_hand = "Disable poker hand level up animation (for this mod)",
			k_joy_disable_glow = "Disable glow effect on cards that can be activated",
			--#endregion
			--#region Related cards
			k_joy_related = "Related",
			k_joy_related_individual = "Card",
			k_joy_archetype = "Archetype",
			k_joy_transforms_into = "Transforms into",
			k_joy_creates = "Creates",
			k_joy_adds = "Adds",
			k_joy_mills = "Sends",
			--#endregion
			--#region Card types
			k_joy_Aqua = "Aqua",
			k_joy_Beast = "Beast",
			k_joy_BeastWarrior = "Beast-Warrior",
			k_joy_CreatorGod = "Creator God",
			k_joy_Cyberse = "Cyberse",
			k_joy_Dinosaur = "Dinosaur",
			k_joy_DivineBeast = "Divine-Beast",
			k_joy_Dragon = "Dragon",
			k_joy_Fairy = "Fairy",
			k_joy_Fiend = "Fiend",
			k_joy_Fish = "Fish",
			k_joy_Illusion = "Illusion",
			k_joy_Insect = "Insect",
			k_joy_Machine = "Machine",
			k_joy_Plant = "Plant",
			k_joy_Psychic = "Psychic",
			k_joy_Pyro = "Pyro",
			k_joy_Reptile = "Reptile",
			k_joy_Rock = "Rock",
			k_joy_SeaSerpent = "Sea Serpent",
			k_joy_Spellcaster = "Spellcaster",
			k_joy_Thunder = "Thunder",
			k_joy_Warrior = "Warrior",
			k_joy_WingedBeast = "Winged-Beast",
			k_joy_Wyrm = "Wyrm",
			k_joy_Zombie = "Zombie",
			k_joy_effect = "Effect",
			k_joy_normal = "Normal",
			k_joy_flip = "Flip",
			k_joy_tuner = "Tuner",
			k_joy_pendulum = "Pendulum",
			k_joy_FUSION = "Fusion",
			k_joy_RITUAL = "Ritual",
			k_joy_SYNCHRO = "Synchro",
			k_joy_XYZ = "Xyz",
			k_joy_LINK = "Link",
			k_joy_LIGHT = "LIGHT",
			k_joy_DARK = "DARK",
			k_joy_WATER = "WATER",
			k_joy_FIRE = "FIRE",
			k_joy_EARTH = "EARTH",
			k_joy_WIND = "WIND",
			k_joy_DIVINE = "DIVINE",
			k_joy_spell = "Spell",
			k_joy_trap = "Trap",
			k_joy_fieldspell = "Field Spell",
			--#endregion
			--#region Archetypes
			k_joy_archetype_dmaid = "Dragonmaid",
			k_joy_archetype_ltwin = "Live☆Twin",
			k_joy_archetype_dogma = "Dogmatika",
			k_joy_archetype_yokai = "Ghost Girls",
			k_joy_archetype_spright = "Spright",
			k_joy_archetype_mekk = "Mekk-Knight",
			k_joy_archetype_generaider = "Generaider",
			k_joy_archetype_fish = "Ghoti",
			k_joy_archetype_psy = "PSY-Frame",
			k_joy_archetype_runick = "Runick",
			k_joy_archetype_ba = "Burning Abyss",
			k_joy_archetype_lab = "Labrynth",
			k_joy_archetype_sub = "Subterror",
			k_joy_archetype_eld = "Eldlich",
			k_joy_archetype_ignis = "@Ignister",
			k_joy_archetype_solfa = "Solfachord",
			k_joy_archetype_witch = "Witchcrafter",
			k_joy_archetype_shaddoll = "Shaddoll",
			k_joy_archetype_paleo = "Paleozoic",
			k_joy_archetype_invoked = "Invoked",
			k_joy_archetype_danger = "Danger!",
			k_joy_archetype_adaman = "Adamancipator",
			k_joy_archetype_misc = "Free Agents",
			k_joy_archetype_token = "Tokens",
			--#endregion
			--#region Specific
			k_joy_arrival_text1 = ": Lowers ",
			k_joy_arrival_text2 = "Blind",
			k_joy_arrival_text3 = "'s requirement by ",
			k_joy_arrival_text4 = "50%",
			--#endregion
		}
	},
}
