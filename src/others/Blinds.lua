-- Blinds and Opponent's Blind cards

SMODS.Atlas {
    key = "blinds01",
    path = "blinds_opponent01.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
}

--#region Effect

-- Dimension Shifter
JoyousSpring.Blind {
    key = "dimensionshifter",
    atlas = "blinds01",
    pos = { x = 0, y = 29 },
    boss_colour = G.C.JOY.EFFECT,
    has_ante_ability = true,
    opponent_card = {},
}




-- Droll & Lock Bird
JoyousSpring.Blind {
    key = "droll",
    atlas = "blinds01",
    pos = { x = 0, y = 30 },
    boss_colour = G.C.JOY.EFFECT,
    opponent_card = {}
}

-- Kurikara Divincarnate
JoyousSpring.Blind {
    key = "kurikara",
    atlas = "blinds01",
    pos = { x = 0, y = 31 },
    boss_colour = G.C.JOY.EFFECT,
    opponent_card = {}
}

-- Nibiru, the Primal Being
JoyousSpring.Blind {
    key = "nibiru",
    atlas = "blinds01",
    pos = { x = 0, y = 32 },
    boss_colour = G.C.JOY.EFFECT,
    opponent_card = {}
}

-- Theia, the Primal Being
JoyousSpring.Blind {
    key = "theia",
    atlas = "blinds01",
    pos = { x = 0, y = 36 },
    boss_colour = G.C.JOY.EFFECT,
    opponent_card = {}
}

-- Parasite Paracide
JoyousSpring.Blind {
    key = "parasiteparacide",
    atlas = "blinds01",
    pos = { x = 0, y = 34 },
    boss_colour = G.C.JOY.EFFECT,
    opponent_card = {}
}

-- Parasite Paranoid
JoyousSpring.Blind {
    key = "parasiteparanoid",
    atlas = "blinds01",
    pos = { x = 0, y = 35 },
    boss_colour = G.C.JOY.EFFECT,
    opponent_card = {}
}

--#endregion

--#region Spell

-- Book of Eclipse
JoyousSpring.Blind {
    key = "bookofeclipse",
    atlas = "blinds01",
    pos = { x = 0, y = 0 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Book of Lunar Eclipse
JoyousSpring.Blind {
    key = "bookoflunareclipse",
    atlas = "blinds01",
    pos = { x = 0, y = 1 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Book of Moon
JoyousSpring.Blind {
    key = "bookofmoon",
    atlas = "blinds01",
    pos = { x = 0, y = 2 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Book of Taiyou
JoyousSpring.Blind {
    key = "bookoftaiyou",
    atlas = "blinds01",
    pos = { x = 0, y = 3 },
    boss_colour = G.C.JOY.SPELL,
    joy_ante_ability = true,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
    }
}

-- Cosmic Cyclone
JoyousSpring.Blind {
    key = "cosmiccyclone",
    atlas = "blinds01",
    pos = { x = 0, y = 4 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Dark Ruler No More
JoyousSpring.Blind {
    key = "drnm",
    atlas = "blinds01",
    pos = { x = 0, y = 5 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Forbidden Chalice
JoyousSpring.Blind {
    key = "forchalice",
    atlas = "blinds01",
    pos = { x = 0, y = 6 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Forbidden Dress
JoyousSpring.Blind {
    key = "fordress",
    atlas = "blinds01",
    pos = { x = 0, y = 7 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Forbidden Droplet
JoyousSpring.Blind {
    key = "fordroplet",
    atlas = "blinds01",
    pos = { x = 0, y = 8 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Forbidden Lance
JoyousSpring.Blind {
    key = "forlance",
    atlas = "blinds01",
    pos = { x = 0, y = 9 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Forbidden Scripture
JoyousSpring.Blind {
    key = "forscript",
    atlas = "blinds01",
    pos = { x = 0, y = 10 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Harpie's Feather Duster
JoyousSpring.Blind {
    key = "harpiesfeatherduster",
    atlas = "blinds01",
    pos = { x = 0, y = 11 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Lightning Storm
JoyousSpring.Blind {
    key = "lightningstorm",
    atlas = "blinds01",
    pos = { x = 0, y = 12 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Necrovalley
JoyousSpring.Blind {
    key = "necrovalley",
    atlas = "blinds01",
    pos = { x = 0, y = 13 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Senet Switch
JoyousSpring.Blind {
    key = "senetswitch",
    atlas = "blinds01",
    pos = { x = 0, y = 14 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Super Polymerization
JoyousSpring.Blind {
    key = "superpoly",
    atlas = "blinds01",
    pos = { x = 0, y = 15 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Terminal World
JoyousSpring.Blind {
    key = "terminalworld",
    atlas = "blinds01",
    pos = { x = 0, y = 17 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Terminal World NEXT
JoyousSpring.Blind {
    key = "terminalworldnext",
    atlas = "blinds01",
    pos = { x = 0, y = 16 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

-- Ultimate Slayer
JoyousSpring.Blind {
    key = "ultimateslayer",
    atlas = "blinds01",
    pos = { x = 0, y = 18 },
    boss_colour = G.C.JOY.SPELL,
    opponent_card = {}
}

--#endregion

--#region Trap

-- Chain Disappearance
JoyousSpring.Blind {
    key = "chaindisappearance",
    atlas = "blinds01",
    pos = { x = 0, y = 19 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Chain Dispel
JoyousSpring.Blind {
    key = "chaindispel",
    atlas = "blinds01",
    pos = { x = 0, y = 20 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Chain Hole
JoyousSpring.Blind {
    key = "chainhole",
    atlas = "blinds01",
    pos = { x = 0, y = 21 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Evenly Matched
JoyousSpring.Blind {
    key = "evenly",
    atlas = "blinds01",
    pos = { x = 0, y = 22 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Imperial Iron Wall
JoyousSpring.Blind {
    key = "imperialironwall",
    atlas = "blinds01",
    pos = { x = 0, y = 23 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Imperial Order
JoyousSpring.Blind {
    key = "imperialorder",
    atlas = "blinds01",
    pos = { x = 0, y = 24 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Infinite Impermanence
JoyousSpring.Blind {
    key = "imperm",
    atlas = "blinds01",
    pos = { x = 0, y = 25 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Lightforce Sword
JoyousSpring.Blind {
    key = "lightforcesword",
    atlas = "blinds01",
    pos = { x = 0, y = 26 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

-- Macro Cosmos
JoyousSpring.Blind {
    key = "macrocosmos",
    atlas = "blinds01",
    pos = { x = 0, y = 27 },
    boss_colour = G.C.JOY.TRAP,
    has_ante_ability = true,
    joy_can_be_sent_to_graveyard = function(self, choices)
        return {}
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
        joy_can_be_sent_to_graveyard = function(self, card, choices)
            if JoyousSpring.can_use_abilities(card) then
                return {}
            end
        end
    }
}

-- Red Reboot
JoyousSpring.Blind {
    key = "redreboot",
    atlas = "blinds01",
    pos = { x = 0, y = 28 },
    boss_colour = G.C.JOY.TRAP,
    opponent_card = {}
}

--#endregion
