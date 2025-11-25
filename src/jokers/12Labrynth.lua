--- LABRYNTH
SMODS.Atlas({
    key = "lab",
    path = "12Labrynth.png",
    px = 71,
    py = 95
})

-- Labrynth Cooclock
SMODS.Joker({
    key = "lab_clock",
    atlas = 'lab',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.flips, card.ability.extra.bonus_mult, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            flips = 1,
            bonus_mult = 10,
            revives = 2,
            any_flipped = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    card.ability.extra.any_flipped = false
                    return {
                        message = localize("k_joy_flip_ex"),
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                func = (function()
                                    for i = 1, card.ability.extra.flips do
                                        local flipped_card = JoyousSpring.flip_random_card(card, G.hand.cards, 'front',
                                            "j_joy_lab_clock")
                                        if flipped_card then
                                            card.ability.extra.any_flipped = true
                                            flipped_card.ability.perma_mult = (flipped_card.ability.perma_mult or 0) +
                                                card.ability.extra.bonus_mult
                                        else
                                            break
                                        end
                                    end

                                    return true
                                end)
                            }))
                        end,
                        extra = {
                            message = localize("k_joy_revive"),
                            func = function()
                                G.E_MANAGER:add_event(Event({
                                    trigger = 'after',
                                    delay = 0.3,
                                    func = (function()
                                        if card.ability.extra.any_flipped then
                                            card.ability.extra.any_flipped = false
                                            G.hand:shuffle("j_joy_lab_clock")
                                        end
                                        for i = 1, card.ability.extra.revives do
                                            if #G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit then
                                                JoyousSpring.revive_pseudorandom(
                                                    { { rarity = 1, monster_archetypes = { "Labrynth" }, exclude_keys = { "j_joy_lab_clock" } } },
                                                    'j_joy_lab_clock',
                                                    false
                                                )
                                            end
                                        end

                                        return true
                                    end)
                                }))
                                G.E_MANAGER:add_event(Event({
                                    trigger = 'after',
                                    delay = 0.8,
                                    func = (function()
                                        JoyousSpring.tribute(card, { card })

                                        return true
                                    end)
                                }))
                            end
                        }
                    }
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return not SMODS.is_eternal(card, card) and G.GAME.blind.in_blind or false
    end,
})

-- Labrynth Stovie Torbie
SMODS.Joker({
    key = "lab_stovie",
    atlas = 'lab',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.flips, card.ability.extra.bonus_chips, card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            flips = 3,
            bonus_chips = 50,
            money = 10,
            tributes = 1,
            any_flipped = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
                        if joker ~= card and not SMODS.is_eternal(joker, card) then
                            materials[#materials + 1] = joker
                        end
                    end
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.tributes then
                    card.ability.extra.any_flipped = false
                    local fiend_tributed = false
                    for i, joker in ipairs(context.joy_selection) do
                        if JoyousSpring.is_monster_type(joker, "Fiend") then
                            fiend_tributed = true
                        end
                    end
                    return {
                        message = localize("k_joy_flip_ex"),
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                func = (function()
                                    for i = 1, card.ability.extra.flips do
                                        local flipped_card = JoyousSpring.flip_random_card(card, G.hand.cards, 'front',
                                            "j_joy_lab_stovie")
                                        if flipped_card then
                                            card.ability.extra.any_flipped = true
                                            flipped_card.ability.perma_bonus = (flipped_card.ability.perma_bonus or 0) +
                                                card.ability.extra.bonus_chips
                                        else
                                            break
                                        end
                                    end

                                    return true
                                end)
                            }))
                        end,
                        extra = {
                            dollars = fiend_tributed and 3 or nil,
                            func = function()
                                G.E_MANAGER:add_event(Event({
                                    trigger = 'after',
                                    delay = 0.8,
                                    func = (function()
                                        G.E_MANAGER:add_event(Event({
                                            trigger = 'after',
                                            delay = 0.3,
                                            func = (function()
                                                if card.ability.extra.any_flipped then
                                                    card.ability.extra.any_flipped = false
                                                    G.hand:shuffle("j_joy_lab_stovie")
                                                end

                                                return true
                                            end)
                                        }))
                                        JoyousSpring.tribute(card, context.joy_selection)
                                        JoyousSpring.tribute(card, { card })

                                        return true
                                    end)
                                }))
                            end
                        }
                    }
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if SMODS.is_eternal(card, card) or not G.GAME.blind.in_blind then
            return false
        end
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,

})

-- Labrynth Chandraglier
SMODS.Joker({
    key = "lab_changdra",
    atlas = 'lab',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.flips, card.ability.extra.bonus_dollars, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            flips = 3,
            bonus_dollars = 3,
            creates = 2,
            tributes = 1,
            any_flipped = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
                        if joker ~= card and not SMODS.is_eternal(joker, card) then
                            materials[#materials + 1] = joker
                        end
                    end
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.tributes then
                    card.ability.extra.any_flipped = false
                    local fiend_tributed = false
                    for i, joker in ipairs(context.joy_selection) do
                        if JoyousSpring.is_monster_type(joker, "Fiend") then
                            fiend_tributed = true
                        end
                    end
                    return {
                        message = localize("k_joy_flip_ex"),
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                func = (function()
                                    for i = 1, card.ability.extra.flips do
                                        local flipped_card = JoyousSpring.flip_random_card(card, G.hand.cards, 'front',
                                            "j_joy_lab_changdra")
                                        if flipped_card then
                                            card.ability.extra.any_flipped = true
                                            flipped_card.ability.perma_p_dollars = (flipped_card.ability.perma_p_dollars or 0) +
                                                card.ability.extra.bonus_dollars
                                        else
                                            break
                                        end
                                    end

                                    return true
                                end)
                            }))
                        end,
                        extra = {
                            func = function()
                                G.E_MANAGER:add_event(Event({
                                    trigger = 'after',
                                    delay = 0.8,
                                    func = (function()
                                        G.E_MANAGER:add_event(Event({
                                            trigger = 'after',
                                            delay = 0.3,
                                            func = (function()
                                                if card.ability.extra.any_flipped then
                                                    card.ability.extra.any_flipped = false
                                                    G.hand:shuffle("j_joy_lab_changdra")
                                                end

                                                if fiend_tributed then
                                                    for i = 1, card.ability.extra.creates do
                                                        JoyousSpring.add_random_tag()
                                                    end
                                                end

                                                return true
                                            end)
                                        }))
                                        JoyousSpring.tribute(card, context.joy_selection)
                                        JoyousSpring.tribute(card, { card })

                                        return true
                                    end)
                                }))
                            end
                        }
                    }
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if SMODS.is_eternal(card, card) or not G.GAME.blind.in_blind then
            return false
        end
        local materials = {}
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
})

-- Ariane the Labrynth Servant
SMODS.Joker({
    key = "lab_ariane",
    atlas = 'lab',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.h_size, card.ability.extra.flipped, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            mult = 10,
            h_size = 1,
            flipped = 5,
            count = 0,
            pcard_count = 0,
            active = false,
            hand_size_changed = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
            if context.setting_blind and context.main_eval then
                if card.ability.extra.pcard_count > 0 then
                    card.ability.extra.hand_size_changed = card.ability.extra.h_size * card.ability.extra.pcard_count
                    G.hand:change_size(card.ability.extra.hand_size_changed)
                end
                card.ability.extra.count = 0
                card.ability.extra.pcard_count = 0
            end
        end
        if context.joy_card_flipped then
            if JoyousSpring.is_playing_card(context.joy_card_flipped) then
                card.ability.extra.pcard_count = card.ability.extra.pcard_count + 1
            end
            card.ability.extra.count = card.ability.extra.count + 1
            if JoyousSpring.can_use_abilities(card) and not card.ability.extra.active and card.ability.extra.count >= card.ability.extra.flipped then
                local choices = JoyousSpring.get_materials_in_collection({ { rarity = 2, monster_archetypes = { "Labrynth" } } })
                local pick = pseudorandom_element(choices, 'j_joy_lab_ariane')

                JoyousSpring.add_monster_tag(pick or "j_joy_lab_arianna")
                card.ability.extra.active = true
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.hand_size_changed > 0 then
                G.hand:change_size(-card.ability.extra.hand_size_changed)
            end
            card.ability.extra.hand_size_changed = 0
            card.ability.extra.active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.hand_size_changed > 0 then
            G.hand:change_size(-card.ability.extra.hand_size_changed)
            card.ability.extra.hand_size_changed = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "count" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "flipped" },
                { text = ")" },
            },
        }
    end
})

-- Arianna the Labrynth Servant
SMODS.Joker({
    key = "lab_arianna",
    atlas = 'lab',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.h_size, card.ability.extra.flipped, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            chips = 50,
            h_size = 1,
            flipped = 5,
            count = 0,
            pcard_count = 0,
            active = false,
            hand_size_changed = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips
                }
            end
            if context.setting_blind and context.main_eval then
                if card.ability.extra.pcard_count > 0 then
                    card.ability.extra.hand_size_changed = card.ability.extra.h_size * card.ability.extra.pcard_count
                    G.hand:change_size(card.ability.extra.hand_size_changed)
                end
                card.ability.extra.count = 0
                card.ability.extra.pcard_count = 0
            end
        end
        if context.joy_card_flipped then
            if JoyousSpring.is_playing_card(context.joy_card_flipped) then
                card.ability.extra.pcard_count = card.ability.extra.pcard_count + 1
            end
            card.ability.extra.count = card.ability.extra.count + 1
            if JoyousSpring.can_use_abilities(card) and not card.ability.extra.active and card.ability.extra.count >= card.ability.extra.flipped then
                local choices = JoyousSpring.get_materials_in_collection({ { rarity = 1, monster_archetypes = { "Labrynth" } } })
                local pick = pseudorandom_element(choices, 'j_joy_lab_arianna')
                JoyousSpring.add_monster_tag(pick or "j_joy_lab_clock")
                card.ability.extra.active = true
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.hand_size_changed > 0 then
                G.hand:change_size(-card.ability.extra.hand_size_changed)
            end
            card.ability.extra.hand_size_changed = 0
            card.ability.extra.active = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.hand_size_changed > 0 then
            G.hand:change_size(-card.ability.extra.hand_size_changed)
            card.ability.extra.hand_size_changed = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "count" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "flipped" },
                { text = ")" },
            },
        }
    end
})

-- Arias the Labrynth Butler
SMODS.Joker({
    key = "lab_arias",
    atlas = 'lab',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * card.ability.extra.total_count, card.ability.extra.flipped, card.ability.extra.count } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            chips = 25,
            flipped = 10,
            count = 0,
            active = false,
            total_count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                card.ability.extra.count = 0
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * card.ability.extra.total_count
                }
            end
        end
        if context.joy_card_flipped then
            if JoyousSpring.is_playing_card(context.joy_card_flipped) then
                card.ability.extra.total_count = card.ability.extra.total_count + 1
            end
            card.ability.extra.count = card.ability.extra.count + 1
            if JoyousSpring.can_use_abilities(card) and not card.ability.extra.active and card.ability.extra.count > card.ability.extra.flipped then
                local choices = JoyousSpring.get_materials_in_collection({ { rarity = 3, monster_archetypes = { "Labrynth" } } })
                local pick = pseudorandom_element(choices, 'j_joy_lab_arianna')
                JoyousSpring.add_monster_tag(pick or "j_joy_lab_lovely")
                card.ability.extra.active = true
            end
        end
        if not context.blueprint_card and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = false
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_archetypes = { "Labrynth" } } }) > 0 then
            card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "count" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "flipped" },
                { text = ")" },
            },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * card.ability.extra.total_count
            end
        }
    end
})

-- Labrynth Archfiend
SMODS.Joker({
    key = "lab_archfiend",
    atlas = 'lab',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Fiend" } }) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            mult = 5,
            flips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Fiend" } })
                }
            end
            if context.joy_card_flipped and JoyousSpring.is_playing_card(context.joy_card_flipped) and not (context.joy_source and context.joy_source.config.center.key == "j_joy_lab_archfiend") then
                return {
                    func = function()
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            func = (function()
                                for i = 1, card.ability.extra.flips do
                                    local flipped_card = JoyousSpring.flip_random_card(card, G.hand.cards, 'front',
                                        "j_joy_lab_archfiend")
                                    if flipped_card then
                                        card.ability.extra.any_flipped = true
                                    else
                                        break
                                    end
                                end

                                return true
                            end)
                        }))
                    end,
                    extra = {
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.8,
                                func = (function()
                                    G.E_MANAGER:add_event(Event({
                                        trigger = 'after',
                                        delay = 0.3,
                                        func = (function()
                                            if card.ability.extra.any_flipped then
                                                card.ability.extra.any_flipped = false
                                                G.hand:shuffle("j_joy_lab_archfiend")
                                                SMODS.calculate_effect({ message = localize("k_joy_flip_ex") }, card)
                                            end
                                            return true
                                        end)
                                    }))
                                    return true
                                end)
                            }))
                        end
                    }
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                card.joker_display_values.mult = card.ability.extra.mult *
                    JoyousSpring.count_materials_in_graveyard({ { monster_type = "Fiend" } })
            end
        }
    end
})

-- Lovely Labrynth of the Silver Castle
SMODS.Joker({
    key = "lab_lovely",
    atlas = 'lab',
    pos = { x = 3, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            math.max(1, card.ability.extra.odds - JoyousSpring.count_materials_owned({ { monster_type = "Fiend" } })),
            self.key)
        return { vars = { numerator, denominator, card.ability.extra.extra_mult, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            numerator = 4,
            odds = 32,
            extra_mult = 3,
            mult = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
            if context.joy_card_flipped and context.joy_card_flipped.facing == 'back' then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.extra_mult
            end
            if context.stay_flipped and context.to_area == G.hand and
                SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, math.max(1, card.ability.extra.odds - JoyousSpring.count_materials_owned({ { monster_type = "Fiend" } }))) then
                return {
                    stay_flipped = true
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Lady Labrynth of the Silver Castle
SMODS.Joker({
    key = "lab_lady",
    atlas = 'lab',
    pos = { x = 0, y = 2 },
    joy_alt_pos = { { x = 2, y = 2 } },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 11,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.extra_xmult, 1 + card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Fiend",
                monster_archetypes = { ["Labrynth"] = true }
            },
            xmult = 0,
            extra_xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if context.joker_main then
            if card.ability.extra.xmult > 0 then
                return {
                    xmult = 1 + card.ability.extra.xmult,
                }
            end
        end
        if context.joy_card_flipped then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.extra_xmult
        end
    end,
    joy_allow_ability = function(card, other_card)
        return not JoyousSpring.is_trap_monster(other_card) and JoyousSpring.is_monster_type(other_card, "Fiend") and
            true or false
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                card.joker_display_values.xmult = 1 + card.ability.extra.xmult
            end
        }
    end
})

-- Labrynth Labyrinth
SMODS.Joker({
    key = "lab_labyrinth",
    atlas = 'lab',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator,
            card.ability.extra.odds, self.key)
        return { vars = { card.ability.extra.money, numerator, denominator, card.ability.extra.flips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Labrynth" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Labrynth"] = true }
            },
            money = 5,
            numerator = 5,
            odds = 10,
            flips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_card_flipped and not (context.joy_source and context.joy_source.config.center.key == "j_joy_lab_labyrinth") then
                if context.joy_card_flipped.ability.set == "Joker" then
                    return {
                        dollars = card.ability.extra.money
                    }
                end
                if JoyousSpring.is_playing_card(context.joy_card_flipped) and SMODS.pseudorandom_probability(card, card.config.center.key, card.ability.extra.numerator, card.ability.extra.odds) then
                    return {
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                func = (function()
                                    for i = 1, card.ability.extra.flips do
                                        local flipped_card = JoyousSpring.flip_random_card(card, G.hand.cards, 'front',
                                            "j_joy_lab_labyrinth")
                                        if flipped_card then
                                            card.ability.extra.any_flipped = true
                                        else
                                            break
                                        end
                                    end

                                    return true
                                end)
                            }))
                        end,
                        extra = {
                            func = function()
                                G.E_MANAGER:add_event(Event({
                                    trigger = 'after',
                                    delay = 0.8,
                                    func = (function()
                                        G.E_MANAGER:add_event(Event({
                                            trigger = 'after',
                                            delay = 0.3,
                                            func = (function()
                                                if card.ability.extra.any_flipped then
                                                    card.ability.extra.any_flipped = false
                                                    G.hand:shuffle("j_joy_lab_labyrinth")
                                                    SMODS.calculate_effect({ message = localize("k_joy_flip_ex") }, card)
                                                end
                                                return true
                                            end)
                                        }))
                                        return true
                                    end)
                                }))
                            end
                        }
                    }
                end
            end
        end
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "lab" },
    label = "k_joy_archetype_lab"
}
