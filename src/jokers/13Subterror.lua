--- SUBTERROR
SMODS.Atlas({
    key = "sub",
    path = "13Subterror.png",
    px = 71,
    py = 95
})

-- Subterror Fiendess
SMODS.Joker({
    key = "sub_fiendess",
    atlas = 'sub',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Subterror"] = true }
            },
            flips = 1,
            revives = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local targets = JoyousSpring.get_materials_owned({ { can_flip = true } })
                    local materials = {}
                    for i, joker in ipairs(targets) do
                        if joker ~= card and joker.facing == 'front' then
                            materials[#materials + 1] = joker
                        end
                    end
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.flips,
                            card.ability.extra.flips, localize("k_joy_select"))
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.flips then
                    for _, selected_card in ipairs(context.joy_selection) do
                        JoyousSpring.flip(selected_card, card)
                    end
                    JoyousSpring.flip(card, card)
                    for i = 1, card.ability.extra.revives do
                        JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "Subterror" } } },
                            'j_joy_sub_fiendess',
                            false,
                            { negative = true }
                        )
                    end
                    card.ability.extra.activated = true
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        local targets = JoyousSpring.get_materials_owned({ { can_flip = true } })
        local faceup_joker = false
        for _, joker in ipairs(targets) do
            if joker ~= card and joker.facing == 'front' then
                return true
            end
        end
        return false
    end,
})

-- Subterror Nemesis Defender
SMODS.Joker({
    key = "sub_defender",
    atlas = 'sub',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (JoyousSpring.count_flipped('back', { G.jokers }) + JoyousSpring.count_materials_owned({ { monster_archetypes = { "Subterror" } } })) } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "BeastWarrior",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorNemesis"] = true }
            },
            chips = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        (JoyousSpring.count_flipped('back', { G.jokers }) + JoyousSpring.count_materials_owned({ { monster_archetypes = { "Subterror" } } }))
                }
            end
            if context.selling_self and not context.blueprint then
                JoyousSpring.flip_all_cards(card, 'front')
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    (JoyousSpring.count_flipped('back', { G.jokers }) + JoyousSpring.count_materials_owned({ { monster_archetypes = { "Subterror" } } }))
            end
        }
    end
})

-- Subterror Nemesis Archer
SMODS.Joker({
    key = "sub_archer",
    atlas = 'sub',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Fairy",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorNemesis"] = true }
            },
            flips = 1,
            creates = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local targets = JoyousSpring.get_materials_owned({ { can_flip = true } })
                    local materials = {}
                    for i, joker in ipairs(targets) do
                        if joker ~= card and joker.facing == 'front' then
                            materials[#materials + 1] = joker
                        end
                    end
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.flips,
                            card.ability.extra.flips, localize("k_joy_select"))
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.flips then
                    for _, selected_card in ipairs(context.joy_selection) do
                        JoyousSpring.flip(selected_card, card)
                    end
                    JoyousSpring.flip(card, card)
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "Subterror" }, exclude_keys = { "j_joy_sub_archer" }, rarity = 1 }, { monster_archetypes = { "Subterror" }, exclude_keys = { "j_joy_sub_archer" }, rarity = 2 } },
                        "j_joy_sub_archer", false, false, "e_negative")
                    card.ability.extra.activated = true
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        local targets = JoyousSpring.get_materials_owned({ { can_flip = true } })
        local faceup_joker = false
        for _, joker in ipairs(targets) do
            if joker ~= card and joker.facing == 'front' then
                faceup_joker = true
                break
            end
        end
        return faceup_joker
    end,
})

-- Subterror Nemesis Warrior
SMODS.Joker({
    key = "sub_warrior",
    atlas = 'sub',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Warrior",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorNemesis"] = true }
            },
            tributes = 1,
            revives = 1,
            mills = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local targets = G.jokers.cards
                    local materials = {}
                    for i, joker in ipairs(targets) do
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
                    JoyousSpring.tribute(card, context.joy_selection)
                    JoyousSpring.tribute(card, { card })
                    for i = 1, card.ability.extra.revives do
                        local revived_card = JoyousSpring.revive_pseudorandom(
                            { { monster_archetypes = { "SubterrorBehemoth" } } },
                            'j_joy_sub_warrior',
                            true
                        )
                        if not revived_card then
                            revived_card = JoyousSpring.revive_pseudorandom(
                                { { monster_archetypes = { "Subterror" } } },
                                'j_joy_sub_warrior',
                                true
                            )
                        end
                    end
                end
            end
            if JoyousSpring.calculate_flip_effect(card, context) then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_archetypes = { "SubterrorBehemoth" } } },
                    card.config.center.key, card.ability.extra.mills)
            end
        end
    end,
    joy_can_activate = function(card)
        local targets = G.jokers.cards
        local materials = {}
        for i, joker in ipairs(targets) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                materials[#materials + 1] = joker
            end
        end
        return next(materials) and JoyousSpring.count_materials_in_graveyard(
            { { monster_archetypes = { "SubterrorBehemoth" } }, { monster_archetypes = { "Subterror" } } }, true) > 0
    end,
})

-- Subterror Guru
SMODS.Joker({
    key = "sub_guru",
    atlas = 'sub',
    pos = { x = 0, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.flips, card.ability.extra.xmult, card.ability.extra.h_size, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Dragon",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            flips = 2,
            xmult = 2,
            h_size = 1,
            creates = 1,
            activated = false,
            current_xmult = 0,
            current_h_size = 0,
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval and card.facing == 'back' then
            JoyousSpring.flip(card, card)
        end
        if context.joker_main then
            if card.ability.extra.current_xmult > 0 then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local targets = JoyousSpring.get_materials_owned({ { facedown = true }, { can_flip = true } })
                    local materials = {}
                    for i, joker in ipairs(targets) do
                        if joker ~= card then
                            materials[#materials + 1] = joker
                        end
                    end
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.flips,
                            card.ability.extra.flips, localize("k_joy_select"))
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.flips then
                    local flips = { front = 0, back = 0 }
                    for _, selected_card in ipairs(context.joy_selection) do
                        JoyousSpring.flip(selected_card, card)
                        flips[selected_card.facing] = flips[selected_card.facing] + 1
                    end
                    JoyousSpring.flip(card, card)
                    flips[card.facing] = flips[card.facing] + 1

                    card.ability.extra.current_xmult = card.ability.extra.xmult * flips.back
                    card.ability.extra.current_h_size = card.ability.extra.h_size * flips.front
                    G.hand:change_size(card.ability.extra.current_h_size)

                    card.ability.extra.activated = true
                end
                if JoyousSpring.calculate_flip_effect(card, context) then
                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "Subterror" }, exclude_keys = { "j_joy_sub_guru" }, rarity = 1 }, { monster_archetypes = { "Subterror" }, exclude_keys = { "j_joy_sub_guru" }, rarity = 2 } },
                            'j_joy_sub_guru', true)
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            G.hand:change_size(-card.ability.extra.current_h_size)
            card.ability.extra.current_xmult = 0
            card.ability.extra.current_h_size = 0
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated or not G.GAME.blind.in_blind then
            return false
        end
        local targets = JoyousSpring.get_materials_owned({ { facedown = true }, { can_flip = true } })
        local faceup_joker = 0
        for _, joker in ipairs(targets) do
            if joker ~= card then
                faceup_joker = faceup_joker + 1
            end
        end
        return faceup_joker >= card.ability.extra.flips
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.current_h_size > 0 then
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
    joker_display_def = function(JokerDisplay)
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
                card.joker_display_values.xmult = card.ability.extra.current_xmult > 0 and
                    card.ability.extra.current_xmult or 1
            end
        }
    end
})

-- Subterror Behemoth Stygokraken
SMODS.Joker({
    key = "sub_stygo",
    atlas = 'sub',
    pos = { x = 1, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "SeaSerpent",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            xmult = 1.5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            JoyousSpring.calculate_flip_effect(card, context)
            if JoyousSpring.is_flip_active(card) then
                if (context.individual and context.cardarea == G.hand) or context.other_joker or context.other_consumeable then
                    local other_card = context.other_card or context.other_joker or context.other_consumeable
                    if other_card and other_card.facing == 'back' then
                        return {
                            xmult = card.ability.extra.xmult,
                            message_card = other_card
                        }
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            JoyousSpring.flip(card, card)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "x_mult", retrigger_type = "exp" }
                    }
                }
            },
            calc_function = function(card)
                local playing_hand = next(G.play.cards)
                local count = 0
                if JoyousSpring.is_flip_active(card) then
                    for _, playing_card in ipairs(G.hand.cards) do
                        if playing_hand or not playing_card.highlighted then
                            if playing_card.facing == 'back' and not playing_card.debuff then
                                count = count + JokerDisplay.calculate_card_triggers(playing_card, nil, true)
                            end
                        end
                    end
                    for _, consumable in ipairs(G.consumeables.cards) do
                        if consumable.facing == 'back' then
                            count = count + 1
                        end
                    end
                    for _, joker in ipairs(G.jokers.cards) do
                        if joker.facing == 'back' then
                            count = count + 1
                        end
                    end
                end
                card.joker_display_values.x_mult = card.ability.extra.xmult ^ count
            end
        }
    end
})

-- Subterror Behemoth Dragossuary
SMODS.Joker({
    key = "sub_drago",
    atlas = 'sub',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Zombie",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.calculate_flip_effect(card, context) then
                local choices = JoyousSpring.get_materials_owned({ { facedown = true, exclude_edition = true }, { monster_archetypes = { "Subterror" }, exclude_edition = true } })
                local pick = pseudorandom_element(choices, 'j_joy_sub_drago')
                if pick then
                    local edition = poll_edition("j_joy_sub_drago", nil, nil, true) or 'e_foil'
                    pick:set_edition(edition)
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            JoyousSpring.flip(card, card)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end
})

-- Subterror Behemoth Umastryx
SMODS.Joker({
    key = "sub_uma",
    atlas = 'sub',
    pos = { x = 3, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Reptile",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            banishes = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_flip_active(card) and not context.blueprint_card and context.joy_post_round_eval then
                local choices = JoyousSpring.get_materials_owned({ { exclude_keys = { "j_joy_sub_uma" } } })
                local to_banish, index = pseudorandom_element(choices, 'j_joy_sub_uma')
                table.remove(choices, index)
                local to_banish2 = pseudorandom_element(choices, 'j_joy_sub_uma')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
                if to_banish2 then
                    JoyousSpring.banish(to_banish2, "blind_selected")
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            JoyousSpring.flip(card, card)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end
})

-- Subterror Behemoth Phospheroglacier
SMODS.Joker({
    key = "sub_phos",
    atlas = 'sub',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_in_graveyard({ { monster_type = "Aqua" }, { monster_archetypes = { "Subterror" } } }), card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Aqua",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            chips = 30,
            mills = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.calculate_flip_effect(card, context) then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_archetypes = { "Subterror" } } },
                    card.config.center.key, card.ability.extra.mills)
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_type = "Aqua" }, { monster_archetypes = { "Subterror" } } })
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            JoyousSpring.flip(card, card)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_materials_in_graveyard({ { monster_type = "Aqua" }, { monster_archetypes = { "Subterror" } } })
            end
        }
    end
})

-- Subterror Behemoth Voltelluric
SMODS.Joker({
    key = "sub_volt",
    atlas = 'sub',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult *
            JoyousSpring.count_flipped('back') }
        }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Thunder",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            mult = 50
        },
    },
    calculate = function(self, card, context)
        if context.first_hand_drawn and G.GAME.blind.boss then
            JoyousSpring.flip(card, card)
        end
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.calculate_flip_effect(card, context) then
                JoyousSpring.flip_all_cards(card, 'back', { G.hand })
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_flipped('back')
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
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
                    JoyousSpring.count_flipped('back')
            end
        }
    end
})

-- Subterror Behemoth Stalagmo
SMODS.Joker({
    key = "sub_stala",
    atlas = 'sub',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.draws } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            draws = 5,
            stay_flipped = false,
            draw_count = 0
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval and G.GAME.blind.boss then
            JoyousSpring.flip(card, card)
        end
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.calculate_flip_effect(card, context) and G.GAME.blind.in_blind then
                card.ability.extra.stay_flipped = true
                for i = 1, card.ability.extra.draws do
                    draw_card(G.deck, G.hand, i * 100 / card.ability.extra.draws, 'up', false, nil, 0, nil, true)
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.stay_flipped = false
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end,
    joy_stay_flipped = function(card, playing_card)
        if card.ability.extra.stay_flipped then
            card.ability.extra.draw_count = card.ability.extra.draw_count + 1
            if card.ability.extra.draw_count >= card.ability.extra.draws or (#G.deck.cards == 0) then
                card.ability.extra.stay_flipped = false
            end
            return true
        end
        return false
    end
})

-- Subterror Behemoth Speleogeist
SMODS.Joker({
    key = "sub_speleo",
    atlas = 'sub',
    pos = { x = 3, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.extra_xmult, 1 + card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Fiend",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            xmult = 0,
            extra_xmult = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.calculate_flip_effect(card, context) then
                for _, joker in ipairs(G.jokers.cards) do
                    if card ~= joker and joker.facing == 'back' then
                        JoyousSpring.flip(joker, card)
                    end
                end
            end
            if context.joker_main then
                if card.ability.extra.xmult > 0 then
                    return {
                        xmult = 1 + card.ability.extra.xmult,
                    }
                end
            end
        end
        if context.joy_card_flipped then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.extra_xmult
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            JoyousSpring.flip(card, card)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
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

-- Subterror Behemoth Ultramafus
SMODS.Joker({
    key = "sub_ultra",
    atlas = 'sub',
    pos = { x = 0, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_flipped('back') }
        }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Pyro",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true }
            },
            chips = 200
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.calculate_flip_effect(card, context) then
                for _, joker in ipairs(G.jokers.cards) do
                    if card ~= joker and joker.facing == 'front' then
                        JoyousSpring.flip(joker, card)
                    end
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_flipped('back')
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
            JoyousSpring.flip(card, card)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            JoyousSpring.flip(card, card)
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips *
                    JoyousSpring.count_flipped('back')
            end
        }
    end
})

-- Subterror Behemoth Fiendess
SMODS.Joker({
    key = "sub_befiendess",
    atlas = 'sub',
    pos = { x = 2, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        local mult_count = 0
        local materials = JoyousSpring.get_materials(card)
        for _, material in ipairs(materials) do
            if JoyousSpring.is_material_center(material, { monster_archetypes = { "Subterror" } }) then
                mult_count = mult_count + 1
            end
        end
        local current_chips = card.ability.extra.chips * #materials
        local current_mult = card.ability.extra.mult * mult_count
        return { vars = { card.ability.extra.chips, card.ability.extra.mult, current_chips, current_mult, card.ability.extra.flips, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "EARTH",
                monster_type = "Wyrm",
                monster_archetypes = { ["Subterror"] = true, ["SubterrorBehemoth"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { facedown = true, min = 2 },
                        },
                    },
                    {
                        type = "LINK",
                        materials = {
                            { is_flip = true, min = 2 },
                        },
                    },
                    {
                        type = "LINK",
                        materials = {
                            { facedown = true, min = 1 },
                            { is_flip = true,  min = 1 },
                        },
                    }
                }
            },
            chips = 100,
            mult = 50,
            flips = 2,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local targets = JoyousSpring.get_materials_owned({ { can_flip = true } })
                    if next(targets) then
                        JoyousSpring.create_overlay_effect_selection(card, targets, card.ability.extra.flips,
                            card.ability.extra.flips, localize("k_joy_select"))
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.flips then
                    for _, selected_card in ipairs(context.joy_selection) do
                        JoyousSpring.flip(selected_card, card)
                    end

                    for _ = 1, card.ability.extra.creates do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "SubterrorBehemoth" }, exclude_keys = { "j_joy_sub_befiendess" } } },
                            'j_joy_sub_befiendess', true)
                    end
                    card.ability.extra.activated = true
                end
            end
            if context.joker_main then
                local mult_count = 0
                local materials = JoyousSpring.get_materials(card)
                for _, material in ipairs(materials) do
                    if JoyousSpring.is_material_center(material, { monster_archetypes = { "Subterror" } }) then
                        mult_count = mult_count + 1
                    end
                end
                local current_chips = card.ability.extra.chips * #materials
                local current_mult = card.ability.extra.mult * mult_count
                return {
                    chips = current_chips,
                    mult = current_mult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        local targets = JoyousSpring.get_materials_owned({ { can_flip = true } })
        return #targets >= card.ability.extra.flips and
            #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+",                              colour = G.C.CHIPS },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult", colour = G.C.CHIPS },
                { text = " +",                             colour = G.C.MULT },
                { ref_table = "card.joker_display_values", ref_value = "mult",  retrigger_type = "mult", colour = G.C.MULT }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                local mult_count = 0
                local materials = JoyousSpring.get_materials(card)
                for _, material in ipairs(materials) do
                    if JoyousSpring.is_material_center(material, { monster_archetypes = { "Subterror" } }) then
                        mult_count = mult_count + 1
                    end
                end
                card.joker_display_values.chips = card.ability.extra.chips * #materials
                card.joker_display_values.mult = card.ability.extra.mult * mult_count
            end
        }
    end
})

-- The Hidden City
SMODS.Joker({
    key = "sub_city",
    atlas = 'sub',
    pos = { x = 1, y = 3 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_monster" }
        end
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { "j_joy_sub_city", properties = { { monster_archetypes = { "Subterror" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            flips = 1,
            money = 5,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_materials_owned({ { facedown = true }, { can_flip = true } })
                    if next(materials) then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.flips,
                            card.ability.extra.flips, localize("k_joy_select"))
                    end
                end
                if not card.ability.extra.activated and context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.flips then
                    for _, selected_card in ipairs(context.joy_selection) do
                        JoyousSpring.flip(selected_card, card)
                    end
                    card.ability.extra.activated = true
                end
            end
            if context.joy_card_flipped and context.joy_card_flipped.ability.set == "Joker" then
                if (context.joy_card_flipped.facing == "back") == JoyousSpring.is_monster_card(context.joy_card_flipped) then
                    return {
                        dollars = card.ability.extra.money
                    }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated then
            return false
        end
        return JoyousSpring.count_materials_owned({ { facedown = true }, { can_flip = true } }) >
            0
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "sub" },
    label = "k_joy_archetype_sub"
}
