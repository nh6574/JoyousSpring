SMODS.Atlas {
    key = "blinds",
    path = "blind_macro.png",
    px = 34,
    py = 34,
    atlas_table = "ANIMATION_ATLAS",
    frames = 21
}

SMODS.Blind {
    key = "macrocosmos",
    atlas = "blinds",
    pos = { x = 0, y = 0 },
    discovered = true,
    boss_colour = G.C.JOY.TRAP,
    boss = { min = 1, max = 10 },
    loc_txt = {
        name = "Macro Cosmos",
        text = {
            "No cards are sent to",
            "the {C:attention}GY{} this ante"
        }
    },
    in_pool = function (self)
        return false
    end
}
