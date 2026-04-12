--- VOICELESS VOICE
SMODS.Atlas({
    key = "voice",
    path = "36VoicelessVoice.png",
    px = 71,
    py = 95
})

-- Lo, the Prayers of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_lo",
    atlas = 'voice',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
        },
    },
})

-- Saffira, Dragon Queen of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_saffira",
    atlas = 'voice',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
        },
    },
})

-- Sauravis, Dragon Sage of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_sauravis",
    atlas = 'voice',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
        },
    },
})

-- Saffira, Divine Dragon of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_divine",
    atlas = 'voice',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Dragon",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
        },
    },
})

-- Skull Guardian, Protector of the Voiceless Voice
JoyousSpring.Joker({
    key = "voice_skull",
    atlas = 'voice',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VoicelessVoice" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["VoicelessVoice"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "voice" },
    label = "k_joy_archetype_voice"
}
