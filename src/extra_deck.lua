---EXTRA DECK

---Adds card to Extra deck
---@param card string|Card Key or Card
---@param args table?
JoyousSpring.add_to_extra_deck = function(card, args)
    local args = args or {}
    if type(card) == "string" then
        card = SMODS.create_card({
            area = JoyousSpring.extra_deck_area,
            key = card,
            edition = args.edition or nil,
            no_edition = args.no_edition or nil,
            skip_materialize = true,
        })
    end
    if JoyousSpring.is_field_spell(card) then
        JoyousSpring.field_spell_area:emplace(card)
        card:add_to_deck()
    else
        JoyousSpring.extra_deck_area:emplace(card)
    end
end

---Return from G.jokers to Extra Deck
---@param card Card
JoyousSpring.return_to_extra_deck = function(card)
    if card.area and card.area == G.jokers then
        SMODS.calculate_effect({
            message = localize("k_joy_return"),
            func = function()
                G.E_MANAGER:add_event(Event({
                    trigger = "after",
                    delay = 0.3,
                    func = function()
                        G.jokers:remove_card(card)
                        card:remove_from_deck()
                        card.ability.extra.joyous_spring.summoned = false
                        card.ability.extra.joyous_spring.xyz_materials = 0
                        card:set_cost()
                        JoyousSpring.extra_deck_area:emplace(card)
                        if JokerDisplay then
                            card:joker_display_remove()
                        end
                        return true
                    end,
                }))
            end
        }, card)
    end
end

JoyousSpring.create_UIBox_extra_deck = function()
    local t = {
        n = G.UIT.ROOT,
        config = { align = 'cm', r = 0.1, colour = G.C.CLEAR, padding = 0.2 },
        nodes = {
            {
                n = G.UIT.O,
                config = {
                    object = JoyousSpring.extra_deck_area,
                    draw_layer = 1
                }
            },
        }
    }
    return t
end

---Open the extra deck
---@param forced? boolean
---@param open? boolean
---@param delay_close? number
JoyousSpring.open_extra_deck = function(forced, open, delay_close)
    if open and not JoyousSpring.extra_deck_open then
        JoyousSpring.extra_deck_open = true
        JoyousSpring.extra_deck_forced = JoyousSpring.extra_deck_forced or forced and true
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = function()
                G.jokers.states.visible = false
                G.consumeables.states.visible = false
                G.joy_extra_deck.states.visible = true
                G.joy_extra_deck.alignment.offset.y = 0
                return true
            end
        }))
    elseif not open and (not JoyousSpring.extra_deck_forced or forced) and JoyousSpring.extra_deck_open then
        JoyousSpring.extra_deck_open = false
        JoyousSpring.extra_deck_forced = false
        G.E_MANAGER:add_event(Event({
            blockable = false,
            trigger = "after",
            delay = 0.15 + (delay_close or 0),
            func = function()
                G.E_MANAGER:add_event(Event({
                    trigger = "ease",
                    delay = 0.5,
                    ref_table = G.joy_extra_deck.alignment.offset,
                    ref_value = "y",
                    ease_to = -5,
                }))
                G.E_MANAGER:add_event(Event({
                    blockable = false,
                    trigger = "after",
                    delay = 0.5,
                    func = function()
                        G.consumeables.states.visible = true
                        G.jokers.states.visible = true
                        G.joy_extra_deck.alignment.offset.y = -5
                        G.joy_extra_deck.states.visible = false
                        JoyousSpring.extra_deck_area:unhighlight_all()
                        JoyousSpring.field_spell_area:unhighlight_all()
                        return true
                    end
                }))
                return true
            end
        }))
    end
end

G.FUNCS.joy_open_extra_deck = function(e)
    JoyousSpring.open_extra_deck(true, not G.joy_extra_deck.states.visible)
end

G.FUNCS.joy_show_extra_deck = function(e)
    if JoyousSpring.extra_deck_area and #JoyousSpring.extra_deck_area.cards > 0 then
        G.GAME.joy_show_extra_deck = true
    end
    if G.GAME.joy_show_extra_deck then
        e.states.visible = true
    else
        e.states.visible = false
    end
end

local g_funcs_reroll_shop_ref = G.FUNCS.reroll_shop
G.FUNCS.reroll_shop = function(e)
    JoyousSpring.open_extra_deck(false, false)
    g_funcs_reroll_shop_ref(e)
end

local check_for_buy_space_ref = G.FUNCS.check_for_buy_space
G.FUNCS.check_for_buy_space = function(card)
    if card.ability.set ~= 'Joker' then return check_for_buy_space_ref(card) end
    if JoyousSpring.is_field_spell(card) then
        if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit +
            JoyousSpring.get_card_limit(card) then
            return true
        else
            alert_no_space(card, JoyousSpring.field_spell_area)
            return false
        end
    end
    if JoyousSpring.is_extra_deck_monster(card) then
        if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit +
            JoyousSpring.get_card_limit(card) then
            return true
        else
            alert_no_space(card, JoyousSpring.extra_deck_area)
            return false
        end
    end
    if card.config.center.joy_bypass_room_check and type(card.config.center.joy_bypass_room_check) == "function" and
        card.config.center:joy_bypass_room_check(card, false) then
        return true
    end
    return check_for_buy_space_ref(card)
end

local can_select_card_ref = G.FUNCS.can_select_card
G.FUNCS.can_select_card = function(e)
    local card = e.config.ref_table
    if card.ability.set ~= 'Joker' then
        can_select_card_ref(e)
    elseif JoyousSpring.is_field_spell(card) then
        if JoyousSpring.get_card_limit(card) > 0 or
            #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
            e.config.colour = G.C.GREEN
            e.config.button = 'use_card'
        else
            e.config.colour = G.C.UI.BACKGROUND_INACTIVE
            e.config.button = nil
        end
    elseif JoyousSpring.is_extra_deck_monster(card) then
        if JoyousSpring.get_card_limit(card) > 0 or
            #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
            e.config.colour = G.C.GREEN
            e.config.button = 'use_card'
        else
            e.config.colour = G.C.UI.BACKGROUND_INACTIVE
            e.config.button = nil
        end
    elseif card.config.center.joy_bypass_room_check and type(card.config.center.joy_bypass_room_check) == "function" and
        card.config.center:joy_bypass_room_check(card, true) then
        e.config.colour = G.C.GREEN
        e.config.button = 'use_card'
    else
        can_select_card_ref(e)
    end
end

local card_can_sell_card_ref = Card.can_sell_card
function Card:can_sell_card(context)
    if (G.play and #G.play.cards > 0) or
        (G.CONTROLLER.locked) or
        (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)
    then
        return false
    end
    if self.area and
        (self.area == JoyousSpring.field_spell_area or self.area == JoyousSpring.extra_deck_area) and
        not SMODS.is_eternal(self, { from_sell = true }) then
        return true
    end
    return card_can_sell_card_ref(self, context)
end

local cardarea_remove_ref = CardArea.remove
function CardArea:remove()
    if self == G.shop_jokers or self == G.shop_booster then
        JoyousSpring.open_extra_deck(false, false)
    end
    cardarea_remove_ref(self)
end

local game_start_run_ref = Game.start_run
function Game:start_run(args)
    self.joy_field_spell_area = CardArea(
        0,
        0,
        self.CARD_W * 1.9,
        self.CARD_H * 0.95,
        {
            card_limit = 1,
            type = 'joker',
            highlight_limit = 1,
            negative_info = "field_spell",
            bg_colour = { G.C.JOY.SPELL[1], G.C.JOY.SPELL[2], G.C.JOY.SPELL[3], 0.5 }
        }
    )
    JoyousSpring.field_spell_area = G.joy_field_spell_area
    if JoyousSpring.hide_ui then JoyousSpring.field_spell_area.states.visible = false end
    self.joy_extra_deck_area = CardArea(
        0,
        0,
        self.CARD_W * 4.95,
        self.CARD_H * 0.95,
        {
            card_limit = 5,
            type = 'joker',
            highlight_limit = 1,
            negative_info = "extra_deck",
            bg_colour = { G.C.JOY.SPELL[1], G.C.JOY.SPELL[2], G.C.JOY.SPELL[3], 0.5 }
        }
    )
    JoyousSpring.extra_deck_area = G.joy_extra_deck_area

    game_start_run_ref(self, args)

    if self.GAME.modifiers["joy_extra_deck_slots"] then
        JoyousSpring.extra_deck_area:change_size(-5 + self.GAME.modifiers["joy_extra_deck_slots"])
    end

    self.joy_extra_deck = UIBox {
        definition = JoyousSpring.create_UIBox_extra_deck(),
        config = { align = 'cmi', offset = { x = 2.4, y = -5 }, major = self.jokers, bond = 'Weak' }
    }
    self.joy_extra_deck.states.visible = false
    G.GAME.joy_show_extra_deck = G.GAME.joy_show_extra_deck or false

    JoyousSpring.extra_deck_open = false
    JoyousSpring.extra_deck_forced = false

    JoyousSpring.field_spell_area.T.x = G.consumeables.T.x + 2.3
    JoyousSpring.field_spell_area.T.y = G.consumeables.T.y + 3
end

local smods_edition_get_card_limit_key_ref = SMODS.Edition.get_card_limit_key
function SMODS.Edition.get_card_limit_key(card)
    local area = (card.area or {}).config or {}
    if area.negative_info == "field_spell" or area.negative_info == "extra_deck" then
        return "negative_" .. area.negative_info .. "_SMODS_INTERNAL"
    end
    return smods_edition_get_card_limit_key_ref(card)
end
