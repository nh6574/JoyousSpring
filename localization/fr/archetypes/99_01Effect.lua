return {
    descriptions = {
        Joker = {
            j_joy_boarder = {
                name = "{C:joy_effect}Boarder Inspecteur",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult pour chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{}",
                        "{C:inactive}(Actuellement:{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "Les {C:blue}Mains{} sont égal aux types d'{C:joy_spell}Extra Deck{} possédés + 1",
                        "Pas de types de mains répétés",
                        "Les {C:attention}Jokers{} {C:joy_normal}Main Deck{} sont debuff",
                        "{C:inactive}(Excepté{} {C:joy_effect}\"Boarder Inspecteur\"{}{C:inactive}){}",
                    },
                },
            },
            j_joy_grenmaju = {
                name = "{C:joy_effect}Gren Maju Da Eiza",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque carte",
                        "{C:attention}bannis{} cette partie",
                        "{C:inactive}(Actuellement:{} {C:chips}+#2#{} {C:inactive}Jetons){}",
                    },
                },
            },
            j_joy_rhino = {
                name = "{C:joy_effect}Guerrier Rhino Démoniaque",
                text = {
                    {
                        "Envoie {C:attention}#1#{} {C:joy_normal}Démons{} au {C:attention}Cimetière{} et",
                        "{C:attention}ressuscite #2#{} {C:joy_normal}Démon{} quand utilisé",
                        "comme {C:attention}matériel{}}",
                    },
                }
            },
            j_joy_tourguide = {
                name = "{C:joy_effect}Guide des Enfers",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}Démon{} {C:joy_normal}Main Deck{}",
                        "{C:blue}Commun{} ou {C:green}Peu Commun{} {C:dark_edition}Négatif{} quand obtenu",
                    },
                }
            },
            j_joy_heavenlyprison = {
                name = "{C:joy_effect}Seigneur de la Prison Divine",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult,",
                        "gagne {X:mult,C:white}X#2#{} Mult pour chaque {C:joy_trap}Piège",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#3#{} {C:inactive}Mult)",
                    },
                    {
                        "Les {C:joy_trap}Pièges{} ne se {C:attention}retournent{} pas face verso d'eux mêmes",
                        "et leurs effets {C:joy_effect}FLIP{} s'activent quand la {C:attention}Blinde{} est choisie",
                    },
                }
            },
            j_joy_backup = {
                name = "{C:joy_effect}Secrétaire de Sauvegarde",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_normal}Cyberse{} à l'{C:joy_spell}Extra Deck{} quand utilisé comme {C:attention}matériel{}",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}Cyberse{}",
                    },
                }
            },
            j_joy_wizard = {
                name = "{C:joy_effect}Sorcier Cyberse",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:joy_normal}Cyberse{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{} {C:inactive}Jetons)",
                    },
                    {
                        "Gratuit si vous possédez un {C:joy_normal}Cyberse{}",
                    },
                }
            },
            j_joy_formud = {
                name = "{C:joy_effect}Périophormat",
                text = {
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_link}Lien",
                    },
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}Cyberse{} {C:joy_normal}Main Deck{} {C:red}Rare{}",
                        "quand utilisé comme {C:attention}matériel{} pour un {C:joy_normal}Cyberse",
                        "{C:inactive}(Nécessite de la place)",
                    },
                }
            },
            j_joy_procession = {
                name = "{C:joy_effect}Procession de la Jarre de Thé",
                text = {
                    {
                        "Chaque {C:attention}Joker{} face verso gagne {X:mult,C:white}X#1#{} Mult",
                    },
                    {
                        "{C:attention}Retourne{} tous les {C:attention}Jokers{} face verso quand la {C:attention}Blinde{} est choisie",
                        "{C:inactive}(Excepté \"Procession de la Jarre de Thé\"){}",
                    },
                }
            },
            j_joy_darkcat = {
                name = "{C:joy_effect}Chat Noir à Queue Blanche",
                text = {
                    {
                        "{C:mult}+#1#{} Mult",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Ajoute {C:attention}#2#{} {C:attention}2{} {C:attention}Chance{} {C:dark_edition}Négatif{} dans le deck",
                    },
                }
            },
            j_joy_dekoichi = {
                name = "{C:joy_effect}Dekoichi, la Locomotive de Guerre Enchantée",
                text = {
                    {
                        "{C:mult}+#1#{} Mult,",
                        "{C:mult}+#2#{} pour chaque {C:attention}Joker{} {C:joy_normal}Normal{}",
                        "{C:inactive}(Actuellement: {C:mult}+#3#{}{C:inactive} Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}+#4#{} cartes en main cette manche,",
                        "{C:attention}+#5#{} pour chaque {C:attention}Joker{} {C:joy_normal}Normal{} puis",
                        "crée {C:attention}#6#{} {C:joy_normal}\"Bokoichi, le Wagon de Terreur\"{} {C:dark_edition}Négatif{}",
                    },
                }
            },
            j_joy_bokoichi = {
                name = "{C:joy_normal}Bokoichi, le Wagon de Terreur",
                text = {
                    {
                        "{E:1}Un wagon terrifiant à l'usage exclusif de Dekoichi, capable de{}",
                        "{E:1}tout transporter, mais dont peu de marchandises arrivent indemmes.{}",
                    },
                }
            },
            j_joy_desertapir = {
                name = "{C:joy_effect}Désertapir",
                text = {
                    {
                        "{C:money}+#1#${} en fin de manche",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Retourne {C:attention}#2#{} {C:attention}Jokers{} aléatoires face recto",
                    },
                }
            },
            j_joy_searchlight = {
                name = "{C:joy_effect}Homme-Projecteur",
                text = {
                    {
                        "{C:mult}+#1#{} Mult,",
                        "gagne {C:mult}+#2#{} Mult pour chaque {C:attention}Joker{} {C:attention}retourné{} face recto",
                        "{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
                        "{C:inactive}(Actuellement: {C:mult}+#3# {C:inactive}Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Retourne{} tous les autres {C:attention}Jokers{} face recto",
                    },
                    {
                        "{C:green}#4# chance sur #5#{} de se {C:attention}retourner{} quand la {C:attention}Blinde{} est choisie",
                    },
                }
            },
            j_joy_sternmystic = {
                name = "{C:joy_effect}Le Verso Mystique",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons",
                        "gagne {C:chips}+#2#{} Jetons pour chaque carte à jouer {C:attention}retournée{}",
                        "{s:0.9,C:inactive}(Gagne cet effet même si face verso)",
                        "{C:inactive}(Actuellement: {C:chips}+#3# {C:inactive}Jetons)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Retourne{} toutes les cartes en main",
                    },
                    {
                        "{C:green}#4# chance sur #5#{} de se {C:attention}retourner{} quand la {C:attention}Blinde{} est choisie",
                    },
                }
            },
            j_joy_mof = {
                name = "{C:joy_effect}Magicien de la Foi",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:joy_spell}Magie de Terrain{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: Crée {C:attention}#3#{} copie {C:dark_edition}Négatif{} d'une {C:joy_spell}Magie de Terrain{} au {C:attention}Cimetière{}",
                    },
                }
            },
            j_joy_mask = {
                name = "{C:joy_effect}Masque des Ténèbres",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_trap}Piège{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "{C:joy_effect}FLIP{}: {C:attention}Ressuscite #3#{} {C:joy_trap}Piège{}",
                    },
                }
            },
            j_joy_angraecum = {
                name = "{C:joy_effect}Parapluie Angraecum",
                text = {
                    {
                        "{C:attention}Ressuscite #1#{} non-{C:joy_synchro}Syntoniseur{} en {C:dark_edition}Négatif{} et debuff",
                        "et ajoute {C:attention}#2#{} {C:joy_synchro}Synchro{} au magasin quand obtenu",
                    },
                }
            },
            j_joy_eater = {
                name = "{C:joy_effect}Mangeur des Millions",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult chaque fois qu'un {C:attention}Joker{} {C:joy_spell}Extra Deck{} est banni",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{} {C:inactive}Mult)",
                    },
                    {
                        "{C:attention}Bannis #3#{} {C:attention}Joker{} {C:joy_spell}Extra Deck{} non-debuff en fin de manche",
                        "jusqu'à la prochaine {C:attention}Blinde Boss{}",
                    },
                }
            },
            j_joy_miradora = {
                name = "{C:joy_effect}Zéphyr Céleste - Miradora",
                text = {
                    {
                        "Debuff et change {C:attention}#1#{} {C:attention}Joker{}",
                        "{C:joy_spell}Extra Deck{} aléatoire en {C:dark_edition}Négatif{} quand obtenu",
                    },
                    {
                        "Chaque {C:attention}Joker{} {C:joy_spell}Extra Deck{} debuff",
                        "gagne {X:mult,C:white}X#2#{} Mult",
                    },
                }
            },
            j_joy_beautunaful = {
                name = "{C:joy_effect}Princesse Jolithon",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_normal}Poisson{} quand obtenu",
                        "et/ou retourne du {C:attention}banissement{}",
                        "{C:inactive}(Nécessite de la place)",
                    },
                }
            },
            j_joy_leaffish = {
                name = "{C:joy_effect}Poisson Feuille Inerte",
                text = {
                    {
                        "Envoie {C:attention}#1#{} {C:joy_normal}Poisson Main Deck{} au {C:attention}Cimetière{}",
                        "quand la {C:attention}Blinde{} est choisie",
                    },
                    {
                        "Vendez cette carte pour {C:attention}ressusciter #2#{} {C:joy_normal}Poisson{}",
                        "{C:inactive}(Excepté \"Poisson Feuille Inerte\"){}",
                    },
                }
            },
            j_joy_ringowurm = {
                name = "{C:joy_effect}Ringowurm, le Dragon Protecteur des Cent Pommes",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_token}\"Jeton Cent Pommes\"{} {C:joy_synchro}Syntoniseur{} {C:dark_edition}Négatif{}",
                        "quand utilisé comme {C:attention}matériel{} pour un {C:joy_synchro}Synchro{}",
                    },
                    {
                        "Gratuit si vous possédez un {C:attention}Joker{} sans {C:joy_effect}Effet{}",
                    },
                }
            },
            j_joy_token_ringo = {
                name = "{C:joy_token}Jeton Cent Pommes",
                text = {
                    {
                        "Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
                    },
                }
            },
            j_joy_stormshooter = {
                name = "{C:joy_effect}Tireur de la Tempête",
                text = {
                    {
                        "Crée autant de {C:planet}Planète{} de la main marquée que possible si",
                        "une carte ne marquant pas est jouée dans la {C:attention}colonne{} de cette carte",
                        "Cette carte doit être dans la {C:attention}colonne #1#{} pour utiliser cet effet",
                        "{C:inactive}(Change à chaque manche){}",
                        "{C:inactive}(Actuellement: en {C:attention}colonne #2#{}{C:inactive})",
                    },
                }
            },
            j_joy_ghostbird = {
                name = "{C:joy_effect}Oiseau Fantôme de l'Enchantement",
                text = {
                    {
                        "Les cartes à jouer dans cette {C:attention}colonne{} sont détruites après avoir",
                        "marqué des points {C:inactive}(Actuellement: en {C:attention}colonne #1#{}{C:inactive})",
                    },
                    {
                        "Obtiens les effets suivant la {C:attention}colonne{}",
                        "{V:1}1: Les cartes marquants dans cette {C:attention}colonne{} {V:1}gagnent {C:chips}+#2#{} {V:1}Jetons{}",
                        "{V:1}et ne sont pas détruites par l'effet de cette carte",
                        "{V:2}3: Redéclenche les cartes marquants dans cette {C:attention}colonne{V:2} deux fois",
                        "{V:3}5: Les cartes de cette {C:attention}colonne{} {V:3}comptent dans les points{}",
                    },
                }
            },
            j_joy_tiamaton = {
                name = "{C:joy_effect}Tiamaton Dragon de Fer",
                text = {
                    {
                        "Gagne {X:mult,C:white}X#1#{} Mult pour chaque carte à jouer détruites",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Les cartes à jouer dans cette {C:attention}colonne{} sont détruites après avoir",
                        "marqué des points {C:inactive}(Toutes si la colonne est de 6+)",
                        "{C:inactive}(Actuellement: en {C:attention}colonne #3#{}{C:inactive})",
                    },
                }
            },
            j_joy_zenoguitar = {
                name = "{C:joy_effect}Guitarexéno de Bande de Rock",
                text = {
                    {
                        "Quand cette carte possédée est envoyée au {C:attention}Cimetière{}",
                        "envoie {C:attention}#1#{} {C:attention}Jokers{} {C:joy_normal}Rocher{} au {C:attention}Cimetière{}",
                        "puis {C:attention}ressuscite #2#{} {C:attention}Joker{} {C:joy_normal}Rocher{}",
                    },
                    {
                        "Ajoute {C:attention}#3#{} cartes {C:diamonds}Carreau{} {C:attention}Améliorées{} au Deck",
                        "quand utilisé comme {C:attention}matériel{}"
                    },
                    {
                        "Ne peut pas être {C:attention}ressuscité{}",
                    },
                }
            },
            j_joy_revgolem = {
                name = "{C:joy_effect}Golem de Résurrection",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} cartes {C:diamonds}Carreau{} avec un {C:attention}Sceau{} aléatoire au Deck",
                        "et crée {C:attention}#2#{} {C:joy_effect}\"Golem de Résurrection\"{} {C:dark_edition}Négatif{} et debuff",
                        "quand utilisé comme {C:attention}matériel{}"
                    }
                }
            },
            j_joy_tackcrusader = {
                name = "{C:joy_effect}Guerrier Tacleur",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:diamonds}Carreau{} {C:attention}dévoilé{} cette partie",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Une fois par manche, vous pouvez {C:attention}sacrifier #3#{} {C:attention}Joker{} {C:joy_normal}Rocher{}",
                        "afin d'ajouter {C:attention}#4#{} cartes {C:diamonds}Carreau{} {C:attention}avec une Edition{} au Deck",
                        "et retourne tous les {C:attention}Jokers{} face-recto"
                    },
                }
            },
            j_joy_doki = {
                name = "{C:joy_effect}Doki Doki",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:diamonds}Carreau{} {C:attention}dévoilé{} cette partie",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "Une fois par mise, vous pouvez {C:attention}sacrifier #3#{} {C:attention}Joker{} {C:joy_normal}Rocher{}",
                        "pour créer {C:attention}#4#{} {C:attention}Jokers Rocher{} {C:joy_normal}Main Deck{}",
                        "{C:inactive}(Nécessite de la place)"
                    },
                }
            },
            j_joy_blockdragon = {
                name = "{C:joy_effect}Dragon en Briques",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_normal}Rocher{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{X:mult,C:white}X#3#{} extra Mult pour chaque {C:diamonds}Carreau{} {C:attention}dévoilé{} cette partie",
                        "{C:inactive}(Actuellement: {X:mult,C:white}X#4#{}{C:inactive} Mult)"
                    },
                    {
                        "Si cette carte est utilisée comme {C:attention}matériel{} alors qu'il y'a",
                        "{C:attention}#5#{} {C:attention}Jokers{} {C:joy_normal}Rocher{} ou plus au {C:attention}Cimetière{},",
                        "crée {C:attention}#6#{} {C:attention}Jokers{} {C:joy_normal}Rocher{} {C:joy_normal}Main Deck{} {C:blue}Commun{} ou",
                        "{C:green}Peu Commun{} {C:dark_edition}Négatif{} mais retire tous les {C:attention}Jokers{} {C:joy_normal}Rocher{} du {C:attention}Cimetière{}"
                    },
                }
            },
            j_joy_elfobia = {
                name = "{C:joy_effect}Fée Fantôme Elfobia",
                text = {
                    {
                        "{C:chips}+#1#{} Jetons pour chaque {C:joy_wind}VENT{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:chips}+#2#{}{C:inactive} Jetons)"
                    },
                    {
                        "Augmente toutes les {C:green}probabilités{} listées sur les {C:attention}Jokers{} {C:joy_wind}VENT{}",
                        "de manière permanente de {C:attention}#3#{} quand la {C:attention}Blinde Boss{} est choisie"
                    },
                    {
                        "Si vous possédez {C:joy_effect}\"Fée Mystique Elfuria\"{},",
                        "seuls les {C:attention}Jokers{} {C:joy_wind}VENT{} peuvent être envoyé au {C:attention}Cimetière{}"
                    }
                }
            },
            j_joy_elfuria = {
                name = "{C:joy_effect}Fée Mystique Elfuria",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_wind}VENT{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "Attache {C:attention}#3# matériel{} sur chaque {C:joy_xyz}Xyz{}",
                        "quand la {C:attention}Blinde Boss{} est choisie"
                    },
                    {
                        "Si vous possédez {C:joy_effect}\"Fée Fantôme Elfobia\"{},",
                        "seuls les {C:attention}Jokers{} {C:joy_wind}VENT{} peuvent apparaitre au magasin",
                    }
                }
            },
            j_joy_lindbloom = {
                name = "{C:joy_effect}Lindéclosion",
                text = {
                    {
                        "Chaque {C:attention}Jokers{} gagne {X:mult,C:white}X#1#{} Mult s'ils partagent",
                        "leur {C:attention}Type{} et {C:attention}Attribut{} avec un autre {C:attention}Joker{}"
                    },
                }
            },
            j_joy_genomix = {
                name = "{C:joy_effect}Combattant Génomix",
                text = {
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
                    },
                    {
                        "Un {C:joy_synchro}Synchro{} invoqué en utilisant cette carte",
                        "comme {C:attention}matériel{} gagne l'effet suivant:",
                        "{s:0.9,C:mult}+#1#{s:0.9} Mult pour chaque {s:0.9,C:attention}Joker{s:0.9} possédé",
                        "{s:0.9}ou au {s:0.9,C:attention}Cimetière{s:0.9} avec le même {s:0.9,C:attention}Type{s:0.9} et {s:0.9,C:attention}Attribut{}"
                    }
                },
                joy_transfer_ability = {
                    "{C:mult}+#1#{} Mult pour chaque {s:0.9,C:attention}Joker{s:0.9} possédé",
                    "ou au {s:0.9,C:attention}Cimetière{s:0.9} avec le même {s:0.9,C:attention}Type{s:0.9} et {s:0.9,C:attention}Attribut{}",
                    "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                },
            },
            j_joy_maxsix = {
                name = "{C:joy_effect}Six Maximum",
                text = {
                    {
                        "{C:green}#1# chance sur #2#{} de gagner {X:mult,C:white}X#3#{} Mult",
                    },
                    {
                        "{C:green}#4# chance sur #5#{} de devenir {C:dark_edition}Négatif{}",
                        "quand la {C:attention}Blinde{} est choisie"
                    },
                }
            },
            j_joy_stpolice = {
                name = "{C:joy_effect}Policier Spatiotemporel",
                text = {
                    {
                        "Cette carte et un autre {C:attention}Joker{} {C:joy_normal}Psychique{} sont {C:attention}bannis{} en fin",
                        "de manche jusqu'à la prochaine {C:attention}Blinde Boss{} et réinvoque {C:attention}#1#{} {C:attention}Joker{}",
                        "{C:attention}banni{} jusqu'à la {C:attention}Blinde Boss{}"
                    },
                }
            },
            j_joy_wannabee = {
                name = "{C:joy_effect}Aspirante Abeille!",
                text = {
                    {
                        "{C:attention}Dévoile{} les {C:attention}#1#{} cartes du dessus du deck:",
                        "Pioche {C:attention}#2#{} cartes pour chaque cartes de rang {C:attention}2{}",
                    },
                }
            },
            j_joy_merchant = {
                name = "{C:joy_effect}Marchand Ésotérique",
                text = {
                    {
                        "{C:attention}Se retourne{} en fin de manche après que #1# cartes",
                        "ou plus soient {C:attention}dévoilées{} {C:inactive}(même si face verso)",
                        "{C:inactive}(#2# restants){}"
                    },
                    {
                        "{C:joy_effect}FLIP{}: Quand la {C:attention}Blinde{} est choisie,",
                        "{C:attention}dévoile{} jusqu'à toucher une carte de votre enseigne la plus possédée",
                        "puis pioche des cartes égal au nombre de cartes {C:attention}dévoilées{}",
                        "{C:inactive}(Actuellement: {V:1}#3#{}{C:inactive}) (Change en fin de manche)"
                    },
                }
            },
            j_joy_catoblepas = {
                name = "{C:joy_effect}Catoblepas et la Sorcière du Destin",
                text = {
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:joy_normal}Magicien{} au {C:attention}Cimetière{}",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)"
                    },
                    {
                        "{C:green}#3# chance sur #4#{} de {C:attention}bannir #5#{} {C:joy_normal}Magicien{}",
                        "en fin de manche jusqu'à la prochaine {C:attention}Blinde Boss{}",
                        "et double de manière permanente ses {C:green}probabilités{} listées"
                    }
                }
            },
            j_joy_coupleofaces = {
                name = "{C:joy_effect}Couple d'As",
                text = {
                    {
                        "Si la main jouée contient une {C:attention}Paire{},",
                        "applique les effets suivant:",
                        "{X:mult,C:white}X#1#{} Mult",
                        "{C:green}#2# chance sur #3#{} aux {C:attention}As{} de gagner {X:mult,C:white}X#1#{} Mult",
                        "{C:green}#4# chance sur #5#{} de monter la main jouée de niveau",
                        "{C:green}#6# chance sur #7#{} de changer chaque carte marquant des points en {C:attention}As Chance Sceau Doré{}",
                    },
                }
            },
        }
    },
}
