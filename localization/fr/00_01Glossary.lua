return {
    descriptions = {
        Other = {
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
					"{s:0.9,C:inactive}pas comment étant possédées pour les effets)"
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
			joy_tooltip_field_spell_joker = {
                name = "Joker Magie de Terrain",
                text = {
                    "Va dans la {C:joy_spell}Zone Magie de Terrain{}",
                    "Ne comptent pas comme possédé pour les effets de {C:attention}Jokers{}",
                    "dans cette zone sauf si spécifié"
                },
            },
            joy_tooltip_banish = {
				name = "Bannir",
				text = {
					"Les Jokers disparaissent temporairement jusqu'à",
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
			joy_tooltip_excavate = {
                name = "Dévoiler",
                text = {
                    "Révèle les cartes du dessus du deck",
                    "jusqu'au nombre listée sur la carte",
                    "Se déclenche lorsque la {C:attention}Blinde{} est choisie sauf si spécifié",
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
					"Carte {C:joy_normal}Monstre{} crée par un effet",
					"Ne possède aucun effet de lui même",
				},
			},
            joy_tooltip_flip = {
				name = "Effet FLIP",
				text = {
					"S'active une fois par manche quand la carte",
					"est {C:attention}retournée{} face recto, et dure jusqu'à",
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
			joy_tooltip_no_shop = {
                name = "Pas Achetable",
                text = {
                    "Ne peut pas être obtenu au magasin",
                    "ou effets non-{C:attention}Monstre{}",
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
    },
    misc = {
        dictionary = {
            k_joy_glossary = "Glossaire Basique",
            k_joy_summon_glosary = "Glossaire d'Invocation",
        }
    },
}
