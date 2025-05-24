-- SHADERS

SMODS.Shader {
    key = "glow",
    path = "glow.fs",
}

SMODS.DrawStep {
    key = 'glow_on_active',
    order = 21,
    func = function(self, layer)
        if not JoyousSpring.config.disable_glow and self.area and (self.area == G.jokers or self.area == JoyousSpring.field_spell_area) and JoyousSpring.can_activate(self, true) then
            self.children.center:draw_shader("joy_glow", nil,
                self.ARGS.send_to_shader or { math.min(self.VT.r * 3, 1) + math.sin(G.TIMERS.REAL / 28) + 1 +
                (self.juice and self.juice.r * 20 or 0) + self.tilt_var.amt, G.TIMERS.REAL })
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}
