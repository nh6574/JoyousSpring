--- GLOBALS

G.C.JOY = {
    MOD = HEX("F4A6C7"),
    NORMAL = HEX("E4C754"),
    EFFECT = HEX("FF8B53"),
    SPELL = HEX("1D9E74"),
    PENDULUM = HEX("1D9E74"),
    TRAP = HEX("BC5A84"),
    RITUAL = HEX("9DB5CC"),
    FUSION = HEX("A086B7"),
    SYNCHRO = HEX("ADADAD"),
    XYZ = HEX("7F7E7E"),
    LINK = HEX("0092E6"),
    TOKEN = HEX("828E85"),
    LIGHT = HEX("DBBB51"),
    DARK = HEX("937CB5"),
    WATER = HEX("21BBE4"),
    FIRE = HEX("FD0404"),
    EARTH = HEX("90906C"),
    WIND = HEX("8CC56E"),
    DIVINE = HEX("836A3C"),
}

SMODS.Gradient({
    key = "PENDULUM_NORMAL",
    colours = { G.C.JOY.SPELL, G.C.JOY.NORMAL },
    cycle = 7.5,
})

SMODS.Gradient({
    key = "PENDULUM_EFFECT",
    colours = { G.C.JOY.SPELL, G.C.JOY.EFFECT },
    cycle = 7.5,
})

SMODS.Gradient({
    key = "PENDULUM_RITUAL",
    colours = { G.C.JOY.SPELL, G.C.JOY.RITUAL },
    cycle = 7.5,
})

SMODS.Gradient({
    key = "PENDULUM_FUSION",
    colours = { G.C.JOY.SPELL, G.C.JOY.FUSION },
    cycle = 7.5,
})

SMODS.Gradient({
    key = "PENDULUM_SYNCHRO",
    colours = { G.C.JOY.SPELL, G.C.JOY.SYNCHRO },
    cycle = 7.5,
})

SMODS.Gradient({
    key = "PENDULUM_XYZ",
    colours = { G.C.JOY.SPELL, G.C.JOY.XYZ },
    cycle = 7.5,
})

G.C.JOY.PENDULUM = SMODS.Gradients.joy_PENDULUM_NORMAL
G.C.JOY.PENDULUM_EFFECT = SMODS.Gradients.joy_PENDULUM_EFFECT
G.C.JOY.PENDULUM_RITUAL = SMODS.Gradients.joy_PENDULUM_RITUAL
G.C.JOY.PENDULUM_FUSION = SMODS.Gradients.joy_PENDULUM_FUSION
G.C.JOY.PENDULUM_SYNCHRO = SMODS.Gradients.joy_PENDULUM_SYNCHRO
G.C.JOY.PENDULUM_XYZ = SMODS.Gradients.joy_PENDULUM_XYZ

-- Hooks

local loc_colour_ref = loc_colour
function loc_colour(_c, _default)
    if not G.ARGS.LOC_COLOURS then
        loc_colour_ref()
    end
    G.ARGS.LOC_COLOURS.joy_mod = G.C.JOY.MOD
    G.ARGS.LOC_COLOURS.joy_normal = G.C.JOY.NORMAL
    G.ARGS.LOC_COLOURS.joy_effect = G.C.JOY.EFFECT
    G.ARGS.LOC_COLOURS.joy_spell = G.C.JOY.SPELL
    G.ARGS.LOC_COLOURS.joy_pendulum = G.C.JOY.PENDULUM
    G.ARGS.LOC_COLOURS.joy_pendulum_normal = G.C.JOY.PENDULUM
    G.ARGS.LOC_COLOURS.joy_pendulum_effect = G.C.JOY.PENDULUM_EFFECT
    G.ARGS.LOC_COLOURS.joy_pendulum_ritual = G.C.JOY.PENDULUM_RITUAL
    G.ARGS.LOC_COLOURS.joy_pendulum_fusion = G.C.JOY.PENDULUM_FUSION
    G.ARGS.LOC_COLOURS.joy_pendulum_synchro = G.C.JOY.PENDULUM_SYNCHRO
    G.ARGS.LOC_COLOURS.joy_pendulum_xyz = G.C.JOY.PENDULUM_XYZ
    G.ARGS.LOC_COLOURS.joy_trap = G.C.JOY.TRAP
    G.ARGS.LOC_COLOURS.joy_ritual = G.C.JOY.RITUAL
    G.ARGS.LOC_COLOURS.joy_fusion = G.C.JOY.FUSION
    G.ARGS.LOC_COLOURS.joy_synchro = G.C.JOY.SYNCHRO
    G.ARGS.LOC_COLOURS.joy_xyz = G.C.JOY.XYZ
    G.ARGS.LOC_COLOURS.joy_link = G.C.JOY.LINK
    G.ARGS.LOC_COLOURS.joy_token = G.C.JOY.TOKEN
    G.ARGS.LOC_COLOURS.joy_light = G.C.JOY.LIGHT
    G.ARGS.LOC_COLOURS.joy_dark = G.C.JOY.DARK
    G.ARGS.LOC_COLOURS.joy_water = G.C.JOY.WATER
    G.ARGS.LOC_COLOURS.joy_fire = G.C.JOY.FIRE
    G.ARGS.LOC_COLOURS.joy_earth = G.C.JOY.EARTH
    G.ARGS.LOC_COLOURS.joy_wind = G.C.JOY.WIND
    G.ARGS.LOC_COLOURS.joy_divine = G.C.JOY.DIVINE

    return loc_colour_ref(_c, _default)
end
