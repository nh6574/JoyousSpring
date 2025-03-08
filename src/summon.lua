---SUMMON

--#region Perform Summon

local function summon_from_booster(card)
    local prev_state = G.STATE
    local delay_fac = 1

    G.TAROT_INTERRUPT = G.STATE
    G.STATE = (G.STATE == G.STATES.TAROT_PACK and G.STATES.TAROT_PACK) or
        (G.STATE == G.STATES.PLANET_PACK and G.STATES.PLANET_PACK) or
        (G.STATE == G.STATES.SPECTRAL_PACK and G.STATES.SPECTRAL_PACK) or
        (G.STATE == G.STATES.STANDARD_PACK and G.STATES.STANDARD_PACK) or
        (G.STATE == G.STATES.SMODS_BOOSTER_OPENED and G.STATES.SMODS_BOOSTER_OPENED) or
        (G.STATE == G.STATES.BUFFOON_PACK and G.STATES.BUFFOON_PACK) or
        G.STATES.PLAY_TAROT

    G.CONTROLLER.locks.use = true
    if G.booster_pack and not G.booster_pack.alignment.offset.py and (card.ability.consumeable or not (G.GAME.pack_choices and G.GAME.pack_choices > 1)) then
        G.booster_pack.alignment.offset.py = G.booster_pack.alignment.offset.y
        G.booster_pack.alignment.offset.y = G.ROOM.T.y + 29
    end
    if G.shop and not G.shop.alignment.offset.py then
        G.shop.alignment.offset.py = G.shop.alignment.offset.y
        G.shop.alignment.offset.y = G.ROOM.T.y + 29
    end
    if G.blind_select and not G.blind_select.alignment.offset.py then
        G.blind_select.alignment.offset.py = G.blind_select.alignment.offset.y
        G.blind_select.alignment.offset.y = G.ROOM.T.y + 39
    end
    if G.round_eval and not G.round_eval.alignment.offset.py then
        G.round_eval.alignment.offset.py = G.round_eval.alignment.offset.y
        G.round_eval.alignment.offset.y = G.ROOM.T.y + 29
    end

    if card.children.use_button then
        card.children.use_button:remove(); card.children.use_button = nil
    end
    if card.children.sell_button then
        card.children.sell_button:remove(); card.children.sell_button = nil
    end
    if card.children.price then
        card.children.price:remove(); card.children.price = nil
    end

    if not card.from_area then card.from_area = card.area end
    if card.area and (not nc or card.area == G.pack_cards) then card.area:remove_card(card) end

    card:add_to_deck()
    G.jokers:emplace(card)
    play_sound('card1', 0.8, 0.6)
    play_sound('generic1')
    delay_fac = 0.2

    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.1,
                func = function()
                    G.STATE = prev_state
                    G.TAROT_INTERRUPT = nil
                    G.CONTROLLER.locks.use = false

                    if (prev_state == G.STATES.TAROT_PACK or prev_state == G.STATES.PLANET_PACK or
                            prev_state == G.STATES.SPECTRAL_PACK or prev_state == G.STATES.STANDARD_PACK or
                            prev_state == G.STATES.SMODS_BOOSTER_OPENED or
                            prev_state == G.STATES.BUFFOON_PACK) and G.booster_pack then
                        if G.GAME.pack_choices and G.GAME.pack_choices > 1 then
                            if G.booster_pack.alignment.offset.py then
                                G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                                G.booster_pack.alignment.offset.py = nil
                            end
                            G.GAME.pack_choices = G.GAME.pack_choices - 1
                        else
                            G.CONTROLLER.interrupt.focus = true
                            G.FUNCS.end_consumeable(nil, delay_fac)
                        end
                    end
                    return true
                end
            }))
            return true
        end
    }))
end

local function summon_from_shop(card)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            card.area:remove_card(card)
            card:add_to_deck()
            if card.children.price then card.children.price:remove() end
            card.children.price = nil
            if card.children.buy_button then card.children.buy_button:remove() end
            card.children.buy_button = nil
            remove_nils(card.children)
            G.jokers:emplace(card)
            G.GAME.round_scores.cards_purchased.amt = G.GAME.round_scores.cards_purchased.amt + 1
            G.GAME.current_round.jokers_purchased = G.GAME.current_round.jokers_purchased + 1

            for i = 1, #G.jokers.cards do
                G.jokers.cards[i]:calculate_joker({ buying_card = true, card = card })
            end

            play_sound('card1')
            G.CONTROLLER:save_cardarea_focus('jokers')
            G.CONTROLLER:recall_cardarea_focus('jokers')
            return true
        end
    }))
end

---Performs a Special Summon from either the Extra Deck or the shop (for Rituals)
---@param card Card Card to summon
---@param card_list Card[] Summon materials
---@param summon_type summon_type
JoyousSpring.perform_summon = function(card, card_list, summon_type)
    SMODS.calculate_context({
        joy_summon = true,
        joy_card = card,
        joy_summon_materials = card_list,
        joy_summon_type =
            summon_type
    })
    card.ability.extra.joyous_spring.summon_materials = {}
    card.ability.extra.joyous_spring.xyz_materials = 0
    local transfer = summon_type == "XYZ" and JoyousSpring.transfer_materials_with_combo(card, card_list) or false
    card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials or 0
    for _, joker in ipairs(card_list) do
        table.insert(card.ability.extra.joyous_spring.summon_materials, joker.config.center.key)
        card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials + 1
        if transfer and JoyousSpring.is_summon_type(joker, "XYZ") then
            for _, material in ipairs(joker.ability.extra.joyous_spring.summon_materials) do
                table.insert(card.ability.extra.joyous_spring.summon_materials, material)
            end
            card.ability.extra.joyous_spring.xyz_materials = card.ability.extra.joyous_spring.xyz_materials +
                joker.ability.extra.joyous_spring.xyz_materials
        end
        joker:start_dissolve()
    end
    card.ability.extra.joyous_spring.summoned = true
    if card.area == JoyousSpring.extra_deck_area then
        JoyousSpring.extra_deck_area:remove_card(card)
        card:add_to_deck()
        G.jokers:emplace(card)
    elseif card.area == G.pack_cards then
        summon_from_booster(card)
    else
        summon_from_shop(card)
    end
    card:set_cost()

    if summon_type == "XYZ" then
        card.children.xyz_materials = JoyousSpring.create_UIBox_xyz_materials(card)
    end
end

---Summons a Token with specified attributes
---@param key string? Token's key in JoyousSpring.token_pool
---@param edition any?
---@param atlas_key any?
---@param sprite_pos any?
---@param joyous_spring_table table? Overrides the properties in the Token's joyous_spring_table. Required if key is nil
JoyousSpring.summon_token = function(key, edition, atlas_key, sprite_pos, joyous_spring_table)
    local card = SMODS.add_card({
        key = "j_joy_token",
        edition = edition,
        no_edition = not edition and true or nil
    })
    local pool_info = JoyousSpring.token_pool[key] or {}
    local og_table = card.ability.extra.joyous_spring
    og_table.token_name = joyous_spring_table and joyous_spring_table.token_name or pool_info.name or og_table
        .token_name or "Token"
    og_table.is_tuner = joyous_spring_table and joyous_spring_table.is_tuner or pool_info.is_tuner or og_table.is_tuner or
        false
    og_table.attribute = joyous_spring_table and joyous_spring_table.attribute or pool_info.attribute or
        og_table.attribute or "EARTH"
    og_table.monster_type = joyous_spring_table and joyous_spring_table.monster_type or pool_info.monster_type or
        og_table.monster_type or "Beast"
    og_table.monster_archetypes = joyous_spring_table and joyous_spring_table.monster_archetypes or
        pool_info.monster_archetypes or og_table.monster_archetypes or {}
    og_table.token_atlas = atlas_key or pool_info.atlas or "joy_Token"
    og_table.token_sprite_pos = sprite_pos or pool_info.sprite_pos or
        { x = pseudorandom("Token", 0, 1), y = pseudorandom("Token", 0, 1) }
    card.children.center.atlas.name = og_table.token_atlas
    card.children.center.sprite_pos = og_table.token_sprite_pos
    card.children.center:reset()
end

--#endregion

--#region Summon calculations

local function get_combinations(list)
    local result = {}

    local function generate_combination(start, current_combo)
        if #current_combo > 5 then return end
        table.insert(result, { unpack(current_combo) })

        for i = start, #list do
            table.insert(current_combo, list[i])
            generate_combination(i + 1, current_combo)
            table.remove(current_combo)
        end
    end

    generate_combination(1, {})

    return result
end

local function get_condition_min_max(condition)
    local min_materials = 0
    local max_materials = 0
    if condition and condition.materials then
        for _, property in ipairs(condition.materials) do
            if property.min then
                min_materials = min_materials + (property.optional and 0 or property.min)
                max_materials = max_materials + (property.max or 10)
            else
                min_materials = min_materials + (property.optional and 0 or 1)
                max_materials = max_materials + 1
            end
        end
    end
    return min_materials, max_materials
end

---Checks if a card list fulfills general summon restrictions and specific restrictions in **condition**
---@param combo_list Card[]
---@param condition table
---@return boolean
JoyousSpring.is_valid_material_combo = function(combo_list, condition)
    local all_materials_count = 0
    local restrictions = condition.restrictions
    local summon_type = condition.type

    local min_materials, max_materials = get_condition_min_max(condition)

    if (min_materials == 0) or (#combo_list < min_materials) or (#combo_list > max_materials) then
        return false
    end

    for _, card in ipairs(combo_list) do
        if summon_type and JoyousSpring.is_all_materials(card, summon_type) then
            all_materials_count = all_materials_count + 1
        end
        if all_materials_count > 1 then
            return false
        end
    end

    for i = 1, #combo_list do
        for j = i + 1, #combo_list do
            local card_1 = combo_list[i]
            local card_2 = combo_list[j]
            if card_1 == card_2 then
                return false
            end
            if not restrictions then
                break
            end
            if restrictions.different_names and card_1.config.center.key == card_2.config.center.key then
                return false
            end
            if restrictions.same_name and card_1.config.center.key ~= card_2.config.center.key then
                return false
            end
            if restrictions.different_rarities and card_1.config.center.rarity == card_2.config.center.rarity then
                return false
            end
            if restrictions.same_rarity and card_1.config.center.rarity ~= card_2.config.center.rarity then
                return false
            end
            if restrictions.different_attributes or restrictions.same_attribute or restrictions.different_types or restrictions.same_type then
                if not JoyousSpring.is_monster_card(card_1) or not JoyousSpring.is_monster_card(card_2) then
                    return false
                end
                local card_1_properties = card_1.ability.extra.joyous_spring
                local card_2_properties = card_2.ability.extra.joyous_spring
                if restrictions.different_attributes and card_1_properties.attribute == card_2_properties.attribute then
                    return false
                end
                if restrictions.same_attribute and card_1_properties.attribute ~= card_2_properties.attribute then
                    return false
                end
                if restrictions.different_types and card_1_properties.monster_type == card_2_properties.monster_type then
                    return false
                end
                if restrictions.same_type and card_1_properties.monster_type ~= card_2_properties.monster_type then
                    return false
                end
            end
        end
    end
    return true
end

local function separate_properties(condition)
    local mandatory = {}
    local optional = {}

    for i, property in ipairs(condition.materials) do
        if property.optional then
            local amount = property.max or 1
            for i = 1, amount do
                table.insert(optional, property)
            end
        elseif property.min then
            local amount = (property.max and
                    property.max - property.min) or
                (10 - property.min)
            for i = 1, property.min do
                table.insert(mandatory, property)
            end
            for i = 1, amount do
                table.insert(optional, property)
            end
        else
            table.insert(mandatory, property)
        end
    end

    return mandatory, optional
end

---Checks if card list fulfills summon conditions
---@param combo_list Card[]
---@param condition table
---@return boolean
JoyousSpring.fulfills_conditions = function(combo_list, condition)
    if not JoyousSpring.is_valid_material_combo(combo_list, condition) then
        return false
    end

    local mandatory_properties, optional_properties = separate_properties(condition)

    local visited = {}

    for i = 1, #combo_list do
        visited[i] = false
    end

    local function check_properties(combo, properties, index, visited_check)
        if index > #properties then
            return true
        end

        for i = 1, #combo do
            if not visited_check[i] and JoyousSpring.is_material(combo[i], properties[index], condition.type) then
                visited_check[i] = true
                if check_properties(combo, properties, index + 1, visited_check) then
                    return true
                end
                visited_check[i] = false
            end
        end

        return false
    end

    if not check_properties(combo_list, mandatory_properties, 1, visited) then
        return false
    end

    local remaining_cards = {}
    local visited_optional = {}

    for i = 1, #combo_list do
        if not visited[i] then
            table.insert(remaining_cards, combo_list[i])
        end
    end

    for i = 1, #remaining_cards do
        visited_optional[i] = false
    end

    local function check_optional_properties(combo, optional_props, index, visited_check)
        if index > #combo then
            return true
        end

        for i = 1, #optional_props do
            if not visited_check[i] and JoyousSpring.is_material(combo[index], optional_props[i], condition.type) then
                visited_check[i] = true
                if check_optional_properties(combo, optional_props, index + 1, visited_check) then
                    return true
                end
                visited_check[i] = false
            end
        end

        return false
    end

    return check_optional_properties(remaining_cards, optional_properties, 1, visited_optional)
end

---Gets all combinations that fulfill **condition** in **card_list**
---@param condition table
---@param card_list Card[]?
---@return table
JoyousSpring.get_summon_material_combo_by_condition = function(condition, card_list)
    local card_list = card_list or G.jokers.cards
    local material_combos = {}

    local current_combos = get_combinations(card_list)

    for _, combination in ipairs(current_combos) do
        if JoyousSpring.fulfills_conditions(combination, condition) then
            table.insert(material_combos, combination)
        end
    end

    return material_combos
end

---Gets all combinations that fulfill the card's summon conditions in **card_list**
---@param card Card
---@param card_list Card[]?
---@return table?
JoyousSpring.get_all_summon_material_combos = function(card, card_list)
    if not JoyousSpring.is_monster_card(card) or
        (not card.ability.extra.joyous_spring.summon_conditions and not card.ability.extra.joyous_spring.summon_consumeable_conditions) then
        return nil
    end

    local material_combos = {}
    if card.ability.extra.joyous_spring.summon_consumeable_conditions then
        local card_table = card_list or G.consumeables.cards
        table.insert(material_combos,
            JoyousSpring.get_summon_materials_consumables(card.ability.extra.joyous_spring.summon_consumeable_conditions,
                card_table))
    else
        local card_table = card_list or G.jokers.cards
        local conditions = card.ability.extra.joyous_spring.summon_conditions

        for _, condition in ipairs(conditions) do
            local combos_by_condition = JoyousSpring.get_summon_material_combo_by_condition(condition, card_table)
            for _, combo in ipairs(combos_by_condition) do
                table.insert(material_combos, combo)
            end
        end
    end

    return material_combos
end

---Checks if there's any combination in **card_list** that fulfills **condition**
---@param condition table
---@param card_list Card[]?
---@return boolean
JoyousSpring.can_summon_by_condition = function(condition, card_list)
    local card_list = card_list or G.jokers.cards

    local current_combos = get_combinations(card_list)

    for _, combination in ipairs(current_combos) do
        if JoyousSpring.fulfills_conditions(combination, condition) then
            return true
        end
    end

    return false
end

---Checks if there's any combination in **card_list** that fulfills the card's summon conditions
---@param card Card
---@param card_list Card[]?
---@return boolean
JoyousSpring.can_summon = function(card, card_list)
    if not JoyousSpring.is_monster_card(card) then
        return false
    end
    if not card.ability.extra.joyous_spring.summon_conditions and not card.ability.extra.joyous_spring.summon_consumeable_conditions then
        return true
    end

    if card.ability.extra.joyous_spring.summon_consumeable_conditions then
        local card_table = card_list or G.consumeables.cards
        return JoyousSpring.can_summon_consumeables(card.ability.extra.joyous_spring.summon_consumeable_conditions,
            card_table)
    else
        local card_table = card_list or G.jokers.cards
        local conditions = card.ability.extra.joyous_spring.summon_conditions

        for _, condition in ipairs(conditions) do
            if JoyousSpring.can_summon_by_condition(condition, card_table) then
                return true
            end
        end
    end

    return false
end

---Checks if the **combo** fulfills any of the card's summon conditions
---@param card Card
---@param combo Card[]
---@return boolean
JoyousSpring.can_summon_with_combo = function(card, combo)
    if not JoyousSpring.is_monster_card(card) or not combo or #combo == 0 or
        (not card.ability.extra.joyous_spring.summon_conditions and not card.ability.extra.joyous_spring.summon_consumeable_conditions) then
        return false
    end

    if card.ability.extra.joyous_spring.summon_consumeable_conditions then
        return JoyousSpring.fulfills_condition_consumeables(
            card.ability.extra.joyous_spring.summon_consumeable_conditions, combo)
    else
        local conditions = card.ability.extra.joyous_spring.summon_conditions

        for _, condition in ipairs(conditions) do
            if JoyousSpring.fulfills_conditions(combo, condition) then
                return true
            end
        end
    end

    return false
end

---Checks if the **combo** fulfills any of the card's summon conditions and transfers materials
---@param card Card
---@param combo Card[]
---@return boolean
JoyousSpring.transfer_materials_with_combo = function(card, combo)
    if not JoyousSpring.is_monster_card(card) or not combo or #combo == 0 or
        (not card.ability.extra.joyous_spring.summon_conditions and not card.ability.extra.joyous_spring.summon_consumeable_conditions) then
        return false
    end

    if card.ability.extra.joyous_spring.summon_consumeable_conditions then
        return false
    else
        local conditions = card.ability.extra.joyous_spring.summon_conditions

        for _, condition in ipairs(conditions) do
            if condition.transfer_materials and JoyousSpring.fulfills_conditions(combo, condition) then
                return true
            end
        end
    end

    return false
end

local function get_consumeable_counts(combo)
    local counts = {
        any = #combo,
        tarot = 0,
        planet = 0,
        spectral = 0,
        other = 0
    }

    for _, card in ipairs(combo) do
        if card.ability.set == 'Tarot' then
            counts.tarot = counts.tarot + 1
        elseif card.ability.set == 'Planet' then
            counts.planet = counts.planet + 1
        elseif card.ability.set == 'Spectral' then
            counts.spectral = counts.spectral + 1
        else
            counts.other = counts.other + 1
        end
    end

    return counts
end

local function get_consumeables(combo, args)
    local materials = {}

    for _, card in ipairs(combo) do
        if args.any or (args.tarot and card.ability.set == 'Tarot') or
            (args.planet and card.ability.set == 'Planet') or (args.spectral and card.ability.set == 'Spectral') then
            table.insert(materials, card)
        end
    end

    return materials
end

---Gets all consumables that fulfill **condition** in **card_table**
---@param condition table
---@param card_table Card[]?
---@return table
JoyousSpring.get_summon_materials_consumables = function(condition, card_table)
    local card_table = card_table or G.consumeables.cards
    local any_min = condition.any and (type(condition.any) == "table" and condition.any.min or condition.any) or 0
    local tarot_min = condition.tarot and (type(condition.tarot) == "table" and condition.tarot.min or condition.tarot) or
        0
    local planet_min = condition.planet and
        (type(condition.planet) == "table" and condition.planet.min or condition.planet) or 0
    local spectral_min = condition.spectral and
        (type(condition.spectral) == "table" and condition.spectral.min or condition.spectral) or 0

    return get_consumeables(card_table, {
        any = (any_min > 0) or nil,
        tarot = (tarot_min > 0) or nil,
        planet = (planet_min > 0) or nil,
        spectral = (spectral_min > 0) or nil,
    })
end

---Checks if any consumable combination in **combo** fulfills condition
---@param condition table
---@param combo Card[]
---@return boolean
JoyousSpring.can_summon_consumeables = function(condition, combo)
    local any_min = condition.any and (type(condition.any) == "table" and condition.any.min or condition.any) or 0
    local tarot_min = condition.tarot and (type(condition.tarot) == "table" and condition.tarot.min or condition.tarot) or
        0
    local planet_min = condition.planet and
        (type(condition.planet) == "table" and condition.planet.min or condition.planet) or 0
    local spectral_min = condition.spectral and
        (type(condition.spectral) == "table" and condition.spectral.min or condition.spectral) or 0

    local counts = get_consumeable_counts(combo)

    if counts.any < any_min or counts.tarot < tarot_min or counts.planet < planet_min or counts.spectral < spectral_min then
        return false
    end
    return true
end

---Checks if consumable **combo** fulfills condition
---@param condition table
---@param combo Card[]
---@return boolean
JoyousSpring.fulfills_condition_consumeables = function(condition, combo)
    local any_min = condition.any and (type(condition.any) == "table" and condition.any.min or condition.any) or nil
    local any_max = condition.any and (type(condition.any) == "table" and condition.any.max or condition.any) or nil
    local tarot_min = condition.tarot and (type(condition.tarot) == "table" and condition.tarot.min or condition.tarot) or
        nil
    local tarot_max = condition.tarot and (type(condition.tarot) == "table" and condition.tarot.max or condition.tarot) or
        nil
    local planet_min = condition.planet and
        (type(condition.planet) == "table" and condition.planet.min or condition.planet) or nil
    local planet_max = condition.planet and
        (type(condition.planet) == "table" and condition.planet.max or condition.planet) or nil
    local spectral_min = condition.spectral and
        (type(condition.spectral) == "table" and condition.spectral.min or condition.spectral) or nil
    local spectral_max = condition.spectral and
        (type(condition.spectral) == "table" and condition.spectral.max or condition.spectral) or nil

    local counts = get_consumeable_counts(combo)

    if (any_min and (counts.any < any_min)) or
        (any_max and (counts.any > any_max)) or
        (tarot_min and (counts.tarot < tarot_min)) or
        (tarot_max and (counts.tarot > tarot_max)) or
        (planet_min and (counts.planet < planet_min)) or
        (planet_max and (counts.planet > planet_max)) or
        (spectral_min and (counts.spectral < spectral_min)) or
        (spectral_max and (counts.spectral > spectral_max)) then
        return false
    end

    return true
end

--#endregion

--#region UI

JoyousSpring.create_UIBox_select_summon_materials = function(card)
    local summon_type = card.ability.extra.joyous_spring.summon_type or "FUSION"

    local colour = G.C.JOY[summon_type] or G.C.JOY.FUSION
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
                                                string = { localize("k_joy_select_materials") },
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
                                                            object = JoyousSpring.summon_material_area
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
                                            button = 'joy_exit_select_material_menu',
                                            shadow = true,
                                            func = 'joy_can_select_material',
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
                                                            text = localize('k_joy_summon'),
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

JoyousSpring.create_overlay_select_summon_materials = function(card, card_list)
    local material_combos = JoyousSpring.get_all_summon_material_combos(card, card_list)

    if material_combos then
        local material_list = SMODS.merge_lists(material_combos)

        local highlight_limit = 1
        for _, combo in ipairs(material_combos) do
            highlight_limit = #combo > highlight_limit and #combo or highlight_limit
        end
        JoyousSpring.summon_material_area = CardArea(
            0,
            0,
            G.CARD_W * 4.95,
            G.CARD_H,
            {
                type = 'summon_materials',
                highlight_limit = highlight_limit,
            }
        )
        JoyousSpring.summon_material_area.material_combos = material_combos


        for _, joker in ipairs(material_list) do
            local added_joker = copy_card(joker)
            if JoyousSpring.is_monster_card(joker) then
                for k, v in pairs(joker.ability.extra.joyous_spring) do
                    added_joker.ability.extra.joyous_spring[k] = v
                end
                if joker.config.center.key == "j_joy_token" then
                    added_joker.children.center.atlas.name = joker.ability.extra.joyous_spring.token_atlas
                    added_joker.children.center.sprite_pos = joker.ability.extra.joyous_spring.token_sprite_pos
                    added_joker.children.center:reset()
                end
            end
            JoyousSpring.summon_material_area:emplace(added_joker)
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

        G.FUNCS.overlay_menu({
            definition = JoyousSpring.create_UIBox_select_summon_materials(card)
        })
    end
end

G.FUNCS.joy_perform_summon = function(e)
    local card = e.config.ref_table
    card:highlight(false)
    JoyousSpring.create_overlay_select_summon_materials(card)
end

G.FUNCS.joy_can_select_material = function(e)
    local card = e.config.ref_table

    if card and JoyousSpring.summon_material_area and next(JoyousSpring.summon_material_area.highlighted) then
        local summon_type = card.ability.extra.joyous_spring.summon_type or "Fusion"
        local colour = G.C.JOY[summon_type] or G.C.JOY.FUSION

        if JoyousSpring.can_summon_with_combo(card, JoyousSpring.summon_material_area.highlighted) then
            e.config.colour = colour
            e.config.button = 'joy_exit_select_material_menu'
        else
            e.config.colour = G.C.UI.BACKGROUND_INACTIVE
            e.config.button = nil
        end
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

G.FUNCS.joy_exit_select_material_menu = function(e)
    if not G.OVERLAY_MENU then return end

    local card = e.config.ref_table
    local summon_type = card.ability.extra.joyous_spring.summon_type or "Fusion"

    if card and JoyousSpring.summon_material_area and next(JoyousSpring.summon_material_area.highlighted) then
        local material_list = {}
        for _, material in ipairs(JoyousSpring.summon_material_area.highlighted) do
            if material.joy_g_jokers_pos then
                table.insert(material_list, G.jokers.cards[material.joy_g_jokers_pos])
            end
            if material.joy_g_consumeables_pos then
                table.insert(material_list, G.consumeables.cards[material.joy_g_consumeables_pos])
            end
        end
        JoyousSpring.perform_summon(card, material_list, summon_type)
        JoyousSpring.open_extra_deck(true, false)
    end
    G.FUNCS.exit_overlay_menu()
end

G.FUNCS.joy_can_summon_from_shop = function(e)
    local card = e.config.ref_table
    if JoyousSpring.can_summon(card) then
        e.config.colour = G.C.JOY.RITUAL
        e.config.button = 'joy_perform_summon'
    else
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    end
end

local controller_queue_R_cursor_press_ref = Controller.queue_R_cursor_press
function Controller:queue_R_cursor_press(x, y)
    controller_queue_R_cursor_press_ref(self, x, y)

    if JoyousSpring.summon_material_area and next(JoyousSpring.summon_material_area.highlighted) then
        JoyousSpring.summon_material_area:unhighlight_all()
    end
end

--#endregion
