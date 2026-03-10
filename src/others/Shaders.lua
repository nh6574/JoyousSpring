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

    if not canvas.cached_text or canvas.cached_value ~= ref_table[ref_value] then
        canvas.cached_value = ref_table[ref_value]

        canvas.cached_text = love.graphics.newText(G.FONTS[1].FONT,
            { G.C.UI.TEXT_LIGHT, canvas.cached_value })

        canvas.cached_shadow = love.graphics.newText(G.FONTS[1].FONT,
            { { 0, 0, 0, 1 }, canvas.cached_value })
    end

    local scale = canvas.canvasScale

    local gx = (59 + x_off) * scale
    local gy = (9 + y_off) * scale
    local cx = (60 + x_off) * scale
    local cy = (8 + y_off) * scale

    canvas.canvas:renderTo(function()
        love.graphics.clear(0, 0, 0, 0)

        love.graphics.draw(graphic, gx, gy, 0, 2.25, 2.25, 32, 32)

        if canvas.cached_text then
            local tw = canvas.cached_text:getWidth() / 2
            local th = canvas.cached_text:getHeight() / 2

            local offsets = {
                { 10, 0 }, { -10, 0 }, { 0, 10 }, { 0, -10 }
            }

            for i = 1, 4 do
                local o = offsets[i]
                love.graphics.draw(canvas.cached_shadow, cx + o[1], cy + o[2], 0, 0.75, 0.75, tw, th)
            end

            love.graphics.draw(canvas.cached_text, cx, cy, 0, 0.75, 0.75, tw, th)
        end
    end)

    love.graphics.pop()
    canvas.role.draw_major = card
    canvas:draw_shader('dissolve', nil, nil, nil, card.children.center)
end

SMODS.DrawStep {
    key = 'xyz_materials',
    order = 45,
    func = function(card, layer)
        if not JoyousSpring.config.disable_counters then
            if JoyousSpring.is_summon_type(card, "XYZ") and card.ability.extra.joyous_spring.xyz_materials > 0 then
                draw_counter(card, "xyzmaterial", card.ability.extra.joyous_spring, "xyz_materials")
            end
            if card.config.center.key == "j_joy_shaddoll_prison" and card.ability.extra.counters > 0 then
                draw_counter(card, "spellstone", card.ability.extra, "counters")
            end
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}
