--- PALEOZOIC
SMODS.Atlas({
    key = "paleo",
    path = "19Paleozoic.png",
    px = 71,
    py = 95
})

-- Paleozoic Canadia
SMODS.Joker({
    key = "paleo_canadia",
    atlas = 'paleo',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            mult = 5,
            current_mult = 0,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_canadia', not has_cambro, has_cambro and "e_negative" or nil)
            end
        end
        if context.joy_card_flipped and context.joy_card_flipped.ability.set == "Joker" then
            card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_canadia")
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "current_mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Paleozoic Dinomischus
SMODS.Joker({
    key = "paleo_dino",
    atlas = 'paleo',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.banishes, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            banishes = 1,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_flip_active(card) and not context.blueprint_card and context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = JoyousSpring.get_materials_owned({ { is_trap = true } })
                local choices_exclude = {}

                for _, joker in ipairs(choices) do
                    if joker ~= card then
                        table.insert(choices_exclude, joker)
                    end
                end

                local to_banish = pseudorandom_element(choices_exclude, 'j_joy_paleo_dino')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_dino', not has_cambro, has_cambro and "e_negative" or nil)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_dino")
        end
    end,
})

-- Paleozoic Eldonia
SMODS.Joker({
    key = "paleo_eldonia",
    atlas = 'paleo',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            chips = 300,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and JoyousSpring.is_flip_active(card) then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_eldonia', not has_cambro, has_cambro and "e_negative" or nil)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_eldonia")
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
                card.joker_display_values.chips = JoyousSpring.is_flip_active(card) and card.ability.extra.chips or 0
            end
        }
    end
})

-- Paleozoic Hallucigenia
SMODS.Joker({
    key = "paleo_hallu",
    atlas = 'paleo',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            mult = 50,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and JoyousSpring.is_flip_active(card) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_hallu', not has_cambro, has_cambro and "e_negative" or nil)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_hallu")
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
                card.joker_display_values.mult = JoyousSpring.is_flip_active(card) and card.ability.extra.mult or 0
            end
        }
    end
})

-- Paleozoic Leanchoilia
SMODS.Joker({
    key = "paleo_lean",
    atlas = 'paleo',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.current_chips, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            chips = 20,
            current_chips = 0,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and JoyousSpring.is_flip_active(card) then
                return {
                    chips = card.ability.extra.current_chips
                }
            end
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_lean', not has_cambro, has_cambro and "e_negative" or nil)
            end
        end
        if context.joy_card_flipped and context.joy_card_flipped.ability.set == "Joker" then
            card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_lean")
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "current_chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
        }
    end
})

-- Paleozoic Marrella
SMODS.Joker({
    key = "paleo_marrella",
    atlas = 'paleo',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            revives = 1,
            mills = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_marrella', not has_cambro, has_cambro and "e_negative" or nil)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Paleozoic" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_marrella")
        end
    end,
})

-- Paleozoic Olenoides
SMODS.Joker({
    key = "paleo_oleno",
    atlas = 'paleo',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.discards, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            discards = 1,
            revives = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if card.ability.extra.activated and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
            ease_discard(-card.ability.extra.discards)
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_oleno', not has_cambro, has_cambro and "e_negative" or nil)
            end
            if not card.ability.extra.activated then
                card.ability.extra.activated = true
                G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
                ease_discard(card.ability.extra.discards)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_oleno")
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.activated then
            card.ability.extra.activated = false
            G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
            ease_discard(-card.ability.extra.discards)
        end
    end,
})

-- Paleozoic Pikaia
SMODS.Joker({
    key = "paleo_pikaia",
    atlas = 'paleo',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.h_size, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true }
            },
            h_size = 2,
            revives = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if card.ability.extra.activated and context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
            G.hand:change_size(-card.ability.extra.h_size)
        end
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                local has_cambro = next(SMODS.find_card("j_joy_paleo_cambro")) and true or false
                JoyousSpring.revive_pseudorandom({ { is_trap = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_pikaia', not has_cambro, has_cambro and "e_negative" or nil)
            end
            if not card.ability.extra.activated then
                card.ability.extra.activated = true
                G.hand:change_size(card.ability.extra.h_size)
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
            if not from_debuff and JoyousSpring.should_trap_flip(card) then
                JoyousSpring.flip(card, card)
            end
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_pikaia")
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.activated then
            card.ability.extra.activated = false
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
})

-- Paleozoic Cambroraster
SMODS.Joker({
    key = "paleo_cambro",
    atlas = 'paleo',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { monster_archetypes = { "Paleozoic" } },
                            { monster_archetypes = { "Paleozoic" } },
                        },
                    }
                }
            },
            adds = 1,
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_cambro")
        end
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.adds do
                local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Paleozoic" }, summon_type = "XYZ" } })
                for i = 1, card.ability.extra.adds do
                    local key_to_add, _ = pseudorandom_element(choices, 'j_joy_paleo_cambro')
                    if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                        JoyousSpring.add_to_extra_deck(key_to_add)
                    end
                end
            end
        end
    end,
})

-- Paleozoic Anomalocaris
SMODS.Joker({
    key = "paleo_anomalo",
    atlas = 'paleo',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_detach" }
        end
        return { vars = { card.ability.extra.detach, card.ability.extra.xmult, card.ability.extra.current_xmult, card.ability.extra.attach } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { min = 3, is_trap = true },
                        },
                    }
                }
            },
            detach = 3,
            xmult = 5,
            current_xmult = 1,
            attach = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
            end
            if context.joy_card_flipped and JoyousSpring.is_trap_monster(context.joy_card_flipped) and context.joy_card_flipped.facing == "front" then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.current_xmult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.current_xmult = 1
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_anomalo")
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "current_xmult", retrigger_type = "exp" }
                    }
                }
            },
        }
    end
})

-- Paleozoic Opabinia
SMODS.Joker({
    key = "paleo_opa",
    atlas = 'paleo',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_detach" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.detach, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Paleozoic" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    update = JoyousSpring.update_counter,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "WATER",
                monster_type = "Aqua",
                monster_archetypes = { ["Paleozoic"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { monster_attribute = "WATER", exclude_summon_types = { "XYZ", "LINK" } },
                            { monster_attribute = "WATER", exclude_summon_types = { "XYZ", "LINK" } }
                        },
                    }
                }
            },
            detach = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    JoyousSpring.ease_detach(card)
                end

                JoyousSpring.create_pseudorandom({ { is_main_deck = true, monster_archetypes = { "Paleozoic" } } },
                    'j_joy_paleo_opa', true)
            end
            if context.setting_blind and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    if JoyousSpring.is_trap_monster(joker) and joker.facing == "back" then
                        JoyousSpring.flip(joker, card)
                    end
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            SMODS.debuff_card(card, "prevent_debuff", "j_joy_paleo_opa")
        end
    end,
    joy_can_detach = function(self, card)
        return #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "paleo" },
    label = "k_joy_archetype_paleo"
}
