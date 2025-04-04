--- TRAP FREE AGENTS

-- Quantum Cat
SMODS.Joker({
    key = "quantumcat",
    atlas = 'Misc03',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_all_attributes = true,
                is_all_types = true,
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Beast",
                monster_archetypes = {}
            },
            chips = 200
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end,
})

-- Statue of Anguish Pattern
SMODS.Joker({
    key = "anguish",
    atlas = 'Misc03',
    pos = { x = 4, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_flip = true,
                is_trap = true,
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = {}
            },
            money = 5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.calculate_flip_effect(card, context) then
            return {
                dollars = card.ability.extra.money * JoyousSpring.count_materials_owned({ { is_trap = true } })
            }
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_trap_monster(joker) and not JoyousSpring.is_perma_debuffed(joker) then
                    SMODS.debuff_card(joker, "prevent_debuff", "j_joy_anguish")
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, "j_joy_anguish")
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if JoyousSpring.is_trap_monster(added_card) and not JoyousSpring.is_perma_debuffed(added_card) then
            SMODS.debuff_card(added_card, "prevent_debuff", "j_joy_anguish")
        end
    end,
})

-- Tiki Curse
SMODS.Joker({
    key = "tiki_curse",
    atlas = 'Misc03',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * JoyousSpring.count_materials_owned({ { is_trap = true } }) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "DARK",
                monster_type = "Rock",
                monster_archetypes = {}
            },
            chips = 100
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips * JoyousSpring.count_materials_owned({ { is_trap = true } })
                }
            end
        end
    end,
})

-- Tiki Soul
SMODS.Joker({
    key = "tiki_soul",
    atlas = 'Misc03',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult * JoyousSpring.count_materials_owned({ { is_trap = true } }) } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Rock",
                monster_archetypes = {}
            },
            mult = 25
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * JoyousSpring.count_materials_owned({ { is_trap = true } })
                }
            end
        end
    end,
})

-- Zoma the Spirit
SMODS.Joker({
    key = "zoma",
    atlas = 'Misc03',
    pos = { x = 3, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.percent * 100, card.ability.extra.current_percent * 100 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "DARK",
                monster_type = "Zombie",
                monster_archetypes = {}
            },
            percent = 0.1,
            current_percent = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.selling_self and G.GAME.blind.in_blind then
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                    G.GAME.blind.chips * card.ability.extra.current_percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                G.GAME.joy_zoma_sold = true
            end
            if context.joy_card_flipped and context.joy_card_flipped == card and card.facing == "front" then
                card.ability.extra.current_percent = math.min(1, card.ability.extra.current_percent +
                    card.ability.extra.current_percent)
            end
        end
    end,
})

-- Zoma the Earthbound Spirit
SMODS.Joker({
    key = "zoma_earthbound",
    atlas = 'Misc03',
    pos = { x = 4, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.current_mult, card.ability.extra.percent * 100, card.ability.extra.current_percent * 100 } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "DARK",
                monster_type = "Zombie",
                monster_archetypes = {}
            },
            mult = 50,
            current_mult = 0,
            percent = 0.1,
            current_percent = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.current_mult
                }
            end
            if context.selling_self and G.GAME.blind.in_blind then
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                    G.GAME.blind.chips * card.ability.extra.current_percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
            end
            if context.joy_card_flipped and context.joy_card_flipped == card and card.facing == "front" then
                card.ability.extra.current_percent = math.min(1, card.ability.extra.current_percent +
                    card.ability.extra.current_percent)
                card.ability.extra.current_mult = card.ability.extra.current_mult + card.ability.extra.mult
            end
        end
    end,
    in_pool = function(self, args)
        return G.GAME.joy_zoma_sold
    end
})

-- You're Finished
SMODS.Joker({
    key = "finished",
    atlas = 'Misc03',
    pos = { x = 2, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "DARK",
                monster_type = "Cyberse",
                monster_archetypes = {}
            },
            xmult = 10
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main and #G.jokers.cards >= 10 then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
            if context.joy_activate_effect and context.joy_activated_card == card and not card.ability.eternal and G.GAME.blind.in_blind and G.STATE == G.STATES.SELECTING_HAND then
                local tributes = {}
                for _, joker in ipairs(G.jokers.cards) do
                    if not joker.ability.eternal then
                        table.insert(tributes, joker)
                    end
                end
                JoyousSpring.tribute(card, tributes)
                G.GAME.chips = G.GAME.blind.chips
                G.STATE = G.STATES.HAND_PLAYED
                G.STATE_COMPLETE = true
                end_round()
                return {
                    message = localize("k_joy_defeated")
                }
            end
        end
    end,
    joy_can_activate = function(card)
        return not card.ability.eternal and G.GAME.blind.in_blind and G.STATE == G.STATES.SELECTING_HAND
    end,
})

-- Embodiment of Apophis
SMODS.Joker({
    key = "apophis",
    atlas = 'Misc03',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "EARTH",
                monster_type = "Reptile",
                monster_archetypes = {}
            },
            mult = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
})

-- Angel Statue - Azurune
SMODS.Joker({
    key = "azurune",
    atlas = 'Misc03',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count() } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = {}
            },
            xmult = 0.05
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count()
                }
            end
        end
    end,
})

-- Crusadia Krawler
SMODS.Joker({
    key = "crukra",
    atlas = 'Misc03',
    pos = { x = 1, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_trap = true,
                attribute = "EARTH",
                monster_type = "Insect",
                monster_archetypes = {}
            },
            xmult = 1.5
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker and JoyousSpring.is_summon_type(context.other_joker, "LINK") then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
})
