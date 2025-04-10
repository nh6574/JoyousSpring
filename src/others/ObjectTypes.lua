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
        if v.key == "j_elle_chloe" then
            SMODS.ObjectTypes["elle_Residents_Base"]:inject_card(v)
        end
    end
end
