--- GHOST GIRLS
SMODS.Atlas({
    key = "GhostGirls",
    path = "04GhostGirls.png",
    px = 71,
    py = 95
})

-- Ghost Ogre & Snow Rabbit
SMODS.Joker({
    key = "yokai_ogre",
    atlas = 'GhostGirls',
    pos = { x = 0, y = 0 },
    rarity = 4,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.base_xmult, card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "LIGHT",
                monster_type = "Psychic"
            },
            base_xmult = 0.5,
            xmult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.destroy_card and context.cardarea == G.play then
                card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.base_xmult
                for _, joker in ipairs(SMODS.find_card("j_joy_yokai_ogre")) do
                    if joker ~= card then
                        joker.ability.extra.xmult = joker.ability.extra.xmult + joker.ability.extra.base_xmult
                        return { message = localize('k_upgrade_ex') }
                    end
                end
                return { remove = true, message = localize('k_upgrade_ex'), message_card = card }
            end

            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    get_weight = function(self, args)
        return 0.01
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


-- Ghost Reaper & Winter Cherries
SMODS.Joker({
    key = "yokai_reaper",
    atlas = 'GhostGirls',
    pos = { x = 1, y = 0 },
    rarity = 4,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_extra_deck_joker" }
        end
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true } }) } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "DARK",
                monster_type = "Zombie"
            },
            xmult = 0.2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    xmult = 1 +
                        card.ability.extra.xmult *
                        JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true } })
                }
            end
        end
    end,
    get_weight = function(self, args)
        return 0.01
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
                    card.ability.extra.xmult * JoyousSpring.count_materials_in_graveyard({ { is_extra_deck = true } })
            end
        }
    end
})



-- Ash Blossom & Joyous Spring
SMODS.Joker({
    key = "yokai_ash",
    atlas = 'GhostGirls',
    pos = { x = 2, y = 0 },
    joy_alt_pos = { { x = 0, y = 2 } },
    rarity = 4,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds,
            self.key)
        return { vars = { numerator, denominator, card.ability.extra.base_xmult, card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "FIRE",
                monster_type = "Zombie"
            },
            odds = 2,
            base_xmult = 0.2,
            xmult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and context.joy_no_draw then
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
    get_weight = function(self, args)
        return 0.01
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

-- Ghost Belle & Haunted Mansion
SMODS.Joker({
    key = "yokai_belle",
    atlas = 'GhostGirls',
    pos = { x = 0, y = 1 },
    joy_alt_pos = { { x = 1, y = 2 } },
    rarity = 4,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        if not JoyousSpring.config.disable_tooltips and not card.fake_card and not card.debuff then
            info_queue[#info_queue + 1] = { set = "Other", key = "joy_tooltip_revive" }
        end
        return { vars = { card.ability.extra.base_xmult, card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "EARTH",
                monster_type = "Zombie"
            },
            base_xmult = 0.5,
            xmult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and context.joy_revived then
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
    get_weight = function(self, args)
        return 0.01
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




-- Ghost Sister & Spooky Dogwood
SMODS.Joker({
    key = "yokai_sister",
    atlas = 'GhostGirls',
    pos = { x = 1, y = 1 },
    rarity = 4,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.base_xmult, card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WATER",
                monster_type = "Zombie"
            },
            base_xmult = 0.5,
            xmult = 1,
            consumable_count = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker then
                if context.setting_blind and context.main_eval then
                    local eval = function(card)
                        return not G.RESET_JIGGLES and
                            card.config.center.key == "j_joy_yokai_sister" -- for transformations
                            and (card.ability.extra.consumable_count == 0)
                    end
                    juice_card_until(card, eval, true)
                end
                if context.using_consumeable and G.GAME.blind.in_blind then
                    card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.base_xmult
                    card.ability.extra.consumable_count = card.ability.extra.consumable_count + 1
                    return {
                        message = localize('k_upgrade_ex')
                    }
                end
            end
            if not context.blueprint_card and not context.retrigger_joker and
                context.end_of_round and context.game_over == false and context.main_eval then
                if card.ability.extra.consumable_count > 0 then
                    card.ability.extra.consumable_count = 0
                else
                    JoyousSpring.defeated_by = card.config.center.key
                    G.STATE = G.STATES.GAME_OVER
                    G.STATE_COMPLETE = false
                end
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    get_weight = function(self, args)
        return 0.01
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



-- Ghost Mourner & Moonlit Chill
SMODS.Joker({
    key = "yokai_mourner",
    atlas = 'GhostGirls',
    pos = { x = 2, y = 1 },
    rarity = 4,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.base_xmult, card.ability.extra.xmult } }
    end,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                attribute = "WIND",
                monster_type = "Zombie"
            },
            base_xmult = 0.2,
            xmult = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and context.selling_card then
                if context.card.debuff then
                    card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.base_xmult
                    return {
                        message = localize('k_upgrade_ex')
                    }
                end
            end

            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
    joy_apply_to_jokers_added = function(card, added_card)
        if not card.debuff and (added_card:is_rarity(1) or added_card:is_rarity(2)) then
            SMODS.debuff_card(added_card, true, "j_joy_yokai_mourner")
        end
    end,
    get_weight = function(self, args)
        return 0.08
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

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "yokai" },
    label = "k_joy_archetype_yokai"
}
