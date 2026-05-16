-- OPPONENT AREA AND CARDS

-- no, there's no AI to play against in this mod

SMODS.Atlas({
    key = "small_Back",
    path = "blind_back.png",
    px = 34,
    py = 34
})

JoyousSpring.OpponentCard = SMODS.Center:extend {
    set = "joy_Opponent",
    unlocked = true,
    discovered = true,
    class_prefix = "opp",
    config = {},
    pos = { x = 0, y = 0 },
    display_size = { w = 34, h = 34 },
    set_sprites = JoyousSpring.set_back_sprite,
    pre_inject_class = function(self)
        G.P_CENTER_POOLS[self.set] = {}
    end,
    inject = function(self, i)
        SMODS.Center.inject(self, i)
        local joy_glossary = {}
        local glossary_hash = {}
        if self.joy_glossary then
            for _, g in ipairs(self.joy_glossary) do
                if not glossary_hash[g] then
                    joy_glossary[#joy_glossary + 1] = g
                end
                glossary_hash[g] = true
            end
        end
        ---@type joyous_spring
        local joyous_spring = self.config.extra.joyous_spring
        if not glossary_hash["opponent"] then
            joy_glossary[#joy_glossary + 1] = "opponent"
        end
        if joyous_spring.is_pendulum and not glossary_hash["pendulum"] then
            joy_glossary[#joy_glossary + 1] = "pendulum"
        end
        if joyous_spring.summon_type and joyous_spring.summon_type ~= "NORMAL" and not glossary_hash[joyous_spring.summon_type:lower()] then
            joy_glossary[#joy_glossary + 1] = joyous_spring.summon_type:lower()
        end
        if joyous_spring.is_flip and not glossary_hash["flip"] then joy_glossary[#joy_glossary + 1] = "flip" end
        if joyous_spring.is_trap and not glossary_hash["trap"] then joy_glossary[#joy_glossary + 1] = "trap" end
        if joyous_spring.is_field_spell and not glossary_hash["fieldspell"] then
            joy_glossary[#joy_glossary + 1] = "fieldspell"
        end
        if not joyous_spring.is_effect and not joyous_spring.is_field_spell then
            if joyous_spring.token_name and not glossary_hash["token"] then joy_glossary[#joy_glossary + 1] = "token" end
            if not glossary_hash["normal"] then joy_glossary[#joy_glossary + 1] = "normal" end
        end
        self.joy_glossary = next(joy_glossary) and joy_glossary or nil
    end,
    set_card_type_badge = function(self, card, badges)
        if not card.area or card.area ~= G.joy_blind_effects_area then
            badges[#badges + 1] = create_badge(localize("k_joy_opponent"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        else
            badges[#badges + 1] = create_badge(localize("b_blinds"), G.C.JOY.TRAP, G.C.UI.TEXT_LIGHT, 1.2)
        end
    end
}

---Handles the card limit of JoyousSpring.opponent_area
JoyousSpring.handle_opponent_area_limit = function()
    local area = JoyousSpring.opponent_area
    local limit = area.config.card_limit
    local amount = #area.cards
    local i = 1
    while limit < amount do
        local card = area.cards[i]
        if not card then break end
        if (not card.edition or not card.edition.negative) and JoyousSpring.get_card_limit(card) <= 0 then
            JoyousSpring.destroy_cards(card, true)
            amount = amount - 1
        end
        i = i + 1
    end
end

G.FUNCS.joy_your_collection_opponent = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu {
        definition = JoyousSpring.create_UIBox_your_collection_opponent(),
    }
end

JoyousSpring.create_UIBox_your_collection_opponent = function()
    return SMODS.card_collection_UIBox(G.P_CENTER_POOLS.joy_Opponent, { 8, 8, 8, 8, 8 }, {
        no_materialize = true,
        h_mod = 0.5,
        w_mod = 0.8,
        card_scale = 1.5,
    })
end

function JoyousSpring.opponent_collection_tally()
    local obj_tally = { tally = 0, of = 0 }

    for _, v in pairs(G.P_CENTER_POOLS.joy_Opponent) do
        if not v.no_collection then
            obj_tally.of = obj_tally.of + 1
            if v.discovered then
                obj_tally.tally = obj_tally.tally + 1
            end
        end
    end

    return obj_tally
end
