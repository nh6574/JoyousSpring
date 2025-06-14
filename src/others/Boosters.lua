--- BOOSTERS
SMODS.Atlas({
    key = "Booster",
    path = "boosters.png",
    px = 71,
    py = 95
})

SMODS.Booster({
    key = "monster_pack",
    atlas = "Booster",
    pos = { x = 0, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 2
    },
    cost = 4,
    weight = 1,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "jumbo_monster_pack",
    atlas = "Booster",
    pos = { x = 1, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 4
    },
    cost = 6,
    weight = 1,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "mega_monster_pack",
    atlas = "Booster",
    pos = { x = 2, y = 1 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 2,
        extra = 4
    },
    cost = 8,
    weight = 0.25,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.NORMAL,
            G.C.JOY.EFFECT
        }
        local color = pseudorandom_element(choices, 'JoyousSpring')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.EFFECT)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "extra_pack",
    atlas = "Booster",
    pos = { x = 0, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 2
    },
    cost = 6,
    weight = 0.75,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = {
                {
                    is_monster = true,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
                    exclude_main_deck = true,
                    exclude_field_spell = true
                },
                {
                    summon_type = "RITUAL"
                }
            },
            joy_monster_default = "j_joy_sauravis"
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.RITUAL,
            G.C.JOY.FUSION,
            G.C.JOY.SYNCHRO,
            G.C.JOY.XYZ,
            G.C.JOY.LINK
        }
        local color = pseudorandom_element(choices, 'JoyousSpring')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.FUSION)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "jumbo_extra_pack",
    atlas = "Booster",
    pos = { x = 1, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 1,
        extra = 4
    },
    cost = 8,
    weight = 0.5,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = {
                {
                    is_monster = true,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
                    exclude_main_deck = true,
                    exclude_field_spell = true
                },
                {
                    summon_type = "RITUAL"
                }
            },
            joy_monster_default = "j_joy_sauravis"
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.RITUAL,
            G.C.JOY.FUSION,
            G.C.JOY.SYNCHRO,
            G.C.JOY.XYZ,
            G.C.JOY.LINK
        }
        local color = pseudorandom_element(choices, 'JoyousSpring')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.FUSION)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})

SMODS.Booster({
    key = "mega_extra_pack",
    atlas = "Booster",
    pos = { x = 2, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.choose, card.ability.extra } }
    end,
    config = {
        choose = 2,
        extra = 4
    },
    cost = 10,
    weight = 0.25,
    kind = "JoyousSpring",
    group_key = "k_joy_booster_group",
    create_card = function(self, card)
        return SMODS.create_card({
            set = "JoyousSpring",
            area = G.pack_cards,
            joy_monster_properties = {
                {
                    is_monster = true,
                    exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil,
                    exclude_main_deck = true,
                    exclude_field_spell = true
                },
                {
                    summon_type = "RITUAL"
                }
            },
            joy_monster_default = "j_joy_sauravis"
        })
    end,
    ease_background_colour = function(self)
        local choices = {
            G.C.JOY.RITUAL,
            G.C.JOY.FUSION,
            G.C.JOY.SYNCHRO,
            G.C.JOY.XYZ,
            G.C.JOY.LINK
        }
        local color = pseudorandom_element(choices, 'JoyousSpring')
        ease_colour(G.C.DYN_UI.MAIN, color or G.C.JOY.FUSION)
        ease_background_colour({ new_colour = color, special_colour = G.C.BLACK, contrast = 2 })
    end,
})
