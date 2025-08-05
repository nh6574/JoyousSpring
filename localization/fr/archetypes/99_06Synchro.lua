return {
    descriptions = {
        Joker = {
            j_joy_firewall_saber = {
                name = "{C:joy_synchro}Dragon Sabre Pare-Feu",
                text = {
                    {
                        "{C:attention}Ressuscite #1#{} {C:joy_normal}Cyberse{} {C:joy_spell}Extra Deck{} en {C:dark_edition}Négatif{} quand invoqué",
                    },
                    {
                        "Crée {C:attention}#2#{} {C:spectral}Spectral{} {C:dark_edition}Négatif{} quand utilisé comme {C:attention}matériel{} pour un {C:joy_link}Lien",
                    },
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
                    {
                        "{C:mult}+#1#{} Mult pour chaque {C:attention}Joker{} non-debuff",
                        "{C:inactive}(Actuellement: {C:mult}+#2#{}{C:inactive} Mult)",
                    },
                    {
                        "Détruis tous les autres {C:attention}Jokers{} non-{C:joy_token}Jeton{} non-debuff",
                        "en fin de manche et crée le même nombre de",
                        "{C:joy_token}\"Jetons Utchatzimime\"{} en {C:dark_edition}Négatif{}",
                    },
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
                    {
                        "Cette carte peut être utilisé comme n'importe quel {C:joy_token}Jeton{}",
                    },
                }
            },
            j_joy_fishlamp = {
                name = "{C:joy_synchro}Poisson-Lampe",
                text = {
                    {
                        "Ajoute {C:attention}#1#{} {C:joy_synchro}Synchro{} {C:joy_normal}Poisson{} à l'{C:joy_spell}Extra Deck{}",
                        "quand utilisé comme {C:attention}matériel{} et crée jusqu'à {C:attention}#2#{}",
                        "{C:joy_token}\"Jetons Lampe\"{} pouvant être traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
                        "{C:inactive}(Nécessite de la place)",
                    },
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
                    },
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
                    {
                        "Cette carte peut être utilisée comme n'importe quel {C:joy_token}Jeton{}",
                    },
                    {
                        "Traité comme n'importe quel {C:attention}matériel{} pour un {C:joy_synchro}Synchro",
                    },
                }
            },
            j_joy_afd = {
                name = "{C:joy_synchro}Ancien Dragon Féerique",
                text = {
                    {
                        "Crée {C:attention}#1#{} {C:joy_synchro}Syntoniseur{} quand invoqué",
                        "{C:inactive}(Nécessite de la place)",
                    },
                    {
                        "Détruis {C:attention}#2#{} {C:joy_spell}Magie de Terrain{} aléatoire quand la {C:attention}Blinde{} est choisie",
                        "pour gagner {C:money}+#3#${} puis crée {C:attention}#2#{} {C:joy_spell}Magie de Terrain",
                        "{C:inactive}(Nécessite de la place)",
                    },
                },
                joy_summon_conditions = {
                    "{C:attention}1{} {C:joy_synchro}Syntoniseur{} +",
                    "{C:attention}1{} non-{C:joy_synchro}Syntoniseur{}",
                    "{s:0.9,C:inactive}(Excepté {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} ou {s:0.9,C:joy_link}Liens{}{s:0.9,C:inactive})",
                }
            },
        }
    },
}
