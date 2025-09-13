--- WITCHCRAFTER
SMODS.Atlas({
    key = "witch",
    path = "17Witchcrafter.png",
    px = 71,
    py = 95
})

-- Witchcrafter Genni
SMODS.Joker({
    key = "witch_genni",
    atlas = 'witch',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.creates_tarot, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_potterie",                                       name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WIND",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            creates_tarot = 1,
            tributes = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.tribute(card, { card })

                for i = 1, card.ability.extra.creates do
                    JoyousSpring.create_summon({
                        key = "j_joy_witch_potterie"
                    }, true)
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= card.ability.extra.tributes
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.creates_tarot do
                if #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card({
                        set = 'Tarot'
                    })
                end
            end
        end
    end
})

-- Witchcrafter Potterie
SMODS.Joker({
    key = "witch_potterie",
    atlas = 'witch',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_banish" }
        end
        return { vars = { card.ability.extra.creates_tarot, card.ability.extra.banishes, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_pittore",                                        name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "EARTH",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            creates_tarot = 1,
            banishes = 2,
            tributes = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.tribute(card, { card })

                for i = 1, card.ability.extra.creates do
                    JoyousSpring.create_summon({
                        key = "j_joy_witch_pittore"
                    }, true)
                end
            end
            if not context.blueprint_card and context.joy_post_round_eval then
                JoyousSpring.banish(card, "blind_selected")
                local choices = {}
                for _, consumable in ipairs(G.consumeables.cards) do
                    if consumable.ability.set == "Tarot" then
                        table.insert(choices, consumable)
                    end
                end
                for i = 1, card.ability.extra.banishes do
                    if #choices > 0 then
                        local to_banish, pos = pseudorandom_element(choices, 'j_joy_witch_potterie')
                        if to_banish then
                            JoyousSpring.banish(to_banish, "blind_selected")
                        end
                        table.remove(choices, pos)
                    end
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= card.ability.extra.tributes
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and not from_debuff then
            for i = 1, card.ability.extra.creates_tarot do
                if #G.consumeables.cards == 0 and #G.consumeables.cards < G.consumeables.config.card_limit then
                    SMODS.add_card({
                        set = 'Tarot'
                    })
                end
            end
        end
    end
})

-- Witchcrafter Pittore
SMODS.Joker({
    key = "witch_pittore",
    atlas = 'witch',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.current_chips, card.ability.extra.creates_tarot, card.ability.extra.consumables, card.ability.extra.consumables_used, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_schmietta",                                      name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "WATER",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            chips = 100,
            current_chips = 0,
            creates_tarot = 1,
            consumables = 2,
            consumables_used = 0,
            tributes = 1,
            creates = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_consumable_set("Tarot")
                    if #materials >= card.ability.extra.tributes then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.tributes then
                    JoyousSpring.tribute(card, context.joy_selection)
                    JoyousSpring.tribute(card, { card })

                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_summon({
                            key = "j_joy_witch_schmietta"
                        }, true)
                    end
                end
                if not card.ability.extra.activated and context.using_consumeable then
                    card.ability.extra.consumables_used = card.ability.extra.consumables_used + 1
                    if card.ability.extra.consumables_used >= card.ability.extra.consumables then
                        for i = 1, card.ability.extra.creates_tarot do
                            if #G.consumeables.cards < G.consumeables.config.card_limit then
                                SMODS.add_card({
                                    set = 'Tarot'
                                })
                            end
                        end
                        card.ability.extra.activated = true
                    end
                end
                if (context.joy_tributed and context.joy_card.ability.set == "Tarot") or (context.using_consumeable and context.consumeable.ability.set == 'Tarot' and next(SMODS.find_card("j_joy_witch_aruru"))) then
                    if next(SMODS.find_card("j_joy_witch_vicemadame")) then
                        card.ability.extra.current_chips = card.ability.extra.current_chips + card.ability.extra.chips
                    else
                        card.ability.extra.current_chips = card.ability.extra.chips *
                            (JoyousSpring.count_set_tributed("Tarot") + (next(SMODS.find_card("j_joy_witch_aruru")) and 1 or 0))
                    end
                end
                if context.end_of_round and context.game_over == false and context.main_eval then
                    card.ability.extra.activated = false
                    card.ability.extra.consumables_used = 0
                end
            end
            if context.joker_main then
                return {
                    chips = card.ability.extra.current_chips
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if not next(SMODS.find_card("j_joy_witch_vicemadame")) then
                card.ability.extra.current_chips = 0
            end
        end
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= card.ability.extra.tributes
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.current_chips = card.ability.extra.chips * JoyousSpring.count_set_tributed("Tarot")
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

-- Witchcrafter Schmietta
SMODS.Joker({
    key = "witch_schmietta",
    atlas = 'witch',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.creates_tarot, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_edel",                                           name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "FIRE",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            mult = 25,
            current_mult = 0,
            creates_tarot = 1,
            tributes = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = JoyousSpring.get_consumable_set("Tarot")
                    if #materials >= card.ability.extra.tributes then
                        JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                            card.ability.extra.tributes)
                    end
                end
                if context.joy_exit_effect_selection and context.joy_card == card and
                    #context.joy_selection == card.ability.extra.tributes then
                    JoyousSpring.tribute(card, context.joy_selection)
                    JoyousSpring.tribute(card, { card })

                    for i = 1, card.ability.extra.creates do
                        JoyousSpring.create_summon({
                            key = "j_joy_witch_edel"
                        }, true)
                    end
                end
                if context.before and context.main_eval and G.GAME.current_round.hands_played == 0 then
                    for i = 1, card.ability.extra.creates_tarot do
                        if #G.consumeables.cards < G.consumeables.config.card_limit then
                            SMODS.add_card({
                                set = 'Tarot'
                            })
                        end
                    end
                end
                if (context.joy_tributed and context.joy_card.ability.set == "Tarot") or (context.using_consumeable and context.consumeable.ability.set == 'Tarot' and next(SMODS.find_card("j_joy_witch_aruru"))) then
                    if next(SMODS.find_card("j_joy_witch_vicemadame")) then
                        card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult
                    else
                        card.ability.extra.current_mult = card.ability.extra.mult *
                            (JoyousSpring.count_set_tributed("Tarot") + (next(SMODS.find_card("j_joy_witch_aruru")) and 1 or 0))
                    end
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if not next(SMODS.find_card("j_joy_witch_vicemadame")) then
                card.ability.extra.current_mult = 0
            end
        end
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= card.ability.extra.tributes
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.current_mult = card.ability.extra.mult * JoyousSpring.count_set_tributed("Tarot")
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

-- Witchcrafter Edel
SMODS.Joker({
    key = "witch_edel",
    atlas = 'witch',
    pos = { x = 0, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.creates_genni, card.ability.extra.hands_to_play, card.ability.extra.hands_played, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_genni",                                          "j_joy_witch_haine",     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            creates_genni = 1,
            hands_to_play = 2,
            hands_played = 0,
            tributes = 1,
            creates = 1,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.tribute(card, { card })

                for i = 1, card.ability.extra.creates do
                    JoyousSpring.create_summon({
                        key = "j_joy_witch_haine"
                    }, true)
                end
            end
            if not card.ability.extra.activated and context.before and context.main_eval then
                card.ability.extra.hands_played = card.ability.extra.hands_played + 1
                if card.ability.extra.hands_played >= card.ability.extra.hands_to_play then
                    card.ability.extra.activated = true
                    for i = 1, card.ability.extra.creates_genni do
                        JoyousSpring.create_summon({
                            key = "j_joy_witch_genni"
                        }, true)
                    end
                end
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.activated = false
                card.ability.extra.hands_played = 0
            end
        end
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= card.ability.extra.tributes
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "hands_played" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "hands_to_play" },
                { text = ")" },
            },
        }
    end
})

-- Witchcrafter Haine
SMODS.Joker({
    key = "witch_haine",
    atlas = 'witch',
    pos = { x = 0, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.money, card.ability.extra.creates_tarot, card.ability.extra.tributes, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_verre",                                          name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            money = 5,
            creates_tarot = 1,
            tributes = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) and not context.blueprint_card then
            if context.joy_activate_effect and context.joy_activated_card == card then
                local materials = JoyousSpring.get_consumable_set("Tarot")
                if #materials >= card.ability.extra.tributes then
                    JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                        card.ability.extra.tributes)
                end
            end
            if context.joy_exit_effect_selection and context.joy_card == card and
                #context.joy_selection == card.ability.extra.tributes then
                JoyousSpring.tribute(card, context.joy_selection)
                JoyousSpring.tribute(card, { card })

                for i = 1, card.ability.extra.creates do
                    JoyousSpring.create_summon({
                        key = "j_joy_witch_verre"
                    }, true)
                end
            end
            if context.after and G.GAME.current_round.hands_left == 0 then
                for i = 1, card.ability.extra.creates_tarot do
                    SMODS.add_card({
                        set = 'Tarot',
                        edition = "e_negative"
                    })
                end
            end
        end
    end,
    joy_can_activate = function(card)
        if not (#G.jokers.cards + G.GAME.joker_buffer + JoyousSpring.get_card_limit(card) <= G.jokers.config.card_limit) then
            return false
        end
        local materials = JoyousSpring.get_consumable_count("Tarot")
        return materials >= card.ability.extra.tributes
    end,
    add_to_deck = function(self, card, from_debuff)
        if not from_debuff and not card.debuff and JoyousSpring.count_set_tributed("Tarot") > 0 then
            ease_dollars(card.ability.extra.money * JoyousSpring.count_set_tributed("Tarot"))
        end
    end
})

-- Witchcrafter Madame Verre
SMODS.Joker({
    key = "witch_verre",
    atlas = 'witch',
    pos = { x = 1, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.xmult, (card.ability.extra.current_xmult > 1 and card.ability.extra.current_xmult) or 1 } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            xmult = 1.5,
            current_xmult = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if (context.joy_tributed and context.joy_card.ability.set == "Tarot") or (context.using_consumeable and context.consumeable.ability.set == 'Tarot' and next(SMODS.find_card("j_joy_witch_aruru"))) then
                    if next(SMODS.find_card("j_joy_witch_vicemadame")) then
                        card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
                    else
                        card.ability.extra.current_xmult = card.ability.extra.xmult *
                            (JoyousSpring.count_set_tributed("Tarot") + (next(SMODS.find_card("j_joy_witch_aruru")) and 1 or 0))
                    end
                end
            end
            if context.joker_main then
                return {
                    xmult = (card.ability.extra.current_xmult > 1 and card.ability.extra.current_xmult) or 1
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if not next(SMODS.find_card("j_joy_witch_vicemadame")) then
                card.ability.extra.current_xmult = 0
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.current_xmult = card.ability.extra.xmult * JoyousSpring.count_set_tributed("Tarot")
        if not card.debuff and not from_debuff then
            local tarots = JoyousSpring.get_set_tributed("Tarot")

            for _, key in ipairs(tarots) do
                SMODS.add_card({
                    key = key,
                    edition = "e_negative"
                })
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
                card.joker_display_values.xmult = card.ability.extra.current_xmult > 1 and
                    card.ability.extra.current_xmult or
                    1
            end
        }
    end
})

-- Witchcrafter Golem Aruru
SMODS.Joker({
    key = "witch_aruru",
    atlas = 'witch',
    pos = { x = 2, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "LIGHT",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true }
            },
            mult = 5,
            current_mult = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if (context.joy_tributed and context.joy_card.ability.set == "Tarot") or (context.using_consumeable and context.consumeable.ability.set == 'Tarot') then
                    if context.using_consumeable then
                        JoyousSpring.count_as_tributed(context.consumeable)
                    end
                    if next(SMODS.find_card("j_joy_witch_vicemadame")) then
                        card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult
                    else
                        card.ability.extra.current_mult = card.ability.extra.mult *
                            JoyousSpring.count_set_tributed("Tarot")
                    end
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            if not next(SMODS.find_card("j_joy_witch_vicemadame")) then
                card.ability.extra.current_mult = 0
            end
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.current_mult = card.ability.extra.mult * JoyousSpring.count_set_tributed("Tarot")
    end,
    joy_set_cost = function(card)
        if JoyousSpring.count_materials_owned({ { monster_archetypes = { "Witchcrafter" } } }) > 0 then
            card.cost = 0
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

-- Witchcrafter Vice-Madame
SMODS.Joker({
    key = "witch_vicemadame",
    atlas = 'witch',
    pos = { x = 2, y = 2 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates, card.ability.extra.consumables, card.ability.extra.consumables_used } }
    end,
    joy_desc_cards = {
        { "j_joy_witch_genni",                                          name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Witchcrafter" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Witchcrafter"] = true },
                summon_conditions = {
                    {
                        type = "FUSION",
                        materials = {
                            { monster_type = "Spellcaster" },
                            { monster_type = "Spellcaster" }
                        }
                    }
                },
            },
            creates = 1,
            consumables = 5,
            consumables_used = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if not card.ability.extra.activated and context.using_consumeable and context.consumeable.ability.set == 'Tarot' then
                    card.ability.extra.consumables_used = card.ability.extra.consumables_used + 1
                    if card.ability.extra.consumables_used >= card.ability.extra.consumables then
                        for i = 1, card.ability.extra.creates do
                            JoyousSpring.create_summon({
                                key = "j_joy_witch_genni"
                            }, true)
                        end
                        card.ability.extra.activated = true
                    end
                end
                if context.end_of_round and context.game_over == false and context.main_eval then
                    card.ability.extra.activated = false
                    card.ability.extra.consumables_used = 0
                end
            end
        end
    end,
    joy_modify_cost = function(card, other_card)
        if other_card.ability.set == "Booster" and other_card.config.center.kind == "Arcana" then
            other_card.cost = 0
        end
    end,
    joker_display_def = function(JokerDisplay)
        ---@type JDJokerDefinition
        return {
            reminder_text = {
                { text = "(" },
                { ref_table = "card.ability.extra", ref_value = "consumables_used" },
                { text = "/" },
                { ref_table = "card.ability.extra", ref_value = "consumables" },
                { text = ")" },
            },
        }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "witch" },
    label = "k_joy_archetype_witch"
}
