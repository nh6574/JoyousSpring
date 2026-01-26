-- BLIND SYSTEMS

JoyousSpring.BES = {}

local smods_blind_inject_ref = SMODS.Blind.inject or function() end
SMODS.Blind.inject = function(self, i)
    smods_blind_inject_ref(self, i)
    if self.joy_calculate_ante then
        JoyousSpring.BES[self.key] = { calculate = self.joy_calculate_ante }
    end
end

local blind_defeat_ref = Blind.defeat
function Blind:defeat(silent)
    blind_defeat_ref(self, silent)
    G.GAME.joy_blind_defeated = true
end

JoyousSpring.blind_changed = function(blind_type, new_key, old_key)
    local new_blind = new_key and G.P_BLINDS[new_key]
    local old_blind = old_key and G.P_BLINDS[old_key]
    G.GAME.joy_active_blinds = G.GAME.joy_active_blinds or {}

    if old_blind then
        if not G.GAME.joy_blind_defeated and type(old_blind.joy_on_exit) == "function" then
            old_blind:joy_on_exit(blind_type)
        end
        if blind_type == "Boss" or (G.GAME.round_resets.blind_choices.Boss ~= old_key and
                (blind_type ~= "Small" or G.GAME.round_resets.blind_choices.Big ~= old_key)) then
            G.GAME.joy_active_blinds[old_key] = nil
            JoyousSpring.update_blind_effects_area()
        end
    end

    if new_blind then
        if type(new_blind.joy_on_enter) == "function" then
            new_blind:joy_on_enter(blind_type)
        end
        if type(new_blind.joy_calculate_ante) == "function" then
            G.GAME.joy_active_blinds[new_key] = blind_type
            JoyousSpring.update_blind_effects_area()
        end
    end

    G.GAME.joy_blind_defeated = nil
end

JoyousSpring.update_blind_effects_area = function()
    if not G.joy_blind_effects_area or not G.joy_blind_effects_area.cards then return end
    local cards_in_area = {}
    for _, card in ipairs(G.joy_blind_effects_area.cards) do
        if not card.config.center.joy_blind_key or not G.GAME.joy_active_blinds[card.config.center.joy_blind_key] then
            card:remove()
        else
            cards_in_area[card.config.center.joy_blind_key] = true
        end
    end
    for key, _ in pairs(G.GAME.joy_active_blinds) do
        local prototype = G.P_BLINDS[key]
        if prototype and prototype.joy_joker_key and not cards_in_area[prototype.joy_joker_key] then
            local created_card = SMODS.create_card { key = prototype.joy_joker_key, no_edition = true }
            G.joy_blind_effects_area:emplace(created_card)
        end
    end
end

JoyousSpring.find_blind_effect_card = function(key)
    if not G.joy_blind_effects_area or not G.joy_blind_effects_area.cards then return end
    for _, card in ipairs(G.joy_blind_effects_area.cards) do
        if card.config.center.joy_blind_key == key then
            return card
        end
    end
end

SMODS.current_mod.custom_card_areas = function(game)
    game.joy_blind_effects_area = CardArea(
        -0.575, -0.5, 5, 0.7,
        {
            card_limit = 99,
            type = 'joker',
            highlight_limit = 0,
            negative_info = 'joker',
            no_card_count = true,
            bg_colour = G.C.CLEAR
        })
    game.joy_opponent_area = CardArea(
        0, 0, game.CARD_W * 1.9, 0.7,
        {
            card_limit = 5,
            type = 'joker',
            highlight_limit = 0,
            negative_info = 'joker',
            bg_colour = { G.C.JOY.TRAP[1], G.C.JOY.TRAP[2], G.C.JOY.TRAP[3], 0.5 }
        })
    game.joy_opponent_area.states.visible = false
end

local card_should_draw_shadow_ref = Card.should_draw_shadow
function Card:should_draw_shadow()
    if self.area and self.area == G.joy_blind_effects_area then
        return false
    end
    return card_should_draw_shadow_ref(self)
end
