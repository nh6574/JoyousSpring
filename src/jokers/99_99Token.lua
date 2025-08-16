--- TOKEN
SMODS.Atlas({
    key = "Token",
    path = "99Token00.png",
    px = 71,
    py = 95
})

--#region Token

SMODS.Joker({
    key = "token",
    atlas = 'Token',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 1,
    loc_vars = function(self, info_queue, card)
        return { key = card.ability.extra.joyous_spring.token_name }
    end,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_effect = false,
                attribute = "EARTH",
                monster_type = "Beast",
                token_name = "j_joy_token"
            },
        },
    },
    set_sprites = function(self, card, front)
        if card.ability and card.ability.extra then
            card.children.center.atlas.name = card.ability.extra.joyous_spring.token_atlas or "joy_Token"
            card.children.center.sprite_pos = card.ability.extra.joyous_spring.token_sprite_pos or { x = 0, y = 0 }
            card.children.center:reset()
        end
        JoyousSpring.set_back_sprite(self, card, front)
    end,
    in_pool = function(self, args)
        return false
    end,
})

--#endregion

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "token" },
    label = "k_joy_archetype_token"
}

JoyousSpring.token_pool["token"] = {
    order = 1,
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 0, y = 0 }
}

JoyousSpring.token_pool["token2"] = {
    order = 2,
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 1, y = 0 }
}

JoyousSpring.token_pool["token3"] = {
    order = 3,
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 0, y = 1 }
}

JoyousSpring.token_pool["token4"] = {
    order = 4,
    name = "j_joy_token",
    atlas = "joy_Token",
    sprite_pos = { x = 1, y = 1 }
}
