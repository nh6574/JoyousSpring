-- CUSTOM POOL

---Gets a weighted pool of all Jokers in starting_pool
---Centers should have a defined get_weight function
---@param starting_pool string[]|SMODS.Center[]?
---@param default_key string?
---@param _append string?
---@param allow_duplicates boolean?
---@return table
local get_weighted_pool = function(starting_pool, default_key, _append, allow_duplicates)
    local _starting_pool = starting_pool or G.P_CENTER_POOLS["Joker"]
    G.ARGS.TEMP_POOL = EMPTY(G.ARGS.TEMP_POOL)
    local _pool = G.ARGS.TEMP_POOL

    local _pool_size = 0
    local _total_weight = 0
    local available_rarities = copy_table(SMODS.ObjectTypes["Joker"].rarities)

    local rarity_weight = 0
    for _, v in ipairs(available_rarities) do
        v.mod = G.GAME[tostring(v.key):lower() .. "_mod"] or 1

        if SMODS.Rarities[v.key] and SMODS.Rarities[v.key].get_weight and type(SMODS.Rarities[v.key].get_weight) == "function" then
            v.weight = SMODS.Rarities[v.key]:get_weight(v.weight, SMODS.ObjectTypes[default_key])
        end
        v.weight = v.weight * v.mod
        rarity_weight = rarity_weight + v.weight
    end

    for _, v in ipairs(available_rarities) do
        v.weight = v.weight / rarity_weight
    end

    for k, card in ipairs(_starting_pool) do
        -- most of this is so vscode doesnt annoy me
        local v = (type(card) == "string" and G.P_CENTERS[card]) or (type(card) == "table" and card) or {}

        local add = nil
        local in_pool, pool_opts = SMODS.add_to_pool(v, { source = _append })
        pool_opts = pool_opts or {}
        if not (G.GAME.used_jokers[v.key] and not pool_opts.allow_duplicates and not allow_duplicates and not SMODS.showman(v.key)) and
            (v.unlocked ~= false or v.rarity == 4) then
            if v.enhancement_gate then
                add = nil
                for kk, vv in pairs(G.playing_cards) do
                    if SMODS.has_enhancement(vv, v.enhancement_gate) then
                        add = true
                    end
                end
            else
                add = true
            end
            if v.hidden then
                add = false
            end
        end

        if v.no_pool_flag and G.GAME.pool_flags[v.no_pool_flag] then add = nil end
        if v.yes_pool_flag and not G.GAME.pool_flags[v.yes_pool_flag] then add = nil end

        add = in_pool and (add or pool_opts.override_base_checks)

        if add and not G.GAME.banned_keys[v.key] then
            local weight = 0.75

            weight = (v.get_weight and type(v.get_weight) == 'function' and v:get_weight({ source = _append })) or
                (available_rarities[v.rarity] or {}).weight or weight
            _total_weight = _total_weight + weight

            _pool[#_pool + 1] = { key = v.key, weight = weight }
            _pool_size = _pool_size + 1
        end
    end

    if _pool_size == 0 then
        _pool = EMPTY(G.ARGS.TEMP_POOL)
        _total_weight = 1
        _pool[#_pool + 1] = { key = default_key or "j_joker", weight = 1 }
    end

    for _, v in ipairs(_pool) do
        v.weight = v.weight / ((_total_weight > 0) and _total_weight or 1)
    end

    return _pool
end

---Get a random card key from a weighted pool
---@param starting_pool string[]|SMODS.Center[]?
---@param default_key string?
---@param key_append string?
---@param allow_duplicates boolean?
---@return string
local get_weighted_card = function(starting_pool, default_key, key_append, allow_duplicates)
    local poll = pseudorandom('JoyousSpring' .. G.GAME.round_resets.ante .. (key_append or ''))
    local pool = get_weighted_pool(starting_pool, default_key, key_append, allow_duplicates)
    local weight_i = 0
    for _, v in ipairs(pool) do
        weight_i = weight_i + v.weight
        if poll < weight_i then
            return v.key
        end
    end
    return default_key or "j_joy_fish_paces"
end

local create_card_ref = create_card
function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
    local key = nil
    if JoyousSpring.config.only_ygo_cards and _type == "Joker" and not forced_key then
        local _rarity = (legendary and 4) or
            (type(_rarity) == "number" and ((_rarity > 0.95 and 3) or (_rarity > 0.7 and 2) or 1)) or _rarity
        _rarity = ({ Common = 1, Uncommon = 2, Rare = 3, Legendary = 4 })[_rarity] or _rarity

        local is_shop_or_pack = key_append == 'buf' or key_append == 'rta' or key_append == 'uta' or key_append == 'sho' or
            key_append == "JoyousSpring"

        key = get_weighted_card(JoyousSpring.get_materials_in_collection({
            {
                is_monster = true,
                rarity = type(_rarity) == "number" and _rarity or nil,
                exclude_field_spell = (not is_shop_or_pack) and true or nil,
                exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil
            },
        }), "j_joy_fish_paces", key_append)
        key = not G.GAME.banned_keys[key] and key or "j_joy_fish_paces"
    end

    return create_card_ref(_type, area, legendary, _rarity, skip_materialize, soulable,
        key or forced_key, key_append)
end

---@class CreateCard
---@field joy_monster_default? string Default monster when set is "JoyousSpring" and the pool is weighted
---@field joy_monster_properties? material_properties[] Starting properties of the pool when set is "JoyousSpring" and the pool is weighted
---@field joy_allow_duplicates? boolean? Allow duplicates when set is "JoyousSpring" and the pool is weighted

local smods_create_card_ref = SMODS.create_card
function SMODS.create_card(t)
    local key = nil
    local _rarity = t.rarity
    if t.set == "JoyousSpring" and not t.key then
        local _rarity = (type(_rarity) == "number" and ((_rarity > 0.95 and 3) or (_rarity > 0.7 and 2) or 1)) or _rarity
        _rarity = ({ Common = 1, Uncommon = 2, Rare = 3, Legendary = 4 })[_rarity] or _rarity

        key = get_weighted_card(JoyousSpring.get_materials_in_collection(t.joy_monster_properties or {
            {
                is_monster = true,
                rarity = type(_rarity) == "number" and _rarity or nil,
                exclude_extra_deck = G.GAME.modifiers["joy_no_extra_deck_jokers"] and true or nil
            },
        }), t.joy_monster_default or "j_joy_fish_paces", t.key_append, t.joy_allow_duplicates)
        key = not G.GAME.banned_keys[key] and key or t.joy_monster_default or "j_joy_fish_paces"
        t.set = "Joker"
    end
    t.key = key or t.key
    if not t.area and JoyousSpring.field_spell_area and JoyousSpring.is_material_center(t.key or "", { is_field_spell = true }) then
        t.area = JoyousSpring.field_spell_area
    end

    return smods_create_card_ref(t)
end

-- Prevent field spells from being spawned by vanilla cards
local smods_add_to_pool_ref = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    if args and (args.source == 'jud' or args.source == 'sou' or args.source == 'wra' or args.source == 'rif') and
        prototype_obj.set == "Joker" and
        JoyousSpring.is_material_center(prototype_obj.key, { is_field_spell = true }) then
        return false
    end
    return smods_add_to_pool_ref(prototype_obj, args)
end
