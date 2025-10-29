--- DOGMATIKA
SMODS.Atlas({
    key = "Dogmatika",
    path = "03Dogmatika.png",
    px = 71,
    py = 95
})

local is_debuffed_extra_deck = function(card)
    return not not (card.debuff and JoyousSpring.is_extra_deck_monster(card) or
        (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and JoyousSpring.is_monster_archetype(card, "Dogmatika")))
end

local is_dogmatika = function(card)
    return not not (JoyousSpring.is_monster_archetype(card, "Dogmatika") or
        (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and card.debuff and JoyousSpring.is_extra_deck_monster(card)))
end

local get_debuffed_ed_count = function()
    local debuffed_ed_count = JoyousSpring.count_materials_owned({ { is_extra_deck = true, is_debuffed = true },
        (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and { monster_archetypes = { "Dogmatika" } } or nil) })
    if next(SMODS.find_card("j_joy_dogma_relic")) then
        debuffed_ed_count = debuffed_ed_count +
            JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true },
                (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and { monster_archetypes = { "Dogmatika" } } or nil) })
    end
    return debuffed_ed_count
end

-- Dogmatika Ecclesia, the Virtuous
SMODS.Joker({
    key = "dogma_ecclesia",
    atlas = 'Dogmatika',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 3, y = 0 } },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.base_xmult, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            base_xmult = 0.15,
            xmult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.selling_card and (JoyousSpring.is_extra_deck_monster(context.card) or is_debuffed_extra_deck(context.card)) then
                card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.base_xmult
                return {
                    message = localize('k_upgrade_ex')
                }
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                {
                    border_nodes = {
                        { text = "X" },
                        { ref_table = "card.ability.extra", ref_value = "xmult", retrigger_type = "exp" }
                    }
                }
            },
        }
    end
})

-- Dogmatika Fleurdelis, the Knighted
SMODS.Joker({
    key = "dogma_fleur",
    atlas = 'Dogmatika',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            mult = 25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and is_dogmatika(context.other_joker) then
                return {
                    mult = card.ability.extra.mult,
                    message_card = context.other_joker
                }
            end
            if context.joker_main then
                local debuffed_ed_count = 0
                if next(SMODS.find_card("j_joy_dogma_relic")) and next(SMODS.find_card("j_joy_dogma_thunderbolt")) then
                    debuffed_ed_count = debuffed_ed_count +
                        JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true }, { monster_archetypes = { "Dogmatika" } } })
                end
                if debuffed_ed_count > 0 then
                    return {
                        mult = card.ability.extra.mult * debuffed_ed_count
                    }
                end
            end
        end
    end,
    joy_set_cost = function(card)
        if get_debuffed_ed_count() > 0 then
            card.cost = 0
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
                local debuffed_ed_count = 0
                if next(SMODS.find_card("j_joy_dogma_relic")) and next(SMODS.find_card("j_joy_dogma_thunderbolt")) then
                    debuffed_ed_count = debuffed_ed_count +
                        JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true }, { monster_archetypes = { "Dogmatika" } } })
                end
                card.joker_display_values.mult = card.ability.extra.mult * debuffed_ed_count
            end,
            mod_function = function(card, mod_joker)
                return {
                    mult = (card.area == G.jokers and JoyousSpring.is_monster_archetype(card, "Dogmatika") and mod_joker.ability.extra.mult and
                        mod_joker.ability.extra.mult * JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                }
            end
        }
    end
})

-- Dogmatika Fleurdelis, the Thunderbolt
SMODS.Joker({
    key = "dogma_thunderbolt",
    atlas = 'Dogmatika',
    pos = { x = 4, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            xmult = 1.1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and context.other_joker.facing == "front" and is_debuffed_extra_deck(context.other_joker) then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
            if context.joker_main then
                local debuffed_ed_count = 0
                if next(SMODS.find_card("j_joy_dogma_relic")) then
                    debuffed_ed_count = debuffed_ed_count +
                        JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true }, { monster_archetypes = { "Dogmatika" } } })
                end
                if debuffed_ed_count > 0 then
                    return {
                        xmult = card.ability.extra.xmult ^ debuffed_ed_count
                    }
                end
            end
        end
        if context.joy_summon and not context.blueprint_card then
            if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "RITUAL") then
                SMODS.add_card { key = "j_joy_dogma_thunderbolt", edition = "e_negative" }
            end
        end
    end,
    joy_set_cost = function(card)
        if get_debuffed_ed_count() > 0 then
            card.cost = 0
        end
    end,
    joy_bypass_room_check = function(card, from_booster)
        return get_debuffed_ed_count() > 0
    end,
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                return {
                    mult = (card.area == G.jokers and JoyousSpring.is_monster_archetype(card, "Dogmatika") and mod_joker.ability.extra.mult and
                        mod_joker.ability.extra.mult * JokerDisplay.calculate_joker_triggers(mod_joker) or nil)
                }
            end
        }
    end
})

-- Dogmatika Maximus
SMODS.Joker({
    key = "dogma_maximus",
    atlas = 'Dogmatika',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval then
                for i = 1, card.ability.extra.cards_to_create do
                    local key_to_add = pseudorandom_element(
                        JoyousSpring.get_materials_in_collection({ { is_extra_deck = true } }),
                        'j_joy_dogma_maximus')
                    if key_to_add then
                        JoyousSpring.create_perma_debuffed_card(key_to_add, "Dogmatika", { negative = true })
                    end
                end
            end
        end
    end,
})

-- Dogmatika Adin, the Enlightened
SMODS.Joker({
    key = "dogma_adin",
    atlas = 'Dogmatika',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
                for i = 1, card.ability.extra.cards_to_create do
                    JoyousSpring.create_pseudorandom(
                        { { monster_archetypes = { "Dogmatika" }, summon_type = "NORMAL" } },
                        'j_joy_dogma_adin', true)
                end
            end
        end
    end,
    joy_set_cost = function(card)
        if get_debuffed_ed_count() > 0 then
            card.cost = 0
        end
    end,
})

-- Dogmatika Theo, the Iron Punch
SMODS.Joker({
    key = "dogma_theo",
    atlas = 'Dogmatika',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.extra_chips, card.ability.extra.chips + card.ability.extra.extra_chips * get_debuffed_ed_count() } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            chips = 100,
            extra_chips = 100
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips + card.ability.extra.extra_chips * get_debuffed_ed_count()
                }
            end
        end
    end,
    joy_set_cost = function(card)
        if get_debuffed_ed_count() > 0 then
            card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+", },
                { ref_table = "card.joker_display_values", ref_value = "chips", retrigger_type = "mult" },
            },
            text_config = { colour = G.C.CHIPS },
            calc_function = function(card)
                card.joker_display_values.chips = card.ability.extra.chips +
                    card.ability.extra.extra_chips * get_debuffed_ed_count()
            end
        }
    end
})

-- Dogmatika Ashiyan
SMODS.Joker({
    key = "dogma_ashiyan",
    atlas = 'Dogmatika',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.revives, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            revives = 1,
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval and context.beat_boss then
                local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Dogmatika" }, summon_type = "RITUAL" } })
                for i = 1, card.ability.extra.adds do
                    key_to_add = pseudorandom_element(choices, 'j_joy_dogma_ashiyan')
                    JoyousSpring.add_monster_tag(key_to_add or "j_joy_dogma_relic")
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            for i = 1, card.ability.extra.revives do
                JoyousSpring.revive_pseudorandom(
                    { { monster_archetypes = { "Dogmatika" } },
                        (next(SMODS.find_card("j_joy_dogma_relic")) and next(SMODS.find_card("j_joy_dogma_thunderbolt")) and { is_extra_deck = true } or nil) },
                    'j_joy_dogma_ashiyan',
                    true
                )
            end
        end
    end,
    joy_set_cost = function(card)
        if get_debuffed_ed_count() > 0 then
            card.cost = 0
        end
    end,
})

-- Dogmatika Nexus
SMODS.Joker({
    key = "dogma_nexus",
    atlas = 'Dogmatika',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.duplicates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
            },
            duplicates = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                for i = 1, card.ability.extra.duplicates do
                    local properties = { { is_extra_deck = true }, (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and { monster_archetypes = { "Dogmatika" } } or nil) }
                    local choices = next(SMODS.find_card("j_joy_dogma_relic")) and
                        JoyousSpring.get_all_material_keys(properties) or
                        JoyousSpring.get_materials_owned(properties)

                    local key_to_add = pseudorandom_element(choices, 'j_joy_dogma_maximus')
                    if key_to_add and type(key_to_add) ~= "string" then
                        key_to_add = key_to_add.config.center_key
                    end
                    if key_to_add then
                        JoyousSpring.create_perma_debuffed_card(key_to_add, "Dogmatika", { negative = true })
                    end
                end
            end
        end
    end,
})

-- White Relic of Dogmatika
SMODS.Joker({
    key = "dogma_relic",
    atlas = 'Dogmatika',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return {
            vars = {
                card.ability.extra.base_h_size,
                card.ability.extra.debuffed_ed_count,
                math.floor(get_debuffed_ed_count() /
                    card.ability.extra.debuffed_ed_count)
            }

        }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_archetypes = { "Dogmatika" } },
                            {},
                        }
                    }
                }
            },
            base_h_size = 1,
            h_size = 0,
            debuffed_ed_count = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.hand_drawn and not context.blueprint_card and not context.retrigger_joker then
                local debuffed_ed_count = get_debuffed_ed_count()
                debuffed_ed_count = math.floor(debuffed_ed_count / card.ability.extra.debuffed_ed_count)
                if debuffed_ed_count ~= card.ability.extra.h_size then
                    G.hand:change_size(debuffed_ed_count - card.ability.extra.h_size)
                    card.ability.extra.h_size = debuffed_ed_count
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        local debuffed_ed_count = get_debuffed_ed_count()
        debuffed_ed_count = math.floor(debuffed_ed_count / card.ability.extra.debuffed_ed_count)
        G.hand:change_size(debuffed_ed_count)
        card.ability.extra.h_size = debuffed_ed_count
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-card.ability.extra.h_size)
    end,
})

-- White Knight of Dogmatika
SMODS.Joker({
    key = "dogma_knight",
    atlas = 'Dogmatika',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.mult, get_debuffed_ed_count() * card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_archetypes = { "Dogmatika" } },
                            {},
                        }
                    }
                }
            },
            mult = 25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local debuffed_ed_count = get_debuffed_ed_count()
                if debuffed_ed_count > 0 then
                    return {
                        mult = card.ability.extra.mult * debuffed_ed_count
                    }
                end
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if G.shop_jokers then
            for _, other_card in ipairs(G.shop_jokers.cards or {}) do
                if JoyousSpring.is_extra_deck_monster(other_card) then
                    other_card.ability.extra.joyous_spring.is_free = true
                    JoyousSpring.create_perma_debuffed_card(other_card, "Dogmatika")
                    other_card:set_cost()
                end
            end
        end
    end,
    joy_create_card_for_shop = function(card, other_card, area)
        if other_card and JoyousSpring.is_extra_deck_monster(other_card) and next(SMODS.find_card("j_joy_dogma_knight")) then
            other_card.ability.extra.joyous_spring.is_free = true
            JoyousSpring.create_perma_debuffed_card(other_card, "Dogmatika")
            other_card:set_cost()
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+", },
                { ref_table = "card.joker_display_values", ref_value = "mult", retrigger_type = "mult" },
            },
            text_config = { colour = G.C.MULT },
            calc_function = function(card)
                local debuffed_ed_count = get_debuffed_ed_count()
                card.joker_display_values.mult = card.ability.extra.mult * debuffed_ed_count
            end
        }
    end
})

-- Dogmatika Alba Zoa
SMODS.Joker({
    key = "dogma_albazoa",
    atlas = 'Dogmatika',
    pos = { x = 3, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        local debuffed_ed_count = get_debuffed_ed_count()
        return { vars = { card.ability.extra.mills, card.ability.extra.xmult, 1 + debuffed_ed_count * card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "RITUAL",
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Dogmatika"] = true },
                summon_conditions = {
                    {
                        type = "RITUAL",
                        materials = {
                            { monster_archetypes = { "Dogmatika" } },
                            { monster_archetypes = { "Dogmatika" } },
                        }
                    }
                }
            },
            mills = 1,
            xmult = 0.05
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind and context.main_eval and #JoyousSpring.extra_deck_area.cards > 0 then
                for _, joker in ipairs(JoyousSpring.extra_deck_area.cards) do
                    for i = 1, card.ability.extra.mills do
                        JoyousSpring.send_to_graveyard(joker.config.center.key)
                    end
                end
                return { message = localize("k_joy_mill") }
            end
            if context.other_joker and JoyousSpring.is_main_deck_monster(context.other_joker) then
                local debuffed_ed_count = get_debuffed_ed_count()
                if debuffed_ed_count > 0 then
                    return {
                        xmult = 1 + card.ability.extra.xmult * debuffed_ed_count,
                        message_card = context.other_joker
                    }
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                local debuffed_ed_count = JoyousSpring.count_materials_owned({ { is_extra_deck = true, is_debuffed = true } })
                if next(SMODS.find_card("j_joy_dogma_relic")) then
                    debuffed_ed_count = debuffed_ed_count +
                        JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true } })
                end
                return {
                    x_mult = (JoyousSpring.is_main_deck_monster(card) and mod_joker.ability.extra.xmult and debuffed_ed_count > 0 and
                        1 + mod_joker.ability.extra.xmult * debuffed_ed_count or nil)
                }
            end
        }
    end
})

-- Dogmatika Nation
SMODS.Joker({
    key = "dogma_nation",
    atlas = 'Dogmatika',
    pos = { x = 4, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        local debuffed_ed_count = get_debuffed_ed_count()
        return { vars = { card.ability.extra.money, card.ability.extra.money * debuffed_ed_count, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Dogmatika" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["Dogmatika"] = true },
            },
            money = 1,
            tributes = 4,
            creates = 1,
        },
    },
    calculate = function(self, card, context)
        if context.joy_activate_effect and context.joy_activated_card == card then
            local materials = JoyousSpring.get_materials_owned(
                { { is_extra_deck = true }, (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and { monster_archetypes = { "Dogmatika" } } or nil) },
                false, true)
            if #materials >= card.ability.extra.tributes then
                JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                    card.ability.extra.tributes)
            end
        end
        if context.joy_exit_effect_selection and context.joy_card == card and
            #context.joy_selection == card.ability.extra.tributes then
            local tribute_amount = card.ability.extra.tributes
            for _, joker in ipairs(context.joy_selection) do
                tribute_amount = tribute_amount - JoyousSpring.get_card_limit(joker)
            end

            if #G.jokers.cards + G.GAME.joker_buffer - tribute_amount < G.jokers.config.card_limit then
                JoyousSpring.tribute(card, context.joy_selection)

                for i = 1, card.ability.extra.creates do
                    if #G.jokers.cards + G.GAME.joker_buffer - tribute_amount < G.jokers.config.card_limit then
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "Dogmatika" }, is_main_deck = true } },
                            'j_joy_dogma_nation', true)
                    end
                end
            end
        end
    end,
    calc_dollar_bonus = function(self, card)
        local debuffed_ed_count = get_debuffed_ed_count()
        local ret = card.ability.extra.money * debuffed_ed_count
        return ret > 0 and ret or nil
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer - card.ability.extra.tributes < G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_materials_owned(
            { { is_extra_deck = true },
                (next(SMODS.find_card("j_joy_dogma_thunderbolt")) and { monster_archetypes = { "Dogmatika" } } or nil) },
            false, true)
        return #materials >= card.ability.extra.tributes
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+$" },
                { ref_table = "card.joker_display_values", ref_value = "money" },
            },
            text_config = { colour = G.C.GOLD },
            reminder_text = {
                { ref_table = "card.joker_display_values", ref_value = "localized_text" },
            },
            calc_function = function(card)
                local debuffed_ed_count = get_debuffed_ed_count()
                card.joker_display_values.money = card.ability.extra.money * debuffed_ed_count
                card.joker_display_values.localized_text = "(" .. localize("k_round") .. ")"
            end
        }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "dogma" },
    label = "k_joy_archetype_dogma"
}
