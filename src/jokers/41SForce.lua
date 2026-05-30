--- S-Force
SMODS.Atlas({
    key = "sforce",
    path = "41SForce.png",
    px = 71,
    py = 95
})

---@type material_properties[]
local sforce_rivals = {
    { monster_archetypes = { "EvilTwin" } },
    { monster_archetypes = { "PSYFrame" } },
    { monster_archetypes = { "TimeThief" } },
    { key = "j_joy_ipmasq" },
    { key = "j_joy_spknight" },
    { key = "j_joy_wpball" },
}

local sforce_targets = copy_table(sforce_rivals)
sforce_targets[#sforce_targets + 1] = { monster_archetypes = { "SForce" } }

local sforce_should_banish = function()
    local found
    if G.GAME.current_round.hands_played == 0 then
        for _, joker in ipairs(SMODS.find_card("j_joy_sforce_retro")) do
            found = true
            joker.ability.extra.should_banish = true
        end
    end
    return not found
end

local sforce_final_hand = function()
    return next(SMODS.find_card("j_joy_sforce_mystify")) and G.GAME.current_round.hands_left == 0
end

local sforce_get_area_nominals = function(area)
    local count = 0
    for _, card in ipairs(area.cards) do
        if not SMODS.has_no_rank(card) then
            count = count + card.base.nominal
        end
    end
    return count
end

-- S-Force Retroactive
JoyousSpring.Joker({
    key = "sforce_retro",
    atlas = 'sforce',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "material", "link", "graveyard" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_all_materials = { LINK = true },
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            mills = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                JoyousSpring.send_to_graveyard_pseudorandom(copy_table(sforce_rivals), self.key, card.ability.extra
                    .mills)
                return {
                    message = localize("k_joy_mill")
                }
            end
            if context.after and card.ability.extra.should_banish then
                card.ability.extra.should_banish = nil
                JoyousSpring.banish(card, "boss_selected")
            end
        end
    end,
})

-- S-Force Rappa Chiyomaru
JoyousSpring.Joker({
    key = "sforce_rappa",
    atlas = 'sforce',
    pos = { x = 3, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.times, card.ability.extra.count, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "material", "maindeck" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "DARK",
                monster_archetypes = { ["SForce"] = true }
            },
            count = 0,
            times = 2,
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_pre_setting_blind then
                JoyousSpring.banish(card, "boss_selected")

                JoyousSpring.create_pseudorandom(
                    { { monster_archetypes = { "SForce" }, is_main_deck = true } }, self.key)
            end

            if context.joy_returned and context.joy_returned_card == card then
                card.ability.extra.count = card.ability.extra.count + 1
                if card.ability.extra.count >= card.ability.extra.times then
                    card.ability.extra.count = 0
                    for i = 1, card.ability.extra.adds do
                        JoyousSpring.add_monster_tag_pseudorandom(
                            { { key = "j_joy_etwin_sunny" },
                                { key = "j_joy_ipmasq" },
                                { key = "j_joy_spknight" },
                                { key = "j_joy_wpball" }, }, self.key)
                    end
                end
            end
        end
        if JoyousSpring.used_as_material(card, context) and not context.joy_card.edition then
            local is_target = ({ j_joy_etwin_sunny = true, j_joy_ipmasq = true, j_joy_spknight = true, j_joy_wpball = true })
                [context.joy_card.config.center_key]
            if is_target then
                context.joy_card:set_edition('e_negative')
            end
        end
    end,
})

-- S-Force Signus
JoyousSpring.Joker({
    key = "sforce_signus",
    atlas = 'sforce',
    pos = { x = 1, y = 2 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_materials_in_graveyard(copy_table(sforce_rivals)) }
        }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column", "graveyard" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            chips = 25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.before then
                local column = JoyousSpring.get_joker_column(card)
                local pcard = G.hand.cards[column]
                if pcard and not SMODS.has_no_rank(pcard) then
                    card.joy_banish_card = pcard
                    SMODS.draw_cards(sforce_final_hand() and sforce_get_area_nominals(G.hand) or pcard.base.nominal)
                end
            end
            if context.after and card.joy_banish_card then
                if card.joy_banish_card then
                    JoyousSpring.banish(card.joy_banish_card, "boss_selected")
                end
                if sforce_should_banish() then
                    JoyousSpring.banish(card, "boss_selected")
                end
                card.joy_banish_card = nil
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard(copy_table(sforce_rivals))
                }
            end
        end
    end,
})

-- S-Force Professor DiGamma
JoyousSpring.Joker({
    key = "sforce_digamma",
    atlas = 'sforce',
    pos = { x = 2, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Psychic",
                attribute = "DARK",
                monster_archetypes = { ["SForce"] = true }
            },
            mult = 5,
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local column = JoyousSpring.get_joker_column(card)
                local pcard = G.hand.cards[column]
                if pcard and not SMODS.has_no_rank(pcard) then
                    card.joy_banish_card = pcard
                    return {
                        mult = card.ability.extra.mult *
                            (sforce_final_hand() and sforce_get_area_nominals(G.hand) or pcard.base.nominal)
                    }
                end
            end
            if context.after and card.joy_banish_card then
                if card.joy_banish_card then
                    JoyousSpring.banish(card.joy_banish_card, "boss_selected")
                end
                if sforce_should_banish() then
                    JoyousSpring.banish(card, "boss_selected")
                end
                card.joy_banish_card = nil
            end
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = JoyousSpring.get_materials_owned(
                        copy_table(sforce_targets), false, true)
                    if #materials >= 1 then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true

                    local create_targets = copy_table(sforce_targets)
                    create_targets[#create_targets + 1] = { monster_archetypes = { "LiveTwin" } }
                    JoyousSpring.add_monster_tag_pseudorandom({ { monster_archetypes = { "SForce" } } }, self.key)
                    for i = 1, card.ability.extra.adds - 1 do
                        JoyousSpring.add_monster_tag_pseudorandom(create_targets, self.key)
                    end
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
        return JoyousSpring.any_materials_owned(
            copy_table(sforce_targets), false, true)
    end,
})

-- S-Force Edge Razor
JoyousSpring.Joker({
    key = "sforce_razor",
    atlas = 'sforce',
    pos = { x = 1, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "DARK",
                monster_archetypes = { ["SForce"] = true }
            },
            chips = 20,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local column = JoyousSpring.get_joker_column(card)
                local pcard = G.hand.cards[column]
                if pcard and not SMODS.has_no_rank(pcard) then
                    card.joy_banish_card = pcard
                    return {
                        chips = card.ability.extra.chips *
                            (sforce_final_hand() and sforce_get_area_nominals(G.hand) or pcard.base.nominal)
                    }
                end
            end
            if context.after and card.joy_banish_card then
                if card.joy_banish_card then
                    JoyousSpring.banish(card.joy_banish_card, "boss_selected")
                end
                if sforce_should_banish() then
                    JoyousSpring.banish(card, "boss_selected")
                end
                card.joy_banish_card = nil
            end
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = JoyousSpring.get_materials_owned(
                        copy_table(sforce_targets), false, true)
                    if #materials >= 1 then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true

                    JoyousSpring.create_pseudorandom({ { monster_archetypes = { "SForce" } } }, self.key)
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
        return JoyousSpring.any_materials_owned(
            copy_table(sforce_targets), false, true)
    end,
})

-- S-Force Orrafist
JoyousSpring.Joker({
    key = "sforce_orrafist",
    atlas = 'sforce',
    pos = { x = 0, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            money = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local column = JoyousSpring.get_joker_column(card)
                local pcard = G.hand.cards[column]
                if pcard and not SMODS.has_no_rank(pcard) then
                    card.joy_banish_card = pcard
                    return {
                        dollars = card.ability.extra.money *
                            (sforce_final_hand() and sforce_get_area_nominals(G.hand) or pcard.base.nominal)
                    }
                end
            end
            if context.after and card.joy_banish_card then
                if card.joy_banish_card then
                    JoyousSpring.banish(card.joy_banish_card, "boss_selected")
                end
                if sforce_should_banish() then
                    JoyousSpring.banish(card, "boss_selected")
                end
                card.joy_banish_card = nil
            end
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = JoyousSpring.get_materials_owned(
                        copy_table(sforce_targets), false, true)
                    if #materials >= 1 then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true

                    if JoyousSpring.are_blinds_active() then
                        JoyousSpring.disable_all_active_blinds()
                        return { message = localize('ph_boss_disabled') }
                    end
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
        return JoyousSpring.any_materials_owned(
            copy_table(sforce_targets), false, true)
    end,
})

-- S-Force Dog Tag
JoyousSpring.Joker({
    key = "sforce_dog",
    atlas = 'sforce',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            chips = 50,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local column = JoyousSpring.get_joker_column(card)
                local pcard = G.hand.cards[column]
                if pcard and not SMODS.has_no_rank(pcard) then
                    card.joy_banish_card = pcard
                    return {
                        chips = card.ability.extra.chips *
                            (sforce_final_hand() and sforce_get_area_nominals(G.hand) or pcard.base.nominal)
                    }
                end
            end
            if context.after and card.joy_banish_card then
                if card.joy_banish_card then
                    JoyousSpring.banish(card.joy_banish_card, "boss_selected")
                end
                if sforce_should_banish() then
                    JoyousSpring.banish(card, "boss_selected")
                end
                card.joy_banish_card = nil
            end
        end
    end,
    joy_set_cost = function(card)
        if JoyousSpring.any_materials_owned(copy_table(sforce_targets)) then
            card.cost = 0
        end
    end,
    joy_bypass_room_check = function(self, card, from_booster)
        return JoyousSpring.any_materials_owned(copy_table(sforce_targets))
    end
})

-- S-Force Gravitino
JoyousSpring.Joker({
    key = "sforce_gravitino",
    atlas = 'sforce',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Psychic",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            xchips = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                card.joy_banish_card = {}
                local count = 0

                for index, joker in ipairs(G.jokers.cards) do
                    if joker.facing == "front" and JoyousSpring.is_monster_archetype(joker, "SForce") then
                        local pcard = G.hand.cards[index]
                        if pcard and not SMODS.has_no_rank(pcard) then
                            card.joy_banish_card[#card.joy_banish_card + 1] = pcard
                            count = count + pcard.base.nominal
                        end
                    end
                end

                if not next(card.joy_banish_card) then
                    card.joy_banish_card = nil
                else
                    return {
                        xchips = 1 +
                            card.ability.extra.xchips *
                            (sforce_final_hand() and sforce_get_area_nominals(G.hand) or count)
                    }
                end
            end
            if context.after and card.joy_banish_card then
                if card.joy_banish_card then
                    for _, pcard in ipairs(card.joy_banish_card) do
                        JoyousSpring.banish(pcard, "boss_selected")
                    end
                end
                if sforce_should_banish() then
                    JoyousSpring.banish(card, "boss_selected")
                    local choices = JoyousSpring.get_materials_owned(copy_table(sforce_rivals))
                    local choice = pseudorandom_element(choices, self.key)
                    if choice then
                        JoyousSpring.banish(choice, "blind_selected")
                    end
                end
                card.joy_banish_card = nil
            end
        end
    end,
})

-- S-Force Pla-Tina
JoyousSpring.Joker({
    key = "sforce_platina",
    atlas = 'sforce',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            mult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and (context.cardarea == G.play or context.cardarea == 'unscored') then
                if sforce_final_hand() or (not SMODS.has_no_rank(context.other_card) and JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card))) then
                    return {
                        mult = context.other_card.base.nominal * card.ability.extra.mult
                    }
                end
            end
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = JoyousSpring.get_materials_owned(
                        copy_table(sforce_targets), false, true)
                    if #materials >= 1 then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true

                    local banished = JoyousSpring.get_banished_cards(nil, true)
                    for _, joker in ipairs(banished) do
                        if JoyousSpring.is_monster_archetype(joker, "SForce") then
                            JoyousSpring.return_from_banish(joker)
                        end
                    end
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
        return JoyousSpring.any_materials_owned(
            copy_table(sforce_targets), false, true)
    end,
})

-- S-Force Lapcewell
JoyousSpring.Joker({
    key = "sforce_lapcewell",
    atlas = 'sforce',
    pos = { x = 3, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "revive", "column", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            mult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and (context.cardarea == G.play or context.cardarea == 'unscored') then
                if sforce_final_hand() or (not SMODS.has_no_rank(context.other_card) and JoyousSpring.get_joker_column(card) == (JoyousSpring.index_of(context.full_hand, context.other_card))) then
                    return {
                        mult = context.other_card.base.nominal * card.ability.extra.mult
                    }
                end
            end
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = JoyousSpring.get_materials_owned(
                        copy_table(sforce_targets), false, true)
                    if #materials >= 1 then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true

                    JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "SForce" } } }, self.key)
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
        return JoyousSpring.any_materials_owned(
            copy_table(sforce_targets), false, true)
    end,
})

-- S-Force Nightchaser
JoyousSpring.Joker({
    key = "sforce_nightchaser",
    atlas = 'sforce',
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult *
            JoyousSpring.count_materials_in_graveyard(copy_table(sforce_rivals)) }
        }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "modifier", "graveyard" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "DARK",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SForce" }, exclude_summon_types = { "LINK" } },
                        }
                    }
                }
            },
            mult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joy_banished and JoyousSpring.is_playing_card(context.joy_banished_card) then
                local choices = {}
                if context.joy_banished_card.config.center_key == "c_base" then
                    choices[#choices + 1] = "enhancement"
                end
                if not context.joy_banished_card.edition then
                    choices[#choices + 1] = "edition"
                end
                if not context.joy_banished_card.seal then
                    choices[#choices + 1] = "seal"
                end
                local choice = pseudorandom_element(choices, self.key)
                if choice == "enhancement" then
                    context.joy_banished_card:set_ability(SMODS.poll_enhancement { guaranteed = true, key = self.key .. "enhancement" })
                elseif choice == "edition" then
                    context.joy_banished_card:set_edition(SMODS.poll_edition { guaranteed = true, key = self.key .. "edition", no_negative = true })
                elseif choice == "seal" then
                    context.joy_banished_card:set_seal(SMODS.poll_seal { guaranteed = true, key = self.key .. "seal" })
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_in_graveyard(copy_table(sforce_rivals))
                }
            end
        end
    end,
})

-- S-Force Nightslayer
JoyousSpring.Joker({
    key = "sforce_nightslayer",
    atlas = 'sforce',
    pos = { x = 1, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "extradeck", "tribute" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "DARK",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SForce" } },
                            {}
                        }
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                local banished = JoyousSpring.get_banished_cards(nil, true)
                for _, banished_card in ipairs(banished) do
                    if JoyousSpring.is_playing_card(banished_card) then
                        JoyousSpring.return_from_banish(banished_card)
                    end
                end
            end
            if not context.blueprint_card then
                if JoyousSpring.is_activated_context(card, context) then
                    local materials = JoyousSpring.get_materials_owned(
                        copy_table(sforce_targets), false, true)
                    if #materials >= 1 then
                        JoyousSpring.create_overlay_effect_selection(card, materials, 1, 1)
                    end
                end
                if JoyousSpring.is_exit_selection_context(card, context) then
                    JoyousSpring.tribute(card, context.joy_selection)
                    card.ability.extra.active = true

                    JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_archetypes = { "SForce" } } }, self.key, true)
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
        return JoyousSpring.any_materials_owned(
            copy_table(sforce_targets), false, true)
    end,
})

-- S-Force Justify
JoyousSpring.Joker({
    key = "sforce_justify",
    atlas = 'sforce',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.column } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column", "link" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "LIGHT",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SForce" } },
                            {},
                            {}
                        }
                    }
                }
            },
            xmult = 3,
            column = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = JoyousSpring.get_materials_owned({ { monster_archetypes = { "SForce" }, summon_type = "LINK" } })
                for _, joker in ipairs(choices) do
                    JoyousSpring.banish(joker, "blind_selected")
                end
            end
            if context.joker_main and JoyousSpring.get_joker_column(card) == card.ability.extra.column then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.column = pseudorandom(self.key, 2, 5)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.column = pseudorandom(self.key, 1, 5)
    end
})

-- S-Force Mystify
JoyousSpring.Joker({
    key = "sforce_mystify",
    atlas = 'sforce',
    pos = { x = 2, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        local count = 0
        local banished = JoyousSpring.get_banished_cards(nil, true)
        for _, banished_card in ipairs(banished) do
            if JoyousSpring.is_playing_card(banished_card) then
                count = count + 1
            end
        end
        return { vars = { card.ability.extra.xchips, 1 + card.ability.extra.xchips * count } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "LIGHT",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "SForce" } },
                            {},
                            {}
                        }
                    }
                }
            },
            xchips = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local count = 0
                local banished = JoyousSpring.get_banished_cards(nil, true)
                for _, banished_card in ipairs(banished) do
                    if JoyousSpring.is_playing_card(banished_card) then
                        count = count + 1
                    end
                end
                return {
                    xchips = 1 + card.ability.extra.xchips * count
                }
            end
            if context.setting_blind then
                local choices = JoyousSpring.get_materials_in_collection(copy_table(sforce_rivals))

                local key_to_add = pseudorandom_element(choices, self.key)
                if key_to_add then
                    JoyousSpring.create_perma_debuffed_card(key_to_add, self.key, { negative = true })
                end
            end
        end
    end,
})

-- S-Force Bridgehead
JoyousSpring.Joker({
    key = "sforce_bridgehead",
    atlas = 'sforce',
    pos = { x = 2, y = 2 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    joy_glossary = { "banish", "column" },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.repetition then
                if sforce_final_hand() then
                    return {
                        repetitions = 1
                    }
                end
                local joker = G.jokers.cards[JoyousSpring.index_of(context.other_card.area.cards, context.other_card)]
                if joker and JoyousSpring.is_monster_archetype(joker, "SForce") then
                    return {
                        repetitions = 1
                    }
                end
            end
            if context.joy_banished and JoyousSpring.is_monster_archetype(context.joy_banished_card, "SForce") then
                JoyousSpring.add_monster_tag_pseudorandom(copy_table(sforce_rivals), self.key)
            end
        end
        if context.tag_added then
            calculate_reroll_cost()
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        calculate_reroll_cost()
    end,
    remove_from_deck = function(self, card, from_debuff)
        calculate_reroll_cost()
    end
})

local is_there_monster_tag = function()
    for _, tag in ipairs(G.GAME.tags or {}) do
        if tag.key == "tag_joy_monster" then
            return true
        end
    end
end

local calculate_reroll_cost_ref = calculate_reroll_cost
function calculate_reroll_cost(...)
    if next(SMODS.find_card("j_joy_sforce_bridgehead")) and is_there_monster_tag() then
        G.GAME.current_round.reroll_cost = 0
        return
    end
    return calculate_reroll_cost_ref(...)
end

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "sforce" },
    label = "k_joy_archetype_sforce"
}
