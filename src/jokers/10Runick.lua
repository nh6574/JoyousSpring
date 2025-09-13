--- RUNICK
SMODS.Atlas({
    key = "Runick",
    path = "10Runick.png",
    px = 71,
    py = 95
})

-- Hugin the Runick Wings
SMODS.Joker({
    key = "runick_hugin",
    atlas = 'Runick',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.extra_slots, card.ability.extra.cards_to_create, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_runick_fountain",                                name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Runick" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Runick"] = true },
                summon_consumeable_conditions = {
                    tarot = 3
                }
            },
            extra_slots = 1,
            cards_to_create = 1,
            adds = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
            if not card.debuff and not from_debuff then
                for i = 1, card.ability.extra.cards_to_create do
                    if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                        JoyousSpring.add_to_extra_deck("j_joy_runick_fountain")
                    end
                end
                local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Runick" }, is_extra_deck = true } })
                for i = 1, card.ability.extra.adds do
                    local key_to_add, _ = pseudorandom_element(choices, 'j_joy_runick_hugin')
                    if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                        JoyousSpring.add_to_extra_deck(key_to_add)
                    end
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
        end
    end,
})

-- Munin the Runick Wings
SMODS.Joker({
    key = "runick_munin",
    atlas = 'Runick',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.extra_slots, card.ability.extra.adds, card.ability.extra.base_xchips, card.ability.extra.xchips } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Runick" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Runick"] = true },
                summon_consumeable_conditions = {
                    tarot = 2
                }
            },
            extra_slots = 1,
            adds = 1,
            base_xchips = 0.2,
            xchips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker then
                if context.using_consumeable and G.GAME.blind.in_blind and context.consumeable.ability.set == 'Tarot' then
                    card.ability.extra.xchips = card.ability.extra.xchips + card.ability.extra.base_xchips
                    return {
                        message = localize('k_upgrade_ex')
                    }
                end
            end
            if context.joker_main then
                return {
                    xchips = card.ability.extra.xchips
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
        end
        if not from_debuff and not card.debuff then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Runick" }, is_extra_deck = true } })
            for i = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_runick_munin')
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        if not JoyousSpring.is_perma_debuffed(card) then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "xchips", retrigger_type = "exp" }
                    },
                    border_colour = G.C.CHIPS
                }
            },
        }
    end
})

-- Geri the Runick Fangs
SMODS.Joker({
    key = "runick_geri",
    atlas = 'Runick',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.fields_to_create, card.ability.extra.adds, card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_runick_fountain",                                name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Runick" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Beast",
                monster_archetypes = { ["Runick"] = true },
                summon_consumeable_conditions = {
                    tarot = 2
                }
            },
            fields_to_create = 1,
            adds = 1,
            cards_to_create = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.selling_self then
                for i = 1, card.ability.extra.cards_to_create do
                    if #G.consumeables.cards < G.consumeables.config.card_limit then
                        SMODS.add_card({
                            set = 'Tarot'
                        })
                    else
                        break
                    end
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.fields_to_create do
                if JoyousSpring.graveyard["j_joy_runick_fountain"] and JoyousSpring.graveyard["j_joy_runick_fountain"].count > 0 and #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck("j_joy_runick_fountain")
                end
            end

            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Runick" }, is_extra_deck = true } })
            for i = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_runick_geri')
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
})

-- Freki the Runick Fangs
SMODS.Joker({
    key = "runick_freki",
    atlas = 'Runick',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds, card.ability.extra.playing_cards_to_create, card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Runick" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Beast",
                monster_archetypes = { ["Runick"] = true },
                summon_consumeable_conditions = {
                    tarot = 2
                }
            },
            adds = 1,
            playing_cards_to_create = 2,
            cards_to_create = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.selling_self then
                for i = 1, card.ability.extra.cards_to_create do
                    if #G.consumeables.cards < G.consumeables.config.card_limit then
                        SMODS.add_card({
                            set = 'Tarot'
                        })
                    else
                        break
                    end
                end
            end
            if context.using_consumeable and G.GAME.blind.in_blind and context.consumeable.ability.set == 'Tarot' then
                for i = 1, card.ability.extra.playing_cards_to_create do
                    SMODS.add_card { set = "Playing Card" }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Runick" }, is_extra_deck = true } })
            for i = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_runick_freki')
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
})

-- Sleipnir the Runick Mane
SMODS.Joker({
    key = "runick_sleipnir",
    atlas = 'Runick',
    pos = { x = 2, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.adds, card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Runick" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Beast",
                monster_archetypes = { ["Runick"] = true },
                summon_consumeable_conditions = {
                    tarot = 4
                }
            },
            adds = 1,
            cards_to_create = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
            end
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_returned and context.joy_returned_card == card then
                for i = 1, card.ability.extra.cards_to_create do
                    SMODS.add_card({
                        set = 'Tarot',
                        edition = "e_negative"
                    })
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Runick" }, is_extra_deck = true } })
            for i = 1, card.ability.extra.adds do
                local key_to_add, _ = pseudorandom_element(choices, 'j_joy_runick_sleipnir')
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
            end
        end
    end,
})

-- Runick Fountain
SMODS.Joker({
    key = "runick_fountain",
    atlas = 'Runick',
    pos = { x = 0, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cards_to_destroy } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Runick" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Runick"] = true },
            },
            cards_to_destroy = 2,
            tarots_used = {}
        },
    },
    calculate = function(self, card, context)
        if context.setting_blind and context.main_eval then
            for i = 1, card.ability.extra.cards_to_destroy do
                local card_to_destroy, _ = pseudorandom_element(G.deck.cards, 'j_joy_runick_fountain')
                if card_to_destroy then
                    if i == 1 then
                        SMODS.calculate_effect({ message = localize('k_joy_banished') }, card_to_destroy)
                    end
                    SMODS.destroy_cards(card_to_destroy, nil, true)
                end
            end
        end
        if context.using_consumeable and G.GAME.blind.in_blind and context.consumeable.ability.set == 'Tarot' then
            table.insert(card.ability.extra.tarots_used, context.consumeable.config.center.key)
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            for _, key in ipairs(card.ability.extra.tarots_used) do
                if #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card({
                        key = key,
                        no_edition = true
                    })
                else
                    break
                end
            end
            card.ability.extra.tarots_used = {}
        end
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "runick" },
    label = "k_joy_archetype_runick"
}
