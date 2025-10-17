-- ENHANCEMENTS

--#region Hanafuda

SMODS.Atlas {
    key = "hanafuda",
    path = "hanafuda.png",
    px = 71,
    py = 95
}

JoyousSpring.hanafuda_cards = {
    ["Pine with Crane"] = { month = "january", type = "light", pos = { x = 1, y = 0 } },
    ["Pine with Ribbon"] = { month = "january", type = "ribbon", pos = { x = 0, y = 0 } },
    ["Pine"] = { month = "january", type = "chaff", pos = { x = 2, y = 0 } },
    ["Pine_2"] = { month = "january", type = "chaff", pos = { x = 3, y = 0 } },

    ["Plum Blossom with White-eye"] = { month = "february", type = "animal", pos = { x = 5, y = 0 } },
    ["Plum Blossom with Ribbon"] = { month = "february", type = "ribbon", pos = { x = 4, y = 0 } },
    ["Plum Blossom"] = { month = "february", type = "chaff", pos = { x = 6, y = 0 } },
    ["Plum Blossom_2"] = { month = "february", type = "chaff", pos = { x = 7, y = 0 } },

    ["Cherry Blossom with Curtain"] = { month = "march", type = "light", pos = { x = 9, y = 0 } },
    ["Cherry Blossom with Ribbon"] = { month = "march", type = "ribbon", pos = { x = 8, y = 0 } },
    ["Cherry Blossom"] = { month = "march", type = "chaff", pos = { x = 0, y = 1 } },
    ["Cherry Blossom_2"] = { month = "march", type = "chaff", pos = { x = 1, y = 1 } },

    ["Wisteria with Cuckoo"] = { month = "april", type = "animal", pos = { x = 3, y = 1 } },
    ["Wisteria with Ribbon"] = { month = "april", type = "ribbon", pos = { x = 2, y = 1 } },
    ["Wisteria"] = { month = "april", type = "chaff", pos = { x = 4, y = 1 } },
    ["Wisteria_2"] = { month = "april", type = "chaff", pos = { x = 5, y = 1 } },

    ["Water Iris with Bridge"] = { month = "may", type = "animal", pos = { x = 6, y = 1 } },
    ["Water Iris with Ribbon"] = { month = "may", type = "ribbon", pos = { x = 7, y = 1 } },
    ["Water Iris"] = { month = "may", type = "chaff", pos = { x = 8, y = 1 } },
    ["Water Iris_2"] = { month = "may", type = "chaff", pos = { x = 9, y = 1 } },

    ["Peony with Butterfly"] = { month = "june", type = "animal", pos = { x = 0, y = 2 } },
    ["Peony with Ribbon"] = { month = "june", type = "ribbon", pos = { x = 1, y = 2 } },
    ["Peony"] = { month = "june", type = "chaff", pos = { x = 2, y = 2 } },
    ["Peony_2"] = { month = "june", type = "chaff", pos = { x = 3, y = 2 } },

    ["Clover with Boar"] = { month = "july", type = "animal", pos = { x = 5, y = 2 } },
    ["Clover with Ribbon"] = { month = "july", type = "ribbon", pos = { x = 4, y = 2 } },
    ["Clover"] = { month = "july", type = "chaff", pos = { x = 6, y = 2 } },
    ["Clover_2"] = { month = "july", type = "chaff", pos = { x = 7, y = 2 } },

    ["Zebra Grass with Moon"] = { month = "august", type = "light", pos = { x = 9, y = 2 } },
    ["Zebra Grass with Geese"] = { month = "august", type = "animal", pos = { x = 8, y = 2 } },
    ["Zebra Grass"] = { month = "august", type = "chaff", pos = { x = 0, y = 3 } },
    ["Zebra Grass_2"] = { month = "august", type = "chaff", pos = { x = 1, y = 3 } },

    ["Chrysanthemum with Sake"] = { month = "september", type = "animal", pos = { x = 3, y = 3 } },
    ["Chrysanthemum with Ribbon"] = { month = "september", type = "ribbon", pos = { x = 2, y = 3 } },
    ["Chrysanthemum"] = { month = "september", type = "chaff", pos = { x = 4, y = 3 } },
    ["Chrysanthemum_2"] = { month = "september", type = "chaff", pos = { x = 5, y = 3 } },

    ["Maple with Deer"] = { month = "october", type = "animal", pos = { x = 6, y = 3 } },
    ["Maple with Ribbon"] = { month = "october", type = "ribbon", pos = { x = 7, y = 3 } },
    ["Maple"] = { month = "october", type = "chaff", pos = { x = 9, y = 3 } },
    ["Maple_2"] = { month = "october", type = "chaff", pos = { x = 8, y = 3 } },

    ["Willow with Calligrapher"] = { month = "november", type = "light", pos = { x = 0, y = 4 } },
    ["Willow with Swallow"] = { month = "november", type = "animal", pos = { x = 2, y = 4 } },
    ["Willow with Ribbon"] = { month = "november", type = "ribbon", pos = { x = 1, y = 4 } },
    ["Willow"] = { month = "november", type = "chaff", pos = { x = 3, y = 4 } },

    ["Paulownia with Phoenix"] = { month = "december", type = "light", pos = { x = 4, y = 4 } },
    ["Paulownia"] = { month = "december", type = "chaff", pos = { x = 6, y = 4 } },
    ["Paulownia_2"] = { month = "december", type = "chaff", pos = { x = 8, y = 4 } },
    ["Paulownia_3"] = { month = "december", type = "chaff", pos = { x = 0, y = 5 } },
}

JoyousSpring.hanafuda_pool = {}

for key, _ in pairs(JoyousSpring.hanafuda_cards) do
    table.insert(JoyousSpring.hanafuda_pool, key)
end

JoyousSpring.get_hanafuda = function(card, default)
    if not SMODS.has_enhancement(card, "m_joy_hanafuda") then
        return default and JoyousSpring.hanafuda_cards[default] or nil, default
    end
    if not card.ability.extra.hanafuda then
        sendErrorMessage("Hanafuda not initialized correctly")
        return default and JoyousSpring.hanafuda_cards[default] or nil, default
    end
    return JoyousSpring.hanafuda_cards[card.ability.extra.hanafuda], card.ability.extra.hanafuda
end

JoyousSpring.hanafuda_is_same_month = function(card, other_card)
    return JoyousSpring.get_hanafuda(card) and JoyousSpring.get_hanafuda(other_card) and
        JoyousSpring.get_hanafuda(card).month == JoyousSpring.get_hanafuda(other_card).month
end

SMODS.Enhancement {
    key = "hanafuda",
    atlas = "hanafuda",
    pos = { x = 0, y = 0 },
    config = { extra = { hanafuda = nil, mult = { light = 20, animal = 10, ribbon = 5, chaff = 1 } } },
    loc_vars = function(self, info_queue, card)
        if card.fake_card then
            return { key = "m_joy_hanafuda_fake" }
        end
        local hanafuda = JoyousSpring.get_hanafuda(card, "Willow")
        local hanafuda_name = card.ability.extra.hanafuda:match("(.+)_%d+$") or
            card.ability.extra.hanafuda
        return {
            vars = { localize("k_joy_hanafuda_" .. hanafuda_name), localize("k_joy_hanafuda_" .. hanafuda.month), localize("k_joy_hanafuda_" .. hanafuda.type), card.ability.extra.mult[hanafuda.type or "chaff"], box_colours = { G.C.UI.BACKGROUND_WHITE, lighten(G.C.JOY.SPELL, 0.9) } },
            key = hanafuda.type == 'chaff' and "m_joy_hanafuda_chaff" or nil
        }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play and card.ability.extra.hanafuda then
            if not SMODS.PokerHands[context.scoring_name].joy_koi_koi and JoyousSpring.get_hanafuda(card).type ~= "chaff" then
                local has_same_month = false
                for _, pcard in ipairs(context.scoring_hand) do
                    if card ~= pcard and JoyousSpring.hanafuda_is_same_month(card, pcard) then
                        has_same_month = true
                    end
                end
                if not has_same_month then
                    return
                end
            end
            return {
                mult = card.ability.extra.mult[JoyousSpring.get_hanafuda(card).type]
            }
        end
        if context.modify_scoring_hand and context.other_card == card and
            JoyousSpring.get_hanafuda(card).type == "chaff" then
            local scoring_name, _ = G.FUNCS.get_poker_hand_info(context.full_hand)
            return {
                add_to_hand = SMODS.PokerHands[scoring_name].joy_koi_koi and true or nil
            }
        end
    end,
    set_ability = function(self, card, initial, delay_sprites)
        card.ability.extra.hanafuda = card.ability.extra.hanafuda or
            pseudorandom_element(JoyousSpring.hanafuda_pool, 'joy_hanafuda')

        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                card.children.center:set_sprite_pos(JoyousSpring.get_hanafuda(card, "Willow").pos)
                return true
            end)
        }))
    end,
    set_sprites = function(self, card, front)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                card.children.center:set_sprite_pos(JoyousSpring.get_hanafuda(card, "Willow").pos)
                return true
            end)
        }))
    end
}

SMODS.Consumable {
    key = "cardian_gathering",
    set = "Tarot",
    atlas = "cardian",
    discovered = true,
    pos = { x = 3, y = 3 },
    config = { max_highlighted = 3, mod_conv = 'm_joy_hanafuda' },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.mod_conv]
        return { vars = { card.ability.max_highlighted } }
    end,
}

--#endregion
