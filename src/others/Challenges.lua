-- CHALLENGES

-- Mystic Wok
SMODS.Challenge({
    key = "mystic_wok",
    rules = {
        custom = {
            { id = "no_interest" }
        }
    },
    jokers = {
        { id = "j_joy_yokai_sister", eternal = true },
        { id = "j_joy_yokai_sister", eternal = true },
    },
    consumeables = {
        { id = "c_fool" },
        { id = "c_hermit" },
    },
    restrictions = {
        banned_cards =
        {
            {
                id = "j_joy_runick_fountain",
                ids = { "j_joy_runick_munin", "j_joy_runick_hugin", "j_joy_runick_geri",
                    "j_joy_runick_freki", "j_joy_runick_sleipnir" }
            },
            { id = "j_joy_fish_snopios" },
            { id = "j_joy_psy_zeta" },
        }
    },
    unlocked = function(self)
        return true
    end,
    button_colour = G.C.JOY.SPELL
})

-- Mistake
SMODS.Challenge({
    key = "mistake",
    rules = {
        modifiers = {
            { id = "hands",       value = 3 },
            { id = "discards",    value = 2 },
            { id = "joker_slots", value = 3 },
            { id = "dollars",     value = 8 },
        }
    },
    jokers = {
        { id = "j_joy_yokai_ash", eternal = true },
        { id = "j_joy_yokai_ash", eternal = true },
        { id = "j_joy_yokai_ash", eternal = true },
    },
    vouchers = {
        { id = "v_planet_merchant" },
    },
    restrictions = {
        banned_cards =
        {
            { id = "v_wasteful" },
            { id = "v_grabber" },
            { id = "j_merry_andy" },
            { id = "j_drunkard" },
            { id = "j_burglar" },
            { id = "j_juggler" },
            { id = "j_turtle_bean" },
        }
    },
    unlocked = function(self)
        return true
    end,
    button_colour = G.C.JOY.TRAP
})

-- Monster Reborn
SMODS.Challenge({
    key = "monster_reborn",
    rules = {
        custom = {
            { id = "joy_gy_start", value = { j_joy_etwin_lilla = { count = 1, summonable = 1 } } }
        },
        modifiers = {
            { id = "joker_slots", value = 4 },
            { id = "dollars",     value = 0 },
        }
    },
    jokers = {
        { id = "j_joy_yokai_belle",   eternal = true },
        { id = "j_joy_etwin_kisikil", joy_summoned = true, joy_revived = true },
    },
    unlocked = function(self)
        return true
    end,
    button_colour = G.C.JOY.SPELL
})

-- Domain of the True Monarchs
SMODS.Challenge({
    key = "domain",
    rules = {
        custom = {
            { id = "joy_extra_deck_slots",     value = 0 },
            { id = "joy_no_extra_deck_jokers", value = true }
        },
    },
    unlocked = function(self)
        return true
    end,
    button_colour = G.C.JOY.SPELL
})

local smods_add_to_pool_ref = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    if G.GAME.modifiers.joy_no_extra_deck_jokers and
        prototype_obj.set == "Joker" and JoyousSpring.is_material_center(prototype_obj.key, { is_extra_deck = true }) then
        return false
    end
    return smods_add_to_pool_ref(prototype_obj, args)
end
