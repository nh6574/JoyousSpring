-- Blinds and Opponent's Blind cards

SMODS.Atlas {
    key = "blinds01",
    path = "blinds_opponent01.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
}

--#region Effect

-- Dimension Shifter
JoyousSpring.Blind {
    key = "dimensionshifter",
    atlas = "blinds01",
    pos = { x = 0, y = 29 },
    boss_colour = G.C.JOY.EFFECT,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.card_added and context.card.ability.set == "Joker" then
            context.card.ability.joy_banished_by_dimensionshifter = true
            JoyousSpring.banish(context.card, "end_of_ante")
        end
    end,
    disable = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            if joker.ability.joy_banished_by_dimensionshifter then
                joker.ability.joy_banished_by_dimensionshifter = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            joker.ability.joy_banished_by_dimensionshifter = nil
        end
    end,
    on_exit = function(self, blind_type)
        for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            if joker.ability.joy_banished_by_dimensionshifter then
                joker.ability.joy_banished_by_dimensionshifter = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "DARK",
                    monster_type = "Spellcaster"
                },
                active = false,
            },
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.buying_card and context.card.ability.set == "Joker" and
                    not card.ability.extra.active then
                    JoyousSpring.banish(context.card, "end_of_ante")
                    card.ability.extra.active = true
                end
                if context.ending_shop then
                    card.ability.extra.active = false
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            card.ability.extra.active = false
        end
    },
}

-- Droll & Lock Bird
JoyousSpring.Blind {
    key = "droll",
    atlas = "blinds01",
    pos = { x = 0, y = 30 },
    boss_colour = G.C.JOY.EFFECT,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.buying_card and context.card.ability.set ~= "Voucher" then
            JoyousSpring.blind_effects[self.key].active = true
        end
        if context.open_booster then
            JoyousSpring.blind_effects[self.key].active = nil
        end
        if context.starting_shop or context.ending_shop then
            JoyousSpring.blind_effects[self.key].active = nil
        end
    end,
    joy_prevent_buy = function(self, blind, other_card)
        return other_card.ability.set ~= "Voucher" and
            JoyousSpring.blind_effects[self.key].active
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "WIND",
                    monster_type = "Spellcaster"
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.buying_card and context.card.ability.set ~= "Voucher" then
                    card.ability.extra.active = true
                end
                if context.open_booster then
                    card.ability.extra.active = true
                end
                if context.starting_shop or context.ending_shop then
                    card.ability.extra.active = nil
                end
            end
        end,
        joy_prevent_buy = function(self, card, other_card)
            if not JoyousSpring.can_use_abilities(card) then return end
            return other_card.ability.set ~= "Voucher" and
                card.ability.extra.active
        end,
    },
}

-- Kurikara Divincarnate
JoyousSpring.Blind {
    key = "kurikara",
    atlas = "blinds01",
    pos = { x = 0, y = 31 },
    boss_colour = G.C.JOY.EFFECT,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind and #G.jokers.cards > 0 then
            local rarity = JoyousSpring.get_highest_rarity(G.jokers.cards)
            local choices = JoyousSpring.get_materials_owned({ { rarity = rarity } }, nil, true)
            if #choices > 0 then
                local joker = pseudorandom_element(choices, self.key .. "_tribute")
                local key = joker.config.center.key
                JoyousSpring.tribute(blind, { joker })
                JoyousSpring.revive_pseudorandom({ { rarity = rarity, exclude_keys = { key } } }, self.key .. "_revive",
                    true)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "FIRE",
                    monster_type = "Fairy"
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.ante_change and context.ante_end and #G.jokers.cards > 0 then
                    local rarity = JoyousSpring.get_highest_rarity(G.jokers.cards)
                    local choices = JoyousSpring.get_materials_owned({ { rarity = rarity } }, nil, true)
                    if #choices > 0 then
                        local joker = pseudorandom_element(choices, self.key .. "_tribute")
                        local key = joker.config.center.key
                        JoyousSpring.tribute(blind, { joker })
                        JoyousSpring.revive_pseudorandom({ { rarity = rarity, exclude_keys = { key } } },
                            self.key .. "_revive",
                            true)
                    end
                end
            end
        end
    }
}

-- Nibiru, the Primal Being
JoyousSpring.Blind {
    key = "nibiru",
    atlas = "blinds01",
    pos = { x = 0, y = 32 },
    boss_colour = G.C.JOY.EFFECT,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.joy_summon then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            JoyousSpring.tribute(self, { context.joy_card })
                            return true
                        end
                    }))
                    return true
                end
            }))
        end
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.joy_summon then
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            JoyousSpring.tribute(blind, { context.joy_card })
                            return true
                        end
                    }))
                    return true
                end
            }))
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "LIGHT",
                    monster_type = "Rock"
                },
                count = 0
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.count } }
        end,
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.joy_summon then
                    if card.ability.extra.count < 5 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        JoyousSpring.tribute(blind, { context.joy_card })
                                        return true
                                    end
                                }))
                                return true
                            end
                        }))
                    end
                end
            end
        end
    }
}

-- Theia, the Primal Being
JoyousSpring.Blind {
    key = "theia",
    atlas = "blinds01",
    pos = { x = 0, y = 36 },
    boss_colour = G.C.JOY.EFFECT,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind and #G.jokers.cards > 0 then
            local choices = JoyousSpring.get_materials_owned({ { rarity = 3 } }, nil, true)
            if #choices > 0 then
                JoyousSpring.tribute(blind, choices)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "DARK",
                    monster_type = "Rock"
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.card_added and context.card:is_rarity("Rare") and #G.jokers.cards > 0
                    and #JoyousSpring.get_materials_owned({ { rarity = 3 } }) > 0 and not SMODS.is_eternal(context.card, card) then
                    JoyousSpring.tribute(card, { context.card })
                end
            end
        end,
    },
}

-- Parasite Paracide
JoyousSpring.Blind {
    key = "parasiteparacide",
    atlas = "blinds01",
    pos = { x = 0, y = 34 },
    boss_colour = G.C.JOY.EFFECT,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.create_shop_card and context.set == "Joker" and
            SMODS.pseudorandom_probability(self, self.key, 1, 2, nil, true) then
            return {
                shop_create_flags = {
                    set = "joy_Opponent",
                    key = "opp_joy_parasiteparacide"
                }
            }
        end
        if context.modify_shop_card and context.card.config.center.key == "opp_joy_parasiteparacide" then
            if not JoyousSpring.prevent_buy(context.card) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.FUNCS.buy_from_shop({ config = { ref_table = context.card } })
                        return true
                    end
                }))
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "EARTH",
                    monster_type = "Insect",
                    is_flip = true
                },
                xmult = 0.5
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.xmult } }
        end,
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.joker_main then
                    return {
                        xmult = card.ability.extra.xmult
                    }
                end
            end
        end
    },
}

-- Parasite Paranoid
JoyousSpring.Blind {
    key = "parasiteparanoid",
    atlas = "blinds01",
    pos = { x = 0, y = 35 },
    boss_colour = G.C.JOY.EFFECT,
    has_ante_ability = true,
    joy_get_monster_type = function(self, blind, other_card, original_type)
        return "Insect"
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    attribute = "EARTH",
                    monster_type = "Insect"
                },
            }
        },
        joy_get_monster_type = function(self, card, other_card, original_type)
            if not JoyousSpring.can_use_abilities(card) then return end
            return "Insect"
        end
    },
}

--#endregion

--#region Spell

-- Book of Eclipse
JoyousSpring.Blind {
    key = "bookofeclipse",
    atlas = "blinds01",
    pos = { x = 0, y = 0 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            for _, joker in ipairs(G.jokers.cards) do
                if joker.facing == "front" then
                    JoyousSpring.flip(joker, blind)
                end
            end
        end

        if context.end_of_round and context.game_over == false
            and context.main_eval then
            local count = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker.facing == "back" then
                    JoyousSpring.flip(joker, blind)
                    if joker.facing == "front" then count = count + 1 end
                end
            end
            G.hand:change_size(count)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        joy_prevent_flip = function(self, card, other_card)
            if not JoyousSpring.can_use_abilities(card) then return end
            return other_card.facing == "back"
        end
    }
}

-- Book of Lunar Eclipse
JoyousSpring.Blind {
    key = "bookoflunareclipse",
    atlas = "blinds01",
    pos = { x = 0, y = 1 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { can_flip = true }, { facedown = true } })
            for i = 1, 2 do
                local joker, index = pseudorandom_element(choices, self.key)
                if joker then
                    JoyousSpring.flip(joker, blind)
                    table.remove(choices, index)
                end
            end
        end
        if context.end_of_round and context.game_over == false
            and context.main_eval then
            for _, joker in ipairs(G.jokers.cards) do
                if joker.facing == "back" then
                    JoyousSpring.flip(joker, blind)
                end
            end
        end
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { can_flip = true }, { facedown = true } })
            for i = 1, 2 do
                local joker, index = pseudorandom_element(choices, self.key)
                if joker then
                    JoyousSpring.flip(joker, blind)
                    table.remove(choices, index)
                end
            end
        end

        if context.end_of_round and context.game_over == false
            and context.main_eval then
            for _, joker in ipairs(G.jokers.cards) do
                if joker.facing == "back" then
                    JoyousSpring.flip(joker, blind)
                end
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local choices = JoyousSpring.get_materials_owned({ { can_flip = true }, { facedown = true } })
                    for i = 1, 2 do
                        local joker, index = pseudorandom_element(choices, self.key)
                        if joker then
                            JoyousSpring.flip(joker, blind)
                            table.remove(choices, index)
                        end
                    end
                end
            end
        end
    }
}

-- Book of Moon
JoyousSpring.Blind {
    key = "bookofmoon",
    atlas = "blinds01",
    pos = { x = 0, y = 2 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { can_flip = true } })

            local joker = pseudorandom_element(choices, self.key)
            if joker and joker.facing == "front" then
                JoyousSpring.flip(joker, blind)
            end
        end
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { can_flip = true } })

            local joker = pseudorandom_element(choices, self.key)
            if joker and joker.facing == "front" then
                JoyousSpring.flip(joker, blind)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.end_of_round and context.game_over == false and context.main_eval then
                    local choices = JoyousSpring.get_materials_owned({ { can_flip = true } })

                    local joker = pseudorandom_element(choices, self.key)
                    if joker and joker.facing == "front" then
                        JoyousSpring.flip(joker, card)
                    end
                end
            end
        end
    }
}

-- Book of Taiyou
JoyousSpring.Blind {
    key = "bookoftaiyou",
    atlas = "blinds01",
    pos = { x = 0, y = 3 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    joy_prevent_flip = function(self, blind, other_card)
        return JoyousSpring.is_flip_monster(other_card)
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        joy_prevent_flip = function(self, card, other_card)
            if not JoyousSpring.can_use_abilities(card) then return end
            return other_card.facing == "front"
        end
    }
}

-- Cosmic Cyclone
JoyousSpring.Blind {
    key = "cosmiccyclone",
    atlas = "blinds01",
    pos = { x = 0, y = 4 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local joker = pseudorandom_element(JoyousSpring.field_spell_area.cards, self.key)
            if joker then
                joker.ability.joy_banished_by_cosmiccyclone = true
                JoyousSpring.banish(joker, "end_of_round")
            end
        end
    end,
    disable = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_round_area.cards) do
            if joker.ability.joy_banished_by_cosmiccyclone then
                joker.ability.joy_banished_by_cosmiccyclone = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_round_area.cards) do
            joker.ability.joy_banished_by_cosmiccyclone = nil
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.joy_pre_setting_blind then
                    local joker = pseudorandom_element(JoyousSpring.field_spell_area.cards, self.key)
                    if joker then
                        JoyousSpring.banish(joker, "boss_selected")
                    end
                end
            end
        end
    }
}

-- Dark Ruler No More
JoyousSpring.Blind {
    key = "drnm",
    atlas = "blinds01",
    pos = { x = 0, y = 5 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card:is_rarity("Uncommon") then
            return {
                debuff = true
            }
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local choices = JoyousSpring.get_materials_owned({ { rarity = 2 } })
                    local joker = pseudorandom_element(choices, self.key)
                    if joker then
                        joker.ability.joy_debuffed_by_drnm_opp = true
                        SMODS.recalc_debuff(joker)
                    end
                end

                if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_drnm_opp then
                    return {
                        debuff = true
                    }
                end
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    joker.ability.joy_debuffed_by_drnm_opp = nil
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                joker.ability.joy_debuffed_by_drnm_opp = nil
                SMODS.recalc_debuff(joker)
            end
        end
    }
}

-- Forbidden Chalice
JoyousSpring.Blind {
    key = "forchalice",
    atlas = "blinds01",
    pos = { x = 0, y = 6 },
    boss_colour = G.C.JOY.SPELL,
    config = { xmult = 2 },
    loc_vars = function(self)
        return { vars = { self.config.xmult } }
    end,
    collection_loc_vars = function(self)
        return { vars = { self.config.xmult } }
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { is_effect = true } })
            local joker = pseudorandom_element(choices, self.key)
            if joker then
                joker.ability.joy_debuffed_by_forchalice = true
                SMODS.recalc_debuff(joker)
            end
        end

        if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_forchalice then
            return {
                debuff = true
            }
        end

        if context.other_joker and context.other_joker.ability.joy_debuffed_by_forchalice then
            return {
                xmult = blind.effect.xmult,
                message_card = context.other_joker
            }
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_forchalice = nil
        end
    end,
    disable = function(self)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_forchalice = nil
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
                xmult = 2
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.xmult } }
        end,
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local choices = JoyousSpring.get_materials_owned({ { is_effect = true } })
                    local joker = pseudorandom_element(choices, self.key)
                    if joker then
                        joker.ability.joy_debuffed_by_forchalice_opp = true
                        SMODS.recalc_debuff(joker)
                    end
                end

                if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_forchalice_opp then
                    return {
                        debuff = true
                    }
                end

                if context.other_joker and context.other_joker.ability.joy_debuffed_by_forchalice_opp then
                    return {
                        xmult = card.ability.extra.xmult,
                        message_card = context.other_joker
                    }
                end
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    joker.ability.joy_debuffed_by_forchalice_opp = nil
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                joker.ability.joy_debuffed_by_forchalice_opp = nil
            end
        end
    }
}

-- Forbidden Dress
JoyousSpring.Blind {
    key = "fordress",
    atlas = "blinds01",
    pos = { x = 0, y = 7 },
    boss_colour = G.C.JOY.SPELL,
    config = { xchips = 0.75 },
    loc_vars = function(self)
        return { vars = { self.config.xchips } }
    end,
    collection_loc_vars = function(self)
        return { vars = { self.config.xchips } }
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.individual and context.cardarea == G.play then
            return {
                xchips = blind.effect.xchips
            }
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
                xchips = 0.75
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.xchips } }
        end,
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.individual and context.cardarea == G.play then
                    return {
                        xchips = card.ability.extra.xchips
                    }
                end

                if context.debuff_card and context.debuff_card.area ~= G.jokers then
                    return {
                        prevent_debuff = true
                    }
                end
            end
        end
    }
}

-- Forbidden Droplet
JoyousSpring.Blind {
    key = "fordroplet",
    atlas = "blinds01",
    pos = { x = 0, y = 8 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { is_effect = true, exclude_traps = true } })
            local joker = pseudorandom_element(choices, self.key)
            if joker then
                joker.ability.joy_debuffed_by_fordroplet = true
                SMODS.recalc_debuff(joker)
            end
            choices = JoyousSpring.get_materials_owned({ { is_trap = true } })
            joker = pseudorandom_element(choices, self.key)
            if joker then
                joker.ability.joy_debuffed_by_fordroplet = true
                SMODS.recalc_debuff(joker)
            end

            joker = pseudorandom_element(JoyousSpring.field_spell_area.cards, self.key)
            if joker then
                SMODS.debuff_card(joker, true, self.key)
            end
        end

        if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_fordroplet then
            return {
                debuff = true
            }
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_fordroplet = nil
        end
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            SMODS.debuff_card(joker, false, self.key)
        end
    end,
    disable = function(self)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_fordroplet = nil
        end
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            SMODS.debuff_card(joker, false, self.key)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
                current = "effect"
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { localize("k_joy_" .. card.ability.extra.current) } }
        end,
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local choices
                    local joker
                    if card.ability.extra.current == "effect" then
                        choices = JoyousSpring.get_materials_owned({ { is_effect = true, exclude_traps = true } })
                        joker = pseudorandom_element(choices, self.key)
                        if joker then
                            joker.ability.joy_debuffed_by_fordroplet_opp = true
                            SMODS.recalc_debuff(joker)
                        end
                    elseif card.ability.extra.current == "trap" then
                        choices = JoyousSpring.get_materials_owned({ { is_trap = true } })
                        joker = pseudorandom_element(choices, self.key)
                        if joker then
                            joker.ability.joy_debuffed_by_fordroplet_opp = true
                            SMODS.recalc_debuff(joker)
                        end
                    else
                        joker = pseudorandom_element(JoyousSpring.field_spell_area.cards, self.key)
                        if joker then
                            SMODS.debuff_card(joker, true, self.key)
                        end
                    end
                end

                if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_fordroplet_opp then
                    return {
                        debuff = true
                    }
                end
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    joker.ability.joy_debuffed_by_fordroplet_opp = nil
                end
                for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                    SMODS.debuff_card(joker, false, self.key)
                end
                if card.ability.extra.current == "fieldspell" then
                    card.ability.extra.current = "effect"
                elseif card.ability.extra.current == "trap" then
                    card.ability.extra.current = "fieldspell"
                else
                    card.ability.extra.current = "trap"
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                joker.ability.joy_debuffed_by_fordroplet_opp = nil
            end
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                SMODS.debuff_card(joker, false, self.key)
            end
        end
    }
}

-- Forbidden Lance
JoyousSpring.Blind {
    key = "forlance",
    atlas = "blinds01",
    pos = { x = 0, y = 9 },
    boss_colour = G.C.JOY.SPELL,
    config = { xmult = 0.75 },
    loc_vars = function(self)
        return { vars = { self.config.xmult } }
    end,
    collection_loc_vars = function(self)
        return { vars = { self.config.xmult } }
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.other_joker and JoyousSpring.is_effect_monster(context.other_joker) then
            return {
                xmult = blind.effect.xmult,
                message_card = context.other_joker
            }
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
                xmult = 0.75
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.xmult } }
        end,
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.other_joker and JoyousSpring.is_effect_monster(context.other_joker) then
                    return {
                        xmult = card.ability.extra.xmult,
                        message_card = context.other_joker
                    }
                end
            end
        end,
        joy_prevent_flip = function(self, card, other_card)
            if not JoyousSpring.can_use_abilities(card) then return end
            return other_card.facing == "front" and JoyousSpring.is_effect_monster(other_card)
        end,
        joy_apply_to_jokers_added = function(self, card, added_card)
            if JoyousSpring.is_effect_monster(added_card) and not JoyousSpring.is_perma_debuffed(added_card) then
                SMODS.debuff_card(added_card, "prevent_debuff", self.key .. card.ability.extra.unique_count)
            end
        end,
        add_to_deck = function(self, card, from_debuff)
            if not from_debuff then
                card.ability.extra.unique_count = #SMODS.find_card(self.key, true)
            end
            if not card.debuff then
                for _, joker in ipairs(G.jokers.cards) do
                    if JoyousSpring.is_effect_monster(joker) and not JoyousSpring.is_perma_debuffed(joker) then
                        SMODS.debuff_card(joker, "prevent_debuff", self.key .. card.ability.extra.unique_count)
                    end
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                SMODS.debuff_card(joker, false, self.key .. card.ability.extra.unique_count)
            end
        end,
    }
}

-- Forbidden Scripture
JoyousSpring.Blind {
    key = "forscript",
    atlas = "blinds01",
    pos = { x = 0, y = 10 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_effect_monster(joker) then
                    joker:set_edition()
                end
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
    }
}

-- Harpie's Feather Duster
JoyousSpring.Blind {
    key = "harpiesfeatherduster",
    atlas = "blinds01",
    pos = { x = 0, y = 11 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            SMODS.destroy_cards(JoyousSpring.field_spell_area.cards)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        add_to_deck = function(self, card, from_debuff)
            JoyousSpring.field_spell_area:change_size(-1)
        end,
        remove_from_deck = function(self, card, from_debuff)
            JoyousSpring.field_spell_area:change_size(1)
        end
    }
}

-- Lightning Storm
JoyousSpring.Blind {
    key = "lightningstorm",
    atlas = "blinds01",
    pos = { x = 0, y = 12 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            SMODS.destroy_cards(#JoyousSpring.field_spell_area.cards > 0 and JoyousSpring.field_spell_area.cards or
                G.jokers.cards)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.ante_change and context.ante_end then
                    SMODS.destroy_cards(#JoyousSpring.field_spell_area.cards > 0 and JoyousSpring.field_spell_area.cards or
                        G.jokers.cards)
                end
            end
        end
    }
}

-- Necrovalley
JoyousSpring.Blind {
    key = "necrovalley",
    atlas = "blinds01",
    pos = { x = 0, y = 13 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    joy_prevent_revive = function(self, blind, key)
        return true
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_field_spell = true,
                },
            }
        },
        joy_prevent_revive = function(self, card, key)
            if not JoyousSpring.can_use_abilities(card) then return end
            return true
        end,
    },
}

-- Senet Switch
JoyousSpring.Blind {
    key = "senetswitch",
    atlas = "blinds01",
    pos = { x = 0, y = 14 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    joy_prevent_drag = function(self, blind, other_card, area)
        return area == G.jokers
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local joker = pseudorandom_element(G.jokers.cards, self.key)
                    joker:add_sticker("pinned", true)
                    joker.ability.joy_pinned_by_senetswitch = true
                end
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    if joker.ability.joy_pinned_by_senetswitch then
                        joker:remove_sticker("pinned")
                    end
                    joker.ability.joy_pinned_by_senetswitch = nil
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.joy_pinned_by_senetswitch then
                    joker:remove_sticker("pinned")
                end
                joker.ability.joy_pinned_by_senetswitch = nil
            end
        end
    }
}

-- Temp hook while SMODS doesn't merge my PR
local card_remove_sticker_ref = Card.remove_sticker
function Card:remove_sticker(sticker)
    if sticker == 'pinned' and self.pinned then
        SMODS.Stickers[sticker]:apply(self, false)
        SMODS.enh_cache:write(self, nil)
    end
    return card_remove_sticker_ref(self, sticker)
end

-- Super Polymerization
-- JoyousSpring.Blind {
--     key = "superpoly",
--     atlas = "blinds01",
--     pos = { x = 0, y = 15 },
--     boss_colour = G.C.JOY.SPELL,
--     opponent_card = {
--         config = {
--             extra = {
--                 joyous_spring = JoyousSpring.init_joy_table {
--                     is_spell = true,
--                 },
--             }
--         },
--     }
-- }

-- Terminal World
JoyousSpring.Blind {
    key = "terminalworld",
    atlas = "blinds01",
    pos = { x = 0, y = 17 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
    }
}

-- Terminal World NEXT
JoyousSpring.Blind {
    key = "terminalworldnext",
    atlas = "blinds01",
    pos = { x = 0, y = 16 },
    boss_colour = G.C.JOY.SPELL,
    has_ante_ability = true,
    on_enter = function(self, blind_type)
        G.jokers:change_size(-2)
    end,
    on_exit = function(self, blind_type)
        G.jokers:change_size(2)
    end,
    disable = function(self)
        G.jokers:change_size(2)
    end,
    defeat = function(self)
        if not G.GAME.blind.disabled then
            G.jokers:change_size(2)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        add_to_deck = function(self, card, from_debuff)
            G.jokers:change_size(-2)
        end,
        remove_from_deck = function(self, card, from_debuff)
            G.jokers:change_size(2)
        end
    }
}

-- Ultimate Slayer
JoyousSpring.Blind {
    key = "ultimateslayer",
    atlas = "blinds01",
    pos = { x = 0, y = 18 },
    boss_colour = G.C.JOY.SPELL,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { is_extra_deck = true } }, nil, true)
            local joker = pseudorandom_element(choices, self.key)

            if joker then
                G.GAME.joy_ultimateslayer_summon_type = joker.ability.extra.joyous_spring.summon_type
                local ed_choices = JoyousSpring.get_materials_in_collection({ { summon_type = G.GAME.joy_ultimateslayer_summon_type, is_extra_deck = true, exclude_keys = { joker.config.center_key } } })

                local key_to_add = pseudorandom_element(ed_choices, self.key .. "_extra")
                if key_to_add and #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
                    JoyousSpring.add_to_extra_deck(key_to_add)
                end
                SMODS.destroy_cards(joker)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_spell = true,
                },
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { localize("k_joy_" .. (G.GAME.joy_ultimateslayer_summon_type or card.area and not card.area.config.collection and "LINK" or "ultimateslayer_type")), colours = { G.GAME.joy_ultimateslayer_summon_type and G.C.JOY[G.GAME.joy_ultimateslayer_summon_type] or card.area and not card.area.config.collection and G.C.JOY.LINK or G.C.FILTER } } }
        end,
        joy_prevent_summon = function(self, card, other_card, card_list)
            if not JoyousSpring.can_use_abilities(card) then return end
            return other_card.ability.extra.joyous_spring.summon_type ~=
                (G.GAME.joy_ultimateslayer_summon_type or "LINK")
        end
    }
}

--#endregion

--#region Trap

-- Chain Disappearance
JoyousSpring.Blind {
    key = "chaindisappearance",
    atlas = "blinds01",
    pos = { x = 0, y = 19 },
    boss_colour = G.C.JOY.TRAP,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.joy_summon then
            local attribute = JoyousSpring.get_attribute(context.joy_card)
            local monster_type = JoyousSpring.get_monster_type(context.joy_card)
            if attribute ~= nil and monster_type ~= nil then
                local properties = { {} }

                if attribute ~= true and monster_type ~= true then
                    properties = {
                        {
                            monster_type = monster_type,
                        },
                        {
                            monster_attribute = attribute
                        },
                    }
                end

                local to_banish = JoyousSpring.get_materials_owned(properties)
                for _, joker in ipairs(to_banish) do
                    joker.ability.joy_banished_by_chaindisappearance = true
                    JoyousSpring.banish(joker, "end_of_ante")
                end
            end
        end
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.joy_summon then
            local attribute = JoyousSpring.get_attribute(context.joy_card)
            local monster_type = JoyousSpring.get_monster_type(context.joy_card)
            if attribute ~= nil and monster_type ~= nil then
                local properties = { {} }

                if attribute ~= true and monster_type ~= true then
                    properties = {
                        {
                            monster_type = monster_type,
                        },
                        {
                            monster_attribute = attribute
                        },
                    }
                end

                local to_banish = JoyousSpring.get_materials_owned(properties)
                for _, joker in ipairs(to_banish) do
                    joker.ability.joy_banished_by_chaindisappearance = true
                    JoyousSpring.banish(joker, "end_of_ante")
                end
            end
        end
    end,
    disable = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            if joker.ability.joy_banished_by_chaindisappearance then
                joker.ability.joy_banished_by_chaindisappearance = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            joker.ability.joy_banished_by_chaindisappearance = nil
        end
    end,
    on_exit = function(self, blind_type)
        for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            if joker.ability.joy_banished_by_chaindisappearance then
                joker.ability.joy_banished_by_chaindisappearance = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.joy_summon then
                    local attribute = JoyousSpring.get_attribute(context.joy_card)
                    local monster_type = JoyousSpring.get_monster_type(context.joy_card)
                    if attribute ~= nil and monster_type ~= nil then
                        local properties = { {} }

                        if attribute ~= true and monster_type ~= true then
                            properties = {
                                {
                                    monster_type = monster_type,
                                },
                                {
                                    monster_attribute = attribute
                                },
                            }
                        end

                        local to_banish = JoyousSpring.get_materials_owned(properties)
                        for _, joker in ipairs(to_banish) do
                            JoyousSpring.banish(joker, "end_of_round")
                        end
                    end
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
    }
}

-- Chain Dispel
JoyousSpring.Blind {
    key = "chaindispel",
    atlas = "blinds01",
    pos = { x = 0, y = 20 },
    boss_colour = G.C.JOY.TRAP,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            for _, joker in ipairs(G.jokers.cards) do
                local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil, true)
                if #same > 1 then
                    SMODS.destroy_cards(same)
                end
            end
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil, true)
                if #same > 1 then
                    SMODS.destroy_cards(same)
                end
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.calculate_flip_effect(card, context) then
                for _, joker in ipairs(G.jokers.cards) do
                    local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil, true)
                    if #same > 1 then
                        table.remove(same, 1)
                        SMODS.destroy_cards(same)
                    end
                end
                for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                    local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil, true)
                    if #same > 1 then
                        table.remove(same, 1)
                        SMODS.destroy_cards(same)
                    end
                end
            end
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
    }
}

-- Chain Hole
JoyousSpring.Blind {
    key = "chainhole",
    atlas = "blinds01",
    pos = { x = 0, y = 21 },
    boss_colour = G.C.JOY.TRAP,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            for _, joker in ipairs(G.jokers.cards) do
                local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil, true)
                if #same > 1 then
                    for _, card in ipairs(same) do
                        card.ability.joy_banished_by_chainhole = true
                        JoyousSpring.banish(card, "end_of_round")
                    end
                end
            end
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil, true)
                if #same > 1 then
                    for _, card in ipairs(same) do
                        card.ability.joy_banished_by_chainhole = true
                        JoyousSpring.banish(card, "end_of_round")
                    end
                end
            end
        end
    end,
    disable = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_round_area.cards) do
            if joker.ability.joy_banished_by_chainhole then
                joker.ability.joy_banished_by_chainhole = nil
            end
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(JoyousSpring.banish_end_of_round_area.cards) do
            if joker.ability.joy_banished_by_chainhole then
                joker.ability.joy_banished_by_chainhole = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    on_exit = function(self, blind_type)
        for _, joker in ipairs(JoyousSpring.banish_end_of_round_area.cards) do
            if joker.ability.joy_banished_by_chainhole then
                joker.ability.joy_banished_by_chainhole = nil
                JoyousSpring.return_from_banish(joker)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    for _, joker in ipairs(G.jokers.cards) do
                        local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil,
                            true)
                        if #same > 1 then
                            table.remove(same, 1)
                            for _, other_joker in ipairs(same) do
                                JoyousSpring.banish(other_joker, "end_of_round")
                            end
                        end
                    end
                    for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                        local same = JoyousSpring.get_materials_owned({ { key = joker.config.center.key } }, nil, nil,
                            true)
                        if #same > 1 then
                            table.remove(same, 1)
                            for _, other_joker in ipairs(same) do
                                JoyousSpring.banish(other_joker, "end_of_round")
                            end
                        end
                    end
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
    }
}

-- Evenly Matched
-- JoyousSpring.Blind {
--     key = "evenly",
--     atlas = "blinds01",
--     pos = { x = 0, y = 22 },
--     boss_colour = G.C.JOY.TRAP,
--     opponent_card = {
--         config = {
--             extra = {
--                 joyous_spring = JoyousSpring.init_joy_table {
--                     is_trap = true,
--                 },
--             }
--         },
--     }
-- }

-- Imperial Iron Wall
JoyousSpring.Blind {
    key = "imperialironwall",
    atlas = "blinds01",
    pos = { x = 0, y = 23 },
    boss_colour = G.C.JOY.TRAP,
    has_ante_ability = true,
    joy_prevent_banish = function(self, blind, other_card, banish_until)
        return true
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
        joy_prevent_banish = function(self, card, other_card, banish_until)
            return JoyousSpring.can_use_abilities(card)
        end,
    }
}

-- Imperial Order
JoyousSpring.Blind {
    key = "imperialorder",
    atlas = "blinds01",
    pos = { x = 0, y = 24 },
    boss_colour = G.C.JOY.TRAP,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                SMODS.debuff_card(joker, true, self.key)
            end
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            SMODS.debuff_card(joker, false, self.key)
        end
    end,
    disable = function(self)
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            SMODS.debuff_card(joker, false, self.key)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                        SMODS.debuff_card(joker, true, self.key .. (card.ability.extra.unique_count or 0))
                    end
                end
            end
            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                    SMODS.debuff_card(joker, false, self.key .. (card.ability.extra.unique_count or 0))
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not from_debuff then
                card.ability.extra.unique_count = #SMODS.find_card(self.key, true)
            end
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                SMODS.debuff_card(joker, false, self.key .. (card.ability.extra.unique_count or 0))
            end
        end,
    }
}

-- Infinite Impermanence
JoyousSpring.Blind {
    key = "imperm",
    atlas = "blinds01",
    pos = { x = 0, y = 25 },
    boss_colour = G.C.JOY.TRAP,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { is_effect = true, exclude_traps = true } })
            local joker = pseudorandom_element(choices, self.key)
            if joker then
                joker.ability.joy_debuffed_by_imperm = true
            end
            SMODS.recalc_debuff(joker)
        end

        if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_imperm then
            return {
                debuff = true
            }
        end
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.setting_blind then
            local choices = JoyousSpring.get_materials_owned({ { is_effect = true, exclude_traps = true, exclude_debuffed = true } })
            local joker = pseudorandom_element(choices, self.key)
            if joker then
                joker.ability.joy_debuffed_by_imperm = true
                SMODS.recalc_debuff(joker)
            end
        end

        if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_imperm then
            return {
                debuff = true
            }
        end
    end,
    defeat = function(self)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_imperm = nil
        end
    end,
    disable = function(self)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_imperm = nil
        end
    end,
    on_exit = function(self, blind_type)
        for _, joker in ipairs(G.jokers.cards) do
            joker.ability.joy_debuffed_by_imperm = nil
            SMODS.recalc_debuff(joker)
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local choices = JoyousSpring.get_materials_owned({ { is_effect = true, exclude_traps = true, exclude_debuffed = true } })
                    local joker = pseudorandom_element(choices, self.key)
                    if joker then
                        joker.ability.joy_debuffed_by_imperm_opp = true
                        SMODS.recalc_debuff(joker)
                    end
                end

                if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_imperm_opp then
                    return {
                        debuff = true
                    }
                end
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    joker.ability.joy_debuffed_by_imperm_opp = nil
                    SMODS.recalc_debuff(joker)
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                joker.ability.joy_debuffed_by_imperm_opp = nil
                SMODS.recalc_debuff(joker)
            end
        end
    }
}

-- Lightforce Sword
JoyousSpring.Blind {
    key = "lightforcesword",
    atlas = "blinds01",
    pos = { x = 0, y = 26 },
    boss_colour = G.C.JOY.TRAP,
    has_ante_ability = true,
    calculate_ante = function(self, context)
        if context.after then
            local choice = pseudorandom_element(context.scoring_hand, self.key)
            if choice then
                choice.ability.joy_banished_by_lightforcesword = true
                JoyousSpring.banish(choice, "end_of_ante")
            end
        end
    end,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.after then
            local choice = pseudorandom_element(context.scoring_hand, self.key)
            if choice then
                choice.ability.joy_banished_by_lightforcesword = true
                JoyousSpring.banish(choice, "end_of_ante")
            end
        end
    end,
    disable = function(self)
        for _, card in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            if card.ability.joy_banished_by_lightforcesword then
                card.ability.joy_banished_by_lightforcesword = nil
                JoyousSpring.return_from_banish(card)
            end
        end
    end,
    defeat = function(self)
        for _, card in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            card.ability.joy_banished_by_lightforcesword = nil
        end
    end,
    on_exit = function(self, blind_type)
        for _, card in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
            if card.ability.joy_banished_by_lightforcesword then
                card.ability.joy_banished_by_lightforcesword = nil
                JoyousSpring.return_from_banish(card)
            end
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.after then
                    local choice = pseudorandom_element(context.scoring_hand, self.key)
                    if choice then
                        JoyousSpring.banish(choice, "end_of_ante")
                    end
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
    }
}

-- Macro Cosmos
JoyousSpring.Blind {
    key = "macrocosmos",
    atlas = "blinds01",
    pos = { x = 0, y = 27 },
    boss_colour = G.C.JOY.TRAP,
    has_ante_ability = true,
    joy_can_be_sent_to_graveyard = function(self, blind, choices)
        return {}
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
        joy_can_be_sent_to_graveyard = function(self, card, choices)
            if JoyousSpring.can_use_abilities(card) then
                return {}
            end
        end
    }
}

-- Red Reboot
JoyousSpring.Blind {
    key = "redreboot",
    atlas = "blinds01",
    pos = { x = 0, y = 28 },
    boss_colour = G.C.JOY.TRAP,
    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.debuff_card and context.debuff_card.area == G.jokers and JoyousSpring.is_trap_monster(context.debuff_card) then
            return {
                debuff = true
            }
        end
    end,
    opponent_card = {
        config = {
            extra = {
                joyous_spring = JoyousSpring.init_joy_table {
                    is_trap = true,
                },
            }
        },
        calculate = function(self, card, context)
            if JoyousSpring.can_use_abilities(card) then
                if context.setting_blind then
                    local choices = JoyousSpring.get_materials_owned({ { is_trap = true, exclude_debuffed = true } })
                    local joker = pseudorandom_element(choices, self.key)
                    if joker then
                        joker.ability.joy_debuffed_by_redreboot_opp = true
                        SMODS.recalc_debuff(joker)
                    end
                end

                if context.debuff_card and context.debuff_card.area == G.jokers and context.debuff_card.ability.joy_debuffed_by_redreboot_opp then
                    return {
                        debuff = true
                    }
                end
            end

            if context.end_of_round and context.game_over == false and context.main_eval then
                for _, joker in ipairs(G.jokers.cards) do
                    joker.ability.joy_debuffed_by_redreboot_opp = nil
                    SMODS.recalc_debuff(joker)
                end
            end
            JoyousSpring.calculate_flip_effect(card, context)
        end,
        add_to_deck = function(self, card, from_debuff)
            if not card.debuff and not JoyousSpring.is_perma_debuffed(card) then
                if not from_debuff and JoyousSpring.should_trap_flip(card) then
                    JoyousSpring.flip(card, card)
                end
            end
        end,
        remove_from_deck = function(self, card, from_debuff)
            for _, joker in ipairs(G.jokers.cards) do
                joker.ability.joy_debuffed_by_redreboot_opp = nil
                SMODS.recalc_debuff(joker)
            end
        end
    }
}

--#endregion
