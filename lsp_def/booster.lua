---@meta

---@class JoyousSpring.secret_booster: SMODS.Booster
---@field joy_secret joy_secret
---@overload fun(self: JoyousSpring.secret_booster): JoyousSpring.secret_booster
JoyousSpring.secret_booster = setmetatable({}, {
    __call = function(self)
        return self
    end
})

---@class joy_secret
---@field center string
---@field properties? material_properties[]
---@field extra_keys? string[]
