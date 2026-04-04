---EFFECTS

--#region Effect utils

local SMODS_calculate_context_ref = SMODS.calculate_context
function SMODS.calculate_context(context, return_table, no_resolve)
    JoyousSpring.calculate_context(context)
    return SMODS_calculate_context_ref(context, return_table, no_resolve)
end

---Does global effects when a context is being calculated
---@param context CalcContext
JoyousSpring.calculate_context = function(context)
    if not JoyousSpring.field_spell_area then return end
    if context.joy_pre_setting_blind then
        -- Check if card is flipped by blind
        for _, joker in ipairs(G.jokers.cards) do
            joker.joy_faceup_before_blind = joker.facing == "front"
        end
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
        -- Update Blind effects area
        if G.GAME.joy_disabled_blinds[G.GAME.blind.config.blind.key] and not G.GAME.blind.disabled then
            G.GAME.blind:disable()
            G.GAME.joy_already_disabled_blinds[G.GAME.blind.config.blind.key] = true
        else
            JoyousSpring.update_blind_effects_area()
        end
    end
    if context.end_of_round and context.game_over == false and not context.individual and not context.repetition then
        for _, joker in ipairs(JoyousSpring.banish_boss_selected_area.cards) do
            joker:calculate_perishable()
        end
        for _, joker in ipairs(JoyousSpring.banish_blind_selected_area.cards) do
            joker:calculate_perishable()
        end
        if G.GAME.blind and G.GAME.blind.boss then
            while #JoyousSpring.banish_end_of_ante_area.cards > 0 do
                JoyousSpring.return_from_banish(JoyousSpring.banish_end_of_ante_area.cards[1])
            end
        else
            for _, joker in ipairs(JoyousSpring.banish_end_of_ante_area.cards) do
                joker:calculate_perishable()
            end
        end
        while #JoyousSpring.banish_end_of_round_area.cards > 0 do
            JoyousSpring.return_from_banish(JoyousSpring.banish_end_of_round_area.cards[1])
        end
        if JoyousSpring.side_deck_area then
            for _, joker in ipairs(JoyousSpring.side_deck_area.cards) do
                joker:calculate_perishable()
            end
        end
    end

    -- Excavate
    JoyousSpring.calculate_excavate(context)
end

SMODS.current_mod.calculate = function(self, context)
    -- Global counter for destroyed cards
    if context.remove_playing_cards then
        G.GAME.joy_cards_destroyed = G.GAME.joy_cards_destroyed and
            (G.GAME.joy_cards_destroyed + #context.removed) or #context.removed
        for _, pcard in ipairs(context.removed) do
            if pcard.glass_trigger then
                G.GAME.joy_glass_shattered = (G.GAME.joy_glass_shattered or 0) + 1
            end
        end
    end

    if context.joker_type_destroyed then
        G.GAME.joy_joker_cards_destroyed = (G.GAME.joy_joker_cards_destroyed or 0) + 1
    end

    -- Global counter for revived cards
    if context.joy_revived then
        G.GAME.joy_joker_cards_revived = (G.GAME.joy_joker_cards_revived or 0) + 1
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

    -- Global count for pendulum usage
    if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
        G.GAME.joy_pendulum_count = (G.GAME.joy_pendulum_count or 0) + 1
    end

    -- Reset check if card is flipped by blind
    if context.setting_blind then
        for _, joker in ipairs(G.jokers.cards) do
            joker.joy_faceup_before_blind = nil
        end
    end

    -- Add extra pack for Extra YGO Booster config
    if context.starting_shop and JoyousSpring.config.extra_ygo_booster then
        SMODS.add_booster_to_shop("p_joy_selection_pack")
    end

    -- Global probability hit counter
    if context.pseudorandom_result then
        if context.result then
            G.GAME.joy_probability_success = (G.GAME.joy_probability_success or 0) + 1
        else
            G.GAME.joy_probability_failure = (G.GAME.joy_probability_failure or 0) + 1
        end
    end

    -- Reset counts
    if context.end_of_round and context.game_over == false then
        G.GAME.joy_summoned_count_round = {}

        for _, joker in ipairs(G.jokers.cards) do
            if JoyousSpring.is_monster_card(joker) and JoyousSpring.has_joyous_table(joker) then
                joker.ability.extra.joyous_spring.detached_count_round = 0
            end
        end
    end

    if context.before then
        -- Check for hands contained in hands played
        G.GAME.joy_played = G.GAME.joy_played or {}
        for key, hands in pairs(context.poker_hands) do
            G.GAME.joy_played[key] = next(hands) and true or nil
        end
        G.GAME.joy_hanafuda_type_played = G.GAME.joy_hanafuda_type_played or {}
        G.GAME.joy_hanafuda_played = G.GAME.joy_hanafuda_played or {}
        for _, pcard in ipairs(context.scoring_hand) do
            local hanafuda, key = JoyousSpring.get_hanafuda(pcard)
            if hanafuda then
                G.GAME.joy_hanafuda_type_played[hanafuda.type] = (G.GAME.joy_hanafuda_type_played[hanafuda.type] or 0) +
                    1
                G.GAME.joy_hanafuda_played[key] = (G.GAME.joy_hanafuda_played[key] or 0) + 1
            end
        end
    end

    if context.ante_change and context.ante_end then
        -- Reset disabled blinds
        G.GAME.joy_disabled_blinds = {}
        G.GAME.joy_already_disabled_blinds = {}
        -- Reset zoodiac count
        G.GAME.joy_zoo_summoned = {}
    end

    -- Add temporary hand size
    if context.setting_blind and JoyousSpring.temporary_handsize then
        G.hand:change_size(JoyousSpring.temporary_handsize)
        G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) +
            JoyousSpring.temporary_handsize
        JoyousSpring.temporary_handsize = 0
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
    if run_start then
        G.GAME.joy_only_ygo_cards = JoyousSpring.config.only_ygo_cards
    end
    G.GAME.current_round.joy_tributed_cards = {}
    G.GAME.joy_purr_memory_apply = false
    G.GAME.joy_purr_friend_apply = false
end

local card_eval_status_text_ref = card_eval_status_text
function card_eval_status_text(card, ...)
    -- Disable messages for banished or side deck cards
    if JoyousSpring.is_banished(card) or card.area == JoyousSpring.side_deck_area then return end
    return card_eval_status_text_ref(card, ...)
end

---Count card as being tributed
---@param card Card|table
JoyousSpring.count_as_tributed = function(card, for_ritual)
    if not G.GAME.joy_tributed_cards[card.config.center.key] then
        G.GAME.joy_tributed_cards[card.config.center.key] = {
            set = card.ability.set,
            count = 0,
            for_ritual = 0
        }
    end
    if not G.GAME.current_round.joy_tributed_cards[card.config.center.key] then
        G.GAME.current_round.joy_tributed_cards[card.config.center.key] = {
            set = card.ability.set,
            count = 0,
            for_ritual = 0
        }
    end
    G.GAME.joy_tributed_cards[card.config.center.key].count = G.GAME.joy_tributed_cards[card.config.center.key]
        .count + 1
    G.GAME.current_round.joy_tributed_cards[card.config.center.key].count = G.GAME.current_round.joy_tributed_cards
        [card.config.center.key].count + 1
    if for_ritual then
        G.GAME.joy_tributed_cards[card.config.center.key].for_ritual =
            G.GAME.joy_tributed_cards[card.config.center.key].for_ritual + 1
        G.GAME.current_round.joy_tributed_cards[card.config.center.key].for_ritual =
            G.GAME.current_round.joy_tributed_cards[card.config.center.key].for_ritual + 1
    end
end

---Tribute a card
---@param card Card|table Source of the tributing
---@param card_list Card[]|table Cards to tribute
---@param for_ritual boolean? For a Ritual Summon
JoyousSpring.tribute = function(card, card_list, for_ritual)
    if not card_list then return end

    for _, material in ipairs(card_list) do
        JoyousSpring.count_as_tributed(material, for_ritual)
        JoyousSpring.destroy_cards(material, nil, true)
        SMODS.calculate_context({ joy_tributed = true, joy_card = material, joy_source = card })
    end
end

---Changes a card's ability with a little animation
---@param card Card
---@param other_key string
---@param keep_materials boolean?
---@param summon_type summon_type?
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
                for _, material in ipairs(summon_materials) do
                    local eval, post = material:calculate_joker(
                        {
                            joy_summon = true,
                            joy_card = card,
                            joy_summon_materials = summon_materials,
                            joy_material_self = true,
                            joy_summon_type = summon_type,
                        })
                    SMODS.trigger_effects({ eval, post }, material)
                end
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
        if JoyousSpring.is_monster_card(added_card) and JoyousSpring.has_joyous_table(added_card) then
            added_card.ability.extra.joyous_spring.perma_debuffed = true
        end
        added_card:set_cost()
        JoyousSpring.create_summon(added_card)

        return added_card
    else
        SMODS.debuff_card(card, true, source)
        if JoyousSpring.is_monster_card(card) and JoyousSpring.has_joyous_table(card) then
            card.ability.extra.joyous_spring.perma_debuffed = true
        end
        card:set_cost()
        return card
    end
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
        end
        if JoyousSpring.is_revived(card) then
            card.sell_cost = 1 + (card.ability.extra_value or 0)
        end
        if card.config.center.joy_set_cost then
            card.config.center.joy_set_cost(card)
        end
        if JoyousSpring.is_free(card) then
            card.cost = 0
        end
    end
    if card.ability.set == "joy_Opponent" then
        card.cost = 0
        card.sell_cost = 0
    end
    if card then
        JoyousSpring.calculate_prototype_function("modify_cost", {}, card)
    end
    if card.ability.joy_modify_cost then
        if card.ability.joy_modify_cost.cost then
            card.cost = card.ability.joy_modify_cost.cost
        end
        if card.ability.joy_modify_cost.sell_cost then
            card.sell_cost = card.ability.joy_modify_cost.sell_cost
        end
    end
end

G.FUNCS.joy_detach_material = function(e)
    local card = e.config.ref_table
    if JoyousSpring.can_detach(card) then
        SMODS.calculate_context({ joy_detach = true, joy_detaching_card = card })
    end
end

G.FUNCS.joy_can_detach = function(e)
    local card = e.config.ref_table

    if card and JoyousSpring.can_detach(card) then
        e.config.colour = G.C.JOY.XYZ
        e.config.button = 'joy_detach_material'
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

JoyousSpring.can_detach = function(card)
    return not card.debuff and not ((G.play and #G.play.cards > 0) or
            (G.CONTROLLER.locked) or
            (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and
        JoyousSpring.get_xyz_materials(card) >= (card.ability.extra.detach or 1) and
        (type(card.config.center.joy_can_detach) ~= "function" or card.config.center:joy_can_detach(card)) and true or
        false
end

---Detach material from Joker
---@param card Card|table
---@param value integer?
---@param silent boolean?
JoyousSpring.ease_detach = function(card, value, silent)
    if not JoyousSpring.is_summon_type(card, "XYZ") then
        return
    end
    local value = value or card.ability.extra.detach or 1
    card.ability.extra.joyous_spring.xyz_materials = math.max(0, card.ability.extra.joyous_spring.xyz_materials - value)
    card.ability.extra.joyous_spring.detached_count = card.ability.extra.joyous_spring.detached_count + value
    card.ability.extra.joyous_spring.detached_count_round = card.ability.extra.joyous_spring.detached_count_round + value

    SMODS.calculate_context({ joy_detached = true, joy_detaching_card = card, joy_detach_value = value })
    if not silent then
        SMODS.calculate_effect({ message = localize("k_joy_activated_ex") }, card)
    end
end

JoyousSpring.calculate_hand_highlight_limit = function()
    G.E_MANAGER:add_event(Event({
        func = function()
            G.GAME.joy_original_hand_limit = G.GAME.joy_original_hand_limit or G.hand.config.highlighted_limit or 5

            local maxlimit = JoyousSpring.calculate_prototype_function("set_hand_highlight_limit", {
                default_return = -1,
                return_func = function(new, original)
                    local new_limit = new or -1
                    return original(new_limit > original) and new_limit or original
                end
            })

            G.hand.config.highlighted_limit = math.max(G.GAME.starting_params.discard_limit,
                G.GAME.starting_params.play_limit, 5,
                maxlimit or G.GAME.joy_original_hand_limit)
            return true
        end
    }))
end

---Excavates (reveals) cards from the top of the deck
---@param amount number
---@param context CalcContext
JoyousSpring.excavate = function(amount, context)
    local amount = amount or 1
    local copied_cards = {}
    local original_cards = {}

    for i = 0, amount - 1 do
        if i >= #G.deck.cards then break end
        local added_card = copy_card(G.deck.cards[#G.deck.cards - i])
        added_card.T.x = G.deck.cards[1].T.x
        added_card.T.y = G.deck.cards[1].T.y
        added_card.VT.scale = 1
        added_card.VT.r = 0
        added_card.no_shadow = true
        added_card.ambient_tilt = 0
        added_card.facing = 'back'
        added_card.sprite_facing = 'back'

        added_card.states.click.can = false
        added_card.states.drag.can = false
        added_card.states.visible = false
        table.insert(copied_cards, added_card)
        table.insert(original_cards, G.deck.cards[#G.deck.cards - i])
    end

    if #copied_cards > 0 then
        SMODS.calculate_effect({ message = localize("k_joy_excavate") }, G.deck.cards[1])
        G.GAME.joy_excavated = true
    end

    for i, card in ipairs(copied_cards) do
        JoyousSpring.update_excavated_count(original_cards[i])

        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.5,
            func = (function()
                card.states.visible = true
                card:flip()
                return true
            end)
        }))
        SMODS.calculate_context({ joy_excavated = original_cards[i], joy_number = i, joy_other_context = context or {} })
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 2,
            func = (function()
                card:flip()
                return true
            end),
        }))
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 1,
            func = (function()
                card:remove()
                return true
            end)
        }))
    end
end

JoyousSpring.calculate_excavate = function(context)
    local maxlimit = JoyousSpring.calculate_prototype_function("set_excavate_count", {
        default_return = 0,
        return_func    = function(new, original)
            local new_limit = new or -1
            return (new_limit > original) and new_limit or original
        end
    }, context)

    if maxlimit > 0 then
        JoyousSpring.excavate(maxlimit, context)
    end
end

---Calculate flips effect activation
---@param card Card|table
---@param context CalcContext|table
---@return boolean `true` if it just activated its flip effect
JoyousSpring.calculate_flip_effect = function(card, context)
    if not card.ability.extra.joyous_spring.flip_active and ((context.joy_card_flipped and context.joy_card_flipped == card and card.facing == "front") or
            (context.setting_blind and context.main_eval and JoyousSpring.flip_effect_active(card))) then
        if card.facing == 'back' then
            JoyousSpring.flip(card)
        end
        card.ability.extra.joyous_spring.flip_active = true
        SMODS.calculate_effect({ message = localize("k_joy_flip_ex") }, card)
        SMODS.calculate_context({ joy_flip_activated = card, joy_other_context = context })
        return true
    end
    if not context.blueprint_card and context.end_of_round and context.main_eval and context.game_over == false then
        card.ability.extra.joyous_spring.flip_active = false
        if JoyousSpring.should_trap_flip(card) then
            JoyousSpring.flip(card)
            if card.facing == 'back' then
                SMODS.calculate_effect({ message = localize("k_joy_set") }, card)
            end
        end
    end
    return false
end

--#endregion

--#region Hooks

local g_funcs_evaluate_round_ref = G.FUNCS.evaluate_round
G.FUNCS.evaluate_round = function()
    g_funcs_evaluate_round_ref()
    SMODS.calculate_context({ joy_post_round_eval = true })
end

local create_card_for_shop_ref = create_card_for_shop
function create_card_for_shop(area)
    local card = create_card_for_shop_ref(area)
    if card then
        JoyousSpring.calculate_prototype_function("create_card_for_shop", {}, card, area)
    end
    return card
end

local cardarea_emplace_ref = CardArea.emplace
function CardArea:emplace(card, location, stay_flipped)
    cardarea_emplace_ref(self, card, location, JoyousSpring.is_monster_card(card) or stay_flipped)
    if self == JoyousSpring.opponent_area then
        JoyousSpring.handle_opponent_area_limit()
    end
end

local card_add_to_deck_ref = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    if not self.added_to_deck and self.ability.set == "Joker" and not JoyousSpring.is_field_spell(self) then
        JoyousSpring.calculate_prototype_function("apply_to_jokers_added", {}, self)
    end
    card_add_to_deck_ref(self, from_debuff)
    if G.shop_jokers and not G.OVERLAY_MENU then
        G.E_MANAGER:add_event(Event({
            func = (function()
                if G.shop_jokers and not G.OVERLAY_MENU then
                    for _, card in ipairs(G.shop_jokers.cards or {}) do
                        card:set_cost()
                    end
                end
                return true
            end)
        }))
    end
end

local stay_flipped_ref = Blind.stay_flipped
function Blind:stay_flipped(to_area, card, from_area)
    local ret = stay_flipped_ref(self, to_area, card, from_area)
    if ret then
        SMODS.calculate_context({ joy_card_flipped = card })
    end
    return ret
end

local card_flip_ref = Card.flip
function Card:flip()
    if not JoyousSpring.cannot_flip(self) then
        card_flip_ref(self)
        local is_play_area = false
        for _, area in ipairs(SMODS.get_card_areas('jokers')) do
            if self.area == area then
                is_play_area = true
                break
            end
        end
        if is_play_area or (G.hand and self.area == G.hand) then
            local source = JoyousSpring.joy_flip_source
            SMODS.calculate_context({
                joy_card_flipped = self,
                joy_source = source and type(source) == "table" and
                    JoyousSpring.is_monster_card(source) and source or nil
            })
        end
    end
end

---Modifies a card's listed numerator permanently.
---@param card Card|table
---@param add integer?
---@param mult number?
JoyousSpring.modify_probability_numerator = function(card, add, mult)
    if type(card) ~= "table" or not card.ability then return end
    if not JoyousSpring.get_extra_values(card) then card.ability.joy_extra_values = {} end
    add = add or 0
    mult = mult or 1

    card.ability.joy_extra_values.numerator_const = ((card.ability.joy_extra_values.numerator_const or 0) + add) * mult
    card.ability.joy_extra_values.numerator_mult = (card.ability.joy_extra_values.numerator_mult or 1) * mult

    SMODS.calculate_context { joy_modify_probability = true, joy_increased = not not (add >= 0 and mult >= 1), joy_card = card }
end

---Modifies a card's listed denominator permanently.
---@param card Card|table
---@param add integer?
---@param mult number?
JoyousSpring.modify_probability_denominator = function(card, add, mult)
    if type(card) ~= "table" or not card.ability then return end
    if not JoyousSpring.get_extra_values(card) then card.ability.joy_extra_values = {} end
    add = add or 0
    mult = mult or 1

    card.ability.joy_extra_values.denominator_const = ((card.ability.joy_extra_values.denominator_const or 0) + add) *
        mult
    card.ability.joy_extra_values.denominator_mult = (card.ability.joy_extra_values.denominator_mult or 1) * mult
end

---Modify probability to all Jokers in all Joker areas
---@param add integer?
---@param mult number?
---@param to_denominator boolean?
---@param exclude_keys { string: boolean? }?
JoyousSpring.modify_probability_jokers = function(add, mult, to_denominator, exclude_keys)
    for _, area in ipairs(SMODS.get_card_areas('jokers')) do
        for _, card in ipairs(area.cards or {}) do
            if card.ability.set == "Joker" then
                if not exclude_keys or not exclude_keys[card.config.center.key] then
                    if to_denominator then
                        JoyousSpring.modify_probability_denominator(card, add, mult)
                    else
                        JoyousSpring.modify_probability_numerator(card, add, mult)
                    end
                end
            end
        end
    end
end

local smods_get_probability_vars_ref = SMODS.get_probability_vars
function SMODS.get_probability_vars(trigger_obj, base_numerator, base_denominator, identifier, from_roll, no_mod)
    if not G.jokers then
        return smods_get_probability_vars_ref(trigger_obj, base_numerator, base_denominator,
            identifier, from_roll, no_mod)
    end
    local new_numerator, new_denominator = base_numerator, base_denominator

    if not no_mod and type(trigger_obj) == "table" and JoyousSpring.get_extra_values(trigger_obj) then
        local extra_values = JoyousSpring.get_extra_values(trigger_obj) or {}

        new_numerator = new_numerator * (extra_values.numerator_mult or 1) + (extra_values.numerator_const or 0)
        new_denominator = new_denominator * (extra_values.denominator_mult or 1) + (extra_values.denominator_const or 0)
    end

    local numerator, denominator = smods_get_probability_vars_ref(trigger_obj, new_numerator, new_denominator,
        identifier, from_roll, no_mod)

    return numerator, denominator
end

local smods_pseudorandom_probability_ref = SMODS.pseudorandom_probability
function SMODS.pseudorandom_probability(trigger_obj, seed, base_numerator, base_denominator, identifier, no_mod)
    local ret = smods_pseudorandom_probability_ref(trigger_obj, seed, base_numerator, base_denominator, identifier,
        no_mod)

    SMODS.calculate_context { joy_probability_roll = true, joy_result = ret, joy_trigger_obj = trigger_obj, joy_identifier = identifier }

    if JoyousSpring.guaranteed_probability then
        JoyousSpring.guaranteed_probability = nil
        JoyousSpring.fail_probability = nil
        return true
    end

    if JoyousSpring.fail_probability then
        JoyousSpring.guaranteed_probability = nil
        JoyousSpring.fail_probability = nil
        return false
    end

    return ret
end

JoyousSpring.prevent_buy = function(card)
    return JoyousSpring.calculate_prototype_function("prevent_buy", {
        return_if_true = true
    }, card)
end

local g_funcs_can_buy_ref = G.FUNCS.can_buy
G.FUNCS.can_buy = function(e)
    g_funcs_can_buy_ref(e)
    if JoyousSpring.prevent_buy(e.config.ref_table) then
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

local g_funcs_can_buy_and_use_ref = G.FUNCS.can_buy_and_use
G.FUNCS.can_buy_and_use = function(e)
    g_funcs_can_buy_and_use_ref(e)
    if JoyousSpring.prevent_buy(e.config.ref_table) then
        e.UIBox.states.visible = false
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

local g_funcs_can_redeem_ref = G.FUNCS.can_redeem
G.FUNCS.can_redeem = function(e)
    g_funcs_can_redeem_ref(e)
    if JoyousSpring.prevent_buy(e.config.ref_table) then
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

local g_funcs_can_open_ref = G.FUNCS.can_open
G.FUNCS.can_open = function(e)
    g_funcs_can_open_ref(e)
    if JoyousSpring.prevent_buy(e.config.ref_table) then
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

JoyousSpring.prevent_drag = function(card)
    if not card or not card.area then return end
    if card.area == JoyousSpring.opponent_area then
        return true
    end
    return JoyousSpring.calculate_prototype_function("prevent_drag", {
        return_if_true = true
    }, card, card.area)
end

local moveable_drag_ref = Moveable.drag
function Moveable:drag(offset)
    if not JoyousSpring.prevent_drag(self) then
        moveable_drag_ref(self, offset)
    end
end

local g_funcs_blind_choice_handler_ref = G.FUNCS.blind_choice_handler
G.FUNCS.blind_choice_handler = function(e)
    g_funcs_blind_choice_handler_ref(e)
    if not e.config.ref_table.run_info and G.blind_select and e.config.id and G.blind_select_opts[string.lower(e.config.id)] then
        local _blind_choice = G.blind_select_opts[string.lower(e.config.id)]
        local blind_key = G.GAME.round_resets.blind_choices[e.config.id]
        if not _blind_choice.children.alert and blind_key ~= "bl_big" and blind_key ~= "bl_small" and G.GAME.joy_disabled_blinds[blind_key] then
            _blind_choice.children.alert = UIBox {
                definition = create_UIBox_card_alert({ text_rot = -0.35, no_bg = true, text = localize('k_joy_disabled_cap'), bump_amount = 1, scale = 0.9, maxw = 3.4 }),
                config = {
                    align = "tmi",
                    offset = { x = 0, y = 2.2 },
                    major = _blind_choice, parent = _blind_choice }
            }
        end
        if e.config.ref_table.deck == 'on' and e.config.id == "Big" then
            local _top_button = e.UIBox:get_UIE_by_ID('select_blind_button')
            if _top_button then
                --TODO: Unhardcode this check to generalize
                if G.GAME.joy_active_blinds["bl_joy_terminalworld"] or next(SMODS.find_card("opp_joy_terminalworld")) then
                    _top_button.config.colour = G.C.UI.BACKGROUND_INACTIVE
                    _top_button.config.button = nil
                    _top_button.config.hover = false
                    _top_button.children[1].config.colour = G.C.UI.TEXT_INACTIVE
                else
                    _top_button.config.button = 'select_blind'
                    _top_button.config.colour = G.C.FILTER
                    _top_button.config.hover = true
                    _top_button.children[1].config.colour = G.C.WHITE
                end
            end
        end
    end
end

local card_set_edition_ref = Card.set_edition
function Card:set_edition(edition, ...)
    --TODO: Unhardcode this check to generalize
    if not G.OVERLAY_MENU and self.area and not self.area.config.collection and next(SMODS.find_card("opp_joy_forscript")) then
        return card_set_edition_ref(self, nil, ...)
    end
    return card_set_edition_ref(self, edition, ...)
end

--#endregion

--#region Transfer Abilities

JoyousSpring.transfer_abilities = function(card, material_key, other_card, materials)
    local material_center = G.P_CENTERS[material_key]
    if not card or not material_center or not material_center.joy_can_transfer_ability or (other_card and other_card.debuff) or not JoyousSpring.has_joyous_table(card) then
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
    if effects then transfer_effects[#transfer_effects + 1] = effects end

    for material_key, config in pairs(card.ability.extra.joyous_spring.material_effects) do
        local material_center = G.P_CENTERS[material_key]

        if material_center and material_center.joy_transfer_ability_calculate then
            local material_effect = material_center:joy_transfer_ability_calculate(card, context, config)
            if material_effect then
                transfer_effects[#transfer_effects + 1] = material_effect
            end
        end
    end

    return SMODS.merge_effects(transfer_effects)
end

local card_calculate_joker_ref = Card.calculate_joker
function Card:calculate_joker(context)
    if JoyousSpring.is_monster_card(self) and JoyousSpring.has_joyous_table(self) then
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

    if JoyousSpring.is_monster_card(self) and JoyousSpring.has_joyous_table(self) and not_added then
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

    if JoyousSpring.is_monster_card(self) and JoyousSpring.has_joyous_table(self) and added then
        JoyousSpring.transfer_remove_from_deck(self, from_debuff)
    end
    if G.shop_jokers and not G.OVERLAY_MENU then
        G.E_MANAGER:add_event(Event({
            func = (function()
                if G.shop_jokers and not G.OVERLAY_MENU then
                    for _, card in ipairs(G.shop_jokers.cards or {}) do
                        card:set_cost()
                    end
                end
                return true
            end)
        }))
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
    local ret, ret_ops = card_calculate_dollar_bonus_ref(self)

    if JoyousSpring.is_monster_card(self) and JoyousSpring.has_joyous_table(self) then
        local add = JoyousSpring.transfer_calc_dollar_bonus(self)
        if add > 0 then
            ret = (ret or 0) + JoyousSpring.transfer_calc_dollar_bonus(self)
        end
    end

    return ret, ret_ops
end

--#endregion

--#region UI

--#region Card selection and activation

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
            no_card_count = true
        }
    )

    for _, joker in ipairs(card_list) do
        local added_joker = copy_card(joker)
        if JoyousSpring.is_monster_card(joker) and JoyousSpring.has_joyous_table(joker) then
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
        if joker.area == JoyousSpring.opponent_area then
            for i, og_joker in ipairs(JoyousSpring.opponent_area.cards) do
                if og_joker == joker then
                    added_joker.joy_opponent_pos = i
                end
            end
        elseif joker.ability.set == 'Joker' then
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
            if material.joy_opponent_pos then
                table.insert(material_list, JoyousSpring.opponent_area.cards[material.joy_opponent_pos])
            end
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

--#region Guessing UI



--#endregion

--#endregion
