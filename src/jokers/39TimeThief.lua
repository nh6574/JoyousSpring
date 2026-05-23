--- TIME THIEF
SMODS.Atlas({
    key = "thief",
    path = "39TimeThief.png",
    px = 71,
    py = 95
})

local thief_attach_cards = function(card, attach, remove)
    card.ability.extra.cards_used = card.ability.extra.cards_used or {}
    local cards_used = card.ability.extra.cards_used
    cards_used = JoyousSpring.playing_cards_used(cards_used, attach)
    card.ability.extra.joyous_spring.xyz_materials = (card.ability.extra.joyous_spring.xyz_materials or 0) + #attach
    if remove then
        SMODS.destroy_cards(attach)
    end
end

local thief_find_xyz = function(rightmost, thief)
    for i = (rightmost and #G.jokers.cards or 1), (rightmost and 1 or #G.jokers.cards), (rightmost and -1 or 1) do
        local joker = G.jokers.cards[i]
        if JoyousSpring.is_summon_type(joker, "XYZ") and
            (not thief or JoyousSpring.is_monster_archetype(joker, "TimeThief")) then
            return joker
        end
    end
end

-- Time Thief Adjuster
JoyousSpring.Joker({
    key = "thief_adjuster",
    atlas = 'thief',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "revive", "maindeck", "material", "attach", "xyz" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detached and not card.ability.extra.activated then
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "TimeThief" }, is_main_deck = true } },
                    self.key, true)
                card.ability.extra.activated = true
            end

            if context.before then
                local pcard = context.scoring_hand[1]
                local xyz = thief_find_xyz()
                if xyz then
                    thief_attach_cards(xyz, { pcard })
                    return {
                        message = localize("k_joy_attach"),
                        message_card = pcard,
                        func = function()
                            xyz:juice_up()
                        end
                    }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = nil
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_type = "Psychic" }, { monster_type = "Machine" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Time Thief Winder
JoyousSpring.Joker({
    key = "thief_winder",
    atlas = 'thief',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "maindeck", "material", "attach", "xyz" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_detached and not card.ability.extra.activated then
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "TimeThief" }, is_main_deck = true } },
                    self.key, true)
                card.ability.extra.activated = true
            end

            if context.before then
                local pcard = context.scoring_hand[#context.scoring_hand]
                local xyz = thief_find_xyz(true)
                if xyz then
                    thief_attach_cards(xyz, { pcard })
                    return {
                        message = localize("k_joy_attach"),
                        message_card = pcard,
                        func = function()
                            xyz:juice_up()
                        end
                    }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = nil
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { summon_type = "XYZ" } }) > 0 then
            card.cost = 0
        end
    end
})

-- Time Thief Regulator
JoyousSpring.Joker({
    key = "thief_regulator",
    atlas = 'thief',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "revive", "tribute", "material", "attach", "xyz", "excavate" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= 3 then
                if context.joy_other_context.setting_blind then
                    if context.joy_number == 1 then
                        local unenhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and not next(SMODS.get_enhancements(pcard)) then
                                unenhanced[#unenhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(unenhanced, self.key .. "check_uhenhanced")
                        if choice then
                            choice.thief_regulator = true
                        end
                    end
                    if context.joy_excavated.thief_regulator then
                        context.joy_excavated:set_ability(SMODS.poll_enhancement { guaranteed = true, key = self.key .. "_enhance" })
                        context.joy_excavated.thief_regulator = nil
                        return {
                            message = localize("k_joy_hit")
                        }
                    end
                end
                if context.joy_other_context.round_eval and thief_find_xyz(nil, true) then
                    if context.joy_number == 1 then
                        local enhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and next(SMODS.get_enhancements(pcard)) then
                                enhanced[#enhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(enhanced, self.key .. "check_enhanced")
                        if choice then
                            choice.thief_regulator = true
                        end
                    end
                    if context.joy_excavated.thief_regulator then
                        context.joy_excavated.thief_regulator = nil
                        local xyz = thief_find_xyz(nil, true)
                        if xyz then
                            thief_attach_cards(xyz, { context.joy_excavated }, true)
                            return {
                                message = localize("k_joy_attach")
                            }
                        end
                    end
                end
            end
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Machine" } }, false, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 then
                JoyousSpring.tribute(card, context.joy_selection)

                for i = 1, 2 do
                    JoyousSpring.revive_pseudorandom({ { monster_type = "Psychic" } }, self.key)
                end


                card.ability.extra.active = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        return not card.ability.extra.active
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind or (context.round_eval and thief_find_xyz(nil, true)) then return 3 end
    end
})

-- Time Thief Bezel Ship
JoyousSpring.Joker({
    key = "thief_bezel",
    atlas = 'thief',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "tribute", "material", "attach", "xyz", "excavate" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
            attach = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= 3 then
                if context.joy_other_context.setting_blind then
                    if context.joy_number == 1 then
                        local unenhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and not pcard.edition then
                                unenhanced[#unenhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(unenhanced, self.key .. "check_unenhanced")
                        if choice then
                            choice.thief_bezel = true
                        end
                    end
                    if context.joy_excavated.thief_bezel then
                        context.joy_excavated:set_edition(SMODS.poll_edition { guaranteed = true, key = self.key .. "_enhance", no_negative = true })
                        context.joy_excavated.thief_bezel = nil
                        return {
                            message = localize("k_joy_hit")
                        }
                    end
                end
                if context.joy_other_context.round_eval and thief_find_xyz(true, true) then
                    if context.joy_number == 1 then
                        local enhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and pcard.edition then
                                enhanced[#enhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(enhanced, self.key .. "check_enhanced")
                        if choice then
                            choice.thief_bezel = true
                        end
                    end
                    if context.joy_excavated.thief_bezel then
                        context.joy_excavated.thief_bezel = nil
                        local xyz = thief_find_xyz(true, true)
                        if xyz then
                            thief_attach_cards(xyz, { context.joy_excavated }, true)
                            return {
                                message = localize("k_joy_attach")
                            }
                        end
                    end
                end
            end
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Machine" } }, false, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 then
                local xyz = thief_find_xyz(true)
                if xyz then
                    JoyousSpring.tribute(card, context.joy_selection)
                    thief_attach_cards(xyz, G.hand.highlighted, true)
                    card.ability.extra.active = true
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        local highlighted = #G.hand.highlighted
        return not card.ability.extra.active and (highlighted > 0 and highlighted <= card.ability.extra.attach)
            and thief_find_xyz(true)
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind or (context.round_eval and thief_find_xyz(true, true)) then return 3 end
    end
})

-- Time Thief Temporwhal
JoyousSpring.Joker({
    key = "thief_whal",
    atlas = 'thief',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "tribute", "material", "attach", "xyz", "excavate" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= 3 then
                if context.joy_other_context.setting_blind then
                    if context.joy_number == 1 then
                        local unenhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and not next(SMODS.get_enhancements(pcard)) then
                                unenhanced[#unenhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(unenhanced, self.key .. "check_uhenhanced")
                        if choice then
                            choice.thief_whal = true
                        end
                    end
                    if context.joy_excavated.thief_whal then
                        context.joy_excavated:set_ability(SMODS.poll_enhancement { guaranteed = true, key = self.key .. "_enhance" })
                        context.joy_excavated.thief_whal = nil
                        return {
                            message = localize("k_joy_hit")
                        }
                    end
                end
                if context.joy_other_context.round_eval and thief_find_xyz(true, true) then
                    if context.joy_number == 1 then
                        local enhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and next(SMODS.get_enhancements(pcard)) then
                                enhanced[#enhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(enhanced, self.key .. "check_enhanced")
                        if choice then
                            choice.thief_whal = true
                        end
                    end
                    if context.joy_excavated.thief_whal then
                        context.joy_excavated.thief_whal = nil
                        local xyz = thief_find_xyz(true, true)
                        if xyz then
                            thief_attach_cards(xyz, { context.joy_excavated }, true)
                            return {
                                message = localize("k_joy_attach")
                            }
                        end
                    end
                end
            end
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Machine" } }, false, true)
                if #materials >= 1 then
                    JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == 1 then
                local materials_owned = JoyousSpring.get_materials_owned(
                    { { monster_type = "Machine" } })
                local to_banish = {}
                for _, material in ipairs(materials_owned) do
                    if material ~= card and material ~= context.joy_selection[1] then
                        to_banish[#to_banish + 1] = material
                    end
                end

                if #to_banish > 0 then
                    JoyousSpring.tribute(card, context.joy_selection)
                    for _, joker in ipairs(to_banish) do
                        JoyousSpring.banish(joker, "blind_selected")
                    end
                    card.ability.extra.active = true
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_activate = function(card)
        if card.ability.extra.active then
            return false
        end
        local materials_owned = JoyousSpring.get_materials_owned(
            { { monster_type = "Machine" } })
        for _, material in ipairs(materials_owned) do
            if material ~= card then
                return true
            end
        end
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind or (context.round_eval and thief_find_xyz(true, true)) then return 3 end
    end
})

-- Time Thief Chronocorder
JoyousSpring.Joker({
    key = "thief_corder",
    atlas = 'thief',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "blind_card", "tribute", "material", "attach", "xyz", "excavate" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Machine",
                monster_archetypes = { ["TimeThief"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= 3 then
                if context.joy_other_context.setting_blind then
                    if context.joy_number == 1 then
                        local unenhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and not pcard.seal then
                                unenhanced[#unenhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(unenhanced, self.key .. "check_uhenhanced")
                        if choice then
                            choice.thief_corder = true
                        end
                    end
                    if context.joy_excavated.thief_corder then
                        context.joy_excavated:set_seal(SMODS.poll_seal { guaranteed = true, key = self.key .. "_enhance" })
                        context.joy_excavated.thief_corder = nil
                        return {
                            message = localize("k_joy_hit")
                        }
                    end
                end
                if context.joy_other_context.round_eval and thief_find_xyz(nil, true) then
                    if context.joy_number == 1 then
                        local enhanced = {}
                        for i = 1, 3 do
                            local pcard = context.joy_excavated_all[i]
                            if pcard and pcard.seal then
                                enhanced[#enhanced + 1] = pcard
                            end
                        end
                        local choice = pseudorandom_element(enhanced, self.key .. "check_enhanced")
                        if choice then
                            choice.thief_corder = true
                        end
                    end
                    if context.joy_excavated.thief_corder then
                        context.joy_excavated.thief_corder = nil
                        local xyz = thief_find_xyz(nil, true)
                        if xyz then
                            thief_attach_cards(xyz, { context.joy_excavated }, true)
                            return {
                                message = localize("k_joy_attach")
                            }
                        end
                    end
                end
            end
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_materials_owned(
                    { { monster_type = "Machine" } }, false, true)
                if #materials >= 1 then
                    JoyousSpring.tribute(card, materials)
                    JoyousSpring.create_pseudorandom({ { is_opponent = true, is_blind_card = true } },
                        card.config.center.key)
                    return {
                        xblindsize = 0.5
                    }
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return not card.ability.extra.active and G.GAME.blind.in_blind
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind or (context.round_eval and thief_find_xyz(nil, true)) then return 3 end
    end
})

local modifier_types = {
    m_bonus = "Enhanced",
    m_mult = "Enhanced",
    m_wild = "Enhanced",
    m_glass = "Enhanced",
    m_steel = "Enhanced",
    m_stone = "Enhanced",
    m_gold = "Enhanced",
    m_lucky = "Enhanced",
    m_joy_hanafuda = "Enhanced",
    e_foil = "Edition",
    e_holo = "Edition",
    e_polychrome = "Edition",
    red_seal = "Other",
    blue_seal = "Other",
    gold_seal = "Other",
    purple_seal = "Other",
    joy_purr_memory_seal = "Other",
}

local thief_calculate_used_amount = function(cards_used)
    local amounts = {
        Enhanced = 0,
        Edition = 0,
        Other = 0,
    }

    for key, value in pairs(cards_used) do
        if modifier_types[key] then
            amounts[modifier_types[key]] = amounts[modifier_types[key]] + value
        end
    end

    return amounts
end

local thief_generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)
    JoyousSpring.Joker.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table)

    if card and not card.debuff and card.added_to_deck then
        local cards_used = card.ability.extra.cards_used or {}
        full_UI_table.joy_multi_box = full_UI_table.joy_multi_box or {}

        local amounts = thief_calculate_used_amount(cards_used)

        local loc_keys = {
            Enhanced = "m_bonus",
            Edition = "e_foil",
            Other = "red_seal",
        }

        local loc_name = {
            Enhanced = localize("b_enhanced_cards"),
            Edition = localize("b_editions"),
            Other = localize("b_seals"),
        }

        for _, modifier_type in ipairs({ "Enhanced", "Edition", "Other" }) do
            local amount = amounts[modifier_type]
            if amount > 0 then
                local name_node = {}
                local node = {}

                if G.localization.descriptions.Joker[self.key].joy_extra_effects[loc_keys[modifier_type]] then
                    name_node[#name_node + 1] = SMODS.localize_box(loc_parse_string(loc_name[modifier_type]),
                        {
                            text_colour = G.C.UI.TEXT_LIGHT,
                            scale = 0.9
                        })
                    local loc = G.localization.descriptions.Joker[self.key].joy_extra_effects
                        [loc_keys[modifier_type]]
                        .text
                    for _, line in ipairs(loc) do
                        node[#node + 1] = SMODS.localize_box(loc_parse_string(line),
                            {
                                scale = 0.9,
                                vars = self:joy_effect_loc_vars(loc_keys[modifier_type], amount, card),
                            })
                    end
                end
                name_node.joy_box_minh = 0.2
                node.joy_box_minh = 0.7
                name_node.background_colour = G.C.CLEAR
                full_UI_table.joy_multi_box[#full_UI_table.joy_multi_box + 1] = desc_from_rows(name_node)
                full_UI_table.joy_multi_box[#full_UI_table.joy_multi_box + 1] = desc_from_rows(node)
            end
        end
    end
end

-- Time Thief Perpetua
JoyousSpring.Joker({
    key = "thief_perpetua",
    atlas = 'thief',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach }, key = not card.added_to_deck and self.key .. "_notowned" or nil }
    end,
    generate_ui = thief_generate_ui,
    joy_desc_cards = {
        { extra = "Playing Cards",                                    extra_values = { loc_key = "j_joy_thief_perpetua", enhancements = { "m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky", "m_joy_hanafuda" }, editions = { "e_foil", "e_holo", "e_polychrome" }, seals = { "Red", "Blue", "Gold", "Purple", "joy_purr_memory" } }, name = "k_joy_arthalion_effects" },
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "modifier", "revive", "material", "attach" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            detach = 5
        },
    },
    joy_effect_loc_vars = function(self, key, amount, card)
        local modifier_type = modifier_types[key]
        if modifier_type == "Enhanced" then
            return { self.joy_extra_config.chips * (amount or 1) }
        end
        local numerator, denominator = SMODS.get_probability_vars(card or self, (amount or 1),
            self.joy_extra_config.chance, self.key .. modifier_type)
        return { numerator, denominator }
    end,
    joy_extra_config = {
        chips = 15,
        chance = 50,
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "TimeThief" } } }, self.key, true)

                card.ability.extra.active = true
                return { message = localize("k_joy_revive") }
            end

            if context.before then
                local pcard = context.scoring_hand[1]
                thief_attach_cards(card, { pcard })
                return {
                    message = localize("k_joy_attach")
                }
            end

            if context.joker_main then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)

                if amounts.Enhanced > 0 then
                    return {
                        chips = self.joy_extra_config.chips * amounts.Enhanced
                    }
                end
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)
                if SMODS.pseudorandom_probability(card, self.key .. "Edition", 1 + amounts.Edition, self.joy_extra_config.chance) then
                    JoyousSpring.create_pseudorandom({ { monster_type = "Machine", is_main_deck = true } },
                        self.key .. "Edition_eff")
                    SMODS.calculate_effect({ message = localize("k_joy_add") }, card)
                end
                if SMODS.pseudorandom_probability(card, self.key .. "Other", 1 + amounts.Other, self.joy_extra_config.chance) then
                    JoyousSpring.revive_pseudorandom({ { monster_type = "Machine" } }, self.key .. "Other_eff")
                    SMODS.calculate_effect({ message = localize("k_joy_revive") }, card)
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.active = nil
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.active = nil
    end,
    joy_can_detach = function(self, card)
        return not card.ability.extra.active and
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "TimeThief" } } }, true) > 0 and
            #G.jokers.cards < G.jokers.config.card_limit
    end
})

local tarot_redo = {
    "c_magician", "c_empress", "c_heirophant", "c_lovers", "c_chariot",
    "c_justice", "c_devil", "c_tower", "c_joy_cardian_gathering"
}

-- Time Thief Redoer
JoyousSpring.Joker({
    key = "thief_redoer",
    atlas = 'thief',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.detach, card.ability.extra.money, card.ability.extra.tags },
            key = not card.added_to_deck and
                self.key .. "_notowned" or nil
        }
    end,
    generate_ui = thief_generate_ui,
    joy_desc_cards = {
        { extra = "Playing Cards",                                    extra_values = { loc_key = "j_joy_thief_redoer", enhancements = { "m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky", "m_joy_hanafuda" }, editions = { "e_foil", "e_holo", "e_polychrome" }, seals = { "Red", "Blue", "Gold", "Purple", "joy_purr_memory" } }, name = "k_joy_arthalion_effects" },
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "modifier", "banish", "material", "attach", "excavate" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            detach = 5,
            money = 5,
            tags = 2
        },
    },
    joy_effect_loc_vars = function(self, key, amount, card)
        local modifier_type = modifier_types[key]
        if modifier_type == "Enhanced" then
            return { self.joy_extra_config.mult * (amount or 1) }
        end
        if modifier_type == "Edition" then
            return { self.joy_extra_config.h_size * (math.floor((amount or 0) / 5) + 1) }
        end
        local numerator, denominator = SMODS.get_probability_vars(card or self, (amount or 1),
            self.joy_extra_config.chance, self.key .. modifier_type)
        return { numerator, denominator }
    end,
    joy_extra_config = {
        mult = 5,
        chance = 50,
        h_size = 1,
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)

                G.hand:change_size(self.joy_extra_config.h_size * amounts.Edition)
                G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
                    self.joy_extra_config.h_size * amounts.Edition
            end

            if context.joy_excavated and context.joy_number <= 1 then
                if context.joy_other_context.setting_blind then
                    if context.joy_excavated:is_suit("Hearts") then
                        G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
                        calculate_reroll_cost(true)
                    end
                    if context.joy_excavated:is_suit("Clubs") then
                        for i = 1, card.ability.extra.tags do
                            add_tag { key = "tag_standard" }
                        end
                    end
                    if context.joy_excavated:is_suit("Spades") then
                        local key = pseudorandom_element(tarot_redo, self.key .. "_spades")
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                SMODS.add_card { key = key, edition = 'e_negative' }
                                return true
                            end
                        }))
                    end
                    thief_attach_cards(card, { context.joy_excavated }, true)
                    if context.joy_excavated:is_suit("Diamonds") then
                        return {
                            dollars = card.ability.extra.money
                        }
                    end
                end
            end

            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                local choices = JoyousSpring.get_materials_owned({ { monster_type = "Psychic" }, { monster_type = "Machine" } })
                local to_banish = pseudorandom_element(choices, self.key)
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end

            if context.joker_main then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)

                if amounts.Enhanced > 0 then
                    return {
                        mult = self.joy_extra_config.mult * amounts.Enhanced
                    }
                end
            end

            if context.after then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)
                if SMODS.pseudorandom_probability(card, self.key .. "Other", 1 + amounts.Other, self.joy_extra_config.chance) then
                    for _, pcard in ipairs(context.scoring_hand) do
                        if pcard.seal or pcard.edition or next(SMODS.get_enhancements(pcard)) then
                            JoyousSpring.banish(pcard, "blind_selected")
                        end
                    end
                end
            end
        end
    end,
    joy_can_detach = function(self, card)
        return true
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind then return 1 end
    end
})

-- Time Thief Double Barrel
JoyousSpring.Joker({
    key = "thief_double",
    atlas = 'thief',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.detach, card.ability.extra.xmult, 1 + card.ability.extra.current_xmult, card.ability.extra.money },
            key = not
                card.added_to_deck and self.key .. "_notowned" or nil
        }
    end,
    generate_ui = thief_generate_ui,
    joy_desc_cards = {
        { extra = "Playing Cards",                                    extra_values = { loc_key = "j_joy_thief_double", enhancements = { "m_bonus", "m_mult", "m_wild", "m_glass", "m_steel", "m_stone", "m_gold", "m_lucky", "m_joy_hanafuda" }, editions = { "e_foil", "e_holo", "e_polychrome" }, seals = { "Red", "Blue", "Gold", "Purple", "joy_purr_memory" } }, name = "k_joy_arthalion_effects" },
        { properties = { { monster_archetypes = { "TimeThief" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "modifier", "material", "attach", "excavate" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Psychic",
                monster_archetypes = { ["TimeThief"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 1, exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        }
                    },
                }
            },
            detach = 5,
            xmult = 1,
            current_xmult = 0,
            money = 1
        },
    },
    joy_effect_loc_vars = function(self, key, amount, card)
        local modifier_type = modifier_types[key]
        if modifier_type == "Enhanced" then
            return { self.joy_extra_config.xchips * (amount or 1) }
        end
        if modifier_type == "Other" then
            return { self.joy_extra_config.money * (amount or 1) }
        end
        local numerator, denominator = SMODS.get_probability_vars(card or self, (amount or 1),
            self.joy_extra_config.chance, self.key .. modifier_type)
        return { numerator, denominator }
    end,
    joy_extra_config = {
        xchips = 0.1,
        chance = 1000,
        money = 1,
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_excavated and context.joy_number <= 1 then
                if context.joy_other_context.setting_blind then
                    thief_attach_cards(card, { context.joy_excavated }, true)
                    if not SMODS.has_no_rank(context.joy_excavated) then
                        return {
                            dollars = card.ability.extra.money * (context.joy_excavated.base.nominal)
                        }
                    end
                end
            end

            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
            end

            if context.joker_main then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)
                return {
                    xchips = amounts.Enhanced > 0 and 1 + self.joy_extra_config.xchips * amounts.Enhanced or nil,
                    xmult = card.ability.extra.current_xmult > 0 and (1 + card.ability.extra.current_xmult) or nil,
                    dollars = amounts.Other > 0 and self.joy_extra_config.money * amounts.Other or nil
                }
            end

            if context.end_of_round and context.game_over == false and context.main_eval and G.GAME.blind.boss then
                card.ability.extra.cards_used = card.ability.extra.cards_used or {}
                local amounts = thief_calculate_used_amount(card.ability.extra.cards_used)
                if SMODS.pseudorandom_probability(card, self.key .. "Edition", 1 + amounts.Edition, self.joy_extra_config.chance) then
                    local choice = pseudorandom_element(G.playing_cards, self.key .. "Edition_effect")
                    if choice then
                        choice:set_edition("e_negative")
                    end
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.current_xmult = 0
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.current_xmult = 0
    end,
    joy_can_detach = function(self, card)
        return true
    end,
    joy_set_excavate_count = function(self, card, context)
        if context.setting_blind then return 1 end
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "thief" },
    label = "k_joy_archetype_thief"
}
