-- DECKS
SMODS.Atlas({
    key = "Deck",
    path = "Decks01.png",
    px = 71,
    py = 95
})

-- Laundy Trap
SMODS.Back {
    key = "dmaid",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 0 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                SMODS.add_card { key = "j_joy_dmaid_laundry" }
                return true
            end)
        }))
    end
}

-- Evil★Twin Challenge
SMODS.Back {
    key = "etwin",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 0 },
    apply = function(self, back)

    end
}

-- Nadir Servant
SMODS.Back {
    key = "dogma",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 0 },
    apply = function(self, back)

    end
}

-- Haunted Shrine
SMODS.Back {
    key = "yokai",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 0 },
    apply = function(self, back)

    end
}

-- Spright Starter
SMODS.Back {
    key = "spright",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 0 },
    apply = function(self, back)

    end
}

-- World Legacy's Memory
SMODS.Back {
    key = "mekk",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 0 },
    apply = function(self, back)

    end
}

-- Generaider Boss Room
SMODS.Back {
    key = "generaider",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 0 },
    apply = function(self, back)

    end
}

-- Ghoti Chain
SMODS.Back {
    key = "fish",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 1 },
    apply = function(self, back)

    end
}

-- PSY-Frame Accelerator
SMODS.Back {
    key = "psy",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 1 },
    apply = function(self, back)

    end
}

-- Runick Tip
SMODS.Back {
    key = "runick",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 1 },
    apply = function(self, back)

    end
}

-- The Traveler and the Burning Abyss
SMODS.Back {
    key = "ba",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 1 },
    apply = function(self, back)

    end
}

-- Welcome Labrynth
SMODS.Back {
    key = "lab",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 1 },
    apply = function(self, back)

    end
}

-- Subterror Final Battle
SMODS.Back {
    key = "sub",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 1 },
    apply = function(self, back)

    end
}

-- Eldlixir of Scarlet Sanguine
SMODS.Back {
    key = "eld",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 1 },
    apply = function(self, back)

    end
}

-- A.I. Meet You
SMODS.Back {
    key = "ignis",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 2 },
    apply = function(self, back)

    end
}

-- Solfachord Symphony
SMODS.Back {
    key = "solfa",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 2 },
    apply = function(self, back)

    end
}

-- Witchcrafter Bystreet
SMODS.Back {
    key = "witch",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 2 },
    apply = function(self, back)

    end
}

-- Sinister Shadow Games
SMODS.Back {
    key = "shaddoll",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 2 },
    apply = function(self, back)

    end
}

-- That Grass Looks Greener
SMODS.Back {
    key = "paleo",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 2 },
    apply = function(self, back)

    end
}

-- The Book of the Law
SMODS.Back {
    key = "invoked",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 2 },
    apply = function(self, back)

    end
}

-- You're in Danger!
SMODS.Back {
    key = "danger",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 2 },
    apply = function(self, back)

    end
}

-- Adamancipator Signs
SMODS.Back {
    key = "adaman",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 3 },
    apply = function(self, back)

    end
}

-- Emergency Teleport
SMODS.Back {
    key = "vw",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 3 },
    apply = function(self, back)

    end
}

-- Flower Cardian
SMODS.Back {
    key = "hanafuda",
    atlas = "hanafuda",
    discovered = true,
    pos = { x = 1, y = 5 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                for _, pcard in ipairs(G.playing_cards) do
                    pcard:set_ability("m_joy_hanafuda")
                end
                return true
            end)
        }))
    end
}

-- Inherited Fortune
SMODS.Back {
    key = "flady",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 3 },
    apply = function(self, back)

    end
}

-- Mimighoul Charm
SMODS.Back {
    key = "mimi",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 3 },
    apply = function(self, back)

    end
}

-- Artifact Sanctum
SMODS.Back {
    key = "artifact",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 3 },
    apply = function(self, back)

    end
}

-- Purrely Sharely!?
SMODS.Back {
    key = "purr",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 3 },
    apply = function(self, back)

    end
}

-- Beetrooper Formation
SMODS.Back {
    key = "bee",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 3 },
    apply = function(self, back)

    end
}

-- Summoning Swarm
SMODS.Back {
    key = "wasp",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 4 },
    apply = function(self, back)

    end
}

-- Zoodiac Barrage
SMODS.Back {
    key = "zoo",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 4 },
    apply = function(self, back)

    end
}

-- Centur-Ion True Awakening
SMODS.Back {
    key = "centur",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 4 },
    apply = function(self, back)

    end
}

-- Sinful Spoils of the White Forest
SMODS.Back {
    key = "wforest",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 4 },
    apply = function(self, back)

    end
}

-- Rahu Dracotail
SMODS.Back {
    key = "dracotail",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 4 },
    apply = function(self, back)

    end
}

-- Sky Striker Mobilize - Engage!
SMODS.Back {
    key = "striker",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 4 },
    apply = function(self, back)

    end
}

-- Blessing of the Voiceless Voice
SMODS.Back {
    key = "voice",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 4 },
    apply = function(self, back)

    end
}

-- Drytron Nova
SMODS.Back {
    key = "dry",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 5 },
    apply = function(self, back)

    end
}

-- Hazy Pillar
SMODS.Back {
    key = "hazy",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 5 },
    apply = function(self, back)

    end
}

-- Time Thief Flyback
SMODS.Back {
    key = "thief",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 5 },
    apply = function(self, back)

    end
}

-- Dark Magic Inheritance
SMODS.Back {
    key = "dm",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 5 },
    apply = function(self, back)

    end
}

-- S-Force Showdown
SMODS.Back {
    key = "sforce",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 5 },
    apply = function(self, back)

    end
}
