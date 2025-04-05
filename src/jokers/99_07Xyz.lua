--- XYZ FREE AGENTS

-- Divine Arsenal AA-ZEUS - Sky Thunder
SMODS.Joker({
    key = "zeus",
    atlas = 'Misc03',
    pos = { x = 1, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "LIGHT",
                monster_type = "Machine",

                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 3,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                    },
                    {
                        type = "XYZ",
                        materials = {
                            {
                                func = "detached_this_round",
                            },
                        },
                        transfer_materials = true
                    },
                }
            },
            detach = 1,
            percent = 0.75
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card and G.GAME.blind.in_blind then
                JoyousSpring.ease_detach(card)
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips - G.GAME.blind.chips * card.ability.extra.percent)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)

                for _, pcard in ipairs(G.playing_cards) do
                    pcard:set_ability("c_base")
                end
            end
        end
    end,
})

-- Super Starslayer TY-PHON - Sky Crisis
SMODS.Joker({
    key = "typhon",
    atlas = 'Misc03',
    pos = { x = 2, y = 3 },
    rarity = 3,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 12,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.detach, card.ability.extra.percent * 100 } }
    end,
    update = JoyousSpring.update_counter,
    generate_ui = JoyousSpring.generate_info_ui,
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                attribute = "DARK",
                monster_type = "Fiend",

                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            {
                                rarity = 3,
                                exclude_tokens = true,
                                exclude_summon_types = { "XYZ", "LINK" },
                                min = 2,
                            },
                        },
                    },
                    {
                        type = "XYZ",
                        materials = {
                            {
                                func = "summoned_this_round",
                                func_vars = { more = 2 }
                            },
                        },
                    },
                }
            },
            detach = 1,
            percent = 0.5,
            active = false
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card and G.GAME.blind.in_blind and not card.ability.extra.active then
                JoyousSpring.ease_detach(card)
                card.ability.extra.active = true
                ease_dollars(-G.GAME.dollars * card.ability.extra.percent)
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                card.ability.extra.active = false
            end
            if context.after and context.main_eval and card.ability.extra.active then
                return {
                    func = function()
                        for _, pcard in ipairs(context.scoring_hand) do
                            G.E_MANAGER:add_event(Event({
                                func = (function()
                                    pcard:set_ability('m_glass')
                                    pcard:set_edition('e_polychrome')
                                    pcard:set_seal("Red")


                                    return true
                                end)
                            }))
                        end
                    end
                }
            end
        end
    end,
})
