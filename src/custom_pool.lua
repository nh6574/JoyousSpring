-- CUSTOM POOL

---Filters a pool from SMODS.create_poll_pool by property_list
---@param pool {key:string|'UNAVAILABLE', type:string}[]
---@param property_list material_properties[]
---@return table
JoyousSpring.filter_weighted_pool_by_material = function(pool, property_list)
    local all_unavailable = true
    for _, card_data in ipairs(pool) do
        if card_data.key ~= "UNAVAILABLE" and property_list and #property_list > 0 then
            local is_material = false
            for _, property in ipairs(property_list) do
                if JoyousSpring.is_material_center(card_data.key, property) then
                    is_material = true
                    break
                end
            end
            if not is_material then
                card_data.key = 'UNAVAILABLE'
            end
        end
        if card_data.key ~= "UNAVAILABLE" then
            all_unavailable = false
        end
    end
    if all_unavailable then
        pool[#pool + 1] = { key = "j_joy_fish_paces", type = 'Joker' }
    end
    return pool
end

local smods_create_poll_pool_ref = SMODS.create_poll_pool
function SMODS.create_poll_pool(labels, args, ...)
    local ret, labels = smods_create_poll_pool_ref(labels, args, ...)

    if G.GAME.joy_only_ygo_cards and #ret == 1 and ret[1].key == "j_joker" then
        return { { key = (args or {}).joy_monster_default or 'j_joy_fish_paces', type = 'Joker' } }, labels
    end

    if args and args.joy_monster_properties then
        return JoyousSpring.filter_weighted_pool_by_material(ret, args.joy_monster_properties), labels
    end

    return ret, labels
end

---@class CreateCard
---@field joy_monster_default? string Default monster when set is "JoyousSpring" and the pool is weighted
---@field joy_monster_properties? material_properties[] Starting properties of the pool when set is "JoyousSpring" and the pool is weighted

local smods_create_card_ref = SMODS.create_card
function SMODS.create_card(t)
    local key = nil
    local _rarity = t.rarity
    if t.set == "JoyousSpring" and not t.key then
        local _rarity = (type(_rarity) == "number" and ((_rarity > 0.95 and 3) or (_rarity > 0.7 and 2) or 1)) or _rarity
        _rarity = ({ Common = 1, Uncommon = 2, Rare = 3, Legendary = 4 })[_rarity] or _rarity

        key = SMODS.poll_object {
            type = "Joker",
            rarity = _rarity,
            joy_monster_properties = t.joy_monster_properties,
            joy_monster_default = t.joy_monster_default,
            append = t.key_append,
            allow_duplicates = t.allow_duplicates
        }
        t.set = "Joker"
    end
    t.key = key or t.key
    if not t.area and JoyousSpring.field_spell_area and JoyousSpring.is_material_center(t.key or "", { is_field_spell = true }) then
        t.area = JoyousSpring.field_spell_area
    end

    return smods_create_card_ref(t)
end

-- Prevent non monsters for being spawned when only_ygo_cards is true
-- and field spells from being spawned by vanilla cards
local smods_add_to_pool_ref = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    if G.GAME.joy_only_ygo_cards and prototype_obj.set == "Joker" and (not prototype_obj.original_mod or prototype_obj.original_mod.id ~= "JoyousSpring") then
        return false
    end
    if args and (args.source == 'jud' or args.source == 'sou' or args.source == 'wra' or args.source == 'rif') and
        prototype_obj.set == "Joker" and
        JoyousSpring.is_material_center(prototype_obj.key, { is_field_spell = true }) then
        return false
    end
    return smods_add_to_pool_ref(prototype_obj, args)
end

local smods_poll_object_ref = SMODS.poll_object
function SMODS.poll_object(args)
    if G.GAME.joy_only_ygo_cards then
        args = args or {}

        if args.append == "sho" and args.type == "Joker" then
            args.rarity = false
            args.attributes = { "joy_monster" }
        end
    end

    return smods_poll_object_ref(args)
end
