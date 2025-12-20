--- INVOKED
SMODS.Atlas({
    key = "invoked",
    path = "20Invoked.png",
    px = 71,
    py = 95
})

local aleister_transform = function(card, tribute)
    local attribute = JoyousSpring.is_monster_card(tribute) and JoyousSpring.get_attribute(tribute)
    if not attribute or attribute == true then
        attribute = pseudorandom_element({ "LIGHT", "DARK", "WATER", "FIRE", "EARTH", "WIND" }, card.config.center.key)
    end

    local key_to_transform = "j_joy_invoked_mage"

    if JoyousSpring.is_summon_type(tribute, "FUSION") then
        key_to_transform = "j_joy_invoked_augo"
    elseif JoyousSpring.is_summoned(tribute) then
        key_to_transform = "j_joy_invoked_elysium"
    else
        local choices = {
            LIGHT = "j_joy_invoked_mechaba",
            DARK = "j_joy_invoked_caliga",
            WATER = "j_joy_invoked_cocytus",
            FIRE = "j_joy_invoked_purgatorio",
            EARTH = "j_joy_invoked_mage",
            WIND = "j_joy_invoked_raidjin"
        }
        key_to_transform = choices[attribute] or "j_joy_invoked_mage"
    end
    JoyousSpring.transform_card(card, key_to_transform, false, "FUSION", { tribute })

    JoyousSpring.tribute(card, { tribute })
end

local invoked_detransform = function(card, tribute)
    JoyousSpring.transform_card(card, "j_joy_invoked_aleister")

    JoyousSpring.tribute(card, { tribute })
end

-- Aleister the Invoker
SMODS.Joker({
    key = "invoked_aleister",
    atlas = 'invoked',
    pos = { x = 0, y = 0 },
    joy_alt_pos = { { x = 0, y = 3 } },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.chips } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Aleister"] = true }
            },
            tributes = 1,
            chips = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    aleister_transform(card, context.joy_selection[1])
                end
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            return {
                chips = config.chips * JoyousSpring.get_summoned_count("FUSION")
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return { chips = 50 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.chips, config.chips * JoyousSpring.get_summoned_count("FUSION") } }
    end
})

-- Aleister the Invoker of Madness
SMODS.Joker({
    key = "invoked_madness",
    atlas = 'invoked',
    pos = { x = 2, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_material" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.creates, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                attribute = "DARK",
                monster_type = "Spellcaster",
                monster_archetypes = { ["Aleister"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            {},
                        },
                        restrictions = {
                            different_attributes = true,
                            different_types = true
                        }
                    }
                }
            },
            tributes = 1,
            creates = 1,
            mult = 15
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    aleister_transform(card, context.joy_selection[1])
                end
            end
        end
        if (JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "FUSION")) or
            (context.joy_transform_summon and context.joy_card == card) then
            if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
                JoyousSpring.add_to_extra_deck("j_joy_invoked_meltdown")
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            return {
                mult = config.mult * JoyousSpring.get_summoned_count("FUSION")
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return { mult = 15 }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult, config.mult * JoyousSpring.get_summoned_count("FUSION") } }
    end
})

-- Invoked Caliga
SMODS.Joker({
    key = "invoked_caliga",
    atlas = 'invoked',
    pos = { x = 3, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.count_set_tributed("Joker", true), card.ability.extra.reduces } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "DARK",
                monster_type = "Beast",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            xmult = 0.1,
            reduces = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.count_set_tributed("Joker", true)
                }
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    joy_modify_cost = function(card, other_card)
        if other_card.ability.set == "Booster" and other_card.config.center.kind == "JoyousSpring" then
            other_card.cost = math.max(0, other_card.cost - card.ability.extra.reduces)
        end
    end,
    joy_transfer_modify_cost = function(self, ability_card, other_card, config)
        if other_card.ability.set == "Booster" and other_card.config.center.kind == "JoyousSpring" then
            other_card.cost = math.max(0, other_card.cost - config.reduces)
        end
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            return {
                xmult = 1 + config.xmult * JoyousSpring.count_set_tributed("Joker", true)
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 0.1,
            reduces = 2
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.xmult, config.xmult * JoyousSpring.count_set_tributed("Joker", true), config.reduces } }
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
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult * JoyousSpring.count_set_tributed("Joker", true)
            end
        }
    end
})

-- Invoked Raidjin
SMODS.Joker({
    key = "invoked_raidjin",
    atlas = 'invoked',
    pos = { x = 1, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_flipped_count("Joker"), card.ability.extra.flips } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "WIND",
                monster_type = "Warrior",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            xmult = 0.1,
            flips = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if (context.setting_blind or (context.end_of_round and context.game_over == false)) and context.main_eval then
                local cards = {}
                local facing = context.end_of_round and "front" or "back"
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and joker.facing == facing then
                        table.insert(cards, joker)
                    end
                end
                local card_to_flip = pseudorandom_element(cards, 'j_joy_invoked_raidjin')
                if card_to_flip then card_to_flip:flip() end
            end
            if context.joker_main then
                return {
                    xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_flipped_count("Joker")
                }
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    xmult = 1 + config.xmult * JoyousSpring.get_flipped_count("Joker")
                }
            end
            if (context.setting_blind or (context.end_of_round and context.game_over == false)) and context.main_eval then
                local cards = {}
                local facing = context.end_of_round and "front" or "back"
                for _, joker in ipairs(G.jokers.cards) do
                    if joker ~= other_card and joker.facing == facing then
                        table.insert(cards, joker)
                    end
                end
                local card_to_flip = pseudorandom_element(cards, 'j_joy_invoked_raidjin')
                if card_to_flip then card_to_flip:flip() end
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 0.1,
            flips = 1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.xmult, 1 + config.xmult * JoyousSpring.get_flipped_count("Joker"), config.flips } }
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
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult * JoyousSpring.get_flipped_count("Joker")
            end
        }
    end
})

-- Invoked Cocytus
SMODS.Joker({
    key = "invoked_cocytus",
    atlas = 'invoked',
    pos = { x = 0, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.percent * 100 } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "WATER",
                monster_type = "Dragon",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            percent = 0.1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if context.setting_blind and context.main_eval then
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips - G.GAME.blind.chips * card.ability.extra.percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                return {
                    message = localize("k_active_ex")
                }
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff and G.GAME.blind.in_blind then
            G.GAME.blind.chips = math.floor(G.GAME.blind.chips -
                G.GAME.blind.chips * card.ability.extra.percent)
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.setting_blind and context.main_eval then
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips - G.GAME.blind.chips * config.percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                return {
                    message = localize("k_active_ex")
                }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            percent = 0.1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.percent * 100 } }
    end
})

-- Invoked Purgatrio
SMODS.Joker({
    key = "invoked_purgatorio",
    atlas = 'invoked',
    pos = { x = 0, y = 2 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "FIRE",
                monster_type = "Fiend",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            xmult = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_summon_type(context.other_joker, "FUSION") then
                return {
                    xmult = card.ability.extra.xmult,
                    message_card = context.other_joker
                }
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.other_joker and context.other_joker.facing == "front" and JoyousSpring.is_summon_type(context.other_joker, "FUSION") then
            return {
                xmult = config.xmult,
                message_card = context.other_joker
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 2,
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.xmult } }
    end,
    joker_display_def = function(JokerDisplay)
        return {
            mod_function = function(card, mod_joker)
                return {
                    x_mult = card.facing == "front" and JoyousSpring.is_summon_type(card, "FUSION") and
                        mod_joker.ability.extra.xmult ^ JokerDisplay.calculate_joker_triggers(mod_joker) or nil
                }
            end
        }
    end
})

-- Invoked Magellanica
SMODS.Joker({
    key = "invoked_mage",
    atlas = 'invoked',
    pos = { x = 2, y = 1 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "EARTH",
                monster_type = "Rock",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            mult = 50
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) and context.joker_main then
            return {
                mult = config.mult
            }
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            mult = 100,
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.mult } }
    end,
    joker_display_def = function(JokerDisplay)
        return {
            text = {
                { text = "+" },
                { ref_table = "card.ability.extra", ref_value = "mult", retrigger_type = "mult" }
            },
            text_config = { colour = G.C.MULT },
        }
    end
})

-- Invoked Mechaba
SMODS.Joker({
    key = "invoked_mechaba",
    atlas = 'invoked',
    pos = { x = 3, y = 1 },
    joy_alt_pos = { { x = 3, y = 2 } },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 8,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.sell, card.ability.extra.sold } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Machine",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            sell = 3,
            sold = 0,
            activated = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if context.selling_card and context.card ~= card then
                card.ability.extra.sold = card.ability.extra.sold + 1
                if not card.ability.extra.activated and card.ability.extra.sold >= card.ability.extra.sell then
                    card.ability.extra.activated = true
                    G.GAME.blind:disable()
                    return { message = localize('ph_boss_disabled') }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.sold = 0
            card.ability.extra.activated = false
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.selling_card and context.card ~= other_card then
                config.sold = config.sold + 1
                if not config.activated and config.sold >= config.sell then
                    config.activated = true
                    G.GAME.blind:disable()
                    return { message = localize('ph_boss_disabled') }
                end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            config.sold = 0
            config.activated = false
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            sell = 3,
            sold = 0,
            activated = false
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return { vars = { config.sell, config.sold } }
    end
})

-- Invoked Augoeides
SMODS.Joker({
    key = "invoked_augo",
    atlas = 'invoked',
    pos = { x = 2, y = 0 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.count_materials_in_graveyard({ { summon_type = "FUSION" } }), card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1,
            xmult = 0.1,
            mills = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { summon_type = "FUSION", exclude_monster_archetypes = { "Invoked" } } },
                    card.config.center.key, card.ability.extra.mills)
                return { message = localize("k_joy_mill") }
            end
            if context.joker_main then
                return {
                    xmult = 1 +
                        card.ability.extra.xmult *
                        JoyousSpring.count_materials_in_graveyard({ { summon_type = "FUSION" } })
                }
            end
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
    joy_can_transfer_ability = function(self, other_card, card)
        return other_card.config.center.key == "j_joy_invoked_elysium"
    end,
    joy_transfer_ability_calculate = function(self, other_card, context, config)
        if JoyousSpring.can_use_abilities(other_card) then
            if context.joker_main then
                return {
                    xmult = 1 +
                        config.xmult *
                        JoyousSpring.count_materials_in_graveyard({ { summon_type = "FUSION" } })
                }
            end
            if context.setting_blind and context.main_eval then
                JoyousSpring.send_to_graveyard_pseudorandom(
                    { { summon_type = "FUSION", exclude_monster_archetypes = { "Invoked" } } },
                    other_card.config.center.key .. "i_nvoked_augo", config.mills)
                return { message = localize("k_joy_mill") }
            end
        end
    end,
    joy_transfer_config = function(self, other_card)
        return {
            xmult = 0.1,
            mills = 1
        }
    end,
    joy_transfer_loc_vars = function(self, info_queue, other_card, config)
        return {
            vars = { config.xmult, 1 +
            config.xmult *
            JoyousSpring.count_materials_in_graveyard({ { summon_type = "FUSION" } }), config.mills }
        }
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
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult *
                    JoyousSpring.count_materials_in_graveyard({ { summon_type = "FUSION" } })
            end
        }
    end
})

-- Invoked Elysium
SMODS.Joker({
    key = "invoked_elysium",
    atlas = 'invoked',
    pos = { x = 1, y = 1 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    joy_no_shop = true,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_no_shop" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_transform" }
        end
        return { vars = { card.ability.extra.tributes } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_all_attributes = true,
                is_all_materials = { FUSION = true },
                summon_type = "FUSION",
                attribute = "LIGHT",
                monster_type = "Fairy",
                monster_archetypes = { ["Invoked"] = true }
            },
            tributes = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and not SMODS.is_eternal(card, card) then
                    local materials = {}
                    for i, joker in ipairs(G.jokers.cards) do
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
                    #context.joy_selection >= 1 then
                    invoked_detransform(card, context.joy_selection[1])
                end
            end
        end
        if context.joy_sent_to_gy and JoyousSpring.is_material_center(context.joy_key, { monster_archetypes = { "Invoked" }, summon_type = "FUSION" }) then
            JoyousSpring.transfer_abilities(card, context.joy_key)
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        local fusions = JoyousSpring.get_materials_in_graveyard(
            { { monster_archetypes = { "Invoked" }, summon_type = "FUSION" } }, false, true)
        for _, key in ipairs(fusions) do
            JoyousSpring.transfer_abilities(card, key)
        end
    end,
    joy_can_activate = function(card)
        for i, joker in ipairs(G.jokers.cards) do
            if joker ~= card and not SMODS.is_eternal(joker, card) then
                return true
            end
        end
        return false
    end,
    in_pool = function(self, args)
        return args and args.source and args.source == "JoyousSpring" or false
    end,
})

-- Magical Meltdown
SMODS.Joker({
    key = "invoked_meltdown",
    atlas = 'invoked',
    pos = { x = 1, y = 0 },
    rarity = 2,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_tribute" }
        end
        return { vars = { card.ability.extra.tributes, card.ability.extra.creates, card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("FUSION") } }
    end,
    joy_desc_cards = {
        { "j_joy_invoked_meltdown", properties = { { monster_archetypes = { "Aleister" } }, { monster_archetypes = { "Invoked" } } }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true
            },
            tributes = 2,
            creates = 1,
            xmult = 0.1,
        },
    },
    calculate = function(self, card, context)
        if context.joy_activate_effect and context.joy_activated_card == card then
            local materials = JoyousSpring.get_materials_owned({ { summon_type = "FUSION" } })
            if #materials >= card.ability.extra.tributes then
                JoyousSpring.create_overlay_effect_selection(card, materials, card.ability.extra.tributes,
                    card.ability.extra.tributes)
            end
        end
        if context.joy_exit_effect_selection and context.joy_card == card and
            #context.joy_selection == card.ability.extra.tributes then
            JoyousSpring.tribute(card, context.joy_selection)

            for i = 1, card.ability.extra.creates do
                JoyousSpring.create_summon({ key = "j_joy_invoked_aleister" }, true)
            end
        end
        if context.joker_main then
            return {
                xmult = 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("FUSION")
            }
        end
    end,
    add_to_deck = function(self, card, from_debuff)
        if not card.debuff then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_summon_type(joker, "FUSION") and not JoyousSpring.is_perma_debuffed(joker) then
                    SMODS.debuff_card(joker, "prevent_debuff", "j_joy_invoked_meltdown")
                end
            end
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for _, joker in ipairs(G.jokers.cards) do
            SMODS.debuff_card(joker, false, "j_joy_invoked_meltdown")
        end
    end,
    joy_can_activate = function(card)
        local materials = JoyousSpring.get_materials_owned({ { summon_type = "FUSION" } })
        return not card.debuff and
            (#G.jokers.cards + G.GAME.joker_buffer - card.ability.extra.tributes < G.jokers.config.card_limit and #materials >= card.ability.extra.tributes) and
            true or false
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if JoyousSpring.is_summon_type(added_card, "FUSION") and not JoyousSpring.is_perma_debuffed(added_card) then
            SMODS.debuff_card(added_card, "prevent_debuff", "j_joy_invoked_meltdown")
        end
    end,
    joy_prevent_flip = function(card, other_card)
        return JoyousSpring.is_summon_type(other_card, "FUSION")
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
                card.joker_display_values.xmult = 1 +
                    card.ability.extra.xmult * JoyousSpring.get_summoned_count("FUSION")
            end
        }
    end
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "invoked" },
    label = "k_joy_archetype_invoked"
}
