--- MISCELLANEOUS

-- Magical Undertaker
JoyousSpring.Joker({
    key = "magicalundertaker",
    atlas = "Misc03",
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster"
            },
        },
    },
})

-- Maiden of the Millennium Moon
JoyousSpring.Joker({
    key = "milleniummoon",
    atlas = "Misc03",
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Illusion"
            },
        },
    },
})

-- Master Tao the Chanter
JoyousSpring.Joker({
    key = "mastertao",
    atlas = "Misc03",
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Illusion"
            },
        },
    },
})

-- Nightmare Apprentice
JoyousSpring.Joker({
    key = "nightapprentice",
    atlas = "Misc03",
    pos = { x = 4, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion"
            },
        },
    },
})

-- Nightmare Magician
JoyousSpring.Joker({
    key = "nightmagician",
    atlas = "Misc03",
    pos = { x = 5, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion"
            },
        },
    },
})

-- Talons of Shurilane
JoyousSpring.Joker({
    key = "shurilane",
    atlas = "Misc03",
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Illusion"
            },
        },
    },
})

-- Tao Tao the Chanter
JoyousSpring.Joker({
    key = "taotao",
    atlas = "Misc03",
    pos = { x = 1, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "EARTH",
                monster_type = "Illusion"
            },
        },
    },
})

-- Secret Village of the Spellcasters
JoyousSpring.Joker({
    key = "secretvillage",
    atlas = "Misc03",
    pos = { x = 3, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
        },
    },
})

-- Quintet Magician
JoyousSpring.Joker({
    key = "quintet",
    atlas = "Misc03",
    pos = { x = 0, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "FUSION",
            },
        },
    },
})

-- Slacker Magician
JoyousSpring.Joker({
    key = "slacker",
    atlas = "Misc03",
    pos = { x = 4, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
            },
        },
    },
})

-- Downerd Magician
JoyousSpring.Joker({
    key = "downerd",
    atlas = "Misc03",
    pos = { x = 2, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
            },
        },
    },
})

-- Alchemic Magician
JoyousSpring.Joker({
    key = "alchemic",
    atlas = "Misc03",
    pos = { x = 1, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "XYZ",
            },
        },
    },
})

-- Heretical Phobos Covos
JoyousSpring.Joker({
    key = "phoboscobos",
    atlas = "Misc03",
    pos = { x = 3, y = 4 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Illusion",
                summon_type = "XYZ",
            },
        },
    },
})

-- Relinquished Anima
JoyousSpring.Joker({
    key = "relinq_anima",
    atlas = "Misc03",
    pos = { x = 1, y = 5 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                summon_type = "LINK",
            },
        },
    },
})
