return {
	descriptions = {
		Mod = {
			JoyousSpring = {
				name = "JoyousSpring",
				text = {
					"Ajoute des cartes et mécaniques modernes de {C:joy_effect}Yu-Gi-Oh!{}",
				},
			}
		},
		Joker = {
			j_joy_token = {
				name = "{C:joy_token}Jeton",
				text = {
					"Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
				},
			},
			--#region Dragonirène
			j_joy_dmaid_kitchen = {
				name = "{C:joy_effect}Cuisine Dragonirène",
				text = {
					"{C:attention}#1#{} {C:green}Relance{} gratuite pour chaque",
					"{C:joy_normal}\"Dragonirène\"{} quand obtenu",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Tinkhec\"",
					"quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_dmaid_tinkhec = {
				name = "{C:joy_effect}Dragonirène Tinkhec",
				text = {
					"Chaque {C:joy_normal}\"Dragonirène\"{}",
					"gagne {C:mult}+#1#{} Mult",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Cuisine Dragonirène\"",
					"en fin de manche",
				},
			},
			j_joy_dmaid_parlor = {
				name = "{C:joy_effect}Petit Salon Dragonirène",
				text = {
					"{C:attention}#1# Jeton Booster{} quand obtenu",
					"si vous possédez {C:attention}#2#{} {C:joy_normal}\"Dragonirène\"{},",
					"gagne un extra coupon chaque {C:attention}#3#{} supplémentaires",
					"et envoie {C:attention}#4#{} {C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Lorpar\"",
					"quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_dmaid_lorpar = {
				name = "{C:joy_effect}Dragonirène Lorpar",
				text = {
					"chaque {C:joy_normal}\"Dragonirène\"{}",
					"gagne {X:mult,C:white}X#1#{} Mult",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Petit Salon Dragonirène\"",
					"en fin de manche",
				},
			},
			j_joy_dmaid_nurse = {
				name = "{C:joy_effect}Infirmière Dragonirène",
				text = {
					"{C:green}#1# chance sur #2#{} de {C:attention}ressusciter #3#{}",
					"{C:joy_normal}\"Dragonirène\"{} {C:blue}Commun{} quand obtenu",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Ernus\"",
					"quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_dmaid_ernus = {
				name = "{C:joy_effect}Dragonirène Ernus",
				text = {
					"{C:mult}+#1#{} Mult pour chaque",
					"{C:joy_normal}\"Dragonirène\"{} dans le {C:attention}Cimetière{}",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Infirmière Dragonirène\"",
					"en fin de manche",
				},
			},
			j_joy_dmaid_laundry = {
				name = "{C:joy_effect}Linge Dragonirène",
				text = {
					"Envoie {C:attention}#1#{} {C:joy_normal}\"Dragonirène\"{} du {C:joy_normal}Main Deck{}",
					"au {C:attention}Cimetière{} quand obtenu",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Nudyarl\"",
					"quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_dmaid_nudyarl = {
				name = "{C:joy_effect}Dragonirène Nudyarl",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque",
					"{C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Linge Dragonirène\"",
					"en fin de manche",
				},
			},
			j_joy_dmaid_chamber = {
				name = "{C:joy_effect}Chambre Dragonirène",
				text = {
					"{C:attention}#1# Badge de Coupon{} quand obtenu",
					"si vous possédez {C:attention}#2#{} {C:joy_normal}\"Dragonirène\"{},",
					"gagne un extra coupon chaque {C:attention}#3#{} supplémentaires",
					"et envoie {C:attention}#4#{} {C:joy_normal}\"Dragonirène\"{} au {C:attention}Cimetière{}",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Dragonirène Cehrmba\"",
					"quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_dmaid_cehrmba = {
				name = "{C:joy_effect}Dragonirène Cehrmba",
				text = {
					"{C:green}#1# chance sur #2#{} de {C:attention}ressusciter #3#{}",
					"{C:joy_normal}\"Dragonirène\"{} {C:green}Peu Commun{} ou {C:red}Rare{} ",
					"quand obtenu",
					" ",
					"{C:attention}Se transforme{} en {C:joy_effect}\"Chambre Dragonirène\"",
					"en fin de manche",
				},
			},
			j_joy_dmaid_lady = {
				name = "{C:joy_fusion}Dame de Dragonirène",
				text = {
					"Ajoute {C:joy_fusion}\"Maison Dragonirène\"{} un",
					"l'{C:joy_spell}Extra Deck{} quand invoqué",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:green}#1# chance sur #2#{} de se {C:attention}transformer{} en",
					"{C:joy_normal}\"Dragonirène\"{} {C:green}Peu Commun{}",
					"quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"1 {C:joy_normal}\"Dragonirène\"{} inclus"
				}
			},
			j_joy_dmaid_house = {
				name = "{C:joy_fusion}Maison Dragonirène",
				text = {
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:joy_normal}\"Dragonirène\"{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Les {C:attention}Jokers{} au {C:attention}Cimetière{} comptent pour",
					"les effets {C:joy_normal}\"Dragonirène\"{}",
					" ",
					"{C:attention}Se transforme{} en {C:joy_fusion}\"Dragonirène Sheou\"",
					"après {C:attention}#3#{} manches {C:inactive}(#4#/#3#){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Dragonirène\"{}"
				}
			},
			j_joy_dmaid_sheou = {
				name = "{C:joy_fusion}Dragonirène Sheou",
				text = {
					"Les {C:attention}Jokers{} au {C:attention}Cimetière{} comptent pour",
					"les effets {C:joy_normal}\"Dragonirène\"{}",
					" ",
					"quand la {C:attention}Blinde Boss{} est choisie,",
					"désactive ses effets puis {C:attention}Se transforme{} en",
					"{C:joy_fusion}\"Maison Dragonirène\"{} et crée {C:attention}#1#{}",
					"{C:joy_normal}\"Dragonirène\"{} {C:blue}Commun{}",
					"{C:inactive}(Nécessite de la place){}"
				},
			},
			--#endregion
			--#region Live Twin
			j_joy_ltwin_lilla = {
				name = "{C:joy_effect}Live☆Jumelle Lil-la",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"Crée {C:attention}#2#{} {C:joy_effect}\"Live☆Jumelle Ki-sikil\"{}",
					"quand obtenu, si la carte n'est pas possédée",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_ltwin_kisikil = {
				name = "{C:joy_effect}Live☆Jumelle Ki-sikil",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Crée {C:attention}#2#{} {C:joy_effect}\"Live☆Jumelle Lil-la\"{}",
					"quand obtenu, si la carte n'est pas possédée",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_ltwin_lilla_treat = {
				name = "{C:joy_effect}Live☆Jumelle Lil-la Friandises",
				text = {
					"{C:red}+#1#{} défausse chaque manche",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}\"Ki-sikil\"{}"
				},
			},
			j_joy_ltwin_lilla_sweet = {
				name = "{C:joy_effect}Live☆Jumelle Lil-la Sucreries",
				text = {
					"{C:blue}+#1#{} main chaque manche",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}\"Ki-sikil\"{}"
				},
			},
			j_joy_ltwin_kisikil_frost = {
				name = "{C:joy_effect}Live☆Jumelle Ki-sikil Gel",
				text = {
					"{C:attention}+#1#{} cartes en main",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}\"Lil-la\"{}"
				},
			},
			j_joy_etwin_kisikil_deal = {
				name = "{C:joy_link}Evil★Jumelle Ki-sikil Transaction",
				text = {
					"{C:mult}+#1#{} Mult",
					"{C:attention}+#2#{} cartes en main",
					" ",
					"Envoie {C:attention}#3#{} {C:joy_normal}\"Lil-la\" Main Deck{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Ajoute {C:attention}#4#{} {C:joy_normal}\"Evil Jumelle\"{} un l'{C:joy_spell}Extra Deck{}",
					"Si utilisé en tant que {C:attention}materiel{} {C:joy_link}Lien{}",
					"{C:inactive}(Nécessite de la place){}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}\"Ki-sikil\"{}"
				}
			},
			j_joy_etwin_kisikil = {
				name = "{C:joy_link}Evil★Jumelle Ki-sikil",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Gagne de manière permanente {C:attention}+#2#{} cartes en main si",
					"vous possédez un {C:joy_normal}\"Lil-la\"{} quand invoqué",
					" ",
					"{C:attention}Ressuscite #3#{} {C:joy_link}Evil★Jumelle Lil-la{} ou {C:attention}#3#{}",
					"{C:joy_normal}\"Lil-la\"{} quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"1 {C:joy_normal}\"Ki-sikil\"{} inclus"
				}
			},
			j_joy_etwin_lilla = {
				name = "{C:joy_link}Evil★Jumelle Lil-la",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"{C:money}+$#2#{} si vous possédez un {C:joy_normal}\"Ki-sikil\"{} quand invoqué",
					" ",
					"{C:attention}Ressuscite #3#{} {C:joy_link}Evil★Jumelle Ki-sikil{} ou {C:attention}#3#{}",
					"{C:joy_normal}\"Ki-sikil\"{} quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"1 {C:joy_normal}\"Lil-la\"{} inclus"
				}
			},
			j_joy_etwin_kisikil_lilla = {
				name = "{C:joy_effect}Evil★Jumelles Ki-sikil & Lil-la",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Lil-la\"{} au {C:attention}Cimetière{}",
					"{C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Ki-sikil\"{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {C:chips}+#4#{} {C:inactive}Jetons{} {C:mult}+#5#{} {C:inactive}Mult){}",
					"{C:red}-#3#{} défausses pour chaque {C:joy_link}Lien{} quand la {C:attention}Blinde{} est choisie",
					" ",
					"Ne peut pas être {C:attention}ressuscité{}",
				},
			},
			j_joy_etwin_sunny = {
				name = "{C:joy_link}Evil★Jumelle Sunny la Perturbatrice",
				text = {
					"{C:chips}+#1#{} Jetons",
					"{C:mult}+#2#{} Mult",
					" ",
					"{C:attention}Retourne{} un l'{C:joy_spell}Extra Deck{} et {C:attention}ressuscite{}",
					"{C:attention}#3#{} {C:joy_link}\"Evil★Jumelle Ki-sikil\"{} et {C:attention}#3#{} {C:joy_link}\"Evil★Jumelle Lil-la\"{}",
					"en fin de manche",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_link}\"Evil{C:joy_link,f:joy_font}★{}{C:joy_link}Jumelle\"{}"
				}
			},
			j_joy_ltwin_channel = {
				name = "{C:joy_spell}Chaîne Live☆Jumelle",
				text = {
					"Pendant une {C:attention}Blinde{}, vous pouvez {C:attention}sacrifier #1#{}",
					"{C:joy_normal}\"Ki-sikil\"{} ou {C:joy_normal}\"Lil-la\"{} {C:joy_link}Lien{} afin",
					"de {C:attention}doubler{} les jetons marquant des points",
					" ",
					"{C:attention}Ressuscite #2#{} {C:joy_normal}\"Ki-sikil\"{} ou {C:joy_normal}\"Lil-la\"{}",
					"en fin de boutique"
				}
			},
			--#endregion
			--#region Dogmatika
			j_joy_dogma_ecclesia = {
				name = "{C:joy_effect}Dogmatika Ecclésia, la Vertueuse",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} vendus",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_dogma_fleur = {
				name = "{C:joy_effect}Dogmatika Fleurdelis, l'Adoubée",
				text = {
					"Chaque {C:joy_normal}\"Dogmatika\"{} donne {C:mult}+#1#{} Mult",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff"
				},
			},
			j_joy_dogma_maximus = {
				name = "{C:joy_effect}Dogmatika Maximus",
				text = {
					"Créé {C:attention}#1#{} {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff mais {C:dark_edition}Négatif{}",
					"quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_dogma_adin = {
				name = "{C:joy_effect}Dogmatika Adin, l'Illuminé",
				text = {
					"Crée {C:attention}#1#{} non-{C:joy_ritual}Rituel{} {C:joy_normal}\"Dogmatika\"{}",
					"quand la {C:attention}Blinde Boss{} est vaincue",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff"
				},
			},
			j_joy_dogma_theo = {
				name = "{C:joy_effect}Dogmatika Théo, le Poing de Fer",
				text = {
					"{C:chips}+#1#{} Jetons,",
					"{C:chips}+#2#{} Jetons pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
					"{C:inactive}(Actuellement:{} {C:chips}+#3# {C:inactive}Jetons){}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff"
				},
			},
			j_joy_dogma_ashiyan = {
				name = "{C:joy_effect}Dogmatika Ashiyan",
				text = {
					"{C:attention}Ressuscite #1#{} {C:joy_normal}\"Dogmatika\"{} quand obtenu",
					" ",
					"Ajoute {C:attention}#2#{} {C:joy_ritual}Rituel{} {C:joy_normal}\"Dogmatika\"{}",
					"au magasin quand la {C:attention}Blinde Boss{} est vaincue",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff"
				},
			},
			j_joy_dogma_nexus = {
				name = "{C:joy_effect}Dogmatika Nexus",
				text = {
					"{C:attention}Duplique #1#{} {C:attention}Jokers{} {C:joy_spell}Extra Deck{} aléatoire",
					"en fin de manche",
					"{C:inactive}(La copie sera debuff mais{} {C:dark_edition}Négatif{}{C:inactive}){}"
				},
			},
			j_joy_dogma_relic = {
				name = "{C:joy_ritual}Relique Blanche de Dogmatika",
				text = {
					"{C:attention}+#1#{} cartes en main pour chaque {C:attention}#2#{} {C:attention}Jokers{}",
					"{C:joy_spell}Extra Deck{} debuff",
					"{C:inactive}(Actuellement:{} {C:attention}+#3# {C:inactive}cartes en main){}",
					" ",
					"Les {C:attention}Jokers{} {C:joy_spell}Extra Deck{} au {C:attention}Cimetière{}",
					"comptent pour les effets {C:joy_normal}\"Dogmatika\"{} {C:inactive}(comme debuff){}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"Un {C:joy_normal}\"Dogmatika\"{} inclus"
				}
			},
			j_joy_dogma_knight = {
				name = "{C:joy_ritual}Chevalier Blanc de Dogmatika",
				text = {
					"{C:mult}+#1#{} Mult pour chaque",
					"{C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
					"{C:inactive}(Actuellement:{} {C:mult}+#2# {C:inactive}Mult){}",
					" ",
					"Tous les {C:attention}Jokers{} {C:joy_spell}Extra Deck{} au magasin",
					"sont gratuit mais debuff",
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"Un {C:joy_normal}\"Dogmatika\"{} inclus"
				}
			},
			j_joy_dogma_albazoa = {
				name = "{C:joy_ritual}Dogmatika Alba Zoa",
				text = {
					"Envoie {C:attention}#1#{} copie de chaque {C:attention}Joker{}",
					"de votre {C:joy_spell}Extra Deck{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Chaque {C:attention}Joker{} {C:joy_normal}Main Deck{} gagne {X:mult,C:white}X#2#{} Mult",
					"pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Dogmatika\"{}"
				}
			},
			j_joy_dogma_nation = {
				name = "{C:joy_spell}Nation Dogmatika",
				text = {
					"Gagne {C:money}+#1#${} pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
					"en fin de manche",
					"{C:inactive}(Actuellement:{} {C:money}+$#2#{C:inactive}){}",
					" ",
					"Vous pouvez {C:attention}sacrifier #3#{} {C:attention}Jokers{} {C:joy_spell}Extra Deck{}",
					"pour créer {C:attention}#4#{} {C:joy_normal}\"Dogmatika\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			--#endregion
			--#region Ghost Girls
			j_joy_yokai_ogre = {
				name = "{C:joy_effect}Ogre Fantôme et Lapin des Neiges",
				text = {
					"Détruis toutes les cartes marquant des points",
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_reaper = {
				name = "{C:joy_effect}Faucheur Fantôme et Cerises Blanches",
				text = {
					"{X:mult,C:white}X#1#{} Mult pour chaque",
					"{C:attention}Joker{} {C:joy_spell}Extra Deck{} dans le {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_ash = {
				name = "{C:joy_effect}Floraison de Cendres et Joyeux Printemps",
				text = {
					"{C:green}#1# chance sur #2#{} de ne pas piocher",
					"de cartes après jouer/défausser",
					"Gagne {X:mult,C:white}X#3#{} Mult à chaque",
					"fois que cet effet s'active",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_belle = {
				name = "{C:joy_effect}Beauté Fantôme et Manoir Hanté",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult quand un {C:attention}Joker{}",
					"est {C:attention}ressuscité{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
			},
			j_joy_yokai_sister = {
				name = "{C:joy_effect}Fille Fantôme et Cornouiller Effrayant",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque consommable",
					"utilisé pendant une {C:attention}Blinde{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"si aucun n'est utilisé cette manche, {C:red}vous perdez{}",
				},
			},
			j_joy_yokai_mourner = {
				name = "{C:joy_effect}Fantôme du Défunt et Fraîcheur Lunaire",
				text = {
					"Debuff de manière permanente chaque",
					"{C:attention}Joker{} {C:blue}Commun{} et {C:green}Peu Commun{} ",
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque cartes debuff vendus",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
				},
			},
			--#endregion
			--#region Spright
			j_joy_spright_blue = {
				name = "{C:joy_effect}Spright du Bleu",
				text = {
					"Crée {C:attention}#1#{} {C:joy_normal}\"Spright\"{}",
					"{C:joy_normal}Main Deck{} en fin de manche",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}"
				},
			},
			j_joy_spright_jet = {
				name = "{C:joy_effect}Spright du Jet",
				text = {
					"Ajoute {C:attention}#1#{} {C:attention}Jokers{} {C:green}Peu Commun{}",
					"au {C:attention}Cimetière{} quand la {C:attention}Blinde{} est choisie",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}"
				},
			},
			j_joy_spright_carrot = {
				name = "{C:joy_effect}Spright de la Carotte",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque",
					"{C:attention}Joker{} {C:green}Peu Commun{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}"
				},
			},
			j_joy_spright_red = {
				name = "{C:joy_effect}Spright du Rouge",
				text = {
					"{C:mult}+#1#{} Mult pour chaque",
					"{C:attention}Joker{} {C:green}Peu Commun{}",
					"{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}"
				},
			},
			j_joy_spright_pixies = {
				name = "{C:joy_effect}Spright des Pixies",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque",
					"{C:attention}Joker{} {C:green}Peu Commun{}",
					"{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} {C:green}Peu Commun{}"
				},
			},
			j_joy_spright_elf = {
				name = "{C:joy_link}Spright de l'Elfe",
				text = {
					"{C:attention}Ressuscite #1#{} {C:attention}Joker{} {C:green}Peu Commun{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Les {C:attention}Jokers{} {C:green}Peu Commun{} au {C:attention}Cimetière{}",
					"comptent pour les effets des {C:joy_normal}\"Spright\"{}"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} {C:green}Peu Commun{}"
				}
			},
			j_joy_spright_sprind = {
				name = "{C:joy_link}Spright de Sprind",
				text = {
					"Les Autres {C:attention}Jokers{} {C:green}Peu Commun{} deviennent {C:dark_edition}Négatifs{},",
					"le reste est debuff si invoqué",
					"en utilisant un {C:joy_normal}\"Spright\"{} en {C:attention}matériel{}",
					" ",
					"Ajoute {C:joy_xyz}\"Spright Géant\"{}",
					"à l'{C:joy_spell}Extra Deck{} après avoir {C:joy_xyz}détaché{} {C:attention}#1# matériels{}",
					"{C:inactive}(Nécessite de la place){}",
					"{C:inactive}(#2#/#1#){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} {C:green}Peu Commun{},",
					"1 {C:joy_xyz}Xyz{} inclus"
				}
			},
			j_joy_spright_gigantic = {
				name = "{C:joy_xyz}Spright Géant",
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}1{}: Crée",
					"{C:attention}#1#{} {C:attention}Joker{} {C:green}Peu Commun{}",
					"{C:inactive}(Nécessite de la place){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} {C:green}Peu Commun{}",
					"{s:0.9,C:inactive}(Excepté des {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})",
					"{s:0.9,C:inactive}({s:0.9,C:joy_link}Liens{} {s:0.9,C:inactive}autorisés)"
				}
			},
			--#endregion
			--#region Mekk-Chevalier
			j_joy_mekk_avram = {
				name = "{C:joy_normal}Avram Mekk-Chevalier",
				text = {
					"{E:1}\"Jette un œil LÀ-DESSUS !\"{}",
				},
			},
			j_joy_mekk_red = {
				name = "{C:joy_effect}Lune Rouge Mekk-Chevalier",
				text = {
					"Les cartes marquants des points dans la {C:attention}colonne{}",
					"donnent {C:mult}+#1#{} Mult fois son rang",
					"{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_orange = {
				name = "{C:joy_effect}Coucher du Soleil Orange Mekk-Chevalier",
				text = {
					"Les cartes jouées dans cette {C:attention}colonne{}",
					"comptent dans le score",
					"{C:inactive}(Actuellement en colonne{} {C:attention}#1#{}{C:inactive}){}",
					" ",
					"Gagne {X:chips,C:white}X#2#{} Jetons à chaque",
					"fois que cet effet s'active",
					"{C:inactive}(Actuellement: {X:chips,C:white}X#3#{}{C:inactive} Jetons)"
				},
			},
			j_joy_mekk_yellow = {
				name = "{C:joy_effect}Étoile Jaune Mekk-Chevalier",
				text = {
					"Les cartes marquants des points dans la {C:attention}colonne{}",
					"donnent {C:money}+#1#${} fois son rang",
					"{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_green = {
				name = "{C:joy_effect}Horizon Vert Mekk-Chevalier",
				text = {
					"Les cartes marquants des points dans la {C:attention}colonne{}",
					"ont une chance {C:green}#1# sur <rank>{} de",
					"se redéclencher ce même nombre de fois.",
					"Les chancent augmentent pour chaque {C:joy_normal}\"Mekk-Chevalier\"{}",
					"{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_blue = {
				name = "{C:joy_effect}Ciel Bleu Mekk-Chevalier",
				text = {
					"Les cartes marquants des points dans la {C:attention}colonne{}",
					"donnent {C:chips}+#1#{} Jetons fois son rang",
					"{C:inactive}(Actuellement en colonne{} {C:attention}#2#{}{C:inactive}){}",
				},
			},
			j_joy_mekk_indigo = {
				name = "{C:joy_effect}Éclipse Indigo Mekk-Chevalier",
				text = {
					"Gagne un effet base sur la {C:attention}colonne{}",
					"{V:1}1: Toutes les cartes marquant des points se redéclenchent{}",
					"{V:2}2:{} {C:chips}+#1#{} {V:2}Jetons{}",
					"{V:3}3:{} {C:mult}+#2#{} {V:3}Mult{}",
					"{V:4}4:{} {X:mult,C:white}X#3#{} {V:4}Mult{}",
					"{V:5}5+:{} {C:money}+#4#${} {V:5}en fin de manche{}",
				},
			},
			j_joy_mekk_purple = {
				name = "{C:joy_effect}Tombée de la Nuit Violette Mekk-Chevalier",
				text = {
					"{C:attention}Se bannis{} quand la {C:attention}Blinde{} est choisie",
					"jusqu'à la fin de la {C:attention}Blinde Boss{} afin de créer {C:attention}#1#{}",
					"{C:joy_normal}\"Mekk-Chevalier\" Main Deck{}",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_mekk_morningstar = {
				name = "{C:joy_link}Mekk-Chevalier de l'Étoile du Matin",
				text = {
					"Les cartes marquants des points dans les {C:attention}colonnes{} adjacentes",
					"gagnent {X:mult,C:white}X#1#{} Mult s'il y'un un",
					"{C:joy_normal}\"Mekk-Chevalier\"{} dans cette {C:attention}colonne{}",
					"{C:inactive}(Actuellement en colonnes{} {C:attention}#2#{} {C:inactive}et{} {C:attention}#3#{}{C:inactive}){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{}",
				}
			},
			j_joy_mekk_spectrum = {
				name = "{C:joy_link}Spectre Suprême Mekk-Chevalier",
				text = {
					"Les effets de {C:joy_normal}\"Mekk-Chevalier\"{} s'appliquent sur",
					"toutes les cartes jouées",
					" ",
					"Une fois par manche, vends un {C:attention}#1#{} {C:joy_normal}\"Mekk-Chevalier\"{}",
					"afin de créer {C:attention}#1#{} {C:joy_normal}\"Mekk-Chevalier\" Main Deck{} {C:dark_edition}Négatif{}",
				},
				joy_summon_conditions = {
					"{C:attention}3{} {C:joy_normal}\"Mekk-Chevalier\"{}",
				}
			},
			j_joy_mekkcrus_avramax = {
				name = "{C:joy_link}Avramax Mekk-Chevalier Croisédia",
				text = {
					"Gagne immédiatement toutes les {C:attention}Blindes{}",
					" ",
					"Se détruis après un nombre de",
					"{C:attention}Blindes{} vaincus",
					"égal au nombre de {C:attention}matériels{}",
					"utilisé pour son invocation {C:inactive}(#1#/#2#){}",
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:attention}Jokers{} invoqués depuis l'{C:joy_spell}Extra Deck{}",
				}
			},
			j_joy_mekkleg_scars = {
				name = "{C:joy_spell}Cicatrices de l'Héritage du Monde",
				text = {
					"Chaque {C:joy_normal}\"Mekk-Chevalier\"{} gagnent {C:mult}+#1#{} Mult",
					" ",
					"Pendant une {C:attention}Blinde{}, vous pouvez {C:attention}sacrifier #2#{}",
					"{C:joy_normal}\"Mekk-Chevalier\"{} pour gagner {C:blue}+#3#{} Mains cette manche",
					" ",
					"Vendez cette carte si vous avez",
					"{C:attention}#4# {C:joy_normal}\"Mekk-Chevalier\"{} au {C:attention}Cimetière",
					"avec des noms différents",
					"pour gagner la {C:attention}Blinde{}"
				}
			},
			--#endregion
			--#region Genèraideur
			j_joy_token_generaider = {
				name = "{C:joy_token}Jeton Genèraideur",
				text = {
					"Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
				},
			},
			j_joy_generaider_loptr = {
				name = "{C:joy_effect}Loptr, Ombre des Boss Genèraideur",
				text = {
					"Se détruis après une {C:attention}Blinde Boss{}",
					"pour créer {C:joy_spell}\"Niveau Boss Genèraideur\"{}",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_generaider_vala = {
				name = "{C:joy_effect}Vala, Seidhr des Boss Genèraideur",
				text = {
					"Envoie {C:attention}#1#{} {C:joy_normal}\"Genèraideur\" Main Deck{} {C:red}Rare{}",
					"au Cimetière {C:attention}Cimetière{} quand obtenu",
					" ",
					"Se détruis après une {C:attention}Blinde Boss{} pour",
					"{C:attention}ressusciter #2#{} {C:joy_normal}\"Genèraideur\"{} {C:red}Rare{}",
					"et crée {C:attention}#3#{} {C:joy_effect}\"Loptr, Ombre des Boss Genèraideur\"",
					"{C:inactive}(Nécessite de la place)"
				},
			},
			j_joy_generaider_harr = {
				name = "{C:joy_effect}Harr, Boss Genèraideur des Tempêtes",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Jokers{} {C:joy_normal}Magicien{}",
					"pour désactiver la {C:attention}Blinde Boss{} actuelle",
				},
			},
			j_joy_generaider_nidhogg = {
				name = "{C:joy_effect}Nidhogg, Boss Genèraideur de la Glace",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Jokers{} {C:joy_normal}Wyrm{} pour",
					"redéclencher les cartes marquants des points cette manche",
				},
			},
			j_joy_generaider_frodi = {
				name = "{C:joy_effect}Frodi, Boss Genèraideur des Épées",
				text = {
					"Vous pouvez {C:attention}sacrifier{} autant d'autres {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Jokers{} {C:joy_normal}Guerrier{}",
					"pour gagner le même nombre de cartes en main cette manche",
				},
			},
			j_joy_generaider_utgarda = {
				name = "{C:joy_effect}Utgarda, Boss Genèraideur de la Délusion",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Joker{} {C:joy_normal}Rocher{}",
					"pour {C:attention}bannir{} une carte de la zone consommable",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
			},
			j_joy_generaider_mardel = {
				name = "{C:joy_effect}Mardel, Boss Genèraideur de la Lumière",
				text = {
					"Une fois par manche, vous pouvez {C:attention}sacrifier #1#{} {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Joker{} {C:joy_normal}Plante{} afin de créer {C:attention}#2#{}",
					"{C:joy_normal}\"Genèraideur\"{} {C:blue}Commun{} ou {C:green}Peu Commun{}",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_generaider_dovelgus = {
				name = "{C:joy_effect}Dovelgus, Boss Genèraideur du Fer",
				text = {
					"Une fois par manche, vous pouvez {C:attention}sacrifier #1#{} autre {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Jokers{} {C:joy_normal}Machine{}",
					"pour faire gagner un vos {C:joy_normal}\"Genèraideur\"{} et",
					"{C:joy_normal}Machine{} {X:mult,C:white}X#2#{} Mult cette manche",
				},
			},
			j_joy_generaider_naglfar = {
				name = "{C:joy_effect}Naglfar, Boss Genèraideur du Feu",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Jokers{} {C:joy_normal}Bête-Guerrier{}",
					"afin de gagner {C:blue}+#2#{} Mains et {C:red}+#3#{} Défausses cette {C:attention}Blinde{}",
				},
			},
			j_joy_generaider_hela = {
				name = "{C:joy_effect}Hela, Boss Genèraideur de la Mort",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} {C:joy_normal}\"Genèraideur\"{}",
					"et/ou {C:attention}Jokers{} {C:joy_normal}Zombie{} pour {C:attention}ressusciter #2#{}",
					"{C:attention}Joker{} {C:joy_normal}\"Genèraideur\"{} {C:red}Rare{} en {C:dark_edition}Négatif{}",
				},
			},
			j_joy_generaider_jormungandr = {
				name = "{C:joy_xyz}Jormungandr, Boss Genèraideur de l'Éternité",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_xyz}Matériel Xyz{}",
					"{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_xyz}Détacher{} {C:attention}#3#{}: Gagne de manière",
					"permanente {C:attention}+#4#{} cartes en main",
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:attention}Jokers{} {C:red}Rare{}",
					"{s:0.9,C:inactive}(Excepté les {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
					"{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
				}
			},
			j_joy_generaider_laevatein = {
				name = "{C:joy_xyz}Laevatein, Boss Genèraideur des Ombres",
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}#1#{}: Détruis tous les autres {C:attention}Jokers{} et",
					"crée un {C:joy_xyz}\"Jormungandr, Boss Genèraideur de l'Éternité\"{}",
					"puis attache tous les cartes du {C:attention}Cimetière{} à lui en {C:joy_xyz}matériels Xyz{}",
				},
				joy_summon_conditions = {
					"{C:attention}5{} {C:attention}Jokers{} {C:red}Rare{}",
					"{s:0.9,C:inactive}(Excepté les {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
					"{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
				}
			},
			j_joy_generaider_boss_stage = {
				name = "{C:joy_spell}Niveau Boss Genèraideur",
				text = {
					"Tous les {C:joy_normal}\"Genèraideur\"{} gagnent {C:mult}+#1#{} Mult",
					"pour chaque carte {C:attention}sacrifiées{} en possédant cette carte",
					"{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"Crée autant de {C:joy_token}\"Jetons Genèraideur\"{}",
					"que possible quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Les \"Genèraideurs\" sont traités comme Négatif){}",
					" ",
					"Une fois par manche, vous pouvez {C:attention}sacrifier #3#{}",
					"{C:joy_token}\"Jetons Genèraideur\"{} afin de créer {C:attention}#4#{}",
					"{C:joy_normal}\"Genèraideur\" Main Deck{} {C:red}Rare{} non possédés",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			--#endregion
			--#region Ghoti
			j_joy_fish_keaf = {
				name = "{C:joy_effect}Keaf, Obscurité du Ghoti",
				text = {
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{} et",
					"{C:attention}ressuscite #1#{} {C:joy_synchro}Synchro{}",
				},
			},
			j_joy_fish_paces = {
				name = "{C:joy_effect}Paces, Lumière du Ghoti",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
			},
			j_joy_fish_shif = {
				name = "{C:joy_effect}Shif, Fée du Ghoti",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
			},
			j_joy_fish_zep = {
				name = "{C:joy_effect}Zep, Rubis du Ghoti",
				text = {
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{} et",
					"{C:attention}ressuscite #1#{} {C:joy_normal}\"Ghoti\"{} {C:joy_normal}Main Deck{}",
				},
			},
			j_joy_fish_ixeep = {
				name = "{C:joy_effect}Ixeep, Présage du Ghoti",
				text = {
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde Boss{} et",
					"crée {C:attention}#1#{} {C:joy_normal}\"Ghoti\"{} {C:joy_normal}Main Deck{}",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_fish_eanoc = {
				name = "{C:joy_effect}Eanoc, Sentinelle du Ghoti",
				text = {
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
					" ",
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Ghoti\"{}",
					"à l'{C:joy_spell}Extra Deck{} après être revenu",
					"du {C:attention}bannissement #2#{} fois",
					"{C:inactive}(Nécessite de la place) (#3#/#2#){}",
				},
			},
			j_joy_fish_psiics = {
				name = "{C:joy_effect}Psiics, Moonlight of the Ghoti",
				text = {
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde Boss{} et ressuscite {C:attention}#1#{}",
					"{C:attention}Joker{} {C:joy_synchro}Syntoniseur{} en {C:dark_edition}Négatif{}",
				},
			},
			j_joy_fish_snopios = {
				name = "{C:joy_effect}Snopios, Ombre du Ghoti",
				text = {
					"Cette carte et {C:attention}#1#{} carte dans la zone",
					"consommable sont {C:attention}bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
					" ",
					"Crée {C:joy_spell}\"Les Plus Lointaines Profondes Limites\"{}",
					"après être revenu du {C:attention}bannissement #2#{} fois",
					"{C:inactive}(Nécessite de la place) (#3#/#2#){}",
				},
			},
			j_joy_fish_arionpos = {
				name = "{C:joy_synchro}Arionpos, Serpent du Ghoti",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque cartes",
					"{C:attention}bannis{} pendant la partie",
					"{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
					" ",
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{} et",
					"ajoute {C:attention}#3#{} {C:joy_normal}\"Ghoti\"{} à l'{C:joy_spell}Extra Deck{}",
					"{C:inactive}(Nécessite de la place){}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Poisson{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_askaan = {
				name = "{C:joy_synchro}Askaan, le Ghoti à Deux Cornes",
				text = {
					"{C:mult}+#1#{} Mult pour chaque carte",
					"{C:attention}bannis{} pendant la partie",
					"{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"Cette carte et un {C:attention}Joker{} non-{C:joy_normal}\"Ghoti\"{}",
					"sont {C:attention}bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_guoglim = {
				name = "{C:joy_synchro}Guoglim, Lance du Ghoti",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque cartes",
					"{C:attention}bannis{} pendant la partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Ressuscite{} autant de {C:attention}Jokers{}",
					"{C:joy_normal}Poisson{} que possible quand invoqué",
					" ",
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_deepbeyond = {
				name = "{C:joy_synchro}Ghoti de l'Au-Delà des Limites",
				text = {
					"Cette carte et tous les {C:attention}Jokers{} non-{C:joy_normal}\"Ghoti\"{}",
					"sont {C:attention}bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Poisson{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_fish_depths = {
				name = "{C:joy_spell}Les Plus Lointaines Profondes Limites",
				text = {
					"{C:money}+#1#${} chaque fois qu'une carte",
					"est {C:attention}bannie",
				}
			},
			--#endregion
			--#region Structure-PSY
			j_joy_psy_driver = {
				name = "{C:joy_normal}Pilote Structure-PSY",
				text = {
					"{E:1}Un soldat Psychique qui combat les Forces de Sécurité{}",
					"{E:1}en surfant sur des courants de foudre à l'aide{}",
					"{E:1}d'un amplificateur autonome \"Structure-PSY\"{}",
				},
			},
			j_joy_psy_alpha = {
				name = "{C:joy_effect}Pièce Structure-PSY Alpha",
				text = {
					"Crée un {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
					"quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
					"donner un toutes les cartes en main {X:mult,C:white}X#2#{} Mult cette manche",
				},
			},
			j_joy_psy_beta = {
				name = "{C:joy_effect}Pièce Structure-PSY Bêta",
				text = {
					"Crée un {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
					"quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
					"donner un toutes les cartes marquant des points {X:mult,C:white}X#2#{} Mult cette manche",
				},
			},
			j_joy_psy_gamma = {
				name = "{C:joy_effect}Pièce Structure-PSY Gamma",
				text = {
					"Crée un {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
					"quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
					"donner un tous les {C:attention}Jokers{} {X:mult,C:white}X#2#{} Mult cette manche",
				},
			},
			j_joy_psy_delta = {
				name = "{C:joy_effect}Pièce Structure-PSY Delta",
				text = {
					"Crée un {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
					"quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
					"donner un toutes les cartes de {C:tarot}Tarot{} dans la zone",
					"consommmable {X:mult,C:white}X#2#{} Mult cette manche",
				},
			},
			j_joy_psy_epsilon = {
				name = "{C:joy_effect}Pièce Structure-PSY Epsilon",
				text = {
					"Crée un {C:attention}#1#{} {C:joy_normal}\"Pilote Structure-PSY\"{} quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:attention}Bannis{} un {C:joy_normal}\"Pilote Structure-PSY\"",
					"quand la {C:attention}Blinde{} est choisie jusqu'à la fin de la manche pour",
					"donner un toutes les cartes {C:planet}Planètes{} dans la zone",
					"consommmable {X:mult,C:white}X#2#{} Mult cette manche",
				},
			},
			j_joy_psy_multithreader = {
				name = "{C:joy_effect}Multitraiteur Structure-PSY",
				text = {
					"Le nom de cette carte devient {C:joy_normal}\"Pilote Structure-PSY\"",
					"pour les effets des {C:joy_normal}\"Structure-PSY\"{}",
					" ",
					"Créer {C:attention}#1#{} {C:joy_normal}\"Structure-PSY\" Main Deck{}",
					"{C:attention}Joker{} à {C:joy_effect}Effet{} quand cette carte",
					"retourne du {C:attention}bannissement{}",
					"{C:inactive}(Nécessite de la place){}",
				},
			},
			j_joy_psy_zeta = {
				name = "{C:joy_synchro}Seigneur Structure-PSY Zêta",
				text = {
					"Cette carte et {C:attention}#1#{} carte en zone",
					"consommable sont {C:attention}bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:blue}Commun{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_psy_omega = {
				name = "{C:joy_synchro}Seigneur Structure-PSY Oméga",
				text = {
					"Cette carte et un autre {C:attention}Joker{}",
					"sont {C:attention}bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:blue}Commun{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_psy_lambda = {
				name = "{C:joy_link}Seigneur Structure-PSY Lambda",
				text = {
					"Les effets des {C:joy_normal}\"Structure-PSY\"{} sont actifs",
					"sans {C:attention}bannir{} {C:joy_normal}\"Pilote Structure-PSY\"",
					" ",
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Structure-PSY\"",
					"à l'{C:joy_spell}Extra Deck{} quand un {C:attention}Joker{}",
					"{C:joy_normal}Psychique{} retourne du {C:attention}bannissement{}",
					"{C:inactive}(Nécessite de la place){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"{C:joy_token}Jetons{} exclus",
				}
			},
			j_joy_psy_circuit = {
				name = "{C:joy_spell}Circuit Structure-PSY",
				text = {
					"{C:money}+#1#${} à chaque fois qu'un {C:joy_synchro}Synchro{} est invoqué",
					" ",
					"Les {C:joy_synchro}Synchros{} {C:joy_normal}Psychique{}",
					"deviennent {C:dark_edition}Négatifs{} quand invoqué"
				}
			},
			--#endregion
			--#region Runick
			j_joy_runick_hugin = {
				name = "{C:joy_fusion}Hugin des Ailes Runick",
				text = {
					"{C:attention}+#1#{} slot de consommables",
					" ",
					"Crée {C:attention}#2#{} {C:joy_spell}\"Fontaine Runick\"",
					"et ajoute {C:attention}#3#{} {C:joy_normal}\"Runick\"{}",
					"à l'{C:joy_spell}Extra Deck{} quand invoqué",
					"{C:inactive}(Nécessite de la place){}",
				},
				joy_summon_conditions = {
					"{C:attention}3{} cartes de {C:tarot}Tarot{}",
				}
			},
			j_joy_runick_munin = {
				name = "{C:joy_fusion}Munin des Ailes Runick",
				text = {
					"{C:attention}+#1#{} slot de consommables",
					" ",
					"Ajoute {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
					"à l'{C:joy_spell}Extra Deck{} quand invoqué",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Gagne {X:chips,C:white}X#3#{} Jetons pour chaque {C:tarot}Tarot{}",
					"utilisé durant une {C:attention}Blinde{}",
					"{C:inactive}(Actuellement:{} {X:chips,C:white}X#4#{} {C:inactive}Jetons){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} cartes de {C:tarot}Tarot{}",
				}
			},
			j_joy_runick_geri = {
				name = "{C:joy_fusion}Geri des Crocs Runick",
				text = {
					"Crée {C:attention}#1#{} {C:joy_spell}\"Fontaine Runick\"",
					"quand invoqué si présent dans le {C:attention}Cimetière{}",
					"et ajoute {C:attention}#2#{} {C:joy_normal}\"Runick\"{}",
					"à l'{C:joy_spell}Extra Deck{}",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Vendez cette carte invoqué pour créer",
					"{C:attention}#3#{} cartes de {C:tarot}Tarot{}",
					"{C:inactive}(Nécessite de la place)"
				},
				joy_summon_conditions = {
					"{C:attention}2{} cartes de {C:tarot}Tarot{}",
				}
			},
			j_joy_runick_freki = {
				name = "{C:joy_fusion}Freki des Crocs Runick",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
					"à l'{C:joy_spell}Extra Deck{} quand invoqué",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Ajoute {C:attention}#2#{} {C:attention}cartes à jouer{} aléatoire",
					"quand une carte de {C:tarot}Tarot{} est utilisé durant la {C:attention}Blinde{}",
					" ",
					"Vendez cette carte invoqué afin de créer",
					"{C:attention}#3#{} cartes de {C:tarot}Tarot{}",
					"{C:inactive}(Nécessite de la place)"
				},
				joy_summon_conditions = {
					"{C:attention}2{} cartes de {C:tarot}Tarot{}",
				}
			},
			j_joy_runick_sleipnir = {
				name = "{C:joy_fusion}Sleipnir de la Crinière Runick",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Runick\"{}",
					"à l'{C:joy_spell}Extra Deck{} quand invoqué",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
					" ",
					"Crée {C:attention}#2#{} cartes de {C:tarot}Tarot{} {C:dark_edition}Négatif{}",
					"quand cette carte revient du {C:attention}bannissement{}",
				},
				joy_summon_conditions = {
					"{C:attention}4{} cartes de {C:tarot}Tarot{}",
				}
			},
			j_joy_runick_fountain = {
				name = "{C:joy_spell}Fontaine Runick",
				text = {
					"Crée autant de cartes de {C:tarot}Tarot{} utilisés",
					"durant cette {C:attention}Blinde{} que possible en fin de manche",
					"{C:inactive}(Retire les éditions){}",
					" ",
					"Détruis {C:attention}#1#{} {C:attention}cartes à jouer{} aléatoire",
					"dans le deck quand la {C:attention}Blinde{} est choisie",
				},
			},
			--#endregion
			--#region Burning Abyss
			j_joy_ba_alich = {
				name = "{C:joy_effect}Alich, Malebranche des Abysses Ardentss",
				text = {
					"Baisse les conditions de la {C:attention}Blinde{} de {C:red}#1#%{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_barbar = {
				name = "{C:joy_effect}Barbar, Malebranche des Abysses Ardents",
				text = {
					"{C:mult}+#1#{} Mult",
					"{C:mult}+#2#{} Mult pour chaque {C:attention}Joker{} {C:joy_normal}Démon{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult total){}",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_cagna = {
				name = "{C:joy_effect}Cagna, Malebranche des Abysses Ardents",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"Envoie {C:attention}#2#{} {C:attention}Jokers{} {C:joy_normal}Démon{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_calcab = {
				name = "{C:joy_effect}Calcab, Malebranche des Abysses Ardents",
				text = {
					"{C:attention}+#1#{} cartes en main",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_cir = {
				name = "{C:joy_effect}Cir, Malebranche des Abysses Ardents",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					" ",
					"{C:attention}Ressuscite{} {C:attention}#2#{} {C:joy_normal}\"Abysses Ardents\"{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_draghig = {
				name = "{C:joy_effect}Draghig, Malebranche des Abysses Ardents",
				text = {
					"Chaque {C:joy_normal}Démon{} gagne {C:chips}+#1#{} Jetons",
					" ",
					"Crée {C:attention}#2#{} {C:joy_normal}\"Abysses Ardents\"{} non-{C:joy_spell}Spécial{}",
					"quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_farfa = {
				name = "{C:joy_effect}Farfa, Malebranche des Abysses Ardents",
				text = {
					"{C:attention}Bannis{} {C:attention}#1#{} autre Joker quand obtenu",
					"jusqu'à la fin de la manche",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_graff = {
				name = "{C:joy_effect}Graff, Malebranche des Abysses Ardents",
				text = {
					"Chaque {C:joy_normal}Démon{} gagne {C:mult}+#1#{} Mult",
					" ",
					"Crée {C:attention}#2#{} {C:joy_normal}\"Abysses Ardents\"{} non-{C:joy_spell}Spécial{}",
					"quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_ba_libic = {
				name = "{C:joy_effect}Libic, Malebranche des Abysses Ardents",
				text = {
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie",
					"et {C:attention}ressuscite{} {C:attention}#1#{} {C:attention}Joker{} {C:joy_normal}Démon{}",
					"{s:0.9,C:inactive}(S'active également à la vente)"
				}
			},
			j_joy_ba_rubic = {
				name = "{C:joy_effect}Rubic, Malebranche des Abysses Ardents",
				text = {
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie",
					"et ajoute {C:attention}#1#{} {C:joy_normal}\"Abysses Ardents\"{} à l'{C:joy_spell}Extra Deck{}",
					"{s:0.9,C:inactive}(S'active également à la vente)"
				}
			},
			j_joy_ba_scarm = {
				name = "{C:joy_effect}Scarm, Malebranche des Abysses Ardents",
				text = {
					"Se détruis si vous possédez un {C:attention}Joker{} {C:joy_normal}Monstre{}",
					"non-{C:joy_normal}Démon{} quand la {C:attention}Blinde{} est choisie",
					"et crée {C:attention}#1#{} {C:joy_normal}Démons Main Deck{}",
					"{C:inactive}(Nécessite de la place){}",
					"{s:0.9,C:inactive}(S'active également à la vente)"
				}
			},
			j_joy_ba_malacoda = {
				name = "{C:joy_ritual}Malacoda, Seigneur des Enfers des Abysses Ardents",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:joy_normal}Démon{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Les {C:joy_normal}\"Abysses Ardents\"{} ne se détruisent pas par leurs propres effets"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"un {C:joy_normal}Démon{} inclus",
				}
			},
			j_joy_ba_cherubini = {
				name = "{C:joy_link}Cherubini, Ange Ébène des Abysses Ardents",
				text = {
					"Envoie {C:attention}#1#{} {C:joy_normal}\"Abysses Ardents\"{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Les {C:joy_normal}\"Abysses Ardents\"{} ne se détruisent pas par leurs propres effets"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Démons{}",
				}
			},
			j_joy_ba_dante = {
				name = "{C:joy_xyz}Dante, Voyageur des Abysses Ardents",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_xyz}Détacher{} {C:attention}#3#{}: Envoie {C:attention}#4#{}",
					"cartes aléatoire au {C:attention}Cimetière{}",
					" ",
					"Les {C:joy_normal}\"Abysses Ardents\"{} ne se détruisent pas par leurs propres effets"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} {C:blue}Commun{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
					"{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
				}
			},
			j_joy_ba_pilgrim = {
				name = "{C:joy_fusion}Dante, Pèlerin des Abysses Ardents",
				text = {
					"{C:blue}+#1#{} Mains",
					"{C:red}+#2#{} Défausses",
					" ",
					"Les {C:joy_normal}\"Abysses Ardents\"{} ne se détruisent pas par leurs propres effets"
				},
				joy_summon_conditions = {
					"{C:attention}3{} {C:joy_normal}\"Abysses Ardents\"{}",
					"de noms différents",
				}
			},
			j_joy_ba_virgil = {
				name = "{C:joy_synchro}Virgile, Star du Rock des Abysses Ardents",
				text = {
					"Gagne de manière permanente {C:attention}+#1#{} cartes en main quand invoqué",
					" ",
					"Les {C:joy_normal}\"Abysses Ardents\"{} ne se détruisent pas par leurs propres effets"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:joy_normal}Démon{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_ba_beatrice = {
				name = "{C:joy_xyz}Béatrice, la Dame Éternelle",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_xyz}Détacher{} {C:attention}#3#{}: {C:attention}Ressuscite #4#{} {C:joy_normal}\"Abysses Ardents\"{} en {C:dark_edition}Négatif{}",
					"(ou n'importe quel {C:attention}Joker{} si aucun)",
					" ",
					"Vendez cette carte afin d'ajouter",
					"{C:joy_xyz}\"Dante, Voyageur des Abysses Ardents\"{}",
					"et {C:joy_fusion}\"Dante, Pèlerin des Abysses Ardents\"{}",
					"à l'{C:joy_spell}Extra Deck{} {C:inactive}(Nécessite de la place){}",
					" ",
					"Les {C:joy_normal}\"Abysses Ardents\"{} ne se détruisent pas par leurs propres effets"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} {C:red}Rare{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{} {s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})",
					"ou {C:attention}1{} {C:joy_normal}\"Dante\"{}",
					"{s:0.9,C:inactive}(Si {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, transférez ses matériels)",
				}
			},
			--#endregion
			--#region Labrynth
			j_joy_lab_clock = {
				name = "{C:joy_effect}Penducoucou Labrynth",
				text = {
					"Vous pouvez {C:attention}sacrifier{} cette carte afin de",
					"{C:attention}retourner #1#{} carte aléatoirement en main",
					"face verso (et les mélange), elles gagnent de manière",
					"permanente {C:mult}+#2#{} Mult en marquant des points",
					"{C:attention}ressuscite #3# {C:joy_normal}\"Labrynth\"{} {C:blue}Commun{} si possible",
					"{C:inactive}(Excepté \"Penducoucou Labrynth\"){}"
				}
			},
			j_joy_lab_stovie = {
				name = "{C:joy_effect}Cheminie Torbie Labrynth",
				text = {
					"Vous pouvez {C:attention}sacrifier{} ce {C:attention}Joker{} avec un autre",
					"pour {C:attention}retourner #1#{} cartes aléatoirement en main",
					"face verso (et les mélange), elles gagnent de manière",
					"permanente {C:chips}+#2#{} Jetons en marquant des points",
					"puis {C:money}+#3#${} si un {C:joy_normal}Démon{} un été sacrifié"
				}
			},
			j_joy_lab_changdra = {
				name = "{C:joy_effect}Chandraglier Labrynth",
				text = {
					"Vous pouvez {C:attention}sacrifier{} ce {C:attention}Joker{} avec un autre",
					"pour {C:attention}retourner #1#{} cartes aléatoirement en main",
					"face verso (et les mélange) elles gagnent de manière",
					"permanente {C:money}+#2#${} en marquant des points",
					"puis crée {C:attention}#3#{} Badges aléatoires si un",
					"{C:joy_normal}Démon{} un été sacrifié"
				}
			},
			j_joy_lab_ariane = {
				name = "{C:joy_effect}Ariane la Domestique Labrynth",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"{C:attention}+#2#{} cartes en main durant la prochaine {C:attention}Blinde{}",
					"pour chaque cartes {C:attention}retournées{} cette manche quand possédé",
					" ",
					"Ajoute un {C:joy_normal}\"Labrynth\"{} {C:green}Peu Commun{} au prochain magasin",
					"Si {C:attention}#3#{} cartes ou plus ont été retournées cette manche quand possédé",
					"{s:0.9,C:inactive}(Retournés cette manche: #4#)"
				}
			},
			j_joy_lab_arianna = {
				name = "{C:joy_effect}Arianna la Domestique Labrynth",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"{C:attention}+#2#{} cartes en main durant la prochaine {C:attention}Blinde{}",
					"pour chaque cartes {C:attention}retournées{} cette manche quand possédé",
					" ",
					"Ajoute un {C:joy_normal}\"Labrynth\"{} {C:blue}Commun{} au prochain magasin",
					"Si {C:attention}#3#{} cartes ou plus ont été retournées cette manche quand possédé",
					"{s:0.9,C:inactive}(Retournés cette manche: #4#)"
				}
			},
			j_joy_lab_arias = {
				name = "{C:joy_effect}Arias l'Intendante Labrynth",
				text = {
					"Gagne {C:chips}+#1#{} Jetons pour chaque",
					"carte de jeu {C:attention}retournées{} quand possédé",
					"{C:inactive}(Actuellement:{} {C:chips}+#2# {C:inactive}Jetons){}",
					" ",
					"Ajoute un {C:joy_normal}\"Labrynth\"{} {C:red}Rare{} au prochain magasin",
					"si {C:attention}#3#{} cartes ou plus ont été retournés cette manche quand possédé",
					"{s:0.9,C:inactive}(Retournés cette manche: #4#)",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}\"Labrynth\"{}"
				}
			},
			j_joy_lab_archfiend = {
				name = "{C:joy_effect}Archdémon Labrynth",
				text = {
					"{C:mult}+#1#{} Mult pour chaque",
					"{C:joy_normal}Démon{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {C:mult}+#2# {C:inactive}Mult){}",
					" ",
					"quand une carte de jeu est {C:attention}retournée{},",
					"{C:attention}retourne{} une carte aléatoire face verso (et mélange)"
				}
			},
			j_joy_lab_lovely = {
				name = "{C:joy_effect}Adorable Labrynth du Château d'Argent",
				text = {
					"{C:green}#1# chance sur #2#{} de piocher des cartes face verso",
					"Les chances augmentent pour chaque {C:joy_normal}Démon{} possédés",
					" ",
					"Gagne {C:mult}+#3#{} Mult pour chaque",
					"cartes {C:attention}retournées{} face verso",
					"{C:inactive}(Actuellement:{} {C:mult}+#4# {C:inactive}Mult){}",
				}
			},
			j_joy_lab_lady = {
				name = "{C:joy_effect}Mademoiselle Labrynth du Château d'Argent",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult",
					"chaque fois qu'une carte est {C:attention}retournée{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Les {C:joy_normal}Démons{} Non-{C:joy_trap}Piège{} peuvent utiliser",
					"leurs effets en étant face verso",
					"{s:0.9,C:inactive}(Cette carte incluse)"
				}
			},
			j_joy_lab_labyrinth = {
				name = "{C:joy_spell}Labyrinthe Labrynth",
				text = {
					"{C:money}+#1#${} à chaque {C:attention}Joker retourné{}",
					" ",
					"{C:green}#2# chance sur #3#{} de {C:attention}retourner #4#{} carte en main face verso",
					"(les mélange) quand une carte de jeu est {C:attention}retournée",
				}
			},
			--#endregion
			--#region Subterreur
			j_joy_sub_fiendess = {
				name = "{C:joy_effect}Démone Subterreur",
				text = {
					"Une fois par manche, vous pouvez {C:attention}retourner{} cette carte",
					"et un autre {C:attention}Joker{} face verso",
					"pour {C:attention}ressusciter #1#{} {C:joy_normal}\"Subterreur\"{} en {C:dark_edition}Négatif{}"
				}
			},
			j_joy_sub_defender = {
				name = "{C:joy_effect}Défenseur Némésis Subterreur",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Subterreur\"{} ou {C:attention}Joker{} face verso",
					"{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
					" ",
					"Vendez cette carte pour {C:attention}retourner{} toutes les cartes face recto"
				}
			},
			j_joy_sub_archer = {
				name = "{C:joy_effect}Archère Némésis Subterreur",
				text = {
					"Une fois par blinde, vous pouvez {C:attention}retourner{} cette carte",
					"et un autre {C:attention}Joker{} face verso",
					"pour créer {C:attention}#1#{} {C:joy_normal}\"Subterreur\"{} {C:blue}Commun{} ou",
					"{C:green}Peu Commun{} {C:dark_edition}Négatif{}"
				}
			},
			j_joy_sub_warrior = {
				name = "{C:joy_effect}Guerrier Némésis Subterreur",
				text = {
					"Vous pouvez {C:attention}sacrifier{} cette carte et un autre {C:attention}Joker{}",
					"pour {C:attention}ressusciter #1#{} {C:joy_normal}\"Subterreur Béhémoth\"{} ou {C:joy_normal}\"Subterreur\"{} si aucun",
					" ",
					"{C:joy_effect}FLIP{}: Envoie {C:attention}#2#{} {C:joy_normal}\"Subterreur Béhémoth\"{} au {C:attention}Cimetière{}"
				}
			},
			j_joy_sub_guru = {
				name = "{C:joy_effect}Gourou Subterreur",
				text = {
					"Une fois par manche pendant une {C:attention}Blinde{},",
					"vous pouvez {C:attention}retourner{} cette carte et {C:attention}#1#{} autre {C:attention}Jokers{}:",
					"Cette manche, cette carte gagne {X:mult,C:white}X#2#{} Mult pour chaque cartes {C:attention}retournées{} face verso",
					"et {C:attention}+#3#{} cartes en main pour chaque cartes {C:attention}retournées{} face recto",
					"{s:0.9,C:inactive}(Même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: Crée {C:attention}#4#{} {C:joy_normal}\"Subterreur\"{} {C:blue}Commun{} ou {C:green}Peu Commun{}",
					"{C:inactive}(Nécessite de la place)",
					" ",
					"{C:attention}Se retourne{} face recto quand la {C:attention}Blinde{} est choisie",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_stygo = {
				name = "{C:joy_effect}Stygokraken Subterreur Béhémoth",
				text = {
					"{C:joy_effect}FLIP{}: Chaque carte face verso gagne {X:mult,C:white}X#1#{} Mult cette manche",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Se retourne{} quand la {C:attention}Blinde Boss{} est vaincue",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_drago = {
				name = "{C:joy_effect}Dracossuaire Subterreur Béhémoth",
				text = {
					"{C:joy_effect}FLIP{}: Donne une édition aléatoire à un {C:joy_normal}\"Subterreur\"{} ou un {C:attention}Joker{} face verso",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Se retourne{} quand la {C:attention}Blinde Boss{} est vaincue",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_uma = {
				name = "{C:joy_effect}Umastryx Subterreur Béhémoth",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}Bannis #1#{} autre {C:attention}Jokers{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Se retourne{} quand la {C:attention}Blinde Boss{} est vaincue",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_phos = {
				name = "{C:joy_effect}Phosphéroglacier Subterreur Béhémoth",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Subterreur\"{} ou {C:joy_normal}Aqua{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
					" ",
					"{C:joy_effect}FLIP{}: Envoie {C:attention}#3#{} {C:joy_normal}\"Subterreur\"{} au {C:attention}Cimetière{}",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Se retourne{} quand la {C:attention}Blinde Boss{} est vaincue",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_volt = {
				name = "{C:joy_effect}Voltellurique Subterreur Béhémoth",
				text = {
					"{C:mult}+#1#{} Mult pour chaque carte face verso",
					"{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Retourne{} toutes les cartes en main face verso (et les mélangent)",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Retourne{} quand {C:attention}Blinde Boss{} est choisie",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_stala = {
				name = "{C:joy_effect}Stalagmo Subterreur Béhémoth",
				text = {
					"{C:joy_effect}FLIP{}: Pioche {C:attention}#1#{} cartes face verso",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Retourne{} quand {C:attention}Blinde Boss{} est choisie",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_speleo = {
				name = "{C:joy_effect}Spéléogeist Subterreur Béhémoth",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult chaque fois qu'une carte est {C:attention}retournée{}",
					"{s:0.9,C:inactive}(Gagne cette effet même face verso)",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Retourne{} tous les autres {C:attention}Jokers{} face recto",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Se retourne{} quand la {C:attention}Blinde Boss{} est vaincue",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_ultra = {
				name = "{C:joy_effect}Ultramafus Subterreur Béhémoth",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque carte face verso",
					"{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Retourne{} tous les autres {C:attention}Jokers{} face verso",
					" ",
					"{C:attention}Se retourne{} face verso quand obtenu",
					"{C:attention}Se retourne{} quand la {C:attention}Blinde Boss{} est vaincue",
					"{s:0.9,C:inactive}(Même si face verso)",
				}
			},
			j_joy_sub_befiendess = {
				name = "{C:joy_link}Démone Subterreur Béhémoth",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:attention}matériel{} utilisé pour son invocation",
					"et {C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Subterreur\"{} utilisé",
					"{C:inactive}(Actuellement:{} {C:chips}+#3#{} {C:inactive}Jetons et {C:mult}+#4#{} {C:inactive}Mult){}",
					" ",
					"Une fois par manche, vous pouvez {C:attention}retourner",
					"{C:attention}#5# Jokers{} face verso pour créer {C:attention}#6# {C:joy_normal}\"Subterreur Behemoth\"{}",
					"{C:inactive}(Nécessite de la place){}"
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:joy_effect}Flip{} ou",
					"{C:attention}Jokers face verso"
				}
			},
			j_joy_sub_city = {
				name = "{C:joy_spell}La Cité Cachée",
				text = {
					"Une fois par manche, vous pouvez {C:attention}retourner{} un {C:attention}Joker",
					" ",
					"{C:money}+$#1#{} quand un {C:attention}Joker{} {C:joy_normal}Monstre{} est {C:attention}retourné{} face verso",
					"ou quand un {C:attention}Joker{} non-{C:joy_normal}Monstre{} est {C:attention}retourné{} face recto"
				}
			},
			--#endregion
			--#region Eldlich
			j_joy_eld_eldlich = {
				name = "{C:joy_effect}Surnaliche le Seigneur d'Or",
				text = {
					"Les cartes {C:attention}Dorées{} donnent {C:money}+#1#${} chacunes lorsqu'elles marquent",
					"pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
					" ",
					"Toutes les cartes marquant des points deviennent {C:attention}Dorées{}",
					" ",
					"Une fois par manche, vous pouvez {C:attention}sacrifier #2#{} {C:attention}Joker{} {C:joy_normal}Zombie{} ou {C:joy_trap}Piège{}",
					"pour créer {C:attention}#3#{} {C:joy_normal}\"Terre d'Or\" Main Deck{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_eld_conq = {
				name = "{C:joy_trap}Conquistador de la Terre d'Or",
				text = {
					"Les cartes {C:attention}Dorées{} donnent {C:chips}+#1#{} Jetons chacunes lorsqu'elles marquent",
					"pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
					" ",
					"Déclenche de nouveau les cartes marquant des points avec une augmentation",
					"cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
					" ",
					"{C:joy_effect}FLIP{}: {C:red}+#2#{} Défausse cette manche"
				}
			},
			j_joy_eld_guard = {
				name = "{C:joy_trap}Gardien de la Terre d'Or",
				text = {
					"Les cartes {C:attention}Dorées{} donnent {C:mult}+#1#{} Mult chacunes lorsqu'elles marquent",
					"pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
					" ",
					"Déclenche de nouveau les cartes marquant des points avec une augmentation",
					"cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
					" ",
					"{C:joy_effect}FLIP{}: {C:blue}+#2#{} Main cette manche"
				}
			},
			j_joy_eld_huaq = {
				name = "{C:joy_trap}Huaquero de la Terre d'Or",
				text = {
					"Les cartes {C:attention}Dorées{} donnent {C:chips}+#1#{} Jetons chacunes lorsqu'elles marquent",
					"pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
					" ",
					"Déclenche de nouveau les cartes marquant des points avec une augmentation",
					"cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Bannis #2#{} {C:joy_normal}Zombie{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}"
				}
			},
			j_joy_eld_glorious = {
				name = "{C:joy_trap}Surnalixir de la Glorieuse Terre d'Or",
				text = {
					"Les cartes {C:attention}Dorées{} donnent {C:mult}+#1#{} Mult chacunes lorsqu'elles marquent",
					"pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
					" ",
					"Déclenche de nouveau les cartes marquant des points avec une augmentation",
					"cartes en main incluses si vous possédez un {C:joy_normal}\"Surnaliche\"{}",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Ressuscite #2#{} {C:joy_normal}\"Terre d'Or\"{} ou {C:attention}#2#{} {C:joy_trap}Piège{} si aucune"
				}
			},
			j_joy_eld_mad = {
				name = "{C:joy_fusion}Surnaliche le Furieux Seigneur d'Or",
				text = {
					"Les cartes {C:attention}Dorées{} gagnent {X:mult,C:white}X#1#{} Mult chacunes lorsqu'elles marquent",
					"pour chaque {C:joy_normal}Zombie{} possédés ou au {C:attention}Cimetière{}",
					" ",
					"Toutes les cartes marquant des points deviennent {C:attention}Dorées{}",
					" ",
					"Les {C:joy_trap}Pièges{} ne se {C:attention}posent pas{} face verso d'elles mêmes",
					"et leurs effets {C:joy_effect}FLIP{} s'activent quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}\"Surnaliche\"{} + {C:attention}1{} {C:joy_normal}Zombie{}"
				}
			},
			j_joy_eld_angel = {
				name = "{C:joy_fusion}Ange Banni de la Terre d'Or",
				text = {
					"Active les mains {C:attention}Surnalixir{}",
					"Monte d'un niveau le {C:attention}Surnalixir{} quand les {C:joy_trap}Pièges{} sont {C:attention}retournées{} face recto",
					"{C:inactive}(Ou quand leurs effets FLIP s'activent)",
					" ",
					"Envoie {C:attention}#1#{} {C:joy_effect}\"Surnaliche le Seigneur d'Or\"{} au {C:attention}Cimetière{}",
					"si la main contient un {C:attention}Surnalixir{}",
					" ",
					"{C:attention}Ressuscite #2#{} {C:joy_normal}\"Surnaliche\"{} en {C:dark_edition}Négatif{} si",
					"cette carte possédée est envoyé au {C:attention}Cimetière{}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{}, 1 {C:joy_trap}Piège{} inclus"
				}
			},
			--#endregion
			--#region @Ignister
			j_joy_ignis_achichi = {
				name = "{C:joy_effect}Achichi @Ignister",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Crée {C:attention}#2#{} {C:joy_normal}\"@Ignister\"{} {C:joy_normal}Main Deck",
					"{C:blue}Commun{} quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_ignis_pikari = {
				name = "{C:joy_effect}Pikari @Ignister",
				text = {
					"{C:money}+#1#${} en fin de manche",
					" ",
					"Crée {C:attention}#2#{} {C:tarot}Tarot{} aléatoires",
					"quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_ignis_hiyari = {
				name = "{C:joy_effect}Hiyari @Ignister",
				text = {
					"{C:attention}+#1#{} cartes en main",
					" ",
					"Une fois par manche, vous pouvez {C:attention}sacrifier #2#{} {C:joy_normal}Cyberse{}",
					"pour créer {C:attention}#3#{} {C:joy_normal}\"@Ignister\"{} {C:joy_normal}Main Deck{} {C:green}Peu Commun{}",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}\"@Ignister\""
				}
			},
			j_joy_ignis_bururu = {
				name = "{C:joy_effect}Bururu @Ignister",
				text = {
					"Envoie {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} au {C:attention}Cimetière{} quand obtenu",
					" ",
					"{C:attention}Ressuscite #2#{} {C:joy_normal}\"@Ignister\" Main Deck{} en {C:dark_edition}Négatif",
					"quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse"
				}
			},
			j_joy_ignis_doshin = {
				name = "{C:joy_effect}Doshin @Ignister",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"{C:attention}Ressuscite #2#{} {C:joy_normal}\"@Ignister\"{} {C:joy_spell}Extra Deck{}",
					"quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse"
				}
			},
			j_joy_ignis_gatchiri = {
				name = "{C:joy_effect}Gatchiri @Ignister",
				text = {
					"{X:mult,C:white}X#1#{} Mult",
					" ",
					"Peut être utilisé comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
					" ",
					"Un {C:joy_normal}Cyberse{} invoqué utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9}Ne peut être debuff ou {s:0.9,C:attention}retourné {s:0.9}face verso"
				},
				joy_transfer_ability = {
					"Ne peut être debuff ou {C:attention}retourné{} face verso"
				}
			},
			j_joy_ignis_gussari = {
				name = "{C:joy_effect}Gussari @Ignister",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"Peut être utilisé comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
					" ",
					"Un {C:joy_link}Lien{} invoqué utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9,C:mult}+#1# {s:0.9}Mult pour chaque {s:0.9,C:attention}matériel {s:0.9}utilisé pour son invocation",
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult pour chaque {C:attention}matériel{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_ignis_danmari = {
				name = "{C:joy_effect}Danmari @Ignister",
				text = {
					"Peut être utilisé comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
					" ",
					"Un {C:joy_link}Lien{} invoqué utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9}Baisse les conditions de la {s:0.9,C:attention}Blinde{}{s:0.9} de {s:0.9,C:red}#1#%{}",
					"{s:0.9}quand la {s:0.9,C:attention}Blinde{}{s:0.9} est choisie",
				},
				joy_transfer_ability = {
					"Baisse les conditions de la {C:attention}Blinde{} de {C:red}#1#%{}",
					"quand la {C:attention}Blinde{} est choisie",
				}
			},
			j_joy_ignis_doyon = {
				name = "{C:joy_effect}Doyon @Ignister",
				text = {
					"{C:attention}Ressuscite #1#{} {C:joy_normal}\"@Ignister\" Main Deck{} quand obtenu",
					" ",
					"Ajoute {C:attention}#2#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse"
				}
			},
			j_joy_ignis_donyoribo = {
				name = "{C:joy_effect}Donyoribo @Ignister",
				text = {
					"{C:money}+#1#${} à chaque achat d'{C:joy_normal}\"@Ignister\"{}",
					" ",
					"Vendez cette carte pour {C:attention}bannir #2#{} {C:joy_normal}\"@Ignister\"{}",
					"jusqu'à la prochaine {C:attention}Blinde{}"
				}
			},
			j_joy_ignis_backup = {
				name = "{C:joy_effect}Sauvegarde @Ignister",
				text = {
					"Ajoute {C:dark_edition}Négatif{} à {C:attention}#1#{} autre {C:joy_normal}Cyberse{} aléatoire quand obtenu",
					" ",
					"Ajoute {C:dark_edition}Négatif{} à un {C:joy_normal}Cyberse{} invoqué",
					"utilisant cette carte comme {C:attention}matériel{} (si possible)"
				}
			},
			j_joy_ignis_wizard = {
				name = "{C:joy_effect}Sorcier @Ignister",
				text = {
					"Vous pouvez {C:attention}sacrifier{} cette carte pour {C:attention}ressusciter{} jusqu'à {C:attention}#1#{}",
					"{C:joy_normal}Cyberses{} de noms différents",
					"Si vous possédez un {C:joy_normal}Cyberse{} {C:joy_spell}Extra Deck{} invoqué,",
					"{C:attention}ressuscite{} un extra {C:joy_normal}\"@Ignister\"{} en {C:dark_edition}Négatif"
				}
			},
			j_joy_ignis_kiruku = {
				name = "{C:joy_effect}Kurikurinku @Ignister",
				text = {
					"Vendez cette carte pour désactiver la {C:attention}Blinde Boss{} actuelle et",
					"l'ajoute au prochain magasin si vous possédez un {C:joy_normal}Cyberse{} {C:joy_spell}Extra Deck{} invoqué"
				}
			},
			j_joy_ignis_leviathan = {
				name = "{C:joy_ritual}Léviathan d'Eau @Ignister",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
					" ",
					"Les cartes marquant des points gagnent {C:chips}+#2#{} Jetons pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:chips}+#3# {C:inactive}Jetons)",
					"Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet"
				},
				joy_transfer_ability = {
					"Les cartes marquant des points gagnent {C:chips}+#1#{} Jetons pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:chips}+#2# {C:inactive}Jetons)",
				},
				joy_summon_conditions = {
					"{C:attention}2+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_golem = {
				name = "{C:joy_fusion}Golem de Terre @Ignister",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
					" ",
					"{C:attention}+#2# slot de Joker{} pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:attention}+#3#{C:inactive})",
					"Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet"
				},
				joy_transfer_ability = {
					"{C:attention}+#1# slot de Joker{} pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:attention}+#2#{C:inactive})",
				},
				joy_summon_conditions = {
					"{C:attention}2+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_pegasus = {
				name = "{C:joy_synchro}Pégase du Vent @Ignister",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
					" ",
					"{C:green}#2# chance sur #3#{} de redéclencher cartes à jouer",
					"Chance augmenté pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"Un {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
				},
				joy_transfer_ability = {
					"{C:green}#1# chance sur #2#{} de redéclencher les cartes à jouer",
					"Chance augmenté pour chaque {C:attention}Attribut{} utilisé pour son invocation",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1+{} non-{C:joy_synchro}Syntoniseur{} {C:joy_normal}Cyberse{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_ignis_dragon = {
				name = "{C:joy_xyz}Dragon de Lumière @Ignister",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
					" ",
					"Les cartes marquant des points gagnent {C:money}+#2#${} si tenues en main en fin de manche",
					"pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:money}+$#3#{C:inactive})",
					"A {C:joy_link}Lien{} invoqué utilisant cette carte comme {C:attention}matériel{} gagne cet effet",
				},
				joy_transfer_ability = {
					"Les cartes marquant des points gagnent {C:money}+#1#${} si tenues en main",
					"pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {C:money}+$#2#{C:inactive})",
				},
				joy_summon_conditions = {
					"{C:attention}2+ {C:joy_normal}Cyberse{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
					"{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
				}
			},
			j_joy_ignis_phoenix = {
				name = "{C:joy_link}Phénix de Feu @Ignister",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\"{} non obtenu à l'{C:joy_spell}Extra Deck{} quand invoqué",
					" ",
					"Crée {C:attention}#2#{} {C:joy_link}\"Phénix de Feu @Ignister\"{} {C:dark_edition}Négatif{} et debuff",
					"quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
					" ",
					"Les cartes marquant des points gagnent {X:mult,C:white}X#3#{} extra Mult pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#4#{} {C:inactive}extra Mult)",
					"Un {C:joy_link}Lien{} invoqué avec cette carte comme {C:attention}matériel{} gagne cet effet",
				},
				joy_transfer_ability = {
					"Les cartes marquant des points gagnent {X:mult,C:white}X#1#{} extra Mult pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}extra Mult)",
				},
				joy_summon_conditions = {
					"{C:attention}2+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_allied = {
				name = "{C:joy_link}Codeur Bavard Allié @Ignister",
				text = {
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:joy_link}Lien",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					" ",
					"{C:attention}Ressuscite #3#{} {C:joy_link}Liens{} quand invoqué"
				},
				joy_summon_conditions = {
					"{C:attention}3 {C:joy_link}Liens{}"
				}
			},
			j_joy_ignis_infant = {
				name = "{C:joy_link}Enfant des Ténèbres @Ignister",
				text = {
					"Crée {C:attention}#1#{} {C:joy_spell}\"Ignister A.I.Land\"{} quand invoqué",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Traité comme n'importe quel {C:attention}matériel{} pour un lien {C:joy_link}Lien",
					"et n'importe quel {C:attention}Attribut{} quand possédé"
				},
				joy_summon_conditions = {
					"{C:attention}1 {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_templar = {
				name = "{C:joy_link}Templier des Ténèbres @Ignister",
				text = {
					"{C:attention}Ressuscite{} autant d'{C:joy_normal}\"@Ignister\"{} que possible",
					"de nom différents en {C:dark_edition}Négatif{} mais debuff",
					" ",
					"{C:attention}Ressuscite #1#{} {C:joy_normal}Cyberse Main Deck{} quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse{}"
				},
				joy_summon_conditions = {
					"{C:attention}3 {C:joy_normal}\"@Ignister\"{}"
				}
			},
			j_joy_ignis_arrival = {
				name = "{C:joy_link}L'Arrivée Cyberse @Ignister",
				text = {
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Attribut{} utilisé pour son invocation",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					" ",
					"Gagne ces effets en fonction des {C:attention}matériels{} utilisé pour son invocation",
					"{V:1}LUMIÈRE{V:3}: {V:2}+#3#${V:3} en fin de manche",
					"{V:4}TÉNÈBRES{V:7}: Crée {V:5}#4#{} {V:6}Spectral{V:7} en fin de manche {s:0.9,C:inactive}(Nécessite de la place)",
					"{V:8}EAU{V:10}: {V:9}+#5#{V:10} Jetons",
					"{V:11}FEU{V:13}: {V:12}+#6#{V:13} Mult",
					"{V:14}VENT{V:17}: {V:15}#7# chance sur #8#{V:17} de créer une copie {V:16}Négative{V:17} d'un consommable utilisé",
					"{V:18}TERRE{V:20}: {V:19}+#9#{V:20} cartes en main"
				},
				joy_summon_conditions = {
					"{C:attention}5+ {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_ignis_ailand = {
				name = "{C:joy_spell}Ignister A.I.Land",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"@Ignister\" Main Deck{} au magasin",
					"quand un {C:joy_normal}\"@Ignister\"{} est utilisé comme {C:attention}matériel",
					" ",
					"Si vous possédez des {C:attention}Jokers{} avec {C:attention}#2#{} {C:attention}Attributs{} différents en fin de manche,",
					"{C:attention}bannis{} tous les {C:joy_normal}Cyberses{} jusqu'à la prochaine {C:attention}Blinde{}",
					"mais debuff tous les non-{C:joy_normal}Cyberses{}"
				}
			},
			--#endregion
			--#region Solfaccord
			j_joy_solfa_cutia = {
				name = "{C:joy_pendulum_effect}DoSolfaccord Cutia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}8{}",
					"et augmente le niveau des {C:attention}Main Pleines{}, {C:attention}Suites{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Les cartes paires marquant des points gagnent {C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Solfaccord\"",
					"{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
					" ",
					"Une fois par manche, crée {C:attention}#4#{} {C:joy_pendulum}Pendule{} {C:joy_normal}\"Solfaccord\"{}",
					"après que {C:attention}#5#{} {C:joy_pendulum}Pendule{} soient consommées",
					"{C:inactive}(#6#/#5#) (Nécessite de la place){}",
				}
			},
			j_joy_solfa_dreamia = {
				name = "{C:joy_pendulum_effect}RéSolfaccord Dreamia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}7{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Les cartes impaires marquant des points gagnent {C:mult}+#2#{} Mult pour chaque {C:joy_normal}\"Solfaccord\"",
					"{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
					" ",
					"Gratuit si vous possédez un {C:joy_pendulum}Pendule"
				}
			},
			j_joy_solfa_eliteia = {
				name = "{C:joy_pendulum_effect}MiSolfaccord Éliteia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}6{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Gagne {C:chips}+#2#{} Jetons pour chaque cartes paires marquant des points",
					"{C:inactive}(Actuellement:{} {C:chips}+#3#{} {C:inactive}Jetons){}",
					" ",
					"Ajoute {C:attention}#4#{} {C:joy_normal}\"Solfaccord\"{} à l'{C:joy_spell}Extra Deck{}",
					"après {C:attention}#5#{} cartes paires marquants des points",
					"{C:inactive}(#6#/#5#) (Nécessite de la place){}",
				}
			},
			j_joy_solfa_fancia = {
				name = "{C:joy_pendulum_effect}FaSolfaccord Fancia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnée à {C:attention}5{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Gagne {C:chips}+#2#{} Jetons pour chaque cartes impaires marquant des points",
					"{C:inactive}(Actuellement:{} {C:chips}+#3#{} {C:inactive}Jetons){}",
					" ",
					"Crée {C:attention}#4#{} {C:joy_normal}\"Solfaccord\"{} après {C:attention}#5#{} cartes impaires marquant des points",
					"{C:inactive}(#6#/#5#) (Nécessite de la place){}",
				}
			},
			j_joy_solfa_gracia = {
				name = "{C:joy_pendulum_effect}SolSolfaccord Gracia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}4{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Redéclenche chaque cartes paires {C:attention}#2#{} fois",
					" ",
					"Crée {C:attention}#3#{} {C:joy_spell}\"Solfaccord Harmonia\"{}",
					"après {C:attention}#4#{} cartes paires marquant des points",
					"{C:inactive}(#5#/#4#) (Nécessite de la place){}",
				}
			},
			j_joy_solfa_angelia = {
				name = "{C:joy_pendulum_effect}LaSolfaccord Angélia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}3{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Redéclenche chaque cartes impaires {C:attention}#2#{} fois",
					" ",
					"{C:attention}Ressuscite #3#{} {C:joy_normal}\"Solfaccord\"{} après {C:attention}#4#{} cartes impaires marquant des points",
					"{C:inactive}(#5#/#4#){}",
				}
			},
			j_joy_solfa_beautia = {
				name = "{C:joy_pendulum_effect}SiSolfaccord Beautia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}2{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Les cartes paires marquant des points gagnent",
					"{X:chips,C:white}X#2#{} Jetons pour chaque {C:joy_normal}\"Solfaccord\"{}",
					"{C:inactive}(Actuellement: {X:chips,C:white}X#3#{} {C:inactive}Jetons)",
					" ",
					"{C:attention}Bannis #4#{} {C:joy_pendulum}Pendule{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}"
				},
			},
			j_joy_solfa_coolia = {
				name = "{C:joy_pendulum_effect}DoSolfaccord Coolia",
				joy_consumable = {
					"Change le rang de {C:attention}#1#{} carte selectionnées à {C:attention}Aces{}",
					"et augmente le niveau des {C:attention}Main Pleine{}, {C:attention}Suite{} et {C:attention}Deux Paires{} de {C:attention}#1#",
				},
				text = {
					"Les cartes impaires marquant des points gagnent",
					"{X:mult,C:white}X#2#{} Mult pour chaque {C:joy_normal}\"Solfaccord\"{}",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Les cartes au {C:attention}Cimetière{} comptent pour les effets des {C:joy_normal}\"Solfaccord\"{}",
				},
			},
			j_joy_solfa_musecia = {
				name = "{C:joy_link}GranSolfaccord Musecia",
				text = {
					"Les cartes à jouer affectés par les effets consommables des {C:joy_normal}\"Solfaccord\"{}",
					"gagnent une {C:dark_edition}édition{} aléatoire si possible",
					" ",
					"Crée {C:attention}#1#{} {C:joy_normal}\"Solfaccord\"{} {C:joy_pendulum}Pendule{} {C:dark_edition}Négatif{}",
					"après avoir consommé {C:attention}#2#{} {C:joy_pendulum}Pendules{} {C:inactive}(#3# restant){}",
					"et augmente les conditions de {C:attention}#4#{}",
					"Si la main marquant des points contient des cartes paires et impaires,",
					"toutes les cartes comptent pour les deux pour les effets {C:joy_normal}\"Solfaccord\"{}",
					" ",
					"Les {C:joy_pendulum}Pendules{} comptent pour les effets des {C:joy_normal}\"Solfaccord\"{}"
				},
				joy_summon_conditions = {
					"{C:attention}2 {C:joy_pendulum}Pendules"
				}
			},
			j_joy_solfa_grancoolia = {
				name = "{C:joy_link}GranSolfaccord Coolia",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_pendulum}Pendule{}",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
					" ",
					"Les cartes à jouer affectés par les effets consommables des {C:joy_normal}\"Solfaccord\"{}",
					"gagnent un {C:attention}Sceau{} aléatoire si possible",
					" ",
					"{C:money}+#3#${} après que {C:attention}#4#{} {C:joy_pendulum}Pendules{} soient consommés {C:inactive}(#5#/#4#){}",
					" ",
					"Si la main marquant des points contient des cartes paires et impaires,",
					"toutes les cartes comptent pour les deux pour les effets {C:joy_normal}\"Solfaccord\"{}",
				},
				joy_summon_conditions = {
					"{C:attention}3 Jokers{},",
					"un {C:joy_pendulum}Pendule inclus"
				}
			},
			j_joy_solfa_harmonia = {
				name = "{C:joy_spell}Harmonie Solfaccord",
				text = {
					"{C:attention}Ressuscite #1#{} {C:joy_normal}\"Solfaccord\"{} (ou {C:joy_pendulum}Pendule{} si aucun)",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Crée {C:attention}#2#{} {C:tarot}Tarot{} {C:attention}La Force{} après avoir consommé un {C:joy_pendulum}Pendule{}",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Toutes les cartes paires deviennent {C:attention}Dorées{} et les impaires {C:attention}Acier{} après avoir marqué des points",
					"si {C:attention}#3# {C:joy_normal}\"Solfaccord\"{} de noms différents sont possédées, en ignorant les autres effets"
				}
			},
			--#endregion
			--#region Artisanesorcière
			j_joy_witch_genni = {
				name = "{C:joy_effect}Genni, Artisanesorcière",
				text = {
					"Crée {C:attention}#1#{} {C:tarot}Tarot",
					"quand obtenu",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#2#{} {C:tarot}Tarot",
					"pour créer {C:attention}#3#{} {C:joy_effect}\"Potterie, Artisanesorcière\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_witch_potterie = {
				name = "{C:joy_effect}Potterie, Artisanesorcière",
				text = {
					"Crée {C:attention}#1#{} {C:tarot}Tarot",
					"quand obtenu si la zone consommable est vide",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Cette carte et {C:attention}#2#{} {C:tarot}Tarot{} sont {C:attention}bannis{}",
					"en fin de manche jusqu'à la prochaine {C:attention}Blinde{}",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#3#{} {C:tarot}Tarot",
					"pour créer {C:attention}#4#{} {C:joy_effect}\"Pittore, Artisanesorcière\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_witch_pittore = {
				name = "{C:joy_effect}Pittore, Artisanesorcière",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:tarot}Tarot",
					"{C:attention}sacrifiés{} cette manche",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
					" ",
					"Une fois par manche, crée {C:attention}#3#{} {C:tarot}Tarot{}",
					"quand {C:attention}#4#{} consommables sont utilisés",
					"{C:inactive}(#5#/#4#) (Nécessite de la place){}",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#6#{} {C:tarot}Tarot",
					"pour créer {C:attention}#7#{} {C:joy_effect}\"Schmietta, Artisanesorcière\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_witch_schmietta = {
				name = "{C:joy_effect}Schmietta, Artisanesorcière",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:tarot}Tarot",
					"{C:attention}sacrifiés{} cette manche",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)",
					" ",
					"Crée {C:attention}#3#{} {C:tarot}Tarot{}",
					"chaque première main de manche",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#4#{} {C:tarot}Tarot",
					"pour créer {C:attention}#5#{} {C:joy_effect}\"Edel, Artisanesorcière\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_witch_edel = {
				name = "{C:joy_effect}Edel, Artisanesorcière",
				text = {
					"Une fois par manche, crée {C:attention}#1#{} {C:joy_effect}\"Genni, Artisanesorcière\"{}",
					"quand {C:attention}#2#{} mains sont joués",
					"{C:inactive}(#3#/#2#) (Nécessite de la place){}",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#4#{} {C:tarot}Tarot",
					"pour créer {C:attention}#5#{} {C:joy_effect}\"Indumenti, Artisanesorcière\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_witch_haine = {
				name = "{C:joy_effect}Indumenti, Artisanesorcière",
				text = {
					"{C:money}+#1#${} pour chaque {C:tarot}Tarot",
					"{C:attention}sacrifiés{} cette manche quand obtenu",
					" ",
					"Crée {C:attention}#2#{} {C:tarot}Tarot{} {C:dark_edition}Négatif",
					"s'il s'agit de la dernière main cette manche",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et {C:attention}#3#{} {C:tarot}Tarot",
					"pour créer {C:attention}#4#{} {C:joy_effect}\"Madame Verre, Artisanesorcière\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_witch_verre = {
				name = "{C:joy_effect}Madame Verre, Artisanesorcière",
				text = {
					"Crée tous les {C:tarot}Tarots{} {C:attention}sacrifiés{} cette manche en {C:dark_edition}Négatif{} quand obtenu",
					" ",
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:tarot}Tarot",
					"{C:attention}sacrifiés{} cette manche",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
				}
			},
			j_joy_witch_aruru = {
				name = "{C:joy_effect}Golem Aruru, Artisanesorcière",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:tarot}Tarot",
					"{C:attention}sacrifiés{} cette manche",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)",
					" ",
					"Utiliser des {C:tarot}Tarots{} en possédant cette carte",
					"compte comme sacrifiés pour les effets",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}\"Artisanesorcière\"{}",
				}
			},
			j_joy_witch_vicemadame = {
				name = "{C:joy_fusion}Vice-Madame, Artisanesorcière",
				text = {
					"Les {C:tarot}Packs Arcane{} sont gratuits",
					" ",
					"Les gains de Jetons et Mult d'{C:joy_normal}\"Artisanesorcière\"{} sont conservés chaque manche",
					" ",
					"Une fois par manche, crée {C:attention}#1#{} {C:joy_effect}\"Genni, Artisanesorcière\"{}",
					"quand {C:attention}#2#{} {C:tarot}Tarot{} sont utilisés",
					"{C:inactive}(#3#/#2#) (Nécessite de la place){}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Magiciens",
				}
			},
			--#endregion
			--#region Marionnette de l'Ombre
			j_joy_shaddoll_beast = {
				name = "{C:joy_effect}Bête Marionnette de l'Ombre",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}+#1#{} cartes en main cette manche,",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"Change {C:attention}#4#{} cartes non-améliorée aléatoire dans le deck",
					"en {C:attention}Sauvage Sceau Bleu{} quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_dragon = {
				name = "{C:joy_effect}Dragon Marionnette de l'Ombre",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: {C:blue}+#1#{} Main cette manche,",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"Change {C:attention}#4#{} cartes non-améliorée aléatoire dans le deck",
					"en {C:attention}Verre Sceau Dorée{} quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_falco = {
				name = "{C:joy_effect}Faucon Marionnette de l'Ombre",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Ressuscite #1#{} {C:attention}Joker{} {C:joy_effect}Flip{} face verso si possible,",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"Crée {C:attention}#4#{} {C:joy_effect}\"Faucon Marionnette de l'Ombre\"{} {C:dark_edition}Négatif{} face verso",
					"quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
				}
			},
			j_joy_shaddoll_hedgehog = {
				name = "{C:joy_effect}Hérisson Marionnette de l'Ombre",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: Crée {C:attention}#1#{} {C:tarot}Tarot{} {C:inactive}(Nécessite de la place){},",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"Crée {C:attention}#4#{} {C:spectral}Spectral",
					"quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
					"{C:inactive}(Nécessite de la place)",
				}
			},
			j_joy_shaddoll_hound = {
				name = "{C:joy_effect}Chien de Chasse Marionnette de l'Ombre",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: {C:money}+#1#${},",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"{C:attention}Retourne{} tous les {C:attention}Jokers{} face recto",
					"quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_squamata = {
				name = "{C:joy_effect}Squamate Marionnette de l'Ombre",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: {C:red}+#1#{} Défausse cette manche,",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"Change {C:attention}#4#{} cartes non-améliorée aléatoire dans le deck",
					"en {C:attention}Acier Sceau Violet{} quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion"
				}
			},
			j_joy_shaddoll_core = {
				name = "{C:joy_trap}Noyau Marionnette de l'Ombre",
				text = {
					"{C:joy_effect}FLIP{}: {X:mult,C:white}X#1#{} Mult cette manche,",
					"{C:attention}ressuscite #2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} si possible",
					"et envoie {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{}",
					" ",
					"Peut être utilisé comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
					" ",
					"Crée {C:attention}#4#{} {C:joy_spell}\"Malédiction de la Prison de l'Ombre\"",
					"quand utilisé comme {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
					"{C:inactive}(Nécessite de la place)",
				}
			},
			j_joy_shaddoll_ariel = {
				name = "{C:joy_effect}Ariel Marionnette de l'Ombre Nael",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Bannis #1#{} autre {C:attention}Joker{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9,C:attention}Se bannis{} {s:0.9}en fin de manche",
					"{s:0.9}jusqu'à la prochaine {s:0.9,C:attention}Blinde{} {s:0.9}"
				},
				joy_transfer_ability = {
					"{C:attention}Se bannis{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{}"
				},
			},
			j_joy_shaddoll_genius = {
				name = "{C:joy_effect}Don Marionnette de l'Ombre Neh",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: Vous pouvez {C:attention}retourner #1#{} {C:attention}Joker{} cette manche",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9}Ne peut être debuff ou {s:0.9,C:attention}retournée{s:0.9} face verso",
				},
				joy_transfer_ability = {
					"Ne peut être debuff ou {C:attention}retournée{} face verso",
				},
			},
			j_joy_shaddoll_keios = {
				name = "{C:joy_effect}Keios Marionnette de l'Ombre Qad",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: Ajoute {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"{C:inactive}(Nécessite de la place)",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9,C:mult}+#2#{s:0.9} Mult pour chaque {s:0.9,C:joy_normal}\"Marionnette de l'Ombre\"{s:0.9} ou {s:0.9,C:joy_normal}Magicien{s:0.9} au {s:0.9,C:attention}Cimetière"
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{} ou {C:joy_normal}Magicien{} au {C:attention}Cimetière",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)"
				},
			},
			j_joy_shaddoll_wendi = {
				name = "{C:joy_effect}Wendi Marionnette de l'Ombre Ree",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: Crée {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{}",
					"{C:inactive}(Nécessite de la place)",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9,C:attention}Ressuscite #2#{s:0.9,C:joy_effect} {s:0.9,C:attention}Joker{s:0.9} Flip comme {s:0.9,C:dark_edition}Négatif{s:0.9} quand la {s:0.9,C:attention}Blinde Boss{s:0.9} est choisie",
				},
				joy_transfer_ability = {
					"{C:attention}Ressuscite #1# {C:attention}Joker{} {C:joy_effect}Flip{}  en {C:dark_edition}Négatif{} quand la {C:attention}Blinde Boss{} est choisie",
				},
			},
			j_joy_shaddoll_hollow = {
				name = "{C:joy_effect}Vide Marionnette de l'Ombre Hel",
				text = {
					"{C:attention}Se retourne{} en fin de manche {C:inactive}(même si face verso)",
					" ",
					"{C:joy_effect}FLIP{}: Envoie {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9}Envoie {s:0.9,C:attention}#2#{} {s:0.9,C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{s:0.9} au {s:0.9,C:attention}Cimetière{s:0.9} quand la {s:0.9,C:attention}Blinde{s:0.9} est choisie",
				},
				joy_transfer_ability = {
					"Envoie {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\" Main Deck{} au {C:attention}Cimetière{} quand la {C:attention}Blinde{} est choisie",
				},
			},
			j_joy_shaddoll_anoya = {
				name = "{C:joy_fusion}Anoyatyllis Marionnette de l'Ombre El",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{} au {C:attention}Cimetière",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{} au {C:attention}Cimetière",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Magicien{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"{C:attention}1{} {C:attention}Joker{} {C:joy_water}EAU{}",
				}
			},
			j_joy_shaddoll_apka = {
				name = "{C:joy_fusion}Apkallone Marionnette de l'Ombre El",
				text = {
					"Les {C:joy_fusion}Fusions{} {C:joy_normal}\"Marionnette de l'Ombre\"{} ne peuvent pas être debuff ou {C:attention}retournée{} face verso",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"Les {C:joy_fusion}Fusions{} {C:joy_normal}\"Marionnette de l'Ombre\"{} ne peuvent pas être debuff ou {C:attention}retournée{} face verso",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}Magiciens{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"d'{C:attention}attributs{} différents",
				}
			},
			j_joy_shaddoll_winda = {
				name = "{C:joy_fusion}Winda Marionnette de l'Ombre El",
				text = {
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{}, {C:attention}Joker{} face verso ou slot de {C:attention}Joker{} vide",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{}, {C:attention}Joker{} face verso ou slot de {C:attention}Joker{} vide",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Magicien{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"{C:attention}1{} {C:attention}Joker{} {C:joy_dark}TÉNÈBRES{}",
				}
			},
			j_joy_shaddoll_elconstruct = {
				name = "{C:joy_fusion}Construction Marionnette de l'Ombre El",
				text = {
					"Envoie {C:attention}#1# {C:joy_normal}\"Marionnette de l'Ombre\"{} au {C:attention}Cimetière{} quand la {C:attention}Blinde{} est choisie",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#2#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"Envoie {C:attention}#1# {C:joy_normal}\"Marionnette de l'Ombre\"{} au {C:attention}Cimetière{} quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Magicien{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"{C:attention}1{} {C:attention}Joker{} {C:joy_light}LUMIÈRE{}",
				}
			},
			j_joy_shaddoll_grysta = {
				name = "{C:joy_fusion}Grysta Marionnette de l'Ombre El",
				text = {
					"Gagne {X:chips,C:white}X#1#{} Jetons pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{} au {C:attention}Cimetière",
					"{C:inactive}(Actuellement: {X:chips,C:white}X#2#{} {C:inactive}Jetons)",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#3#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"Gagne {X:chips,C:white}X#1#{} Jetons pour chaque {C:joy_normal}\"Marionnette de l'Ombre\"{} au {C:attention}Cimetière",
					"{C:inactive}(Actuellement: {X:chips,C:white}X#2#{} {C:inactive}Jetons)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Magicien{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"{C:attention}1{} {C:attention}Joker{} {C:joy_fire}FEU{}",
				}
			},
			j_joy_shaddoll_shekh = {
				name = "{C:joy_fusion}Shekhinaga Marionnette de l'Ombre El",
				text = {
					"Désactive l'effet de chaque {C:attention}Blinde Boss",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"Désactive l'effet de chaque {C:attention}Blinde Boss"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Magicien{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"{C:attention}1{} {C:attention}Joker{} {C:joy_earth}TERRE{}",
				}
			},
			j_joy_shaddoll_wendigo = {
				name = "{C:joy_fusion}Wendigo Marionnette de l'Ombre El",
				text = {
					"Les {C:attention}Jokers{} {C:joy_normal}\"Marionnette de l'Ombre\"{} {C:joy_effect}Flip{} ne se {C:attention}retournent{} pas face verso via leurs",
					"effets et leurs effets {C:joy_effect}FLIP{} s'activent quand la {C:attention}Blinde{} est choisie",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"Les {C:attention}Jokers{} {C:joy_normal}\"Marionnette de l'Ombre\"{} {C:joy_effect}Flip{} ne se {C:attention}retournent{} pas face verso via leurs",
					"effets et leurs effets {C:joy_effect}FLIP{} s'activent quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Magicien{} ou",
					"{C:joy_normal}\"Marionnette de l'Ombre\"{} +",
					"{C:attention}1{} {C:attention}Joker{} {C:joy_wind}VENT{}",
				}
			},
			j_joy_shaddoll_construct = {
				name = "{C:joy_link}Construction Marionnette de l'Ombre",
				text = {
					"Peut être traité comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne cet effet",
					" ",
					"Ajoute {C:attention}#1#{} {C:joy_normal}\"Marionnette de l'Ombre\"{} à l'{C:joy_spell}Extra Deck",
					"quand utilisé comme {C:attention}matériel",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_transfer_ability = {
					"Peut être traité comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_effect}Flip{} ou",
					"{C:attention}Jokers{} face verso"
				}
			},
			j_joy_shaddoll_prison = {
				name = "{C:joy_spell}Malédiction de la Prison de l'Ombre",
				text = {
					"Chaque fois qu'un {C:attention}Joker{} {C:joy_normal}Magicien{} ou {C:joy_effect}Flip{} {C:joy_normal}\"Marionnette de l'Ombre\"{}",
					"est envoyé au {C:attention}Cimetière{}, ajoute {C:attention}#1#{} {C:joy_token}Compteur{} sur cette carte",
					"{C:inactive}(Actuellement: {C:attention}#2#{C:inactive})",
					" ",
					"{C:chips}+#3#{} Jetons pour chaque {C:joy_token}Compteur{}",
					"{C:inactive}(Actuellement: {C:chips}+#4#{C:inactive} Jetons)",
					" ",
					"Vous pouvez retirer {C:attention}#5#{} {C:joy_token}Compteurs{} pour {C:attention}ressusciter #6#{} {C:joy_fusion}Fusion"
				}
			},
			--#endregion
			--#region Paléozoïque
			j_joy_paleo_canadia = {
				name = "{C:joy_trap}Canadia Paléozoïque",
				text = {
					"Gagne {C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} {C:attention}retourné",
					"{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
					"{C:inactive}(Actuellement: {C:mult}+#2# {C:inactive}Mult)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Ressuscite #3#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_dino = {
				name = "{C:joy_trap}Dinomischus Paléozoïque",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}Bannis{} Cette carte et {C:attention}#1#{} autre {C:joy_trap}Piège{} en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde{} et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_eldonia = {
				name = "{C:joy_trap}Eldonia Paléozoïque",
				text = {
					"{C:joy_effect}FLIP{}: {C:chips}+#1#{} Jetons cette manche",
					"et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_hallu = {
				name = "{C:joy_trap}Hallucigenia Paléozoïque",
				text = {
					"{C:joy_effect}FLIP{}: {C:mult}+#1#{} Mult cette manche",
					"et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_lean = {
				name = "{C:joy_trap}Leanchoilia Paléozoïque",
				text = {
					"Gagne {C:chips}+#1#{} Jetons pour chaque {C:attention}Joker{} {C:attention}retourné",
					"{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
					"{C:inactive}(Actuellement: {C:chips}+#2# {C:inactive}Jetons)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Ressuscite #3#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_marrella = {
				name = "{C:joy_trap}Marrella Paléozoïque",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}Ressuscite #1#{} {C:joy_normal}\"Paléozoïque\" ",
					"et envoie {C:attention}#2#{} {C:joy_trap}Piège{} {C:joy_normal}\"Paléozoïque\"{} au {C:attention}Cimetière",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_oleno = {
				name = "{C:joy_trap}Olenoides Paléozoïque",
				text = {
					"{C:joy_effect}FLIP{}: {C:red}+#1#{} Défausse cette manche",
					"et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_pikaia = {
				name = "{C:joy_trap}Pikaia Paléozoïque",
				text = {
					"{C:joy_effect}FLIP{}: {C:attention}+#1#{} cartes en main cette manche",
					"et {C:attention}ressuscite #2#{} {C:joy_normal}\"Paléozoïque\"",
					" ",
					"Ne peut être debuff"
				}
			},
			j_joy_paleo_cambro = {
				name = "{C:joy_link}Cambroraster Paléozoïque",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_xyz}Xyz{} {C:joy_normal}\"Paléozoïque\"{} à l'{C:joy_spell}Extra Deck{} quand invoqué",
					" ",
					"Les {C:joy_normal}\"Paléozoïque\"{} {C:attention}ressuscitent{} les cartes en {C:dark_edition}Négatif",
					" ",
					"Ne peut être debuff"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_normal}\"Paléozoïque\"{}",
				}
			},
			j_joy_paleo_anomalo = {
				name = "{C:joy_xyz}Anomalocaris Paléozoïque",
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}#1#{}: Gagne {X:mult,C:white}X#2#{} Mult cette manche",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Attache {C:attention}#4# {C:joy_xyz}matériel{} à cette carte quand un {C:joy_trap}Piège{} est retourné face recto",
					" ",
					"Ne peut être debuff"
				},
				joy_summon_conditions = {
					"{C:attention}3+{} {C:joy_trap}Pièges{}",
				}
			},
			j_joy_paleo_opa = {
				name = "{C:joy_xyz}Opabinia Paléozoïque",
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}#1#{}: Crée {C:attention}#2#{} {C:joy_normal}\"Paléozoïque\" Main Deck{}",
					" ",
					"Les {C:joy_trap}Pièges{} sont {C:attention}retournés{} face recto quand la {C:attention}Blinde{} est choisie",
					" ",
					"Ne peut être debuff"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} {C:joy_water}EAU{}",
				}
			},
			--#endregion
			--#region Invokhé
			j_joy_invoked_aleister = {
				name = "{C:joy_effect}Aleister l'Invokhateur",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en un {C:joy_normal}\"Invokhé\"",
					"{C:inactive}(Ceci est traitée comme une invocation Fusion)",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9,C:chips}+#2#{} {s:0.9}Jetons pour chaque {s:0.9,C:joy_fusion}Fusion{} {s:0.9}invoquée cette partie"
				},
				joy_transfer_ability = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_fusion}Fusion{} invoquée cette partie",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)"
				}
			},
			j_joy_invoked_madness = {
				name = "{C:joy_link}Aleister l'Invokhateur de la Folie",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en un {C:joy_normal}\"Invokhé\"",
					"{C:inactive}(Ceci est traitée comme une invocation Fusion)",
					" ",
					"Crée {C:attention}#2#{} {C:joy_spell}\"Effondrement Magique\"{} quand utilisé",
					"comme {C:attention}matériel{} pour un {C:joy_fusion}Fusion{}",
					"{C:inactive}(Nécessite de la place)",
					" ",
					"Une {C:joy_fusion}Fusion{} invoquée utilisant cette carte",
					"comme {C:attention}matériel{} gagne l'effet suivant:",
					"{s:0.9,C:mult}+#3#{} {s:0.9}Mult pour chaque {s:0.9,C:joy_fusion}Fusion{} {s:0.9}invoquée cette partie"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{} avec",
					"différents {C:attention}Types",
					"et {C:attention}Attributs"
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_fusion}Fusion{} invoquée cette partie",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_invoked_caliga = {
				name = "{C:joy_fusion}Caliga l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:attention}Joker{} {C:attention}sacrifiés{} cette partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					" ",
					"Réduis le prix des {C:joy_effect}Packs Monstre{} de {C:money}#4#$"
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_dark}TÉNÈBRES",
					"{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
					"{s:0.8,C:inactive}un non-Monstre)"
				},
				joy_transfer_ability = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:attention}sacrifiés{} cette partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Réduis le prix des {C:joy_effect}Packs Monstre{} de {C:money}#3#$"
				}
			},
			j_joy_invoked_raidjin = {
				name = "{C:joy_fusion}Raidjin l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:attention}Joker{} {C:attention}retournés{} cette partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Retourne #4#{} autre {C:attention}Joker{} aléatoire face recto quand la {C:attention}Blinde{} est choisie",
					"{C:attention}Retourne #4#{} autre {C:attention}Joker{} aléatoire face verso en fin de manche",
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_wind}VENT",
					"{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
					"{s:0.8,C:inactive}un non-Monstre)"
				},
				joy_transfer_ability = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:attention}retournés{} cette partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"{C:attention}Retourne #3#{} autre {C:attention}Joker{} aléatoire face recto quand la {C:attention}Blinde{} est choisie",
					"{C:attention}Retourne #3#{} autre {C:attention}Joker{} aléatoire face verso en fin de manche",
				}
			},
			j_joy_invoked_cocytus = {
				name = "{C:joy_fusion}Cocyte l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Reduis les conditions de la {C:attention}Blinde{} de {C:red}#2#%",
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_water}EAU",
					"{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
					"{s:0.8,C:inactive}un non-Monstre)"
				},
				joy_transfer_ability = {
					"Reduis les conditions de la {C:attention}Blinde{} de {C:red}#1#%",
				}
			},
			j_joy_invoked_purgatorio = {
				name = "{C:joy_fusion}Purgatorio l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Chaque {C:joy_fusion}Fusion{} gagne {X:mult,C:white}X#2#{} Mult",
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_fire}FEU",
					"{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
					"{s:0.8,C:inactive}un non-Monstre)"
				},
				joy_transfer_ability = {
					"Chaque {C:joy_fusion}Fusion{} gagne {X:mult,C:white}X#1#{} Mult",
				}
			},
			j_joy_invoked_mage = {
				name = "{C:joy_fusion}Magellanica l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"{C:mult}+#2#{} Mult",
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_earth}TERRE",
					"{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
					"{s:0.8,C:inactive}un non-Monstre)"
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} Mult",
				}
			},
			j_joy_invoked_mechaba = {
				name = "{C:joy_fusion}Mechaba l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Désactive l'effet de la {C:attention}Blinde Boss{} après avoir vendu {C:attention}#2#{} cartes cette manche",
					"{C:inactive}(#3#/#2#)"
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:attention}Joker{} {C:joy_light}LUMIÈRE",
					"{s:0.8,C:inactive}(Chance aléatoire en sacrifiant",
					"{s:0.8,C:inactive}un non-Monstre)"
				},
				joy_transfer_ability = {
					"Désactive l'effet de la {C:attention}Blinde Boss{} après avoir vendu {C:attention}#1#{} cartes cette manche",
					"{C:inactive}(#2#/#1#)"
				}
			},
			j_joy_invoked_augo = {
				name = "{C:joy_fusion}Augoeides l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:joy_fusion}Fusion{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#3#{} {C:inactive}Mult){}",
					" ",
					"Envoie {C:attention}#4#{} {C:joy_fusion}Fusion{} non-{C:joy_normal}\"Invokhé\"{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} {C:joy_fusion}Fusion",
					"{s:0.8,C:inactive}(Remplace les autres conditions)",
				},
				joy_transfer_ability = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:joy_fusion}Fusion{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Envoie {C:attention}#3#{} {C:joy_fusion}Fusion{} non-{C:joy_normal}\"Invokhé\"{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
				}
			},
			j_joy_invoked_elysium = {
				name = "{C:joy_fusion}Elysium l'Invokhé",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} autre {C:attention}Joker",
					"pour {C:attention}transformer{} cette carte en {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Gagne les effets de chaque {C:joy_normal}\"Invokhé\"{} différents au {C:attention}Cimetière{}",
					" ",
					"Traité comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
					"et comme n'importe quel {C:attention}Attribut{} quand possédé"
				},
				joy_summon_conditions = {
					"{C:attention}Sacrifier 1{} invoqué",
					"non-{C:joy_fusion}Fusion",
					"{s:0.8,C:inactive}(Remplace les autres conditions)",
				}
			},
			j_joy_invoked_meltdown = {
				name = "{C:joy_spell}Effondrement Magique",
				text = {
					"Vous pouvez {C:attention}sacrifier #1#{} {C:joy_fusion}Fusions{} pour créer {C:attention}#2#{} {C:joy_effect}\"Aleister l'Invokhateur\"",
					" ",
					"Gagne {X:mult,C:white}X#3#{} Mult pour chaque {C:joy_fusion}Fusion{} invoqué cette partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}",
					" ",
					"Les {C:joy_fusion}Fusions{} ne peuvent pas être retournés ou debuff"
				}
			},
			--#endregion
			--#region Danger!
			j_joy_danger_jack = {
				name = "{C:joy_effect}Danger!? Jackalope?",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque effet de destruction",
					"{C:joy_normal}\"Danger!\"{} activés cette partie,",
					"gagne {C:chips}+#2#{} Jetons quand la {C:attention}Blinde{} est choisie,",
					"{C:inactive}(Actuellement: {C:chips}+#3# {C:inactive}Jetons)",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Crée {C:attention}#4#{} {C:joy_normal}\"Danger!\"",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_danger_tsuch = {
				name = "{C:joy_effect}Danger!? Tsuchinoko?",
				text = {
					"{C:mult}+#1#{} Mult pour chaque effet de destruction",
					"{C:joy_normal}\"Danger!\"{} activés cette partie,",
					"gagne {C:mult}+#2#{} Mult quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Actuellement: {C:mult}+#3# {C:inactive}Mult)",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Crée {C:attention}#4#{} {C:joy_normal}\"Danger!\"",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_danger_chup = {
				name = "{C:joy_effect}Danger! Chupacabra!",
				text = {
					"{C:money}+#1#${} en fin de manche",
					"Augmente de {C:money}#2#{} quand la {C:attention}Blinde{} est choisie",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"{C:attention}Ressuscite #3#{} {C:joy_normal}\"Danger!\"",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}"
				}
			},
			j_joy_danger_moth = {
				name = "{C:joy_effect}Danger! Homme-Papillon!",
				text = {
					"{C:red}+#1#{} Défausses",
					"Augmente de {C:red}#2#{} quand la {C:attention}Blinde{} est choisie",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"{C:attention}Ressuscite #3#{} {C:joy_normal}\"Danger!\"",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}"
				}
			},
			j_joy_danger_dog = {
				name = "{C:joy_effect}Danger! Homme-Chien!",
				text = {
					"Réduis les conditions de la {C:attention}Blinde{} de {C:red}#1#%{}",
					"Augmente de {C:red}#2#%{} quand la {C:attention}Blinde{} est choisie",
					"{s:0.9,C:inactive}(Max. 25%)",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Ajoute {C:attention}#3#{} {C:joy_normal}\"Danger!\"{} au magasin",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}"
				}
			},
			j_joy_danger_ness = {
				name = "{C:joy_effect}Danger! Nessie!",
				text = {
					"{C:attention}+#1#{} cartes en main",
					"Augmente de {C:attention}#2#{} quand la {C:attention}Blinde{} est choisie",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Ajoute {C:attention}#3#{} {C:joy_normal}\"Danger!\"{} au magasin",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}"
				}
			},
			j_joy_danger_big = {
				name = "{C:joy_effect}Danger! Bigfoot!",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque effet de destruction",
					"{C:joy_normal}\"Danger!\"{} activés cette partie,",
					"gagne {X:mult,C:white}X#2#{} Mult quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Détruis tous les autres {C:attention}Jokers{}",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}",
				}
			},
			j_joy_danger_ogo = {
				name = "{C:joy_effect}Danger! Ogopogo!",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}\"Danger!\"{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement: {C:chips}+#2# {C:inactive}Jetons)",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Envoie {C:attention}#3#{} {C:joy_normal}\"Danger!\"{} au {C:attention}Cimetière{}",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}",
					"{C:inactive}(Nécessite de la place){}",
				}
			},
			j_joy_danger_thunder = {
				name = "{C:joy_effect}Danger! Oiseau-Tonnerre!",
				text = {
					"Gagne {X:chips,C:white}X#1#{} Jetons pour chaque effet de destruction",
					"{C:joy_normal}\"Danger!\"{} activés cette partie,",
					"gagne {X:chips,C:white}X#2#{} Jetons quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Actuellement: {X:chips,C:white}X#3#{} {C:inactive}Jetons)",
					" ",
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(cette carte incluse)",
					" ",
					"Détruis {C:attention}#4#{} autre {C:attention}Joker{} et tous les {C:attention}Consommables",
					"quand détruis par un effet {C:joy_normal}\"Danger!\"{}",
				}
			},
			j_joy_danger_realm = {
				name = "{C:joy_spell}Royaume du Danger!",
				text = {
					"Détruis un {C:attention}Joker{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"et gagne {C:money}+#1#${}",
					" ",
					"Les {C:joy_normal}\"Danger!\"{} {C:attention}ressuscitent{} et crée les cartes en {C:dark_edition}Polychrome{}"
				}
			},
			j_joy_danger_disorder = {
				name = "{C:joy_spell}Danger! Troubles! Émeute!",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_normal}\"Danger!\"{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement: {C:mult}+#2# {C:inactive}Mult)",
					" ",
					"Crée {C:attention}#3#{} {C:joy_normal}\"Danger!\"{}",
					"quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Nécessite de la place){}",
					" ",
					"Tous les non-{C:joy_normal}\"Danger!\"{} sont debuff"
				}
			},
			--#endregion
			--#region Adamancipator
			j_joy_adaman_analyzer = {
				name = "Analyseur Inflexcipateur",
			},
			j_joy_adaman_researcher = {
				name = "Rechercheuse Inflexcipateur",
			},
			j_joy_adaman_seeker = {
				name = "Chercheur Inflexcipateur",
			},
			j_joy_adaman_crysdragite = {
				name = "Cristal Inflexcipateur - Dragite",
			},
			j_joy_adaman_crysraptite = {
				name = "Cristal Inflexcipateur - Raptite",
			},
			j_joy_adaman_crysleonite = {
				name = "Cristal Inflexcipateur - Lionite",
			},
			j_joy_adaman_dragite = {
				name = "Éveillé Inflexcipateur - Dragite",
			},
			j_joy_adaman_leonite = {
				name = "Éveillé Inflexcipateur - Lionite",
			},
			j_joy_adaman_raptite = {
				name = "Éveillé Inflexcipateur - Raptite",
			},
			j_joy_adaman_laputite = {
				name = "Laputite Inflexcipateur",
			},
			--#endregion
			--#region Free Agents
			--#region Effect
			j_joy_boarder = {
				name = "{C:joy_effect}Boarder Inspecteur",
				text = {
					"{X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{}",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
					" ",
					"Les {C:blue}Mains{} sont égal aux types d'{C:joy_spell}Extra Deck{} possédés + 1",
					"Pas de types de mains répétés",
					"Les {C:attention}Jokers{} {C:joy_normal}Main Deck{} sont debuff",
					"{C:inactive}(Excepté{} {C:joy_effect}\"Boarder Inspecteur\"{}{C:inactive}){}"
				},
			},
			j_joy_grenmaju = {
				name = "{C:joy_effect}Gren Maju Da Eiza",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque carte",
					"{C:attention}bannis{} cette partie",
					"{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
				},
			},
			j_joy_rhino = {
				name = "{C:joy_effect}Guerrier Rhino Démoniaque",
				text = {
					"Envoie {C:attention}#1#{} {C:joy_normal}Démons{} au {C:attention}Cimetière{} et",
					"{C:attention}ressuscite #2#{} {C:joy_normal}Démon{} quand utilisé",
					"comme {C:attention}matériel{}",
				}
			},
			j_joy_tourguide = {
				name = "{C:joy_effect}Guide des Enfers",
				text = {
					"Crée {C:attention}#1#{} {C:joy_normal}Démon{} {C:joy_normal}Main Deck{}",
					"{C:blue}Commun{} ou {C:green}Peu Commun{} {C:dark_edition}Négatif{} quand obtenu",
				}
			},
			j_joy_heavenlyprison = {
				name = "{C:joy_effect}Seigneur de la Prison Divine",
				text = {
					"{X:mult,C:white}X#1#{} Mult,",
					"gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:joy_trap}Piège",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
					" ",
					"Les {C:joy_trap}Pièges{} ne se {C:attention}retournent{} pas face verso d'eux mêmes",
					"et leurs effets {C:joy_effect}FLIP{} s'activent quand la {C:attention}Blinde{} est choisie",
				}
			},
			j_joy_backup = {
				name = "{C:joy_effect}Secrétaire de Sauvegarde",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_normal}Cyberse{} à l'{C:joy_spell}Extra Deck{} quand utilisé comme {C:attention}matériel{}",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_wizard = {
				name = "{C:joy_effect}Sorcier Cyberse",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}Cyberse{}",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
					" ",
					"Gratuit si vous possédez un {C:joy_normal}Cyberse{}"
				}
			},
			j_joy_formud = {
				name = "{C:joy_effect}Périophormat",
				text = {
					"Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
					" ",
					"Crée {C:attention}#1#{} {C:joy_normal}Cyberse{} {C:joy_normal}Main Deck{} {C:red}Rare{}",
					"quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
					"{C:inactive}(Nécessite de la place)"
				}
			},
			j_joy_procession = {
				name = "{C:joy_effect}Procession de la Jarre de Thé",
				text = {
					"Chaque {C:attention}Joker{} face verso gagne {X:mult,C:white}X#1#{} Mult",
					" ",
					"{C:attention}Retourne{} tous les {C:attention}Jokers{} face verso quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Excepté \"Procession de la Jarre de Thé\"){}"
				}
			},
			j_joy_darkcat = {
				name = "{C:joy_effect}Chat Noir à Queue Blanche",
				text = {
					"{C:mult}+#1#{} Mult",
					" ",
					"{C:joy_effect}FLIP{}: Ajoute {C:attention}#2#{} {C:attention}2{} {C:attention}Chance{} {C:dark_edition}Négatif{} dans le deck"
				}
			},
			j_joy_dekoichi = {
				name = "{C:joy_effect}Dekoichi, la Locomotive de Guerre Enchantée",
				text = {
					"{C:mult}+#1#{} Mult,",
					"{C:mult}+#2#{} pour chaque {C:attention}Joker{} {C:joy_normal}Normal{}",
					"{C:inactive}(Actuellement: {C:mult}+#3#{}{C:inactive} Mult)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}+#4#{} cartes en main cette manche,",
					"{C:attention}+#5#{} pour chaque {C:attention}Joker{} {C:joy_normal}Normal{} puis",
					"crée {C:attention}#6#{} {C:joy_normal}\"Bokoichi, le Wagon de Terreur\"{} {C:dark_edition}Négatif{}"
				}
			},
			j_joy_bokoichi = {
				name = "{C:joy_normal}Bokoichi, le Wagon de Terreur",
				text = {
					"{E:1}Un wagon terrifiant à l'usage exclusif de Dekoichi, capable de{}",
					"{E:1}tout transporter, mais dont peu de marchandises arrivent indemmes.{}",
				}
			},
			j_joy_desertapir = {
				name = "{C:joy_effect}Désertapir",
				text = {
					"{C:money}+#1#${} en fin de manche",
					" ",
					"{C:joy_effect}FLIP{}: Retourne {C:attention}#2#{} {C:attention}Jokers{} aléatoires face recto"
				}
			},
			j_joy_searchlight = {
				name = "{C:joy_effect}Homme-Projecteur",
				text = {
					"{C:mult}+#1#{} Mult,",
					"gagne {C:mult}+#2#{} Mult pour chaque {C:attention}Joker{} {C:attention}retourné{} face recto",
					"{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
					"{C:inactive}(Actuellement: {C:mult}+#3# {C:inactive}Mult)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Retourne{} tous les autres {C:attention}Jokers{} face recto",
					" ",
					"{C:green}#4# chance sur #5#{} chance de se {C:attention}retourner{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_sternmystic = {
				name = "{C:joy_effect}Le Verso Mystique",
				text = {
					"{C:chips}+#1#{} Jetons,",
					"gagne {C:chips}+#2#{} Jetons pour chaque carte à jouer {C:attention}retournée{}",
					"{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
					"{C:inactive}(Actuellement: {C:chips}+#3# {C:inactive}Jetons)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Retourne{} toutes les cartes en main",
					" ",
					"{C:green}#4# chance sur #5#{} de {C:attention}se retourner{} quand la {C:attention}Blinde{} est choisie"
				}
			},
			j_joy_mof = {
				name = "{C:joy_effect}Magicien de la Foi",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_spell}Magie de Terrain{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)",
					" ",
					"{C:joy_effect}FLIP{}: Crée {C:attention}#3#{} copie {C:dark_edition}Négatif{} d'une {C:joy_spell}Magie de Terrain{} au {C:attention}Cimetière{}",
				}
			},
			j_joy_mask = {
				name = "{C:joy_effect}Masque des Ténèbres",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_trap}Piège{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"{C:joy_effect}FLIP{}: {C:attention}Ressuscite #3#{} {C:joy_trap}Piège{}"
				}
			},
			j_joy_angraecum = {
				name = "{C:joy_effect}Parapluie Angraecum",
				text = {
					"{C:attention}Ressuscite #1#{} non-{C:joy_synchro}Syntoniseur{} en {C:dark_edition}Négatif{} et debuff",
					"et ajoute {C:attention}#2#{} {C:joy_synchro}Synchro{} au magasin quand obtenu",
				}
			},
			j_joy_eater = {
				name = "{C:joy_effect}Mangeur des Millions",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult chaque fois qu'un {C:attention}Joker{} {C:joy_spell}Extra Deck{} est banni",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
					" ",
					"{C:attention}Bannis #3#{} {C:attention}Joker{} {C:joy_spell}Extra Deck{} non-debuff en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde Boss{}"
				}
			},
			j_joy_miradora = {
				name = "{C:joy_effect}Zéphyr Céleste - Miradora",
				text = {
					"Debuff et change {C:attention}#1#{} {C:attention}Joker{}",
					"{C:joy_spell}Extra Deck{} aléatoire en {C:dark_edition}Négatif{} quand obtenu",
					" ",
					"Chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
					"gagne {X:mult,C:white}X#2#{} Mult"
				}
			},
			j_joy_beautunaful = {
				name = "{C:joy_effect}Princesse Jolithon",
				text = {
					"Crée {C:attention}#1#{} {C:joy_normal}Poisson{} quand obtenu",
					"ou retourne du {C:attention}banissement{}",
					"{C:inactive}(Nécessite de la place)"
				}
			},
			j_joy_leaffish = {
				name = "{C:joy_effect}Poisson Feuille Inerte",
				text = {
					"Envoie {C:attention}#1#{} {C:joy_normal}Poisson Main Deck{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Vendez cette carte pour {C:attention}ressusciter #2#{} {C:joy_normal}Poisson{}",
					"{C:inactive}(Excepté \"Poisson Feuille Inerte\"){}"
				}
			},
			j_joy_ringowurm = {
				name = "{C:joy_effect}Ringowurm, le Dragon Protecteur des Cent Pommes",
				text = {
					"Crée {C:attention}#1#{} {C:joy_token}\"Jeton Cent Pommes\"{} {C:joy_synchro}Syntoniseur{} {C:dark_edition}Négatif{}",
					"quand utilisé comme {C:attention}matériel{} pour un {C:joy_synchro}Synchro{}",
					" ",
					"Gratuit si vous possédez un {C:attention}Joker{} non-{C:joy_effect}Effet{}"
				}
			},
			j_joy_token_ringo = {
				name = "{C:joy_token}Jeton Cent Pommes",
				text = {
					"Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
				}
			},
			j_joy_stormshooter = {
				name = "{C:joy_effect}Tireur de la Tempête",
				text = {
					"Crée autant de {C:planet}Planète{} de la main marquée que possible si",
					"une carte ne marquant pas est jouée dans la {C:attention}colonne{} de cette carte",
					"Cette carte doit être dans la {C:attention}column #1#{} pour utiliser cet effet",
					"{C:inactive}(Change à chaque manche){}",
					"{C:inactive}(Actuellement: en {C:attention}colonne #2#{}{C:inactive})",
				}
			},
			j_joy_ghostbird = {
				name = "{C:joy_effect}Oiseau Fantôme de l'Enchantement",
				text = {
					"Les cartes à jouer dans cette {C:attention}colonne{} sont détruites après avoir",
					"marqué des points {C:inactive}(Actuellement: en {C:attention}colonne #1#{}{C:inactive})",
					" ",
					"Obtiens les effets suivant la {C:attention}colonne{}",
					"{V:1}1: Les cartes marquants dans cette {C:attention}colonne{} {V:1}gagnent {C:chips}+#2#{} {V:1}Jetons{}",
					"{V:1}et ne sont pas détruites par l'effet de cette carte",
					"{V:2}3: Redéclenche les cartes marquants dans cette {C:attention}colonne{V:2} deux fois",
					"{V:3}5: Les cartes de cette {C:attention}colonne{} {V:3}comptent dans les points{}",
				}
			},
			j_joy_tiamaton = {
				name = "{C:joy_effect}Tiamaton Dragon de Fer",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque carte à jouer détruites",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{}{C:inactive} Mult)",
					" ",
					"Les cartes à jouer dans cette {C:attention}colonne{} sont détruites après avoir",
					"marqué des points {C:inactive}(Toutes si la colonne est de 6+)",
					"{C:inactive}(Actuellement: en {C:attention}colonne #3#{}{C:inactive})",
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
			--#region Piège
			j_joy_quantumcat = {
				name = "{C:joy_trap}Chat Quantique",
				text = {
					"{C:chips}+#1#{} Jetons",
					" ",
					"Traité comme n'importe quel {C:attention}Type{} et comme n'importe quel {C:attention}Attribut{} quand possédé"
				}
			},
			j_joy_anguish = {
				name = "{C:joy_trap}Statue de Motif d'Angoisse",
				text = {
					"{C:joy_effect}FLIP{}: {C:money}+#1#${} pour chaque {C:joy_trap}Piège",
					" ",
					"Les {C:joy_trap}Pièges{} ne peuvent pas être debuff",
					"{C:inactive}(Même si face verso)"
				}
			},
			j_joy_tiki_curse = {
				name = "{C:joy_trap}Malédiction Tiki",
				text = {
					"{C:chips}+#1#{} Jetons pour chaque {C:joy_trap}Piège",
					"{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)"
				}
			},
			j_joy_tiki_soul = {
				name = "{C:joy_trap}Âme Tiki",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_trap}Piège",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_zoma = {
				name = "{C:joy_trap}Spectre Zoma",
				text = {
					"Vendez cette carte pour baisser les conditions de la {C:attention}Blinde{} de {C:red}#1#%",
					"par fois ou cette carte a été {C:attention}retournée{} face recto",
					"{C:inactive}(Actuellement: {C:red}#2#%{}{C:inactive})"
				}
			},
			j_joy_zoma_earthbound = {
				name = "{C:joy_trap}Spectre Esprit de la Terre Zoma",
				text = {
					"{C:mult}+#1#{} Mult par fois ou cette carte a été {C:attention}retournée{} face recto",
					"{C:inactive}(Actuellement: {C:mult}+#2#{} {C:inactive}Mult)",
					" ",
					"Vendez cette carte pour baisser les conditions de la {C:attention}Blinde{} de {C:red}#3#%",
					"par fois ou cette carte a été {C:attention}retournée{} face recto",
					"{C:inactive}(Actuellement: {C:red}#4#%{}{C:inactive})"
				}
			},
			j_joy_finished = {
				name = "{C:joy_trap}C'En Est Fini",
				text = {
					"{X:mult,C:white}X#1#{} Mult si vous possédez {C:attention}#1# Jokers{} ou plus",
					" ",
					"Vous pouvez {C:attention}sacrifier{} cette carte et",
					"tous les autres {C:attention}Jokers{} pour gagner la {C:attention}Blinde{} actuelle"
				}
			},
			j_joy_apophis = {
				name = "{C:joy_trap}L'Incarnation d'Apophis",
				text = {
					"{C:mult}+#1#{} Mult"
				}
			},
			j_joy_azurune = {
				name = "{C:joy_trap}Statue d'Ange - Azurune",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque",
					"{C:attention}Joker{} invoqué cette partie",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)"
				}
			},
			j_joy_crukra = {
				name = "{C:joy_trap}Krawler Croisédia",
				text = {
					"Chaque {C:joy_link}Lien{} gagne {X:mult,C:white}X#1#{} Mult",
				}
			},
			--#endregion
			--#region Pendule
			--#region Pendule Normal
			j_joy_foucault = {
				name = "{C:joy_pendulum_normal}Canon de Foucault",
				joy_consumable = {
					"Crée autant de {C:planet}Planète Terre{} que possible",
					"{C:inactive}(Nécessite de la place)"
				},
				text = {
					"{E:1}Une forme de vie mécanisée, errant à travers l'espace-temps.{}",
					"{E:1}Étrangement, elle semble avoir presque perdu tou... sa mémoi...{}",
					"{E:1}P...ur que...lle raison ? Refu... elle d'interf... avec ??{}",
				}
			},
			--#endregion
			--#region Pendule Effect
			j_joy_eccentrick = {
				name = "{C:joy_pendulum_effect}Eccentrick Archdémon",
				joy_consumable = {
					"Détruis jusqu'à {C:attention}#1#{} cartes choisies",
				},
				text = {
					"{C:mult}+#2#{} Mult pour chaque carte à jouer détruite cette partie",
					"{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
				},
			},
			j_joy_pendulumoon = {
				name = "{C:joy_pendulum_effect}PenduLeLune",
				joy_consumable = {
					"{C:attention}Ressuscite #1#{} {C:joy_pendulum}Pendule{} en {C:dark_edition}Négatif",
				},
				text = {
					"Envoie {C:attention}#2#{} {C:joy_pendulum}Pendule{} au {C:attention}Cimetière{}",
					"quand la {C:attention}Blinde{} est choisie",
					" ",
					"Ne peut pas être {C:attention}ressuscité{}",
				},
			},
			j_joy_pandora = {
				name = "{C:joy_pendulum_effect}Boîte à Bijoux de Pandore",
				joy_consumable = {
					"Donne une {C:dark_edition}Edition{} aléatoire à un {C:joy_pendulum}Pendule{} aléatoire"
				},
				text = {
					"{C:blue}+#1#{} Mains quand la {C:attention}Blinde{} est choisie",
					"si vous n'avez pas de carte dans l'{C:joy_spell}Extra Deck{}"
				}
			},
			j_joy_anchamoufrite = {
				name = "{C:joy_pendulum_effect}Anachouflagrète",
				joy_consumable = {
					"Pendant une {C:attention}Blinde{}, pioche {C:attention}#1#{} cartes en plus"
				},
				text = {
					"{C:attention}+#2#{} cartes en main quand la {C:attention}Blinde{} est choisie",
					"si vous n'avez pas de carte dans l'{C:joy_spell}Extra Deck{}"
				}
			},
			j_joy_zany = {
				name = "{C:joy_pendulum_effect}Zèbre Zinzin",
				joy_consumable = {
					"Si vous possédez {C:attention}#1# Jokers{} ou moins (après utilisation),",
					"perdez {C:red}#2#{} slots de {C:attention}Joker{} et",
					"donnez a vos {C:attention}Jokers{} {C:dark_edition}Polychrome{}"
				},
				text = {
					"{X:mult,C:white}X#3#{} Mult si vous possédez {C:attention}#1# Jokers{} ou moins"
				}
			},
			j_joy_pendulumucho = {
				name = "{C:joy_pendulum_effect}Pendulemucho",
				joy_consumable = {
					"{C:attention}Ressuscite #1#{} {C:joy_pendulum}Pendule{}",
				},
				text = {
					"{C:attention}Ressuscite #2#{} {C:joy_pendulum}Pendule{} quand obtenu",
					" ",
					"Ne peut pas être {C:attention}ressuscité{}",
				}
			},
			j_joy_moissa = {
				name = "{C:joy_pendulum_effect}Chevalier Moissa, le Général des Comètes",
				joy_consumable = {
					"Ajoute {C:attention}#1#{} {C:joy_pendulum}Pendule{} au magasin"
				},
				text = {
					"Gagne {C:chips}+#2#{} Jetons pour chaque {C:joy_pendulum}Pendule{} acheté",
					"{C:inactive}(Actuellement: {C:chips}+#3#{}{C:inactive} Jetons)"
				}
			},
			j_joy_pmcaptor = {
				name = "{C:joy_pendulum_effect}P.E. Ravisseur",
				joy_consumable = {
					"{C:attention}Ressuscite #1#{} {C:joy_pendulum}Pendule{}",
					"{C:inactive}(Excepté \"P.E. Ravisseur\"){}"
				},
				text = {
					"Les {C:joy_normal}Zombies{} ne peuvent pas être debuff",
					"Les {C:joy_normal}Zombies{} Non-{C:joy_trap}Piège{} ne peuvent pas être {C:attention}retournés{}"
				}
			},
			j_joy_metrognome = {
				name = "{C:joy_pendulum_effect}Métrognome",
				joy_consumable = {
					"Crée {C:attention}#1#{} {C:joy_pendulum}Pendule{} de la rareté la plus possédée",
					"{C:inactive}(Nécessite de la place) (Aléatoire si égalité)"
				},
				text = {
					"Chaque {C:joy_pendulum}Pendule{} partageant la",
					"même rareté gagne {C:mult}+#2#{} Mult"
				}
			},
			j_joy_bozu = {
				name = "{C:joy_pendulum_effect}Pluie Bozu",
				joy_consumable = {
					"Un {C:attention}Joker{} {C:joy_normal}Monstre{} aléatoire gagne",
					"les Jetons et Mult actuelle de cette carte"
				},
				text = {
					"Gagne {C:chips}+#1#{} Jetons pour chaque carte dans l'{C:joy_spell}Extra Deck{}",
					"et {C:mult}+#2#{} Mult pour chaque slot d'{C:joy_spell}Extra Deck{} vide",
					"quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Actuellement: {C:chips}+#3#{}{C:inactive} Jetons et {C:mult}+#4#{} {C:inactive}Mult)"
				},
				joy_transfer_ability = {
					"{C:chips}+#1#{} Jetons {C:mult}+#2#{} Mult",
				}
			},
			j_joy_disablaster = {
				name = "{C:joy_pendulum_effect}Annulexplosion la Forteresse de Négation",
				joy_consumable = {
					"{C:money}+#1#${} pour chaque effet de ce {C:attention}Joker{}",
					"augmentant le Mult",
					"{C:inactive}(Actuellement: {C:money}+$#2#{}{C:inactive})"
				},
				text = {
					"{X:mult,C:white}X#3#{} Mult si aucune carte n'est jouée dans cette {C:attention}colonne{}",
					"{C:inactive}(Baisse selon la colonne)",
					"{C:inactive}(Actuellement: en {C:attention}colonne #4#{}{C:inactive})",
				}
			},
			--#endregion
			--#region Pendule Fusion
			j_joy_couverture = {
				name = "{C:joy_pendulum_fusion}Couverture Patissciel",
				joy_consumable = {
					"Crée {C:attention}#1#{} {C:joy_pendulum}Pendule{} {C:red}Rare{}",
					"{C:inactive}(Nécessite de la place)"
				},
				text = {
					"Ajoute {C:attention}#2#{} {C:joy_pendulum_fusion}\"Couverture Patissciel\"{}",
					"à l'{C:joy_spell}Extra Deck{} si cette carte est consommé",
					"{C:inactive}(Nécessite de la place)"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_pendulum}Pendule{}"
				}
			},
			--#endregion
			--#region Pendule Synchro
			j_joy_nirvana = {
				name = "{C:joy_pendulum_synchro}Grand Paladin Nirvana",
				joy_consumable = {
					"Tous les {C:joy_pendulum}Pendules{} deviennent {C:dark_edition}Polychrome{}"
				},
				text = {
					"Chaque {C:joy_pendulum}Pendule{} gagne {X:mult,C:white}X#1#{} Mult"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} non-{C:joy_synchro}Syntoniseur Synchro",
				}
			},
			--#endregion
			--#region Pendule Xyz
			j_joy_ooze = {
				name = "{C:joy_pendulum_xyz}Daidaratant le Géant Visqueux",
				joy_consumable = {
					"Attache {C:attention}#1# matériels{} à un {C:joy_xyz}Xyz{} aléatoire"
				},
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}#2#{}: {C:attention}Ressuscite #3#{} {C:joy_pendulum}Pendule{} en {C:dark_edition}Négatif{}"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:joy_pendulum}Pendule{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive})"
				}
			},
			--#endregion
			--#endregion
			--#region Rituel
			j_joy_sauravis = {
				name = "{C:joy_ritual}Sauravis, l'Ancien et Ascensionné",
				text = {
					"Vendez cette carte pour désactiver la",
					"{C:attention}Blinde Boss{} et l'ajouter",
					"au prochain magasin",
					" ",
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque",
					"activation de cette effet cette partie",
					"{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{}",
				}
			},
			j_joy_lycanthrope = {
				name = "{C:joy_ritual}Lycanthrope",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} {C:joy_normal}Normal{} possédé ou au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{}",
					"OU {C:attention}1{} {C:attention}Joker{} {C:joy_normal}Normal",
				}
			},
			--#endregion
			--#region Fusion
			j_joy_mudragon = {
				name = "{C:joy_fusion}Boudragon des Marais",
				text = {
					"Traité comme n'importe quel {C:attention}matériel{} pour une {C:joy_fusion}Fusion",
					"et comme n'importe quel {C:attention}Attribut{} quand possédé"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{} de raretés différentes",
				}
			},
			j_joy_garura = {
				name = "{C:joy_fusion}Garura, Ailes de la Vie Retentissante",
				text = {
					"{C:attention}+#1#{} cartes en main",
					" ",
					"Gagne de manière permanente {C:attention}+#2#{} cartes en main",
					"si utilisé comme {C:attention}matériel{}"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{} de même rareté",
					"mais de noms différents",
				}
			},
			--#endregion
			--#region Synchro
			j_joy_firewall_saber = {
				name = "{C:joy_synchro}Dragon Sabre Pare-Feu",
				text = {
					"{C:attention}Ressuscite #1#{} {C:joy_normal}Cyberse{} {C:joy_spell}Extra Deck{} en {C:dark_edition}Négatif{} quand invoqué",
					" ",
					"Crée {C:attention}#2#{} {C:spectral}Spectral{} {C:dark_edition}Négatif{} quand utilisé comme {C:attention}matériel{} pour un {C:joy_link}Lien"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} {C:joy_normal}Cyberse{} +",
					"{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},

			j_joy_bishbaalkin = {
				name = "{C:joy_synchro}Seigneur Fantasmatique Bishbaalkin Ultimitl",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} non-debuff ",
					"{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"Détruis tous les autres {C:attention}Jokers{} non-{C:joy_token}Jeton{} non-debuff",
					"en fin de manche et crée le même nombre de",
					"{C:joy_token}\"Jetons Utchatzimime\"{} en {C:dark_edition}Négatif{}",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} {C:red}Rare{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_token_utchatzimime = {
				name = "{C:joy_token}Jeton Utchatzimime",
				text = {
					"Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
				}
			},
			j_joy_fishlamp = {
				name = "{C:joy_synchro}Poisson-Lampe",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_synchro}Synchro{} {C:joy_normal}Poisson{} à l'{C:joy_spell}Extra Deck{}",
					"quand utilisé comme {C:attention}matériel{} et crée jusqu'à {C:attention}#2#{}",
					"{C:joy_token}\"Jetons Lampe\"{} pouvant être traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
					"{C:inactive}(Nécessite de la place)",
					" ",
					"Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			j_joy_token_lamp = {
				name = "{C:joy_token}Jeton Lampe",
				text = {
					"Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
					" ",
					"Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
				}
			},
			j_joy_afd = {
				name = "{C:joy_synchro}Ancien Dragon Féerique",
				text = {
					"Crée {C:attention}#1#{} {C:joy_synchro}Syntoniseur{} quand invoqué",
					"{C:inactive}(Nécessite de la place)",
					" ",
					"Détruis {C:attention}#2#{} {C:joy_spell}Magie de Terrain{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"pour gagner {C:money}+#3#${} puis crée {C:attention}#2#{} {C:joy_spell}Magie de Terrain",
					"{C:inactive}(Nécessite de la place)",
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
					"{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
				}
			},
			--#endregion
			--#region Xyz
			j_joy_zeus = {
				name = "{C:joy_xyz}Arsenal Divin AA-ZEUS - Tonnerre du Ciel",
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}#1#{}: Réduis les conditions de la {C:attention}Blinde{} actuelle de {C:red}#2#%",
					"mais retire toute les améliorations du deck"
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:attention}Jokers{} {C:red}Rare{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{} {s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})",
					"OU {C:attention}1{} {C:joy_xyz}Xyz{} ayant détaché",
					"un {C:attention}matériel{} cette manche",
					"{s:0.9,C:inactive}(Transférez ses matériels)"
				}
			},
			j_joy_typhon = {
				name = "{C:joy_xyz}Super Tueur des Étoiles TY-PHON - Crise Céleste",
				text = {
					"{C:joy_xyz}Détacher{} {C:attention}#1#{}: Change chaque carte marquant des points cette",
					"manche en {C:attention}Sceau Rouge{} {C:dark_edition}Polychrome{} {C:attention}Verre{}",
					"mais réduis l'{C:money}argent{} de {C:red}#2#%{}"
				},
				joy_summon_conditions = {
					"{C:attention}2+{} {C:attention}Jokers{} {C:red}Rare{}",
					"{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{} {s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})",
					"OU {C:attention}1{} {C:attention}Joker{} si {C:attention}2{} {C:attention}Jokers{}",
					"ou plus ont été invoqués cette manche"
				}
			},
			--#endregion
			--#region Lien
			j_joy_apollousa = {
				name = "{C:joy_link}Apollousa, Arc de la Déesse",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:attention}matériel{}",
					"utilisé pour son invocation, réduis de {C:red}#2#{} à chaque manche",
					"{C:inactive}(Actuellement:{} {C:mult}+#3#{} {C:inactive}Mult){}",
				},
				joy_summon_conditions = {
					"{C:attention}2+ Jokers{} de noms différents",
				}
			},
			j_joy_beyond = {
				name = "{C:joy_link}Au-Delà du Pendule",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_pendulum}Pendule{}",
					"consommé cette partie",
					"{C:inactive}(Actuellement:{} {C:mult}+#2#{} {C:inactive}Mult){}",
					" ",
					"Crée {C:attention}#3#{} {C:joy_pendulum}Pendule{} après en avoir consommé {C:attention}#4#{}",
					"{C:inactive}(#5#/#4#) (Nécessite de la place)"
				},
				joy_summon_conditions = {
					"{C:attention}2 Jokers{},",
					"un {C:joy_pendulum}Pendule inclus"
				}
			},
			j_joy_exceed = {
				name = "{C:joy_link}Dépassement du Pendule",
				text = {
					"Gagne {X:mult,C:white}X#1#{} Mult pour chaque {C:joy_pendulum}Pendules{} consommés cette partie",
					"{C:inactive}(Actuellement: {X:mult,C:white}X#2#{}{C:inactive} Mult)",
					" ",
					"Crée {C:attention}#3#{} {C:joy_pendulum}Pendule{} {C:joy_normal}Main Deck{} {C:dark_edition}Négatif{}",
					"La première fois que la {C:attention}Blinde Boss{} est vaincue"
				},
				joy_summon_conditions = {
					"{C:attention}3 Jokers{},",
					"un {C:joy_pendulum}Pendule inclus"
				}
			},
			j_joy_linkuriboh = {
				name = "{C:joy_link}Lienkuriboh",
				text = {
					"Vendez cette carte pour désactiver la {C:attention}Blinde Boss{}",
					"mais fixe l'{C:money}argent{} à {C:money}0$"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:attention}Joker{} {C:blue}Commun{}",
				}
			},
			j_joy_linguriboh = {
				name = "{C:joy_link}Linguriboh",
				text = {
					"Vendez cette carte pour désactiver la {C:attention}Blinde Boss{}",
					"mais réduis les cartes en main de {C:attention}#1#{} si n'est pas invoqué",
					"en utilisant un {C:joy_normal}\"@Ignister\"{} comme {C:attention}matériel"
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_normal}Cyberse",
				}
			},
			j_joy_ipmasq = {
				name = "{C:joy_link}I:P Masquerena",
				text = {
					"{C:attention}Se transforme{} en un {C:joy_link}Lien{} aléatoire quand la {C:attention}Blinde{} est choisie",
					"{C:inactive}(Ceci est traité comme une invocation Lien avec 2 Matériels){}",
					"Un {C:joy_link}Lien{} invoqué de cette façon gagne cet effet:",
					"{s:0.9,C:attention}Se transforme{s:0.9} en {s:0.9,C:joy_link}\"I:P Masquerena\"{s:0.9} en fin de manche"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} à {C:joy_effect}Effet",
				},
				joy_transfer_ability = {
					"{C:attention}Se transforme{} en {C:joy_link}\"I:P Masquerena\"{} en fin de manche",
				}
			},
			j_joy_spknight = {
				name = "{C:joy_link}S:P Petite Chevaleresse",
				text = {
					"Se {C:attention}Bannis{} avec {C:attention}#1#{} autre {C:attention}Joker{}",
					"en fin de manche jusqu'à la prochaine {C:attention}Blinde Boss{}",
					"OU jusqu'à la prochaine {C:attention}Blinde{} si invoqué",
					"en utilisant {C:attention}2{} {C:attention}Jokers{} {C:joy_spell}Extra Deck{} comme {C:attention}matériel{}"
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{} à {C:joy_effect}Effet",
				}
			},
			j_joy_progleo = {
				name = "{C:joy_link}Proglion",
				text = {
					"{C:attention}Bannis #1#{} {C:attention}Joker{} adjacent en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde Boss{}",
				},
				joy_summon_conditions = {
					"{C:attention}2{} {C:attention}Jokers{},",
					"{C:joy_token}Jetons exclus"
				}
			},
			j_joy_raster = {
				name = "{C:joy_link}Ligretrame",
				text = {
					"{C:mult}+#1#{} Mult pour chaque {C:joy_link}Lien{} au {C:attention}Cimetière{}",
					"{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"Vous pouvez {C:attention}sacrifier{} tous les autres {C:attention}Jokers{}",
					"pour réduire les conditions de la {C:attention}Blinde{} de {C:red}#3#%{} par Joker"
				},
				joy_summon_conditions = {
					"{C:attention}4{} {C:attention}Jokers{},",
					"{C:joy_token}Jetons exclus"
				}
			},
			--#endregion
			--#region Magie de Terrain
			j_joy_chickengame = {
				name = "{C:joy_spell}Jeu de la Poule Mouillée",
				text = {
					"Vous pouvez augmenter les conditions de la {C:attention}Blinde{} de {C:red}#1#%",
					"afin de gagner {C:blue}+#2#{} Mains et {C:red}+#3#{} Défausses cette manche"
				}
			},
			j_joy_fusiongate = {
				name = "{C:joy_spell}Portail de Fusion",
				text = {
					"Ajoute {C:attention}#1#{} {C:joy_fusion}Fusion{} un l'{C:joy_spell}Extra Deck{}",
					"quand la {C:attention}Blinde Boss{} est vaincue"
				}
			},
			j_joy_xyzterritory = {
				name = "{C:joy_spell}Territoire Xyz",
				text = {
					"Gagne {C:mult}+#1#{} Mult pour chaque {C:joy_xyz}Xyz{} possédés en fin de manche",
					"{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
					" ",
					"{C:money}+#3#${} quand un {C:attention}matériel{} est {C:joy_xyz}détaché{}"
				}
			},
			j_joy_xyzoverride = {
				name = "{C:joy_spell}Substitution Xyz",
				text = {
					"Une fois par manche, vous pouvez {C:attention}sacrifier #1#{} {C:attention}Joker{}",
					"afin d'attacher {C:attention}#2# matériel{} un chaque {C:joy_xyz}Xyz{}"
				}
			},
			j_joy_summonbreaker = {
				name = "{C:joy_spell}Briseur d'Invocation",
				text = {
					"Le troisième {C:attention}Joker{} invoqué cette manche devient {C:dark_edition}Négatif{}",
					"mais cette carte est détruite {C:inactive}(#1#/#2#){}"
				}
			},
			j_joy_extranet = {
				name = "{C:joy_spell}Extra Filet",
				text = {
					"{C:attention}+#1#{} carte en main pour chaque {C:attention}Joker{} invoqué cette manche",
				}
			},
			j_joy_futurevisions = {
				name = "{C:joy_spell}Vision du Futur",
				text = {
					"{C:attention}Bannis #1#{} {C:attention}Joker{} {C:joy_normal}Main Deck{} aléatoire en fin de manche",
					"jusqu'à la prochaine {C:attention}Blinde Boss{}"
				}
			},
			j_joy_midbreaker = {
				name = "{C:joy_spell}Champ Magique de Mi-Destruction",
				text = {
					"Chaque {C:attention}Jokers{} gagnent {X:mult,C:white}X#1#{} Mult",
					"et ne peuvent pas être debuff ou {C:attention}retournés{}",
					"durant une {C:attention}Blinde Boss{}",
					" ",
					"Les {C:attention}Jokers{} sont {C:attention}retournées{} face verso quand une {C:attention}Petite Blinde{} ou {C:attention}Grosse Blinde{} sont choisis",
					"et {C:attention}retournés{} face recto en fin de manche"
				}
			},
			--#endregion
			--#endregion
		},
		Tag = {
			tag_joy_booster = {
				name = "Badge Booster",
				text = {
					"Ajoute un {C:booster}Booster",
					"au prochain magasin",
				},
			},
			tag_joy_monster = {
				name = "Badge Monstre",
				text = {
					"Ajoute un",
					"{V:1}#1#{}",
					"au magasin"
				},
			},
		},
		Planet = {
			c_joy_cursed_eldland = {
				name = "{C:joy_spell}Surnaterre Maudite"
			}
		},
		Other = {
			--#region Boosters
			p_joy_monster_pack = {
				name = "Pack Champion",
				text = {
					"Choisissez {C:attention}#1#{} parmis",
					"{C:attention}#2#{} cartes {C:joker}Joker{} {C:joy_normal}Monstre{}",
				},
			},
			p_joy_jumbo_monster_pack = {
				name = "Pack Turbo",
				text = {
					"Choisissez {C:attention}#1#{} parmis",
					"{C:attention}#2#{} cartes {C:joker}Joker{} {C:joy_normal}Monstre{}",
				},
			},
			p_joy_mega_monster_pack = {
				name = "Pack Duelliste",
				text = {
					"Choisissez {C:attention}#1#{} parmis",
					"{C:attention}#2#{} cartes {C:joker}Joker{} {C:joy_normal}Monstre{}",
				},
			},
			p_joy_extra_pack = {
				name = "Pack Astral",
				text = {
					"Choisissez {C:attention}#1#{} parmis",
					"{C:attention}#2#{} {C:joker}Joker{} {C:joy_spell}Spéciaux{}",
				},
			},
			p_joy_jumbo_extra_pack = {
				name = "Pack Stellaire",
				text = {
					"Choisissez {C:attention}#1#{} parmis",
					"{C:attention}#2#{} {C:joker}Joker{} {C:joy_spell}Spéciaux{}",
				},
			},
			p_joy_mega_extra_pack = {
				name = "Pack Premium",
				text = {
					"Choisissez {C:attention}#1#{} parmis",
					"{C:attention}#2#{} {C:joker}Joker{} {C:joy_spell}Spéciaux{}",
				},
			},
			--#endregion
			joy_credits = {
				name = " ",
				text = {
					"{C:joy_mod}Booster Art:{} IcyEthics",
					" ",
					"{C:joy_mod}Localisation:{}",
					"{C:attention}French:{} Keraloon",
					" ",
					"{C:joy_mod}Idées d'Archétypes:{}",
					"{C:joy_link}@Ignister{}: gyro/rina",
					" ",
					"Quelques idées prises dans ces mods:",
					"{C:joy_effect}Aikoyori's Shenanigans{}, {C:joy_effect}Balatro: Star Rail{}, {C:joy_effect}Cartomancer",
					"{C:joy_effect}Cryptid{s:0.95}, {C:joy_effect}Lobotomy Corporation{}, {C:joy_effect}Ortalab",
					" ",
					"{C:joy_mod}Remerciements spéciaux{} pour les personnes sur",
					"les Serveurs Discord {C:joy_mod}JoyousSpring{} et {C:attention}Balatro{} <3"
				}
			},
			--#region Tooltips
			joy_face_down = {
				name = "Monstre face verso",
				text = {
					"Ne peut pas utiliser ou activer ses effets",
					"et compte comme un Joker vide pour les effets",
					"{C:inactive}(Sauf si spécifié)",
					"{C:inactive}(Les Editions s'appliquent toujours)",
				},
			},
			joy_tooltip_related = {
				name = "Cartes Reliées",
				text = {
					"Appuyez sur {C:attention}d{} pour voir",
					"les cartes reliées",
				},
			},
			joy_tooltip_transferred = {
				name = "Effets transférés",
				text = {
					"Appuyez sur {C:attention}t{} pour changer",
					"entre l'effet principal",
					"et les effets transférés"
				},
			},
			joy_tooltip_transform = {
				name = "Transformation",
				text = {
					"Change un {C:attention}Joker{} en un autre",
					"Conserve les augmentations",
				},
			},
			joy_tooltip_revive = {
				name = "Ressurection",
				text = {
					"Crée et retire une carte aléatoire du {C:attention}Cimetière{}",
					"Nécessite de la place et peut créer",
					"une édition aléatoire, sauf si spécifié",
					"(Les {s:0.9,C:attention}Jokers{} {s:0.9,C:inactive}de l'{s:0.9,C:joy_spell}Extra Deck{}, {s:0.9,C:inactive}et {s:0.9,C:joy_ritual}Rituel{}{s:0.9,C:inactive} n'ayant pas été",
					"{s:0.9,C:inactive}invoqué proprement ne peuvent pas être ressuscité)",
					"{s:0.9,C:inactive}(Les Jokers ressuscités se vendent pour 1)"
				},
			},
			joy_tooltip_extra_deck_joker = {
				name = "Joker d'Extra Deck",
				text = {
					"{C:attention}Jokers{} {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{},",
					"{C:joy_xyz}Xyz{} et {C:joy_link}Lien{} ",
					"{s:0.9,C:inactive}(Les Cartes dans l'Extra deck ne comptent",
					"{s:0.9,C:inactive}pas comment étant possédées)"
				},
			},
			joy_tooltip_main_deck_joker = {
				name = "Main Deck Joker",
				text = {
					"{C:attention}Jokers{} {C:joy_normal}Normal{},",
					"{C:joy_effect}Effet{}, et {C:joy_ritual}Rituel{} "
				},
			},
			joy_tooltip_special = {
				name = "Joker Spécial",
				text = {
					"{C:attention}Jokers{} {C:joy_ritual}Rituel{}, {C:joy_fusion}Fusion{},",
					"{C:joy_synchro}Synchro{}, {C:joy_xyz}Xyz{} et {C:joy_link}Lien{} "
				},
			},
			joy_tooltip_pendulum_joker = {
				name = "Joker Pendule",
				text = {
					"Peut être utilisé comme consommable",
					"Les Jokers {C:inactive}({C:joy_spell}Speciaux{} {C:inactive}doivent être",
					"{C:inactive}invoqués proprement d'abord)"
				},
			},
			joy_tooltip_banish = {
				name = "Bannir",
				text = {
					"Les cartes disparaissent temporairement jusqu'à",
					"un certain temps, conservant quelques effets actifs.",
					"Ils peuvent revenir même si vous n'avez pas de place"
				},
			},
			joy_tooltip_tribute = {
				name = "Sacrifice",
				text = {
					"Détruis une carte pour activer un effet",
				},
			},
			joy_tooltip_material = {
				name = "Matériel",
				text = {
					"Cartes utilisées pour l'invocation d'un",
					"{C:inactive}{}{C:joy_xyz}Joker Extra Deck{}",
				},
			},
			joy_tooltip_detach = {
				name = "Détacher",
				text = {
					"Retire un compteur Xyz",
					"pour activer un effet",
				},
			},
			joy_tooltip_token = {
				name = "Jeton",
				text = {
					"cartes {C:joy_normal}Monstre{} crée par un effet",
					"Ne possède aucun effet de lui même",
				},
			},
			joy_tooltip_flip = {
				name = "Effet FLIP",
				text = {
					"S'active une fois par manche quand la carte",
					"{C:attention}retournée{} face recto, et dure jusqu'à",
					"la fin de la prochaine manche {C:inactive}(Sauf si spécifié)"
				},
			},
			joy_tooltip_trap = {
				name = "Joker Piège",
				text = {
					"{C:attention}Se Retourne{} quand obtenu",
					"et à chaque fin de manche",
				},
			},
			joy_tooltip_monster = {
				name = "Joker Monstre",
				text = {
					"{C:attention}Jokers{} du mod {C:joy_mod}JoyousSpring",
				},
			},
			--#endregion
			--#region Glossary
			joy_glossary_monster = {
				name = "",
				text = {
					"{C:attention,s:1.3}Jokers{} {C:joy_normal,s:1.3}Monstre{} : {C:attention}Jokers{} du mod",
				},
			},
			joy_glossary_gy = {
				name = "",
				text = {
					"{C:attention,s:1.3}Cimetière{}: Liste des {C:attention}Jokers{} {C:joy_normal}Monstre{} soit vendus, détruits ou utilisés pour une {C:attention}Invocation{}. Ils perdent leurs améliorations."
				},
			},
			joy_glossary_revive = {
				name = "",
				text = {
					"{C:attention,s:1.3}Ressusciter{}: Créer et Retire une carte du {C:attention}Cimetière{}. Nécessite de la place, et peut posséder une édition aléatoire, sauf si spécifié",
					"Les {C:attention}Jokers{} {C:joy_spell}Extra Deck{} et {C:joy_ritual}Rituels{} non invoqués proprement ne peuvent pas être ressusciter",
					"Leurs valeurs de vente est fixé un 1"
				},
			},
			joy_glossary_banish = {
				name = "",
				text = {
					"{C:attention,s:1.3}Bannir{}: Cartes temporairement retirés jusqu'à un temps déterminé, conservant seulement quelques effets actifs.",
					"Ils peuvent retourner même si vous n'avez pas la place requise",
					"Les Cartes {C:attention}Bannis{} reviennent avant toutes les activations d'effets"
				},
			},
			joy_glossary_transform = {
				name = "",
				text = {
					"{C:attention,s:1.3}Transformer{}: Change un {C:attention}Joker{} en un autre. Conserve les améliorations",
				},
			},
			joy_glossary_facedown = {
				name = "",
				text = {
					"{C:attention,s:1.3}Face-verso{}: Les {C:attention}Jokers{} {C:joy_normal}Monstres{} retournés ne peuvent pas utiliser leurs effets (sauf si spécifié). Les {C:joy_link}Liens{} ne peuvent pas être face verso",
				},
			},
			joy_glossary_maindeck = {
				name = "",
				text = {
					"{C:attention,s:1.3}Jokers{} {C:joy_normal,s:1.3}Main Deck{}: Chaque {C:attention}Joker{} {C:joy_normal}Monstre{} qui ne sont pas dans l'{C:joy_spell}Extra Deck{} (Voir Glossaire d'Invocation)",
				},
			},
			joy_glossary_pendulum = {
				name = "",
				text = {
					"{C:attention,s:1.3}Jokers{} {C:joy_pendulum,s:1.3}Pendules{}: {C:attention}Jokers{} aussi utilisable comme consommables",
				},
			},
			joy_glossary_fieldspell = {
				name = "",
				text = {
					"{C:joy_spell,s:1.3}Magies de Terrain{}: Elles vont dans la zone {C:joy_spell}Magie de Terrain{} mais agissent comme un {C:attention}Joker{} classique",
				},
			},
			joy_glossary_extradeck = {
				name = "",
				text = {
					"{C:attention,s:1.3}Jokers{} {C:joy_spell,s:1.3}Extra Deck{}: Ces Jokers quand obtenus vont dans l'{C:joy_spell}Extra Deck{}.",
					"Pour les utiliser, vous devez sacrifier des {C:attention}Jokers{} listés sur les conditions d'invocation.",
					"Cela inclus les {C:attention}Jokers{} {C:joy_fusion}Fusion{}, {C:joy_synchro}Synchro{}, {C:joy_xyz}Xyz{} et {C:joy_link}Lien{}",
					"Les {C:attention}Jokers{} {C:joy_xyz}Xyz{} et {C:joy_link}Lien{}  ne peuvent pas être utilisés pour les {C:joy_synchro}Synchro{} et {C:joy_xyz}Xyz{} sauf si spécifié",
					"Les {C:joy_token}Jetons{} ne peuvent pas être utilisés pour les {C:joy_xyz}Xyz{} sauf si spécifié",
					"Les Jokers invoqués ont une valeur de vente égales un leurs couts"
				},
			},
			joy_glossary_material = {
				name = "",
				text = {
					"{C:attention,s:1.3}Matériel{}: Cartes utilisés pour invoquer un {C:attention}Joker{}",
				},
			},
			joy_glossary_detach = {
				name = "",
				text = {
					"Les {C:attention}Jokers{} {C:joy_xyz}Xyz{} peuvent {C:joy_xyz,s:1.3}Détacher{}: commence avec un nombre égal aux matériels utilisés.",
					"Des effets peuvent demander de {C:joy_xyz}détacher{} ces matériels afin d'obtenir des bonus",
				},
			},
			joy_glossary_ritual = {
				name = "",
				text = {
					"{C:attention,s:1.3}Jokers{} {C:joy_ritual,s:1.3}Rituel{}: Ils ne vont pas dans l'{C:joy_spell}Extra Deck{} mais sont invoqués directement du magasin. Ils comptent comme {C:attention}Jokers{} {C:joy_normal}Main Deck{}",
				},
			},
			--#endregion
		},
		JoyPokerHand = {
			phd_joy_eldlixir = {
				name = "Surnalixir",
				text = {
					"5 cartes {C:attention}Dorées{}",
				},
			}
		}
	},
	misc = {
		challenge_names = {
			c_joy_mystic_wok = "Wok Mystique",
			c_joy_mistake = "Erreur",
			c_joy_monster_reborn = "Monstre Reborn",
			c_joy_domain = "Le Domaine des Vrais Monarques",
		},
		v_text = {
			ch_c_joy_gy_start = {
				"Commence avec quelques cartes au {C:attention}Cimetière{}",
			},
			ch_c_joy_extra_deck_slots = {
				"Commence avec {C:attention}#1#{} slots d'{C:joy_spell}Extra Deck{}",
			},
			ch_c_joy_no_extra_deck_jokers = {
				"Les {C:attention}Jokers{} {C:joy_spell}Extra Deck{} n'apparaissent pas en boutique",
			},
		},
		poker_hands = {
			joy_eldlixir = "Surnalixir"
		},
		poker_hand_descriptions = {
			joy_eldlixir = {
				"5 Cartes {C:attention}dorées{}",
				"{C:inactive}(Doit être activé par un effet)"
			}
		},
		dictionary = {
			--#region General UI
			k_joy_extra_deck = "Extra Deck",
			k_joy_summon_conditions = "Conditions d'Invocation",
			k_joy_graveyard = "Cimetière",
			k_joy_banishment = "Bannissement",
			k_joy_column = "Colonne",
			k_joy_flipped = "Invocation Flip:",
			k_joy_banish_Mise_selected = "Début de la Mise",
			k_joy_banish_end_of_round = "Fin de la Manche",
			k_joy_banish_boss_selected = "Début de la Blinde Boss",
			k_joy_banish_end_of_ante = "Fin de la Mise Initiale",
			k_joy_select_materials = "Choisir les Matériels",
			k_joy_summon_warning =
			"Dû aux limitations, cette liste peut contenir des matériels invalides",
			k_joy_select_tributes = "Choisir les Sacrifices",
			k_joy_transferred_abilities = "Effets Transférés:",
			k_joy_select = "Choisir",
			k_joy_summon = "Invoquer",
			k_joy_detach = "Detacher",
			k_joy_activate = "Activer",
			--#endregion
			--#region Effect text
			k_joy_activated_ex = "Activé!",
			k_joy_token = "Jeton",
			k_joy_splash = "Splash!",
			k_joy_defeated = "Vaincu!",
			k_joy_banished = "Banni!",
			k_joy_flip_ex = "Flip!",
			k_joy_set = "Posé!",
			k_joy_revive = "Ressuscité!",
			k_joy_mill = "Mill!",
			k_joy_add = "Ajouté!",
			k_joy_return = "Retour!",
			--#endregion
			--#region Booster
			k_joy_booster_group = "Paquet Montre",
			k_joy_monster_tag_default = "Jeton Monstre",
			--#endregion
			--#region Mod Description
			k_joy_glossary = "Glossaire Basique",
			k_joy_summon_glosary = "Glossaire d'Invocation",
			k_joy_credits = "Crédits",
			k_joy_discord = "Discord",
			k_joy_github = "Github",
			--#endregion
			--#region Config
			k_joy_disable_tooltips = "Désactive les tooltips du Glossaire",
			k_joy_disable_booster_tag = "Désactive l'apparition de Jeton Booster naturellement",
			k_joy_disable_main_menu = "Désactive les modifications du menu principal",
			k_joy_only_ygo_cards = "Seuls les Cartes Monstres apparaissent",
			k_joy_extra_ygo_booster = "Extra Booster Monstre à chaque magasin",
			k_joy_instant_poker_hand = "Désactive l'animation des mains de poker (pour ce mod)",
			k_joy_disable_glow = "Désactive l'effet de brillance des cartes activables",
			--#endregion
			--#region Related cartes
			k_joy_related = "Relié",
			k_joy_related_individual = "Carte",
			k_joy_archetype = "Archétype",
			k_joy_transforms_en = "Se Tranforme",
			k_joy_creates = "Crée",
			k_joy_adds = "Ajoute",
			k_joy_mills = "Envoie",
			--#endregion
			--#region Card types
			k_joy_Aqua = "Aqua",
			k_joy_Beast = "Bête",
			k_joy_BeastWarrior = "Bête Guerrier",
			k_joy_CreatorGod = "Dieu Créateur",
			k_joy_Cyberse = "Cyberse",
			k_joy_Dinosaur = "Dinosaure",
			k_joy_DivineBeast = "Bête Divine",
			k_joy_Dragon = "Dragon",
			k_joy_Fairy = "Fée",
			k_joy_Fiend = "Démon",
			k_joy_Fish = "Poisson",
			k_joy_Illusion = "Illusion",
			k_joy_Insect = "Insecte",
			k_joy_Machine = "Machine",
			k_joy_Plant = "Plante",
			k_joy_Psychic = "Psychique",
			k_joy_Pyro = "Pyro",
			k_joy_Reptile = "Reptile",
			k_joy_Rock = "Rocher",
			k_joy_SeaSerpent = "Serpent de Mer",
			k_joy_Spellcaster = "Magicien",
			k_joy_Thunder = "Tonnerre",
			k_joy_Warrior = "Guerrier",
			k_joy_WingedBeast = "Bête Ailée",
			k_joy_Wyrm = "Wyrm",
			k_joy_Zombie = "Zombie",
			k_joy_effect = "Effet",
			k_joy_normal = "Normal",
			k_joy_flip = "Flip",
			k_joy_tuner = "Syntoniseur",
			k_joy_pendulum = "Pendule",
			k_joy_FUSION = "Fusion",
			k_joy_RITUAL = "Rituel",
			k_joy_SYNCHRO = "Synchro",
			k_joy_XYZ = "Xyz",
			k_joy_LINK = "Lien",
			k_joy_LIGHT = "LUMIÈRE",
			k_joy_DARK = "TÉNÈBRES",
			k_joy_WATER = "EAU",
			k_joy_FIRE = "FEU",
			k_joy_EARTH = "TERRE",
			k_joy_WIND = "VENT",
			k_joy_DIVINE = "DIVIN",
			k_joy_spell = "Magie",
			k_joy_trap = "¨Piège",
			k_joy_fieldspell = "Magie de Terrain",
			--#endregion
			--#region Archetypes
			k_joy_archetype_dmaid = "Dragonirène",
			k_joy_archetype_ltwin = "Live☆Jumelles",
			k_joy_archetype_dogma = "Dogmatika",
			k_joy_archetype_yokai = "Filles Fantômes",
			k_joy_archetype_spright = "Spright",
			k_joy_archetype_mekk = "Mekk-Chevalier",
			k_joy_archetype_generaider = "Genèraideur",
			k_joy_archetype_fish = "Ghoti",
			k_joy_archetype_psy = "Structure-PSY",
			k_joy_archetype_runick = "Runick",
			k_joy_archetype_ba = "Abysses Ardents",
			k_joy_archetype_lab = "Labrynth",
			k_joy_archetype_sub = "Subterreur",
			k_joy_archetype_eld = "Surnaliche",
			k_joy_archetype_ignis = "@Ignister",
			k_joy_archetype_solfa = "Solfaccord",
			k_joy_archetype_witch = "Artisanesorcière",
			k_joy_archetype_shaddoll = "Marionnette de l'Ombre",
			k_joy_archetype_paleo = "Paléozoïque",
			k_joy_archetype_invoked = "Invokhé",
			k_joy_archetype_danger = "Danger!",
			k_joy_archetype_adaman = "Inflexcipateur",
			k_joy_archetype_misc = "Agents Libres",
			k_joy_archetype_token = "Jetons",
			--#endregion
			--#region Specific
			k_joy_arrival_text1 = ": Baisse ",
			k_joy_arrival_text2 = "les objectifs",
			k_joy_arrival_text3 = "de la Mise de ",
			k_joy_arrival_text4 = "50%",
			--#endregion
		}
	},
}
