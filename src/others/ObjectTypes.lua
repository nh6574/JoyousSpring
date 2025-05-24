-- OBJECT TYPES

SMODS.ObjectType({
    key = "joy_monster",
    default = "j_joy_fish_paces",
    cards = {},
})

SMODS.ObjectType({
    key = "joy_extra",
    default = "j_joy_sauravis",
    cards = {},
})

SMODS.ObjectType({
    key = "joy_field",
    default = "j_joy_psy_circuit",
    cards = {},
})

local SMODS_injectItems_ref = SMODS.injectItems
function SMODS.injectItems()
    SMODS_injectItems_ref()
    for i, v in ipairs(G.P_CENTER_POOLS.Joker) do
        local monster_card_properties = v.config and v.config.extra and
            type(v.config.extra) == "table" and
            v.config.extra.joyous_spring
        if monster_card_properties then
            JoyousSpring.card_order[v.key] = i
        end
        if monster_card_properties and v.original_key ~= "token" then
            SMODS.ObjectTypes["joy_monster"]:inject_card(v)

            if not monster_card_properties.is_main_deck then
                if monster_card_properties.is_field_spell then
                    SMODS.ObjectTypes["joy_field"]:inject_card(v)
                else
                    SMODS.ObjectTypes["joy_extra"]:inject_card(v)
                end
            end
            if monster_card_properties and monster_card_properties.summon_type == "RITUAL" then
                SMODS.ObjectTypes["joy_extra"]:inject_card(v)
            end
        end
    end
end
