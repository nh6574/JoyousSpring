--- SHADDOLL
SMODS.Atlas({
    key = "shaddoll",
    path = "18Shaddoll.png",
    px = 71,
    py = 95
})

local shaddoll_should_flip = function(card)
    if card.facing == 'back' then
        return true
    end
    if next(SMODS.find_card("j_joy_shaddoll_wendigo")) then
        return false
    end
    for _, joker in ipairs(G.jokers.cards) do
        if JoyousSpring.is_monster_card(joker) and not joker.debuff and joker.ability.extra.joyous_spring.material_effects and joker.ability.extra.joyous_spring.material_effects["j_joy_shaddoll_wendigo"] then
            return false
        end
    end
    return true
end

-- Shaddoll Beast
SMODS.Joker({
    key = "shaddoll_beast",
    atlas = 'shaddoll',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.h_size, card.ability.extra.revives, card.ability.extra.mills, card.ability.extra.turns } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            h_size = 1,
            revives = 1,
            mills = 1,
            turns = 3,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            if not card.ability.extra.activated then
                card.ability.extra.activated = true
                G.hand:change_size(card.ability.extra.h_size)
            end
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_beast', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            local choices = {}
            for _, pcard in ipairs(G.playing_cards) do
                if pcard.ability.set == "Default" then
                    table.insert(choices, pcard)
                end
            end
            for _ = 1, card.ability.extra.turns do
                local card_to_turn, index = pseudorandom_element(choices, 'j_joy_shaddoll_beast')
                if card_to_turn then
                    table.remove(choices, index)
                    card_to_turn:set_seal("Blue", true, true)
                    card_to_turn:set_ability("m_wild")
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.activated then
                card.ability.extra.activated = false
                G.hand:change_size(-card.ability.extra.h_size)
            end
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.activated then
            card.ability.extra.activated = false
            G.hand:change_size(-card.ability.extra.h_size)
        end
    end,
})

-- Shaddoll Dragon
SMODS.Joker({
    key = "shaddoll_dragon",
    atlas = 'shaddoll',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.hands, card.ability.extra.revives, card.ability.extra.mills, card.ability.extra.turns } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            hands = 1,
            revives = 1,
            mills = 1,
            turns = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            if not card.ability.extra.activated then
                card.ability.extra.activated = true
                G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hands
                ease_hands_played(card.ability.extra.hands)
            end
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_dragon', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            local choices = {}
            for _, pcard in ipairs(G.playing_cards) do
                if pcard.ability.set == "Default" then
                    table.insert(choices, pcard)
                end
            end
            for _ = 1, card.ability.extra.turns do
                local card_to_turn, index = pseudorandom_element(choices, 'j_joy_shaddoll_dragon')
                if card_to_turn then
                    table.remove(choices, index)
                    card_to_turn:set_seal("Gold", true, true)
                    card_to_turn:set_ability("m_glass")
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.activated then
                card.ability.extra.activated = false
                G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
                ease_hands_played(-card.ability.extra.hands)
            end
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.activated then
            card.ability.extra.activated = false
            G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hands
            ease_hands_played(-card.ability.extra.hands)
        end
    end,
})

-- Shaddoll Falco
SMODS.Joker({
    key = "shaddoll_falco",
    atlas = 'shaddoll',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.revives_flip, card.ability.extra.revives, card.ability.extra.mills, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            revives_flip = 1,
            revives = 1,
            mills = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives_flip do
                local revived_card = JoyousSpring.revive_pseudorandom({ { is_flip = true } },
                    'j_joy_shaddoll_falco', true)
                if revived_card then
                    revived_card:flip()
                end
            end
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_falco', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            for i = 1, card.ability.extra.creates do
                local added_card = JoyousSpring.create_summon({
                    key = "j_joy_shaddoll_falco",
                    edition = "e_negative"
                })
                added_card:flip()
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
})

-- Shaddoll Hedgehog
SMODS.Joker({
    key = "shaddoll_hedgehog",
    atlas = 'shaddoll',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.creates_tarot, card.ability.extra.revives, card.ability.extra.mills, card.ability.extra.creates_spectral } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            creates_tarot = 1,
            revives = 1,
            mills = 1,
            creates_spectral = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.creates_tarot do
                if #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card({
                        set = 'Tarot'
                    })
                end
            end
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_hedgehog', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            for i = 1, card.ability.extra.creates_spectral do
                if #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card({
                        set = 'Spectral'
                    })
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
})

-- Shaddoll Hound
SMODS.Joker({
    key = "shaddoll_hound",
    atlas = 'shaddoll',
    pos = { x = 4, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.money, card.ability.extra.revives, card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            money = 5,
            revives = 1,
            mills = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_hound', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
            return {
                dollars = card.ability.extra.money
            }
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            JoyousSpring.flip_all_cards(card, 'front', { G.jokers })
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
})

-- Shaddoll Squamata
SMODS.Joker({
    key = "shaddoll_squamata",
    atlas = 'shaddoll',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.discards, card.ability.extra.revives, card.ability.extra.mills, card.ability.extra.turns } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            discards = 1,
            revives = 1,
            mills = 1,
            turns = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            if not card.ability.extra.activated then
                card.ability.extra.activated = true
                G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards
                ease_discard(card.ability.extra.discards)
            end
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_squamata', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            local choices = {}
            for _, pcard in ipairs(G.playing_cards) do
                if pcard.ability.set == "Default" then
                    table.insert(choices, pcard)
                end
            end
            for _ = 1, card.ability.extra.turns do
                local card_to_turn, index = pseudorandom_element(choices, 'j_joy_shaddoll_squamata')
                if card_to_turn then
                    table.remove(choices, index)
                    card_to_turn:set_seal("Purple", true, true)
                    card_to_turn:set_ability("m_steel")
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if card.ability.extra.activated then
                card.ability.extra.activated = false
                G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
                ease_discard(-card.ability.extra.discards)
            end
            if shaddoll_should_flip(card) then card:flip() end
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

-- Shaddoll Core
SMODS.Joker({
    key = "shaddoll_core",
    atlas = 'shaddoll',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.xmult, card.ability.extra.revives, card.ability.extra.mills, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", name = "k_joy_creates" },
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                is_all_materials = { FUSION = true },
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            xmult = 2,
            revives = 1,
            mills = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom({ { monster_archetypes = { "Shaddoll" } } },
                    'j_joy_shaddoll_core', true)
            end
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION") then
            if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                JoyousSpring.add_to_extra_deck("j_joy_shaddoll_prison")
            end
        end
        if context.joker_main and JoyousSpring.can_use_abilities(card) and JoyousSpring.is_flip_active(card) then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff and JoyousSpring.should_trap_flip(card) then
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
                card.joker_display_values.xmult = JoyousSpring.is_flip_active(card) and card.ability.extra.xmult or 1
            end
        }
    end
})

-- Naelshaddoll Ariel
SMODS.Joker({
    key = "shaddoll_ariel",
    atlas = 'shaddoll',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.banishes } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "WATER",
                monster_type = "Psychic",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            banishes = 1
        },
    },
    calculate = function(self, card, context)
        if context.joy_post_round_eval then
            if JoyousSpring.can_use_abilities(card) and JoyousSpring.is_flip_active(card) then
                local choices = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and not joker.getting_sliced then
                        table.insert(choices, joker)
                    end
                end

                local to_banish = pseudorandom_element(choices, 'j_joy_shaddoll_ariel')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                    return {
                        message = localize("k_joy_banished")
                    }
                end
            end
        end
        JoyousSpring.calculate_flip_effect(card, context)
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joy_post_round_eval then
                JoyousSpring.banish(other_card, "blind_selected")
            end
        end
    end
})

-- Nehshaddoll Genius
SMODS.Joker({
    key = "shaddoll_genius",
    atlas = 'shaddoll',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.flips } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "EARTH",
                monster_type = "Machine",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            flips = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        JoyousSpring.calculate_flip_effect(card, context)
        if JoyousSpring.can_use_abilities(card) then
            if JoyousSpring.is_flip_active(card) and not context.blueprint_card then
                if not card.ability.extra.activated and context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_materials_owned({ { can_flip = true }, { facedown = true } })
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
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    joy_can_activate = function(card)
        if card.ability.extra.activated or not JoyousSpring.is_flip_active(card) then
            return false
        end
        local targets = JoyousSpring.get_materials_owned({ { can_flip = true }, { facedown = true } })
        return next(targets) and true or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        other_card.ability.extra.joyous_spring.cannot_flip = true
        SMODS.debuff_card(other_card, 'prevent_debuff', 'j_joy_shaddoll_genius')
    end,
})

-- Qadshaddoll Keios
SMODS.Joker({
    key = "shaddoll_keios",
    atlas = 'shaddoll',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            adds = 1,
            mult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_shaddoll_keios')
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { mult = 1 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return {
            vars = { config.mult, config.mult *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } }, { monster_type = "Spellcaster" } }) }
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    mult = config.mult *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } }, { monster_type = "Spellcaster" } })
                }
            end
        end
    end
})

-- Reeshaddoll Wendi
SMODS.Joker({
    key = "shaddoll_wendi",
    atlas = 'shaddoll',
    pos = { x = 4, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.creates, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            creates = 1,
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            for _ = 1, card.ability.extra.creates do
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                    'j_joy_shaddoll_wendi', true)
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { revives = 1 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return {
            vars = { config.revives }
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.setting_blind and context.main_eval and G.GAME.blind.boss then
                for i = 1, config.revives do
                    JoyousSpring.revive_pseudorandom({ { is_flip = true } }, 'j_joy_shaddoll_wendi', false,
                        "e_negative")
                end
            end
        end
    end
})

-- Helshaddoll Hollow
SMODS.Joker({
    key = "shaddoll_hollow",
    atlas = 'shaddoll',
    pos = { x = 0, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.mills_transfer } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                attribute = "FIRE",
                monster_type = "Fiend",
                monster_archetypes = { ["Shaddoll"] = true }
            },
            mills = 3,
            mills_transfer = 3
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            JoyousSpring.send_to_graveyard_pseudorandom(
                { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                card.config.center.key, card.ability.extra.mills)
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if shaddoll_should_flip(card) then card:flip() end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { mills = 3 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return {
            vars = { config.mills }
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                    other_card.config.center.key .. "_shaddoll_hollow", config.mills)
            end
        end
    end
})

-- El Shaddoll Anoyatyllis
SMODS.Joker({
    key = "shaddoll_anoya",
    atlas = 'shaddoll',
    pos = { x = 3, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } }), card.ability.extra
                .adds }
        }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "WATER",
                monster_type = "Fiend",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_attribute = "WATER" },
                        },
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_attribute = "WATER" },
                        },
                    },
                }
            },
            chips = 10,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } })
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { chips = 40 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return {
            vars = { config.chips, config.chips *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } }) }
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    chips = config.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } })
                }
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
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } })
            end
        }
    end
})

-- El Shaddoll Apkallone
SMODS.Joker({
    key = "shaddoll_apka",
    atlas = 'shaddoll',
    pos = { x = 4, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Spellcaster" },
                        },
                        restrictions = {
                            different_attributes = true
                        }
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_archetypes = { "Shaddoll" } },
                        },
                        restrictions = {
                            different_attributes = true
                        }
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_archetypes = { "Shaddoll" } },
                        },
                        restrictions = {
                            different_attributes = true
                        }
                    },
                }
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_summon_type(joker, "FUSION") and not JoyousSpring.is_perma_debuffed(joker) then
                    SMODS.debuff_card(joker, "prevent_debuff", "j_joy_shaddoll_apka")
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, "j_joy_shaddoll_apka")
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if JoyousSpring.is_summon_type(added_card, "FUSION") and not JoyousSpring.is_perma_debuffed(added_card) then
            SMODS.debuff_card(added_card, "prevent_debuff", "j_joy_shaddoll_apka")
        end
    end,
    joy_prevent_flip = function(card, other_card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        if not other_card.debuff then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_summon_type(joker, "FUSION") and not JoyousSpring.is_perma_debuffed(joker) then
                    SMODS.debuff_card(joker, "prevent_debuff", other_card.config.center.key .. "_shaddoll_apka")
                end
            end
        end
    end,
    joy_transfer_remove_from_deck = function(self, other_card, config, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, other_card.config.center.key .. "_shaddoll_apka")
        end
    end,
    joy_transfer_prevent_flip = function(self, ability_card, other_card, config)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_apply_to_jokers_added = function(self, ability_card, added_card, config)
        if JoyousSpring.is_summon_type(added_card, "FUSION") and not JoyousSpring.is_perma_debuffed(added_card) then
            SMODS.debuff_card(added_card, "prevent_debuff", ability_card.config.center.key .. "_shaddoll_apka")
        end
    end
})

-- El Shaddoll Winda
SMODS.Joker({
    key = "shaddoll_winda",
    atlas = 'shaddoll',
    pos = { x = 4, y = 3 },
    joy_alt_pos = { { x = 2, y = 4 } },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        local empty_spaces = G.jokers and math.max(0, G.jokers.config.card_limit - #G.jokers.cards + G.GAME.joker_buffer) or
            0
        local mult_count = empty_spaces +
            JoyousSpring.count_materials_owned({ { facedown = true }, { monster_archetypes = { "Shaddoll" } } })
        return { vars = { card.ability.extra.xmult, math.max(1, card.ability.extra.xmult * mult_count), card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_attribute = "DARK" },
                        },
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_attribute = "DARK" },
                        },
                    },
                }
            },
            xmult = 2,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local empty_spaces = math.max(0, G.jokers.config.card_limit - #G.jokers.cards + G.GAME.joker_buffer)
                local mult_count = empty_spaces +
                    JoyousSpring.count_materials_owned({ { facedown = true }, { monster_archetypes = { "Shaddoll" } } })
                if mult_count > 0 then
                    return {
                        xmult = card.ability.extra.xmult * mult_count
                    }
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { xmult = 2 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        local empty_spaces = G.jokers and math.max(0, G.jokers.config.card_limit - #G.jokers.cards + G.GAME.joker_buffer) or
            0
        local mult_count = empty_spaces +
            JoyousSpring.count_materials_owned({ { facedown = true }, { monster_archetypes = { "Shaddoll" } } })
        return { vars = { config.xmult, math.max(1, config.xmult * mult_count) } }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                local empty_spaces = math.max(0, G.jokers.config.card_limit - #G.jokers.cards + G.GAME.joker_buffer)
                local mult_count = empty_spaces +
                    JoyousSpring.count_materials_owned({ { facedown = true }, { monster_archetypes = { "Shaddoll" } } })
                if mult_count > 0 then
                    return {
                        xmult = config.xmult * mult_count
                    }
                end
            end
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
                local empty_spaces = math.max(0, G.jokers.config.card_limit - #G.jokers.cards + G.GAME.joker_buffer)
                local mult_count = empty_spaces +
                    JoyousSpring.count_materials_owned({ { facedown = true }, { monster_archetypes = { "Shaddoll" } } })
                card.joker_display_values.xmult = mult_count > 0 and card.ability.extra.xmult * mult_count or 1
            end
        }
    end
})

-- El Shaddoll Construct
SMODS.Joker({
    key = "shaddoll_elconstruct",
    atlas = 'shaddoll',
    pos = { x = 0, y = 3 },
    joy_alt_pos = { { x = 1, y = 4 } },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.mills, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_attribute = "LIGHT" },
                        },
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_attribute = "LIGHT" },
                        },
                    },
                }
            },
            mills = 10,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_archetypes = { "Shaddoll" } } },
                    card.config.center.key, card.ability.extra.mills)
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { mills = 10 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mills } }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { monster_archetypes = { "Shaddoll" }, is_main_deck = true } },
                    other_card.config.center.key .. "_shaddoll_elconstruct", config.mills)
            end
        end
    end
})

-- El Shaddoll Grysta
SMODS.Joker({
    key = "shaddoll_grysta",
    atlas = 'shaddoll',
    pos = { x = 1, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return {
            vars = { tostring(card.ability.extra.xchips), 1 + card.ability.extra.xchips *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } }), card.ability
                .extra.adds }
        }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "FIRE",
                monster_type = "Rock",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_attribute = "FIRE" },
                        },
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_attribute = "FIRE" },
                        },
                    },
                }
            },
            xchips = 0.01,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xchips = 1 + card.ability.extra.xchips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } })
                }
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_config = function(self, other_card)
        return { xchips = 0.01 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return {
            vars = { config.xchips, 1 + config.xchips *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } }) }
        }
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    xchips = 1 + config.xchips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } })
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.joker_display_values", ref_value = "xchips", retrigger_type = "exp" }
                    },
                    border_colour = G.C.CHIPS
                }
            },
            calc_function = function(card)
                card.joker_display_values.xchips = 1 + card.ability.extra.xchips *
                    JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Shaddoll" } } })
            end
        }
    end
})

-- El Shaddoll Shekhinaga
SMODS.Joker({
    key = "shaddoll_shekh",
    atlas = 'shaddoll',
    pos = { x = 2, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "EARTH",
                monster_type = "Machine",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_attribute = "EARTH" },
                        },
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_attribute = "EARTH" },
                        },
                    },
                }
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
        if (JoyousSpring.can_use_abilities(card) or card.joy_faceup_before_blind) and not context.blueprint_card and context.setting_blind and context.main_eval and G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind.boss)) then
            G.GAME.blind:disable()
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if (JoyousSpring.can_use_abilities(other_card) or other_card.joy_faceup_before_blind) and not context.blueprint_card and context.setting_blind and context.main_eval and G.GAME.blind and ((not G.GAME.blind.disabled) and (G.GAME.blind.boss)) then
            G.GAME.blind:disable()
        end
    end
})

-- El Shaddoll Wendigo
SMODS.Joker({
    key = "shaddoll_wendigo",
    atlas = 'shaddoll',
    pos = { x = 3, y = 3 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "WIND",
                monster_type = "Psychic",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_attribute = "WIND" },
                        },
                    },
                    {
                        type = "FUSION",
                        materials = {
                            { monster_archetypes = { "Shaddoll" } },
                            { monster_attribute = "WIND" },
                        },
                    },
                }
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    joy_flip_effect_active = function(card, other_card)
        return JoyousSpring.is_monster_archetype(other_card, "Shaddoll")
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_flip_effect_active = function(self, ability_card, other_card, config)
        return JoyousSpring.is_monster_archetype(other_card, "Shaddoll")
    end
})

-- Shaddoll Construct
SMODS.Joker({
    key = "shaddoll_construct",
    atlas = 'shaddoll',
    pos = { x = 0, y = 4 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                is_all_materials = { FUSION = true },
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Shaddoll"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            { facedown = true },
                            { facedown = true },
                        },
                    },
                    {
                        type = "LINK",
                        materials = {
                            { is_flip = true },
                            { is_flip = true },
                        },
                    },
                    {
                        type = "LINK",
                        materials = {
                            { facedown = true },
                            { is_flip = true },
                        },
                    }
                }
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.used_as_material(card, context) then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Shaddoll" }, is_extra_deck = true } })
            for _ = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, card.config.center.key)
                if key_to_add and #JoyousSpring.extra_deck_area.cards - (JoyousSpring.get_card_limit(context.joy_card) > 0 and 0 or 1) < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_add_to_deck = function(self, other_card, config, card, from_debuff, materials, was_material)
        other_card.ability.extra.joyous_spring.is_all_materials.FUSION = true
    end,
})

-- Curse of the Shadow Prison
SMODS.Joker({
    key = "shaddoll_prison",
    atlas = 'shaddoll',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.add_counter, card.ability.extra.counters, card.ability.extra.chips, card.ability.extra.chips * card.ability.extra.counters, card.ability.extra.remove, card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_shaddoll_prison", properties = { { monster_archetypes = { "Shaddoll" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            add_counter = 1,
            chips = 5,
            remove = 20,
            revives = 1,
            counters = 0
        },
    },
    calculate = function(self, card, context)
        if context.joy_sent_to_gy and (JoyousSpring.is_material_center(context.joy_key, { monster_archetypes = { "Shaddoll" } }) or JoyousSpring.is_material_center(context.joy_key, { is_flip = true }) or JoyousSpring.is_material_center(context.joy_key, { monster_type = "Spellcaster" })) then
            card.ability.extra.counters = card.ability.extra.counters + card.ability.extra.add_counter
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips * card.ability.extra.counters
            }
        end
        if context.joy_activate_effect and context.joy_activated_card == card and card.ability.extra.counters >= card.ability.extra.remove and (#G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit) then
            card.ability.extra.counters = card.ability.extra.counters - card.ability.extra.remove
            JoyousSpring.revive_pseudorandom({ { summon_type = "FUSION" } }, 'j_joy_shaddoll_prison', true)
        end
    end,
    joy_can_activate = function(card)
        if (card.ability.extra.counters < card.ability.extra.remove) or (#G.jokers.cards + G.GAME.joker_buffer >= G.jokers.config.card_limit) then
            return false
        end
        return JoyousSpring.count_materials_in_graveyard({ { summon_type = "FUSION" } }, true) > 0
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips * card.ability.extra.counters
            end
        }
    end
})
JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "shaddoll" },
    label = "k_joy_archetype_shaddoll"
}
