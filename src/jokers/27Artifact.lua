--- ARTIFACT
SMODS.Atlas({
    key = "artifact",
    path = "27Artifact.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "artifact_opp",
    path = "27Artifact_opp.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
})

local artifact_can_move = function(card)
    return not SMODS.is_eternal(card, card) and
        (next(SMODS.find_card("j_joy_artifact_dagda")) or
            JoyousSpring.count_materials_owned({ { is_opponent = true, monster_archetypes = { "Artifact" } } }) <= 2)
end

local inc_artifact_count = function()
    G.GAME.joy_artifact_destruction_count = (G.GAME.joy_artifact_destruction_count or 0) + 1
end

-- Artifact Achilleshield
JoyousSpring.Joker({
    key = "artifact_achil",
    atlas = 'artifact',
    pos = { x = 0, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_mimi_archfiend",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
            },
            xmult = 5,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local count = 0
                for _, pcard in ipairs(context.full_hand) do
                    if pcard.debuff then
                        count = count + 1
                    end
                end
                if count > 0 then
                    return {
                        xmult = card.ability.extra.xmult * count
                    }
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_achil", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_achil",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 0 },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_achil",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Aegis
JoyousSpring.Joker({
    key = "artifact_aegis",
    atlas = 'artifact',
    pos = { x = 1, y = 0 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * (G.GAME.joy_cards_destroyed or 0) + (G.GAME.joy_joker_cards_destroyed or 0), card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_aegis",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
            },
            xmult = 0.1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local count = (G.GAME.joy_cards_destroyed or 0) + (G.GAME.joy_joker_cards_destroyed or 0)
                if count > 0 then
                    return {
                        xmult = 1 + card.ability.extra.xmult * count
                    }
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_aegis", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_aegis",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 1 },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_aegis",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Beagalltach
JoyousSpring.Joker({
    key = "artifact_beaga",
    atlas = 'artifact',
    pos = { x = 2, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_beaga",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1,
            scored_this_ante = {}
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.after and not card.ability.extra.scored_this_ante[context.scoring_name] then
                local artifacts = JoyousSpring.count_materials_owned(
                    { { is_opponent = true, monster_archetypes = { "Artifact" } } }, true)
                if artifacts > 0 then
                    card.ability.extra.scored_this_ante[context.scoring_name] = true
                    return {
                        level_up = artifacts
                    }
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_beaga", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
        if context.ante_change and context.ante_end then
            card.ability.extra.scored_this_ante = {}
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.scored_this_ante = {}
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_beaga",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 2 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_beaga",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.ante_change and context.ante_end then
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Artifact" }, is_main_deck = true } },
                    card.config.center.keys)
            end
        end
    end
}

-- Artifact Caduceus
JoyousSpring.Joker({
    key = "artifact_cadu",
    atlas = 'artifact',
    pos = { x = 3, y = 0 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_cadu",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            mult = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.individual and context.cardarea == G.hand and
                not context.end_of_round and not SMODS.has_no_rank(context.other_card) then
                return {
                    mult = card.ability.extra.mult *
                        JoyousSpring.count_materials_owned({ { monster_archetypes = { "Artifact" } } }) *
                        context.other_card.base.nominal
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_cadu", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
        if context.ante_change and context.ante_end then
            card.ability.extra.scored_this_ante = {}
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_cadu",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 3 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_cadu",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            h_size = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                local h_size = card.ability.extra.h_size *
                    JoyousSpring.count_materials_owned({ { allow_opponent = true, monster_archetypes = { "Artifact" } } })
                G.hand:change_size(h_size)
                G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + h_size
            end
        end
    end
}

-- Artifact Chakram
JoyousSpring.Joker({
    key = "artifact_chak",
    atlas = 'artifact',
    pos = { x = 0, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } }), card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_chak",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            chips = 25,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_joker or context.other_opponent_joker then
                local scored_card = context.other_joker or context.other_opponent_joker
                if scored_card.facing == "front" and JoyousSpring.is_monster_archetype(scored_card, "Artifact") then
                    return {
                        chips = card.ability.extra.chips *
                            JoyousSpring.count_materials_in_graveyard({ { is_field_spell = true } }),
                        message_card = scored_card
                    }
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_chak", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_chak",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 4 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_chak",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                JoyousSpring.create_pseudorandom({ { is_field_spell = true } }, card.config.center.key, true)
            end
        end
    end
}

-- Artifact Failnaught
JoyousSpring.Joker({
    key = "artifact_fail",
    atlas = 'artifact',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 3,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.chips, card.ability.extra.chips *
            JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Artifact" } } }),
                card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_fail",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            chips = 25,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    chips = card.ability.extra.chips *
                        JoyousSpring.count_materials_in_graveyard({ { monster_archetypes = { "Artifact" } } })
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_fail", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_fail",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 7 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_fail",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
    add_to_deck = function(self, card, from_debuff)
        local choices = JoyousSpring.get_materials_in_graveyard(
            { { monster_archetypes = { "Artifact" }, is_main_deck = true } }, nil, true)
        local key = pseudorandom_element(choices, card.config.center.key)
        if key then
            key = "opp_" .. key:sub(3)
            G.E_MANAGER:add_event(Event({
                func = function()
                    SMODS.add_card { key = key, area = JoyousSpring.opponent_area }
                    return true
                end
            }))
        end
    end
}

-- Artifact Labrys
JoyousSpring.Joker({
    key = "artifact_labrys",
    atlas = 'artifact',
    pos = { x = 2, y = 1 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * (G.GAME.joy_artifact_destruction_count or 0), card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_labrys",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xmult = 0.1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local count = G.GAME.joy_artifact_destruction_count or 0
                if count > 0 then
                    return {
                        xmult = 1 + card.ability.extra.xmult * count
                    }
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_labrys", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_labrys",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 8 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_labrys",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            creates = 1
        },
    },
}

-- Artifact Lancea
JoyousSpring.Joker({
    key = "artifact_lancea",
    atlas = 'artifact',
    pos = { x = 3, y = 1 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_cards_banished or 0),
                card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_lancea",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            mult = 5,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_cards_banished or 0)
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_lancea", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_lancea",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 9 },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_lancea",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Mjollnir
JoyousSpring.Joker({
    key = "artifact_mjol",
    atlas = 'artifact',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.mult, card.ability.extra.mult * (G.GAME.joy_joker_cards_revived or 0),
                card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_mjol",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            mult = 5,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult * (G.GAME.joy_joker_cards_revived or 0)
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_mjol", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_mjol",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 10 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.revives } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_mjol",                                     name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            revives = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.end_of_round and context.game_over == false and context.main_eval then
                JoyousSpring.revive_pseudorandom(
                    { { monster_archetypes = { "Artifact" }, exclude_keys = { "j_joy_artifact_mjol" } } },
                    card.config.center.key)
            end
        end
    end
}

-- Artifact Moralltach
JoyousSpring.Joker({
    key = "artifact_morall",
    atlas = 'artifact',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { card.ability.extra.xchips, 1 + card.ability.extra.xchips * (G.GAME.joy_glass_shattered or 0),
                card.ability.extra.creates }
        }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_morall",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xchips = 0.2,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                local count = (G.GAME.joy_glass_shattered or 0)
                if count > 0 then
                    return {
                        xchips = 1 + card.ability.extra.xchips * count
                    }
                end
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_morall", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_morall",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 11 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_morall",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            adds = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.remove_playing_cards and not card.ability.extra.activated then
                local pcard = context.removed[1]
                local rank = not SMODS.has_no_rank(pcard) and pcard.base.value or nil
                local suit = not SMODS.has_no_suit(pcard) and not SMODS.has_any_suit(pcard) and pcard.base.suit or nil
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local added_card = SMODS.add_card { set = "Base", enhancement = 'm_glass',
                            rank = rank, suit = suit, key_append = self.key }
                        JoyousSpring.modify_probability_numerator(added_card, 3)
                        return true
                    end
                }))
                card.ability.extra.activated = true
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = false
    end
}

-- Artifact Scythe
JoyousSpring.Joker({
    key = "artifact_scythe",
    atlas = 'artifact',
    pos = { x = 2, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, card.ability.extra.current_xmult, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_scythe",                                 name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xmult = 0.1,
            current_xmult = 1,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                if card.ability.extra.current_xmult > 1 then
                    return {
                        xmult = card.ability.extra.current_xmult
                    }
                end
            end
            if context.joy_summon then
                card.ability.extra.current_xmult = card.ability.extra.current_xmult + card.ability.extra.xmult
                return {
                    message = localize('k_upgrade_ex')
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_scythe", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_scythe",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 12 },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_scythe",                                   name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Vajra
JoyousSpring.Joker({
    key = "artifact_vajra",
    atlas = 'artifact',
    pos = { x = 3, y = 2 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { "opp_joy_artifact_vajra",                                  name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
            xchips = 1.2,
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.other_opponent_joker then
                return {
                    xchips = card.ability.extra.xchips,
                    message_card = context.other_opponent_joker
                }
            end
            if not context.blueprint_card then
                if context.joy_activate_effect and context.joy_activated_card == card and artifact_can_move(card) then
                    SMODS.destroy_cards(card, nil, true)
                    inc_artifact_count()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card { key = "opp_joy_artifact_vajra", area = JoyousSpring.opponent_area }
                            return true
                        end
                    }))
                end
            end
        end
    end,
    joy_can_activate = function(card)
        return artifact_can_move(card)
    end,
})

JoyousSpring.OpponentCard {
    key = "artifact_vajra",
    atlas = 'artifact_opp',
    pos = { x = 0, y = 13 },
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { "j_joy_artifact_vajra",                                    name = "k_joy_creates" },
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true }
            },
        },
    },
}

-- Artifact Durendal
JoyousSpring.Joker({
    key = "artifact_durendal",
    atlas = 'artifact',
    pos = { x = 0, y = 3 },
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 10,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.attach, card.ability.extra.added, card.ability.extra.detach, card.ability.extra.draw, card.ability.extra.increases } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "XYZ",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
                summon_conditions = {
                    {
                        type = "XYZ",
                        materials = {
                            { exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                            { exclude_tokens = true, exclude_summon_types = { "XYZ", "LINK" } },
                        },
                    }
                }
            },
            attach = 1,
            detach = 2,
            draw = 1,
            increases = 1,
            added = 0
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.card_added and context.card.ability.set == "joy_Opponent" then
                card.ability.extra.added = card.ability.extra.added + 1
                if card.ability.extra.added >= 5 then
                    card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
                    card.ability.extra.added = 0
                end
            end
            if context.joker_type_destroyed and context.card.ability.set == "joy_Opponent" and not JoyousSpring.is_monster_archetype(context.card, "Artifact") then
                card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
            end
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_detach and context.joy_detaching_card == card then
                JoyousSpring.ease_detach(card)

                SMODS.draw_cards(#JoyousSpring.opponent_area.cards)
                JoyousSpring.opponent_area:change_size(1)
            end
        end
    end,
    joy_can_detach = function(self, card)
        return #G.hand.cards > 0 and #JoyousSpring.opponent_area.cards > 0
    end
})

-- Artifact Dagda
JoyousSpring.Joker({
    key = "artifact_dagda",
    atlas = 'artifact',
    pos = { x = 1, y = 3 },
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 15,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.creates } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "Artifact" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "LINK",
                monster_type = "Fairy",
                attribute = "LIGHT",
                monster_archetypes = { ["Artifact"] = true },
                summon_conditions = {
                    {
                        type = "LINK",
                        materials = {
                            {},
                            { monster_archetypes = { "Artifact" } },
                        },
                    }
                }
            },
            creates = 1
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.card_added and context.card.ability.set == "joy_Opponent" and
                not card.ability.extra.activated and not JoyousSpring.is_monster_archetype(context.card, "Artifact") then
                card.ability.extra.activated = true
                JoyousSpring.create_pseudorandom({ { monster_archetypes = { "Artifact" }, is_main_deck = true } },
                    card.config.center.key)
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval then
            card.ability.extra.activated = false
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.activated = false
    end
})

JoyousSpring.Blind.prevent_debuff_keys[#JoyousSpring.Blind.prevent_debuff_keys + 1] = "opp_joy_artifact_achil"
JoyousSpring.Blind.prevent_banish_keys[#JoyousSpring.Blind.prevent_banish_keys + 1] = "opp_joy_artifact_lancea"
JoyousSpring.Blind.prevent_destruction_keys[#JoyousSpring.Blind.prevent_destruction_keys + 1] = "opp_joy_artifact_aegis"
JoyousSpring.Blind.prevent_shop_keys[#JoyousSpring.Blind.prevent_shop_keys + 1] = "opp_joy_artifact_scythe"
JoyousSpring.Blind.prevent_summon_keys[#JoyousSpring.Blind.prevent_summon_keys + 1] = "opp_joy_artifact_scythe"
JoyousSpring.Blind.prevent_flip_keys[#JoyousSpring.Blind.prevent_flip_keys + 1] = "opp_joy_artifact_vajra"

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "artifact" },
    label = "k_joy_archetype_artifact"
}
