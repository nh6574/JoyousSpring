--- VIRTUAL WORLD
SMODS.Atlas({
    key = "vw",
    path = "23VirtualWorld.png",
    px = 71,
    py = 95
})

local vw_played_hand = function(handname, context)
    if handname ~= "xuanwu" and handname ~= "qinglong" and handname ~= "chuche" and handname ~= "kauwloon" then
        return false
    end
    handname = "joy_vw_" .. handname
    if next(SMODS.find_card("j_joy_vw_shenshen")) then
        return not not next(context.poker_hands[handname])
    end
    return context.scoring_name == handname
end

-- Virtual World Mai-Hime - Lulu
SMODS.Joker({
    key = "vw_lulu",
    atlas = 'vw',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.shop_add, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            xmult = 1.5,
            shop_add = 1,
            creates = 1,
            shop_activated = false,
            create_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "VirtualWorld" }, is_extra_deck = true } })
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_lulu')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_activated then
                    card.ability.extra.create_activated = true
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "VirtualWorld" }, is_main_deck = true } },
                            'j_joy_vw_lulu', true)
                    end
                end
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.destroy_card and context.cardarea == "unscored" and vw_played_hand("chuche", context) then
                return {
                    remove = true
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.create_activated = false
            card.ability.extra.shop_activated = false
        end
    end
})

-- Virtual World Hime - Nyannyan
SMODS.Joker({
    key = "vw_nyannyan",
    atlas = 'vw',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.shop_add, card.ability.extra.creates, card.ability.extra.returns } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            chips = 50,
            shop_add = 1,
            creates = 1,
            returns = 1,
            shop_activated = false,
            banish_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_activated then
                    card.ability.extra.create_activated = true
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.creates do
                        if #G.consumeables.cards < G.consumeables.config.card_limit then
                            SMODS.add_card {
                                key = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                            }
                        end
                    end
                end
                if vw_played_hand("chuche", context) and not card.ability.extra.banish_activated then
                    card.ability.extra.banish_activated = true
                    card.ability.extra.joyous_spring.is_tuner = true
                end
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    chips = card.ability.extra.chips
                }
            end
            if context.joy_banished and context.joy_banished_card == card then
                if card.ability.extra.return_banish then
                    local choices = SMODS.merge_lists({ JoyousSpring.banish_boss_selected_area.cards,
                        JoyousSpring.banish_end_of_ante_area.cards })
                    local new_choices = {}
                    for _, joker in ipairs(choices) do
                        if joker ~= card then
                            table.insert(new_choices, joker)
                        end
                    end
                    local to_return = pseudorandom_element(new_choices, 'j_joy_vw_nyannyan')
                    if to_return then
                        JoyousSpring.return_from_banish(to_return)
                    end
                end
                card.ability.extra.return_banish = nil
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if JoyousSpring.can_use_abilities(card) and card.ability.extra.banish_activated then
                local returns_from_banish = card.ability.extra.create_activated
                JoyousSpring.banish(card, "blind_selected",
                    function(card)
                        card.ability.extra.return_banish = returns_from_banish
                    end)
                local choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card then
                        table.insert(choices, joker)
                    end
                end
                local to_banish = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
            card.ability.extra.create_activated = false
            card.ability.extra.shop_activated = false
            card.ability.extra.banish_activated = false
        end
    end
})


-- Virtual World Xiezhi - Jiji
SMODS.Joker({
    key = "vw_jiji",
    atlas = 'vw',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.shop_add, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            mult = 6,
            shop_add = 1,
            creates = 1,
            create_activated = false,
            shop_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = JoyousSpring.get_materials_in_graveyard(
                        { { monster_archetypes = { "VirtualWorld" } } },
                        nil,
                        true)
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_jiji')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) and not card.ability.extra.create_activated then
                    card.ability.extra.create_activated = true
                    local choices = JoyousSpring.get_materials_in_graveyard(
                        { { monster_archetypes = { "VirtualWorld" }, is_main_deck = true } },
                        nil,
                        true)
                    for _ = 1, card.ability.extra.creates do
                        local to_create = pseudorandom_element(choices, 'j_joy_vw_jiji')
                        if to_create then
                            JoyousSpring.create_summon({ key = to_create }, true)
                        end
                    end
                end
                if vw_played_hand("chuche", context) then
                    local choices = {}
                    for _, pcard in ipairs(G.hand.cards) do
                        if pcard:get_id() ~= 3 and pcard:get_id() ~= 6 and pcard:get_id() ~= 9 and pcard:get_id() ~= 12 then
                            table.insert(choices, pcard)
                        end
                    end
                    local choice = pseudorandom_element(choices, 'j_joy_vw_jiji')
                    if choice then
                        choice.joy_picked_by_jiji = true
                    end
                end
            end
            if context.individual and context.cardarea == G.play and vw_played_hand("xuanwu", context) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if context.destroy_card and context.cardarea == G.hand and context.destroy_card.joy_picked_by_jiji then
            choice.joy_picked_by_jiji = nil
            if JoyousSpring.can_use_abilities(card) then
                return {
                    remove = true
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.create_activated = false
            card.ability.extra.shop_activated = false
        end
    end
})


-- Virtual World Oto-Hime - Toutou
SMODS.Joker({
    key = "vw_toutou",
    atlas = 'vw',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.shop_add, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            mult = 15,
            shop_add = 2,
            creates = 1,
            shop_activated = false,
            banish_activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) and not card.ability.extra.shop_activated then
                    card.ability.extra.shop_activated = true
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.shop_add do
                        local key_to_add = pseudorandom_element(choices, 'j_joy_vw_nyannyan')
                        JoyousSpring.add_monster_tag(key_to_add)
                    end
                end
                if vw_played_hand("kauwloon", context) then
                    local choices = { "c_joy_vw_xuanwu", "c_joy_vw_qinglong", "c_joy_vw_chuche", "c_joy_vw_kauwloon" }
                    for _ = 1, card.ability.extra.creates do
                        SMODS.add_card {
                            key = pseudorandom_element(choices, 'j_joy_vw_nyannyan'),
                            edition = "e_negative"
                        }
                    end
                end
                if vw_played_hand("chuche", context) and not card.ability.extra.banish_activated then
                    card.ability.extra.banish_activated = true
                    card.ability.extra.joyous_spring.is_tuner = true
                    if not card.ability.extra.joyous_spring.is_all_materials then
                        card.ability.extra.joyous_spring.is_all_materials = {}
                    end
                    card.ability.extra.joyous_spring.is_all_materials.SYNCHRO = true
                end
            end
            if context.other_joker and context.other_joker.facing == "front" and (JoyousSpring.is_monster_type(context.other_joker, "Psychic") or JoyousSpring.is_monster_type(context.other_joker, "Wyrm")) and vw_played_hand("xuanwu", context) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if JoyousSpring.can_use_abilities(card) and card.ability.extra.banish_activated then
                JoyousSpring.banish(card, "boss_selected")
            end
            card.ability.extra.shop_activated = false
            card.ability.extra.banish_activated = false
        end
    end
})


-- Virtual World Kirin - Lili
SMODS.Joker({
    key = "vw_lili",
    atlas = 'vw',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } }), card
                .ability.extra.mills, card.ability.extra.removes, card.ability.extra.gy_chips, card.ability.extra
                .current_gy_chips, card.ability.extra.adds }
        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            chips = 20,
            mills = 3,
            removes = 6,
            gy_chips = 12,
            current_gy_chips = 0,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                if vw_played_hand("qinglong", context) then
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "VirtualWorld" } } })

                    for i = 1, card.ability.extra.mills do
                        JoyousSpring.send_to_graveyard(pseudorandom_element(choices, 'j_joy_vw_lili')) -- TODO: Make send to gy pseudorandom
                    end
                end
                if vw_played_hand("chuche", context) then
                    --TODO: Add GY manip code
                end
                if vw_played_hand("kauwloon", context) then
                    if JoyousSpring.get_graveyard_count() == JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } }) then
                        local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "VirtualWorld" }, is_extra_deck = true } })

                        for i = 1, card.ability.extra.adds do
                            local key_to_add, _ = pseudorandom_element(choices, 'j_joy_vw_lili')
                            if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                                JoyousSpring.add_to_extra_deck(key_to_add)
                            end
                        end
                    end
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_gy_chips
                }
            end
            if context.individual and context.cardarea == G.play then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Psychic" }, { monster_type = "Wyrm" } })
                }
            end
        end
    end
})


-- Virtual World Roshi - Laolao
SMODS.Joker({
    key = "vw_laolao",
    atlas = 'vw',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, 0, card.ability.extra.revives, card.ability.extra.removes, card.ability.extra.gy_mult, card.ability.extra.current_gy_mult, card.ability.extra.revives_negative } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true }
            },
            mult = 3,
            revives = 1,
            removes = 6,
            gy_mult = 10,
            current_gy_mult = 0,
            revives_negative = 1
        },
    },
})


-- Virtual World Dragon - Longlong
SMODS.Joker({
    key = "vw_longlong",
    atlas = 'vw',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult_add, card.ability.extra.mult_sub, 0, card.ability.extra.mult_change, card.ability.extra.detach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            mult_add = 1,
            mult_sub = 2,
            mult_change = 1,
            detach = 1
        },
    },
})


-- Virtual World Shell - Jaja
SMODS.Joker({
    key = "vw_jaja",
    atlas = 'vw',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.removes, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            detach = 2,
            removes = 9,
            xmult = 4
        },
    },
})


-- Virtual World Phoenix - Fanfan
SMODS.Joker({
    key = "vw_fanfan",
    atlas = 'vw',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            detach = 2,
            revives = 1
        },
    },
})


-- Virtual World Tiger - Fufu
SMODS.Joker({
    key = "vw_fufu",
    atlas = 'vw',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.xmult, 1, card.ability.extra.attach, card.ability.extra.banish } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "XYZ",
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                        restrictions = {
                            same_attribute = true,
                            same_type = true
                        }
                    },
                }
            },
            detach = 1,
            xmult = 1,
            attach = 1,
            banish = 1
        },
    },
})


-- Virtual World Beast - Jiujiu
SMODS.Joker({
    key = "vw_jiujiu",
    atlas = 'vw',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mills, card.ability.extra.chips, 0 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            mills = 3,
            chips = 50
        },
    },
})


-- Virtual World Kyubi - Shenshen
SMODS.Joker({
    key = "vw_shenshen",
    atlas = 'vw',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 0,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "VirtualWorld" } } }, name = "k_joy_archetype" },
    },
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["VirtualWorld"] = true },
                summon_type = "SYNCHRO",
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            xchips = 5
        },
    },
    calculate = function(self, card, context)
        if context.after then
            for _, pcard in ipairs(context.scoring_hand) do
                JoyousSpring.banish(pcard, "blind_selected")
            end
        end
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "vw" },
    label = "k_joy_archetype_vw"
}
