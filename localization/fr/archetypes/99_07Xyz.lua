return {
    descriptions = {
        Joker = {
            j_joy_zeus = {
                name = "{C:joy_xyz}Arsenal Divin AA-ZEUS - Tonnerre du Ciel",
                text = {
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}#1#{}: Réduis les conditions de la {C:attention}Blinde{} actuelle de {C:red}#2#%",
                        "mais retire toutes les améliorations du deck",
                    },
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
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}#1#{}: Change chaque carte marquant des points cette",
                        "manche en {C:attention}Sceau Rouge{} {C:dark_edition}Polychrome{} {C:attention}Verre{}",
                        "mais réduis l'{C:money}argent{} de {C:red}#2#%{}",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:attention}Jokers{} {C:red}Rare{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{} {s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})",
                    "OU {C:attention}1{} {C:attention}Joker{} si {C:attention}2{} {C:attention}Jokers{}",
                    "ou plus ont été invoqués cette manche"
                }
            },
            j_joy_85 = {
                name = "{C:joy_xyz}Numéro 85 : Boîte Folle",
                text = {
                    {
                        "Pendant une {C:attention}Blinde{}, vous pouvez {C:joy_xyz}détacher{} {C:attention}#1#{}:",
                        "Applique un de ces effets aléatoirement",
                        "{C:attention}1{}: Double les conditions de la {C:attention}Blinde{}",
                        "{C:attention}2{}: Divise par deux les conditions de la {C:attention}Blinde{}",
                        "{C:attention}3{}: {C:attention}+#2#{} cartes en main cette manche",
                        "{C:attention}4{}: {C:attention}-#3#{} cartes en main de manière permanente",
                        "{C:attention}5{}: Change chaque cartes marquant des points la prochaine",
                        "main en {C:dark_edition}Polychrome{} {C:attention}Sceau Rouge Chance{}",
                        "{C:attention}6{}: Détruis cette carte",
                    },
                    {
                        "{C:green}#4# chance sur #5#{} d'attacher {C:attention}#6#{} matériel à cette carte quand la {C:attention}Blinde{} est choisie"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2{} {C:attention}Jokers{} {C:blue}Commun{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
                    "{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
                }
            },
            j_joy_67 = {
                name = "{C:joy_xyz}Numéro 67 : Fracasseur Pairodés",
                text = {
                    {
                        "Double toutes les {C:green}probabilités{} listées si cette carte a du {C:joy_xyz}Matériel Xyz{}"
                    },
                    {
                        "{C:joy_xyz}Détacher{} {C:attention}#1#{}: Augmente toutes les {C:green}probabilités{} listées",
                        "sur les {C:attention}Jokers{} de manière permanente d'un nombre entre {C:attention}#2#{} et {C:attention}#3#{}",
                    },
                    {
                        "{C:green}#4# chance sur #5#{} d'attacher {C:attention}#6#{} matériel à cette carte quand la {C:attention}Blinde{} est choisie"
                    }
                },
                joy_summon_conditions = {
                    "{C:attention}2+{} {C:attention}Jokers{} de même rareté",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive}, {s:0.9,C:joy_link}Liens{}",
                    "{s:0.9,C:inactive}ou {s:0.9,C:joy_token}Jetons{s:0.9,C:inactive})"
                }
            },
        }
    },
}
