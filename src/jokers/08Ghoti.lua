--- GHOTI
SMODS.Atlas({
    key = "Ghoti",
    path = "08Ghoti.png",
    px = 71,
    py = 95
})

-- Keaf, Murk of the Ghoti
SMODS.Joker({
    key = "fish_keaf",
    atlas = 'Ghoti',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                local func = function(c)
                    for i = 1, c.ability.extra.revives do
                        JoyousSpring.revive_pseudorandom(
                            {
                                { summon_type = "SYNCHRO" },
                            },
                            'j_joy_fish_keaf',
                            true
                        )
                    end
                end
                JoyousSpring.banish(card, "blind_selected", func)
            end
        end
    end,
})

-- Paces, Light of the Ghoti
SMODS.Joker({
    key = "fish_paces",
    atlas = 'Ghoti',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            chips = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "chips", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.CHIPS },
        }
    end
})

-- Shif, Fairy of the Ghoti
SMODS.Joker({
    key = "fish_shif",
    atlas = 'Ghoti',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            mult = 15
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Zep, Ruby of the Ghoti
SMODS.Joker({
    key = "fish_zep",
    atlas = 'Ghoti',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 2,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                local func = function(c)
                    for i = 1, c.ability.extra.revives do
                        JoyousSpring.revive_pseudorandom(
                            { { is_main_deck = true, monster_archetypes = { "Ghoti" } } },
                            'j_joy_fish_zep',
                            true
                        )
                    end
                end
                JoyousSpring.banish(card, "blind_selected", func)
            end
        end
    end,
})

-- Ixeep, Omen of the Ghoti
SMODS.Joker({
    key = "fish_ixeep",
    atlas = 'Ghoti',
    pos = { x = 0, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_main_deck_joker" }
        end
        return { vars = { card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                local func = function(c)
                    for i = 1, c.ability.extra.cards_to_create do
                        JoyousSpring.create_pseudorandom(
                            { { monster_archetypes = { "Ghoti" }, is_main_deck = true, exclude_keys = { "j_joy_fish_ixeep" } } },
                            'j_joy_fish_ixeep', true)
                    end
                end
                JoyousSpring.banish(card, "boss_selected", func)
            end
        end
    end,
})

-- Eanoc, Sentry of the Ghoti
SMODS.Joker({
    key = "fish_eanoc",
    atlas = 'Ghoti',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.cards_to_create, card.ability.extra.times, card.ability.extra.returned } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            cards_to_create = 1,
            times = 3,
            returned = 0
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
                card.ability.extra.returned = card.ability.extra.returned + 1
                if card.ability.extra.returned >= card.ability.extra.times then
                    card.ability.extra.returned = 0
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Ghoti" }, is_extra_deck = true } })

                    for i = 1, card.ability.extra.cards_to_create do
                        local key_to_add, _ = pseudorandom_element(choices, 'j_joy_fish_eanoc')
                        if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                            JoyousSpring.add_to_extra_deck(key_to_add)
                        end
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "returned" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "times" },
                { text = ")" },
            },
        }
    end
})

-- Psiics, Moonlight of the Ghoti
SMODS.Joker({
    key = "fish_psiics",
    atlas = 'Ghoti',
    pos = { x = 2, y = 1 },
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
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                local func = function(c)
                    for i = 1, c.ability.extra.revives do
                        JoyousSpring.revive_pseudorandom(
                            {
                                { is_tuner = true },
                            },
                            'j_joy_fish_psiics',
                            false,
                            { negative = true }
                        )
                    end
                end
                JoyousSpring.banish(card, "boss_selected", func)
            end
        end
    end,
})

-- Snopios, Shade of the Ghoti
SMODS.Joker({
    key = "fish_snopios",
    atlas = 'Ghoti',
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
        return { vars = { card.ability.extra.banishes, card.ability.extra.times, card.ability.extra.returned } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", name = "k_joy_adds" },
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true }
            },
            banishes = 1,
            times = 6,
            returned = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = {}
                for _, consumable in ipairs(G.consumeables.cards) do
                    table.insert(choices, consumable)
                end
                for i = 1, card.ability.extra.banishes do
                    if #choices > 0 then
                        local to_banish, pos = pseudorandom_element(choices, 'j_joy_fish_snopios')
                        if to_banish then
                            JoyousSpring.banish(to_banish, "blind_selected")
                        end
                        table.remove(choices, pos)
                    end
                end
            end
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_returned and context.joy_returned_card == card then
                card.ability.extra.returned = card.ability.extra.returned + 1
                if card.ability.extra.returned >= card.ability.extra.times then
                    card.ability.extra.returned = 0

                    if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                        JoyousSpring.add_to_extra_deck("j_joy_fish_depths")
                    end
                end
            end
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "returned" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "times" },
                { text = ")" },
            },
        }
    end
})

-- Arionpos, Serpent of the Ghoti
SMODS.Joker({
    key = "fish_arionpos",
    atlas = 'Ghoti',
    pos = { x = 0, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 9,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * (G.GAME.joy_cards_banished or 0), card.ability.extra.cards_to_create } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true,       monster_type = "Fish",                   exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            chips = 5,
            cards_to_create = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                local func = function(c)
                    local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Ghoti" }, is_extra_deck = true } })

                    for i = 1, c.ability.extra.cards_to_create do
                        local key_to_add, _ = pseudorandom_element(choices, 'j_joy_fish_arionpos')
                        if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                            JoyousSpring.add_to_extra_deck(key_to_add)
                        end
                    end
                end
                JoyousSpring.banish(card, "blind_selected", func)
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * (G.GAME.joy_cards_banished or 0)
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
                card.joker_display_values.chips = card.ability.extra.chips * (G.GAME.joy_cards_banished or 0)
            end
        }
    end
})

-- Askaan, the Bicorned Ghoti
SMODS.Joker({
    key = "fish_askaan",
    atlas = 'Ghoti',
    pos = { x = 1, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_cards_banished or 0) } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 3,      exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            mult = 5,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")

                local choices = JoyousSpring.get_materials_owned({ { exclude_monster_archetypes = { "Ghoti" } } })
                local to_banish = pseudorandom_element(choices, 'j_joy_fish_askaan')
                if to_banish then
                    JoyousSpring.banish(to_banish, "blind_selected")
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_cards_banished or 0)
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
                card.joker_display_values.mult = card.ability.extra.mult * (G.GAME.joy_cards_banished or 0)
            end
        }
    end
})

-- Guoglim, Spear of the Ghoti
SMODS.Joker({
    key = "fish_guoglim",
    atlas = 'Ghoti',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.xmult, 1 + (card.ability.extra.xmult * (G.GAME.joy_cards_banished or 0)) } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 3,      exclude_tuners = true,                   exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            xmult = 0.1,
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
            end
            if context.joker_main then
                return {
                    xmult = 1 + (card.ability.extra.xmult * (G.GAME.joy_cards_banished or 0))
                }
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff then
            if #G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit then
                local revive_fish = JoyousSpring.revive_pseudorandom(
                    { { monster_type = "Fish" } },
                    'j_joy_fish_guoglim',
                    true
                )
                while revive_fish and #G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit do
                    revive_fish = JoyousSpring.revive_pseudorandom(
                        { { monster_type = "Fish" } },
                        'j_joy_fish_guoglim',
                        true
                    )
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
                card.joker_display_values.xmult = 1 + (card.ability.extra.xmult * (G.GAME.joy_cards_banished or 0))
            end
        }
    end
})

-- Ghoti of the Deep Beyond
SMODS.Joker({
    key = "fish_deepbeyond",
    atlas = 'Ghoti',
    pos = { x = 3, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return {}
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                attribute = "WATER",
                monster_type = "Fish",
                monster_archetypes = { ["Ghoti"] = true },
                summon_conditions = {
                    {
                        type = "SYNCHRO",
                        materials = {
                            { is_tuner = true, monster_type = "Fish", exclude_summon_types = { "XYZ", "LINK" } },
                            { is_tuner = true, monster_type = "Fish", exclude_summon_types = { "XYZ", "LINK" } },
                            { rarity = 3,      exclude_tuners = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = JoyousSpring.get_materials_owned({ { exclude_monster_archetypes = { "Ghoti" } } })
                for _, joker in ipairs(choices) do
                    JoyousSpring.banish(joker, "blind_selected")
                end
            end
        end
    end,
})

-- The Most Distant, Deepest Depths
SMODS.Joker({
    key = "fish_depths",
    atlas = 'Ghoti',
    pos = { x = 0, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end

        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { "j_joy_fish_depths", properties = { { monster_archetypes = { "Ghoti" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
            },
            money = 1,
        },
    },
    calculate = function(self, card, context)
        if context.joy_banished then
            return {
                dollars = card.ability.extra.money
            }
        end
    end,
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "fish" },
    label = "k_joy_archetype_fish"
}
