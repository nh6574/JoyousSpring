return {
    descriptions = {
        Other = {
            --#region Tooltips
            joy_face_down = {
                name = "Monstruo boca abajo",
                text = {
                    "No puede usar o activar sus efectos",
                    "y cuenta como un comodín en blanco para abilidades",
                    "{C:inactive}(A menos que se especifique)",
                    "{C:inactive}(Su edición anota normalmente)",
                },
            },
            joy_tooltip_related = {
                name = "Cartas relacionadas",
                text = {
                    "Presiona {C:attention}d{} para ver",
                    "las cartas relacionadas",
                },
            },
            joy_tooltip_transferred = {
                name = "Efectos transferidos",
                text = {
                    "Presiona {C:attention}t{} para cambiar",
                    "entre sus efectos principales",
                    "y los efectos tranferidos"
                },
            },
            joy_tooltip_transform = {
                name = "Transformar",
                text = {
                    "Cambia un {C:attention}comodín{} por otro",
                    "Mantiene cualquier modificación",
                },
            },
            joy_tooltip_revive = {
                name = "Revivir",
                text = {
                    "Crea y remueve una carta al azar del {C:attention}Cementerio{}",
                    "Debe haber espacio y puede tener",
                    "una edición al azar, a menos que se especifique",
                    "{s:0.9,C:inactive}(Los {s:0.9,C:attention}comodines{} {s:0.9,C:joy_spell}especiales{} {s:0.9,C:inactive}que no fueron invocados",
                    "{s:0.9,C:inactive}propiamente y las {s:0.9,C:joy_spell}Mágicas de Campo{{s:0.9,C:inactive} no pueden ser revividas)",
                    "{s:0.9,C:inactive}(Los comodines revividos tienen un valor de venta de 1)"
                },
            },
            joy_tooltip_extra_deck_joker = {
                name = "Comodines del Deck Extra",
                text = {
                    "{C:attention}Comodines{} de {C:joy_fusion}Fusión{}, {C:joy_synchro}Sincronía{},",
                    "{C:joy_xyz}Xyz{} y {C:joy_link}Enlace{} ",
                    "{s:0.9,C:inactive}(Cartas en el Deck Extra",
                    "{s:0.9,C:inactive}no cuentan como obtenidas por efectos)"
                },
            },
            joy_tooltip_main_deck_joker = {
                name = "Comodines del Deck Principal",
                text = {
                    "{C:attention}Comodines{} {C:joy_normal}Normales{},",
                    "de {C:joy_effect}Efecto{}, y de {C:joy_ritual}Ritual{}"
                },
            },
            joy_tooltip_special = {
                name = "Comodín Especial",
                text = {
                    "{C:attention}Comodines{} de {C:joy_ritual}Ritual{}, {C:joy_fusion}Fusión{},",
                    "{C:joy_synchro}Sincronía{}, {C:joy_xyz}Xyz{} y {C:joy_link}Enlace{} ",
                },
            },
            joy_tooltip_pendulum_joker = {
                name = "Comodín de Péndulo",
                text = {
                    "Puede ser usado como consumible",
                    "{C:inactive}(Comodines {C:joy_spell}especiales{} {C:inactive}deben ser",
                    "{C:inactive}invocados propiamente primero)"
                },
            },
            joy_tooltip_field_spell_joker = {
                name = "Comodín de Mágica de Campo",
                text = {
                    "Va a la {C:joy_spell}Zona de Campo{}",
                    "No cuentan como {C:attention}comodines{} obtenidos por efectoss",
                    "mientras estén en esa zona al menos que se especifique"
                },
            },
            joy_tooltip_banish = {
                name = "Desterrar",
                text = {
                    "La carta desaparece temporalmente hasta el tiempo",
                    "especificado, manteniendo solo algunos efectos.",
                    "Pueden volver incluso sin tener espacio"
                },
            },
            joy_tooltip_tribute = {
                name = "Sacrificar",
                text = {
                    "Destruye una carta para activar un efecto",
                },
            },
            joy_tooltip_excavate = {
                name = "Excavar",
                text = {
                    "Muestra las 5 cartas de las parte superior",
                    "de tu baraja hasta el número más alto",
                    "especificado en alguna carta",
                    "Esto ocurre cuando se selecciona la {C:attention}ciega{}",
                    "a menos que se especifique",
                },
            },
            joy_tooltip_material = {
                name = "Material",
                text = {
                    "Cartas usadas para una invocación",
                    "{C:inactive}({}{C:joy_xyz}Comodines Xyz{} {C:inactive}empiezan con un{}",
                    "{C:inactive}contador igual al número usado){}",
                },
            },
            joy_tooltip_detach = {
                name = "Desacoplar",
                text = {
                    "Remueve un contador de material Xyz",
                    "para activar un efecto",
                },
            },
            joy_tooltip_token = {
                name = "Ficha",
                text = {
                    "Carta de {C:joy_normal}Monstruo{} creada por efectos",
                    "No tiene efectos por su cuenta",
                },
            },
            joy_tooltip_flip = {
                name = "Efecto de VOLTEO",
                text = {
                    "Se activa una vez por ronda cuando la carta",
                    "es {C:attention}volteada{} boca arriba y dura hasta",
                    "el final de la siguiente ronda {C:inactive}(Al menos que se especifique)",
                    "{C:inactive}(Las cartas son volteadas solo por efectos){}"
                },
            },
            joy_tooltip_trap = {
                name = "Comodín de Trampa",
                text = {
                    "{C:attention}Voltea{} cuando es obtenida",
                    "y al final de cada ronda",
                },
            },
            joy_tooltip_monster = {
                name = "Comodín Monstruo",
                text = {
                    "{C:attention}Comodines{} de {C:joy_mod}JoyousSpring",
                },
            },
            joy_tooltip_no_shop = {
                name = "No Comprable",
                text = {
                    "No puede ser obtenida de la tienda",
                    "o de efectos de cartas que no son {C:attention}Monstruos{}",
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
