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

JoyousSpring.CounterAssets = {}

local counter_assets = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "assets/counters")
for _, file in ipairs(counter_assets) do
    if file:sub(-4) == ".png" then
        JoyousSpring.CounterAssets[file:match("^(.*)%.png$")] =
            love.graphics.newImage(love.image.newImageData(SMODS.NFS.newFileData(SMODS.current_mod.path ..
                "assets/counters/" .. file)))
    end
end

local draw_counter = function(card, key, ref_table, ref_value, x_off, y_off)
    local graphic = JoyousSpring.CounterAssets[key]
    if not graphic then return end
    if not card["joy_" .. key .. "_canvas"] then card["joy_" .. key .. "_canvas"] = SMODS.CanvasSprite {} end
    local canvas = card["joy_" .. key .. "_canvas"]
    x_off = x_off or 0
    y_off = y_off or 0

    love.graphics.push()
    love.graphics.origin()
    canvas.canvas:renderTo(love.graphics.clear, 0, 0, 0, 0)
    canvas.canvas:renderTo(love.graphics.draw,
        graphic,
        (59 + x_off) * canvas.canvasScale,
        (9 + y_off) * canvas.canvasScale,
        0,
        2.25, 2.25,
        32, 32
    )
    local text = love.graphics.newText(G.FONTS[1].FONT,
        { G.C.UI.TEXT_LIGHT, ref_table[ref_value] })
    local shadow = love.graphics.newText(G.FONTS[1].FONT,
        { { 0, 0, 0, 1 }, ref_table[ref_value] })
    if text then
        local shadow_offset = 10
        for i = 1, 4 do
            canvas.canvas:renderTo(love.graphics.draw,
                shadow,
                (60 + x_off) * canvas.canvasScale +
                (i == 1 and shadow_offset or i == 2 and -shadow_offset or 0),
                (8 + y_off) * canvas.canvasScale +
                (i == 3 and shadow_offset or i == 4 and -shadow_offset or 0),
                0,
                0.75, 0.75,
                text:getWidth() / 2, text:getHeight() / 2
            )
        end
        canvas.canvas:renderTo(love.graphics.draw,
            text,
            (60 + x_off) * canvas.canvasScale,
            (8 + y_off) * canvas.canvasScale,
            0,
            0.75, 0.75,
            text:getWidth() / 2, text:getHeight() / 2
        )
    end
    love.graphics.pop()
    canvas.role.draw_major = card
    canvas:draw_shader('dissolve', nil, nil, nil, card.children.center)
end

SMODS.DrawStep {
    key = 'xyz_materials',
    order = 45,
    func = function(card, layer)
        if JoyousSpring.is_summon_type(card, "XYZ") and card.ability.extra.joyous_spring.xyz_materials > 0 then
            draw_counter(card, "xyzmaterial", card.ability.extra.joyous_spring, "xyz_materials")
        end
        if card.config.center.key == "j_joy_shaddoll_prison" and card.ability.extra.counters > 0 then
            draw_counter(card, "spellstone", card.ability.extra, "counters")
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}
