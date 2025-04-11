---EFFECTS

--#region Effect utils

local SMODS_calculate_context_ref = SMODS.calculate_context
function SMODS.calculate_context(context, return_table)
    -- The area seems to be destryoed too early when the game restarts
    if JoyousSpring.field_spell_area and not JoyousSpring.field_spell_area.cards then return {} end
    JoyousSpring.calculate_context(context)
    return SMODS_calculate_context_ref(context, return_table)
end

---Does global effects when a context is being calculated
---@param context table
JoyousSpring.calculate_context = function(context)
    -- Global counter for destroyed cards
    if context.remove_playing_cards then
        G.GAME.joy_cards_destroyed = G.GAME.joy_cards_destroyed and
            (G.GAME.joy_cards_destroyed + #context.removed) or #context.removed
    end

    -- Global counter for summoned cards
    if context.joy_summon then
        G.GAME.joy_summoned_count = G.GAME.joy_summoned_count or {}
        G.GAME.joy_summoned_count["Total"] = (G.GAME.joy_summoned_count["Total"] or 0) +
            1
        G.GAME.joy_summoned_count[context.joy_summon_type] = (G.GAME.joy_summoned_count[context.joy_summon_type] or 0) +
            1

        G.GAME.joy_summoned_count_round = G.GAME.joy_summoned_count_round or {}
        G.GAME.joy_summoned_count_round["Total"] = (G.GAME.joy_summoned_count_round["Total"] or 0) +
            1
        G.GAME.joy_summoned_count_round[context.joy_summon_type] = (G.GAME.joy_summoned_count_round[context.joy_summon_type] or 0) +
            1
    end

    -- Global counter for flipped cards
    if context.joy_card_flipped then
        G.GAME.joy_flipped_count = G.GAME.joy_flipped_count or {}
        G.GAME.joy_flipped_count["Total"] = (G.GAME.joy_flipped_count["Total"] or 0) + 1
        if JoyousSpring.is_playing_card(context.joy_card_flipped) then
            G.GAME.joy_flipped_count["Playing Card"] = (G.GAME.joy_flipped_count["Playing Card"] or 0) + 1
        end
        G.GAME.joy_flipped_count[context.joy_card_flipped.ability.set] = (G.GAME.joy_flipped_count[context.joy_card_flipped.ability.set] or 0) +
            1
    end

    --Global count for pendulum usage
    if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
        G.GAME.joy_pendulum_count = (G.GAME.joy_pendulum_count or 0) + 1
    end

    -- Return from Banishment
    if context.setting_blind then
        if G.GAME.blind and G.GAME.blind.boss then
            while #JoyousSpring.banish_boss_selected_area.cards > 0 do
                JoyousSpring.return_from_banish(JoyousSpring.banish_boss_selected_area.cards[1])
            end
        end
        while #JoyousSpring.banish_blind_selected_area.cards > 0 do
            JoyousSpring.return_from_banish(JoyousSpring.banish_blind_selected_area.cards[1])
        end
    end
    if context.end_of_round and context.game_over == false then
        if G.GAME.blind and G.GAME.blind.boss then
            while #JoyousSpring.banish_end_of_ante_area.cards > 0 do
                JoyousSpring.return_from_banish(JoyousSpring.banish_end_of_ante_area.cards[1])
            end
        end
        while #JoyousSpring.banish_end_of_round_area.cards > 0 do
            JoyousSpring.return_from_banish(JoyousSpring.banish_end_of_round_area.cards[1])
        end
    end

    -- Reset counts
    if context.end_of_round and context.game_over == false then
        G.GAME.joy_summoned_count_round = {}

        for _, joker in ipairs(G.jokers.cards) do
            if JoyousSpring.is_monster_card(joker) then
                joker.ability.extra.joyous_spring.detached_count_round = 0
            end
        end
    end

    -- Add extra pack for Extra YGO Booster config
    if context.starting_shop and JoyousSpring.config.extra_ygo_booster then
        local choices = {
            "p_joy_monster_pack",
            "p_joy_jumbo_monster_pack",
            "p_joy_mega_monster_pack",
            "p_joy_extra_pack",
            "p_joy_jumbo_extra_pack",
            "p_joy_mega_extra_pack",
        }
        SMODS.add_booster_to_shop(pseudorandom_element(choices, pseudoseed("JoyousSpring")) or "p_joy_monster_pack")
    end
end

local game_init_game_object_ref = Game.init_game_object
function Game:init_game_object()
    local ret = game_init_game_object_ref(self)
    ret.joy_tributed_cards = {}
    ret.current_round.joy_tributed_cards = {}
    return ret
end

function SMODS.current_mod.reset_game_globals(run_start)
    G.GAME.current_round.joy_tributed_cards = {}
end

JoyousSpring.count_as_tributed = function(card)
    if not G.GAME.joy_tributed_cards[card.config.center.key] then
        G.GAME.joy_tributed_cards[card.config.center.key] = {
            set = card.ability.set,
            count = 0
        }
    end
    if not G.GAME.current_round.joy_tributed_cards[card.config.center.key] then
        G.GAME.current_round.joy_tributed_cards[card.config.center.key] = {
            set = card.ability.set,
            count = 0
        }
    end
    G.GAME.joy_tributed_cards[card.config.center.key].count = G.GAME.joy_tributed_cards[card.config.center.key]
        .count + 1
    G.GAME.current_round.joy_tributed_cards[card.config.center.key].count = G.GAME.current_round.joy_tributed_cards
        [card.config.center.key].count + 1
end

JoyousSpring.tribute = function(card, card_list)
    if not card_list then return end

    for _, material in ipairs(card_list) do
        JoyousSpring.count_as_tributed(material)
        SMODS.calculate_context({ joy_tributed = true, joy_card = material, joy_source = card })
        material.getting_sliced = true
        material:start_dissolve()
    end
end

---Changes a card's ability with a little animation
---@param card Card
---@param other_key string
---@param keep_materials boolean?
---@param summon_type string?
---@param summon_materials Card[]|string[]?
JoyousSpring.transform_card = function(card, other_key, keep_materials, summon_type, summon_materials)
    local joyous_spring_table = card.ability.extra.joyous_spring
    local revived = joyous_spring_table.revived
    local is_free = joyous_spring_table.is_free
    local summoned = joyous_spring_table.summoned
    local original_summon_materials = joyous_spring_table.summon_materials
    local xyz_materials = joyous_spring_table.xyz_materials
    local material_effects = joyous_spring_table.material_effects
    local original_key = card.config.center.key
    SMODS.calculate_context({
        joy_transform_summon = true,
        joy_card = card,
        joy_summon_materials = summon_materials,
        joy_summon_type =
            summon_type,
    })
    G.E_MANAGER:add_event(Event({
        trigger = "after",
        delay = 0.15,
        func = function()
            card:set_ability(G.P_CENTERS[other_key])
            play_sound("card1")
            card:juice_up(0.3, 0.3)
            local joyous_spring_table = card.ability.extra.joyous_spring
            joyous_spring_table.is_free = is_free
            joyous_spring_table.revived = revived
            joyous_spring_table.summoned = summoned

            if summon_type then
                joyous_spring_table.summoned = true
                SMODS.calculate_context({
                    joy_summon = true,
                    joy_card = card,
                    joy_summon_materials = summon_materials,
                    joy_summon_type =
                        summon_type
                })
                card.ability.extra.joyous_spring.summon_materials = { original_key }
                card.ability.extra.joyous_spring.xyz_materials = 1
                card.joy_transforming = original_key
                JoyousSpring.transfer_abilities(card, original_key, card, summon_materials)
                card.joy_transforming = nil
                for _, joker in ipairs(summon_materials or {}) do
                    if type(joker) == "string" then
                        table.insert(card.ability.extra.joyous_spring.summon_materials, joker)
                        JoyousSpring.transfer_abilities(card, joker, nil, summon_materials)
                    else
                        table.insert(card.ability.extra.joyous_spring.summon_materials, joker.config.center.key)
                        JoyousSpring.transfer_abilities(card, joker.config.center.key, joker, summon_materials)
                    end

                    card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
                    if type(joker) ~= "string" and JoyousSpring.is_summon_type(joker, "XYZ") then
                        for _, material in ipairs(joker.ability.extra.joyous_spring.summon_materials) do
                            table.insert(card.ability.extra.joyous_spring.summon_materials, material)
                        end
                        card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials +
                            joker.ability.extra.joyous_spring.xyz_materials
                    end
                end
            end

            if keep_materials then
                for _, material in ipairs(original_summon_materials or {}) do
                    table.insert(joyous_spring_table.summon_materials, material)
                end
                joyous_spring_table.xyz_materials = (joyous_spring_table.xyz_materials or 0) + xyz_materials
                for _, material in ipairs(material_effects or {}) do
                    table.insert(joyous_spring_table.material_effects, material)
                end
            end

            card:set_cost()

            if summon_type == "XYZ" then
                card.children.xyz_materials = JoyousSpring.create_UIBox_xyz_materials(card)
            end
            return true
        end,
    }))
end

---Creates cards with "permanent" debuffs
---@param card Card|string
---@param source string?
---@param edition any
---@return Card
JoyousSpring.create_perma_debuffed_card = function(card, source, edition)
    if type(card) == "string" then
        local added_card = SMODS.create_card({
            key = card,
            edition = edition or {}
        })
        SMODS.debuff_card(added_card, true, source)
        if JoyousSpring.is_monster_card(added_card) then
            added_card.ability.extra.joyous_spring.perma_debuffed = true
        end
        added_card:set_cost()
        JoyousSpring.create_summon(added_card)

        return added_card
    else
        SMODS.debuff_card(card, true, source)
        if JoyousSpring.is_monster_card(card) then
            card.ability.extra.joyous_spring.perma_debuffed = true
        end
        card:set_cost()
        return card
    end
end

---Creates a random playing card and adds it to hand
---@param enhanced_prob number? Probability of enhancements
---@param silent boolean?
---@param colours table?
---@param seed number?
JoyousSpring.create_random_playing_card = function(enhanced_prob, silent, colours, seed, ranks, suits)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.3,
        func = function()
            local _rank = pseudorandom_element(
                ranks or { 'A', '2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K' },
                seed or pseudoseed('JoyousSpring')) or 'A'
            local _suit = pseudorandom_element(suits or { 'S', 'H', 'D', 'C' }, seed or pseudoseed('JoyousSpring')) or
                'S'
            local cen_pool = {}
            for k, v in pairs(G.P_CENTER_POOLS["Enhanced"]) do
                if v.key ~= 'm_stone' then
                    cen_pool[#cen_pool + 1] = v
                end
            end
            local enhanced = enhanced_prob and enhanced_prob >= 1 and
                (pseudorandom(seed or pseudoseed('JoyousSpring')) < 1 / enhanced_prob and true) or false
            local added_card = create_playing_card(
                {
                    front = G.P_CARDS[_suit .. '_' .. _rank],
                    center = enhanced and pseudorandom_element(cen_pool,
                        seed or pseudoseed('JoyousSpring')) or nil
                },
                G.hand,
                nil,
                silent,
                colours or { G.C.JOY.EFFECT }
            )
            SMODS.calculate_context({ playing_card_added = true, cards = { added_card } })
            return true
        end
    }))
end

---Sets cost of a card after Card:set_cost, if necessary
---Use joy_set_cost in the center to modify that card's cost and sell_cost
---@param card Card
JoyousSpring.set_cost = function(card)
    if JoyousSpring.is_monster_card(card) then
        if JoyousSpring.is_perma_debuffed(card) then
            card.sell_cost = 1
        elseif JoyousSpring.is_summoned(card) then
            card.sell_cost = card.cost + (card.ability.extra_value or 0)
        elseif JoyousSpring.is_revived(card) then
            card.sell_cost = 1 + (card.ability.extra_value or 0)
        end
        if card.config.center.joy_set_cost then
            card.config.center.joy_set_cost(card)
        end
        if JoyousSpring.is_free(card) then
            card.cost = 0
        end
    end
    if card and G.jokers then
        for _, joker in ipairs(G.jokers.cards) do
            if not joker.debuff and joker.config.center.joy_modify_cost then
                joker.config.center.joy_modify_cost(joker, card)
            end
            if JoyousSpring.is_monster_card(joker) and not joker.debuff and joker.ability.extra.joyous_spring.material_effects and next(joker.ability.extra.joyous_spring.material_effects) then
                for material_key, config in pairs(joker.ability.extra.joyous_spring.material_effects) do
                    local material_center = G.P_CENTERS[material_key]

                    if material_center and material_center.joy_transfer_modify_cost then
                        material_center:joy_transfer_modify_cost(joker, card, config)
                    end
                end
            end
        end
        if JoyousSpring.field_spell_area then
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                if not joker.debuff and joker.config.center.joy_modify_cost then
                    joker.config.center.joy_modify_cost(joker, card)
                end
            end
        end
    end
    if card.joy_modify_cost then
        if card.joy_modify_cost.cost then
            card.cost = card.joy_modify_cost.cost
        end
        if card.joy_modify_cost.sell_cost then
            card.sell_cost = card.joy_modify_cost.sell_cost
        end
    end
end

G.FUNCS.joy_detach_material = function(e)
    local card = e.config.ref_table
    local detach = card.ability.extra.detach or 1
    if not card.debuff and not ((G.play and #G.play.cards > 0) or
            (G.CONTROLLER.locked) or
            (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and JoyousSpring.get_xyz_materials(card) >= detach then
        SMODS.calculate_context({ joy_detach = true, joy_detaching_card = card })
    end
end

local create_card_for_shop_ref = create_card_for_shop
function create_card_for_shop(area)
    local card = create_card_for_shop_ref(area)
    if card and G.jokers then
        for _, joker in ipairs(G.jokers.cards) do
            if not joker.debuff and joker.config.center.joy_create_card_for_shop then
                joker.config.center.joy_create_card_for_shop(joker, card, area)
            end
        end
        if JoyousSpring.field_spell_area then
            for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
                if not joker.debuff and joker.config.center.joy_create_card_for_shop then
                    joker.config.center.joy_create_card_for_shop(joker, card, area)
                end
            end
        end
    end
    return card
end

local cardarea_emplace_ref = CardArea.emplace
function CardArea:emplace(card, location, stay_flipped)
    cardarea_emplace_ref(self, card, location, JoyousSpring.is_monster_card(card) or stay_flipped)
end

local card_add_to_deck_ref = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    if not self.added_to_deck and self.ability.set == "Joker" and not JoyousSpring.is_field_spell(self) then
        for _, joker in ipairs(G.jokers.cards) do
            if not joker.debuff and joker.config.center.joy_apply_to_jokers_added then
                joker.config.center.joy_apply_to_jokers_added(joker, self)
            end
            if JoyousSpring.is_monster_card(joker) and not joker.debuff and joker.ability.extra.joyous_spring.material_effects and next(joker.ability.extra.joyous_spring.material_effects) then
                for material_key, config in pairs(joker.ability.extra.joyous_spring.material_effects) do
                    local material_center = G.P_CENTERS[material_key]

                    if material_center and material_center.joy_transfer_apply_to_jokers_added then
                        material_center:joy_transfer_apply_to_jokers_added(joker, self, config)
                    end
                end
            end
        end
        for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
            if not joker.debuff and joker.config.center.joy_apply_to_jokers_added then
                joker.config.center.joy_apply_to_jokers_added(joker, self)
            end
        end
    end
    card_add_to_deck_ref(self, from_debuff)
end

local stay_flipped_ref = Blind.stay_flipped
function Blind:stay_flipped(to_area, card, from_area)
    local ret = stay_flipped_ref(self, to_area, card, from_area)
    if ret then
        SMODS.calculate_context({ joy_card_flipped = card })
    end
    return ret
end

JoyousSpring.calculate_hand_highlight_limit = function(count_card, remove_card)
    G.GAME.joy_original_hand_limit = G.GAME.joy_original_hand_limit or G.hand.config.highlighted_limit or 5
    local maxlimit = -1
    if count_card and not count_card.debuff and count_card.config.center.joy_set_hand_highlight_limit then
        local new_limit = count_card.config.center.joy_set_hand_highlight_limit(joker) or -1
        maxlimit = (new_limit > maxlimit) and new_limit or maxlimit
    end
    for _, joker in ipairs(G.jokers.cards) do
        if joker ~= remove_card and not joker.debuff and joker.config.center.joy_set_hand_highlight_limit then
            local new_limit = joker.config.center.joy_set_hand_highlight_limit(joker) or -1
            maxlimit = (new_limit > maxlimit) and new_limit or maxlimit
        end
    end
    for _, joker in ipairs(JoyousSpring.field_spell_area.cards) do
        if joker ~= remove_card and not joker.debuff and joker.config.center.joy_set_hand_highlight_limit then
            local new_limit = joker.config.center.joy_set_hand_highlight_limit(joker)
            maxlimit = (new_limit > maxlimit) and new_limit or maxlimit
        end
    end

    G.hand.config.highlighted_limit = (maxlimit > -1) and maxlimit or G.GAME.joy_original_hand_limit
end

--#endregion

--#region Transfer Abilities

JoyousSpring.transfer_abilities = function(card, material_key, other_card, materials)
    local material_center = G.P_CENTERS[material_key]
    if not card or not material_center or not material_center.joy_can_transfer_ability or (other_card and other_card.debuff) then
        return
    end
    if material_center:joy_can_transfer_ability(card, other_card) then
        local was_material = card.ability.extra.joyous_spring.material_effects[material_key] and true or false
        card.ability.extra.joyous_spring.material_effects[material_key] = not was_material and
            (material_center.joy_transfer_config and material_center:joy_transfer_config(card) or {}) or
            card.ability.extra.joyous_spring.material_effects[material_key]
        if material_center.joy_transfer_add_to_deck then
            material_center:joy_transfer_add_to_deck(card,
                card.ability.extra.joyous_spring.material_effects[material_key], other_card, false, materials,
                was_material)
        end
    end
end

---Calculate transferred abilities
---@param card Card|table
---@param context CalcContext
---@param effects table?
---@return table?
JoyousSpring.calculate_transfer_abilities = function(card, context, effects)
    if card.debuff or (not card.ability.extra.joyous_spring.material_effects or not next(card.ability.extra.joyous_spring.material_effects)) then
        return effects
    end
    local transfer_effects = {}

    for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
        local material_center = G.P_CENTERS[material_key]

        if material_center and material_center.joy_transfer_ability_calculate then
            local material_effect = material_center:joy_transfer_ability_calculate(card, context, config)
            if material_effect then
                transfer_effects[#transfer_effects + 1] = material_effect
            end
        end
    end

    if #transfer_effects == 0 then return effects end

    if not effects then effects = table.remove(transfer_effects, 1) end

    local main_effect = effects
    for _, eff in ipairs(transfer_effects) do
        while main_effect.extra ~= nil do
            main_effect = main_effect.extra
        end
        main_effect.extra = eff
    end

    return effects
end

local card_calculate_joker_ref = Card.calculate_joker
function Card:calculate_joker(context)
    if JoyousSpring.is_monster_card(self) then
        if self.debuff then return nil end
        local obj = self.config.center
        local o, t

        if obj.calculate and type(obj.calculate) == 'function' then
            o, t = obj:calculate(self, context)
        end

        o = JoyousSpring.calculate_transfer_abilities(self, context, o)
        if o or t then return o, t end
    else
        return card_calculate_joker_ref(self, context)
    end
end

JoyousSpring.transfer_add_to_deck = function(card, from_debuff)
    if card.debuff or (not card.ability.extra.joyous_spring.material_effects or not next(card.ability.extra.joyous_spring.material_effects)) then
        return
    end

    for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
        local material_center = G.P_CENTERS[material_key]

        if material_center and material_center.joy_transfer_add_to_deck then
            material_center:joy_transfer_add_to_deck(card, config, nil, from_debuff)
        end
    end
end

local card_add_to_deck_ref = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    local not_added = not self.added_to_deck
    card_add_to_deck_ref(self, from_debuff)

    if JoyousSpring.is_monster_card(self) and not_added then
        JoyousSpring.transfer_add_to_deck(self, from_debuff)
    end
end

JoyousSpring.transfer_remove_from_deck = function(card, from_debuff)
    if card.debuff or (not card.ability.extra.joyous_spring.material_effects or not next(card.ability.extra.joyous_spring.material_effects)) then
        return
    end

    for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
        local material_center = G.P_CENTERS[material_key]

        if material_center and material_center.joy_transfer_remove_from_deck then
            material_center:joy_transfer_remove_from_deck(card, config, from_debuff)
        end
    end
end

local card_remove_from_deck_ref = Card.remove_from_deck
function Card:remove_from_deck(from_debuff)
    local added = self.added_to_deck
    card_remove_from_deck_ref(self, from_debuff)

    if JoyousSpring.is_monster_card(self) and added then
        JoyousSpring.transfer_remove_from_deck(self, from_debuff)
    end
end

JoyousSpring.transfer_calc_dollar_bonus = function(card)
    if card.debuff or (not card.ability.extra.joyous_spring.material_effects or not next(card.ability.extra.joyous_spring.material_effects)) then
        return 0
    end

    local bonus = 0

    for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
        local material_center = G.P_CENTERS[material_key]

        if material_center and material_center.joy_transfer_calc_dollar_bonus then
            bonus = bonus + (material_center:joy_transfer_calc_dollar_bonus(card, config) or 0)
        end
    end

    return bonus
end

local card_calculate_dollar_bonus_ref = Card.calculate_dollar_bonus
function Card:calculate_dollar_bonus()
    local ret = card_calculate_dollar_bonus_ref(self)

    if JoyousSpring.is_monster_card(self) then
        local add = JoyousSpring.transfer_calc_dollar_bonus(self)
        if add > 0 then
            ret = (ret or 0) + JoyousSpring.transfer_calc_dollar_bonus(self)
        end
    end

    return ret
end

--#endregion

--#region UI

JoyousSpring.create_UIBox_effect_selection = function(card, text, select_text)
    local colour = G.C.JOY.EFFECT
    return {
        n = G.UIT.ROOT,
        config = {
            align = "cm",
            minw = G.ROOM.T.w * 5,
            minh = G.ROOM.T.h * 5,
            padding = 0.1,
            r = 0.1,
            colour = { colour[1], colour[2], colour[3], 0.7 }
        },
        nodes = {
            {
                n = G.UIT.R,
                config = {
                    align = "cm",
                    minh = 1,
                    r = 0.3,
                    padding = 0.07,
                    minw = 1,
                    colour = lighten(colour, 0.4),
                    emboss = 0.1
                },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = {
                            align = "cm",
                            minh = 1,
                            r = 0.2,
                            padding = 0.05,
                            minw = 1,
                            colour = G.C.L_BLACK
                        },
                        nodes = {
                            {
                                n = G.UIT.R,
                                config = {
                                    align = "cm",
                                    padding = 0.05,
                                    minw = 7
                                },
                                nodes = {
                                    {
                                        n = G.UIT.O,
                                        config = {
                                            object = DynaText({
                                                string = { text or localize("k_joy_select_tributes") },
                                                colours = { G.C.UI.TEXT_LIGHT },
                                                bump = true,
                                                silent = true,
                                                pop_in = 0,
                                                pop_in_rate = 4,
                                                minw = 10,
                                                shadow = true,
                                                y_offset = -0.6,
                                                scale = 0.8
                                            })
                                        }
                                    }
                                }

                            },
                            {
                                n = G.UIT.R,
                                config = {
                                    align = "cm",
                                    padding = 0.2,
                                    minw = 7
                                },
                                nodes = {
                                    {
                                        n = G.UIT.R,
                                        config = {
                                            r = 0.1,
                                            minw = 7,
                                            minh = 5,
                                            align = "cm",
                                            padding = 1,
                                            colour = G.C.BLACK
                                        },
                                        nodes = {
                                            {
                                                n = G.UIT.R,
                                                config = {
                                                    align = "cm",
                                                    padding = 0.07,
                                                    no_fill = true,
                                                    scale = 1
                                                },
                                                nodes = {
                                                    {
                                                        n = G.UIT.O,
                                                        config = {
                                                            object = JoyousSpring.summon_effect_area
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            },
                            {
                                n = G.UIT.R,
                                config = {
                                    align = "cm",
                                    padding = 0.1,
                                    minw = 7,
                                    colour = G.C.CLEAR,
                                },
                                nodes = {
                                    {
                                        n = G.UIT.C,
                                        config = {
                                            ref_table = card,
                                            align = "cm",
                                            minh = 0.7,
                                            minw = 10,
                                            padding = 0.1,
                                            r = 0.1,
                                            hover = true,
                                            colour = G.C.UI.BACKGROUND_INACTIVE,
                                            button = 'joy_exit_select_effect',
                                            shadow = true,
                                            func = 'joy_can_select_effect',
                                            focus_args = {
                                                nav = 'wide',
                                                button = 'rightshoulder'
                                            }
                                        },
                                        nodes = {
                                            {
                                                n = G.UIT.R,
                                                config = { align = "cm", padding = 0, no_fill = true },
                                                nodes = {
                                                    {
                                                        n = G.UIT.T,
                                                        config = {
                                                            text = select_text or localize('k_joy_select'),
                                                            scale = 0.5,
                                                            colour = G.C.UI.TEXT_LIGHT,
                                                            shadow = true,
                                                            func = 'set_button_pip',
                                                            focus_args = {
                                                                button = 'rightshoulder'
                                                            }
                                                        }
                                                    }
                                                }
                                            },
                                        }
                                    },
                                    {
                                        n = G.UIT.C,
                                        config = {
                                            align = "cm",
                                            minh = 0.7,
                                            minw = 3,
                                            padding = 0.1,
                                            r = 0.1,
                                            hover = true,
                                            colour = colour,
                                            button = "exit_overlay_menu",
                                            shadow = true,
                                            focus_args = {
                                                nav = 'wide',
                                                button = 'b'
                                            }
                                        },
                                        nodes = {
                                            {
                                                n = G.UIT.R,
                                                config = { align = "cm", padding = 0, no_fill = true },
                                                nodes = {
                                                    {
                                                        n = G.UIT.T,
                                                        config = {
                                                            text = localize('b_back'),
                                                            scale = 0.5,
                                                            colour = G.C.UI.TEXT_LIGHT,
                                                            shadow = true,
                                                            func = 'set_button_pip',
                                                            focus_args = {
                                                                button = 'b'
                                                            }
                                                        }
                                                    }
                                                }
                                            },
                                        }
                                    },
                                }
                            },
                        }
                    },
                }
            },
        }
    }
end

JoyousSpring.create_overlay_effect_selection = function(card, card_list, min, max, text, select_text)
    local highlight_limit = max or min or 1

    JoyousSpring.summon_effect_area = CardArea(
        0,
        0,
        G.CARD_W * 4.95,
        G.CARD_H,
        {
            type = 'summon_materials',
            highlight_limit = highlight_limit,
        }
    )

    for _, joker in ipairs(card_list) do
        local added_joker = copy_card(joker)
        if JoyousSpring.is_monster_card(joker) then
            for k, v in pairs(joker.ability.extra.joyous_spring) do
                added_joker.ability.extra.joyous_spring[k] = v
            end
            if joker.config.center.key == "j_joy_token" then
                added_joker.children.center.atlas = G.ASSET_ATLAS[joker.ability.extra.joyous_spring.token_atlas]
                added_joker.children.center.sprite_pos = joker.ability.extra.joyous_spring.token_sprite_pos
                added_joker.children.center:reset()
            end
        end
        JoyousSpring.summon_effect_area:emplace(added_joker)
        if joker.facing == 'back' then
            added_joker.facing = 'back'
            added_joker.sprite_facing = 'back'
        end
        if joker.ability.set == 'Joker' then
            for i, og_joker in ipairs(G.jokers.cards) do
                if og_joker == joker then
                    added_joker.joy_g_jokers_pos = i
                end
            end
        else
            for i, og_consumeable in ipairs(G.consumeables.cards) do
                if og_consumeable == joker then
                    added_joker.joy_g_consumeables_pos = i
                end
            end
        end
    end

    card.joy_min_selection = min
    card.joy_max_selection = max

    G.FUNCS.overlay_menu({
        definition = JoyousSpring.create_UIBox_effect_selection(card, text, select_text)
    })
end

G.FUNCS.joy_activate_effect = function(e)
    local card = e.config.ref_table

    SMODS.calculate_context({ joy_activate_effect = true, joy_activated_card = card })
    card:highlight(false)
end

G.FUNCS.joy_can_activate = function(e)
    local card = e.config.ref_table

    if card and JoyousSpring.can_activate(card) then
        e.config.colour = G.C.JOY.EFFECT
        e.config.button = 'joy_activate_effect'
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.joy_can_select_effect = function(e)
    local card = e.config.ref_table

    if card and JoyousSpring.summon_effect_area and next(JoyousSpring.summon_effect_area.highlighted) then
        local count = #JoyousSpring.summon_effect_area.highlighted
        if (card.joy_min_selection and count < card.joy_min_selection) or (card.joy_max_selection and count > card.joy_max_selection) then
            e.config.colour = G.C.UI.BACKGROUND_INACTIVE
            e.config.button = nil
        else
            e.config.colour = G.C.JOY.EFFECT
            e.config.button = 'joy_exit_select_effect'
        end
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.joy_exit_select_effect = function(e)
    if not G.OVERLAY_MENU then return end

    local card = e.config.ref_table

    if card and JoyousSpring.summon_effect_area and next(JoyousSpring.summon_effect_area.highlighted) then
        local material_list = {}
        for _, material in ipairs(JoyousSpring.summon_effect_area.highlighted) do
            if material.joy_g_jokers_pos then
                table.insert(material_list, G.jokers.cards[material.joy_g_jokers_pos])
            end
            if material.joy_g_consumeables_pos then
                table.insert(material_list, G.consumeables.cards[material.joy_g_consumeables_pos])
            end
        end
        JoyousSpring.open_extra_deck(true, false)
        SMODS.calculate_context({ joy_exit_effect_selection = true, joy_card = card, joy_selection = material_list })
    end
    G.FUNCS.exit_overlay_menu()
end

--#endregion
