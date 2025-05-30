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
        if card.edition and card.edition.card_limit then
            JoyousSpring.field_spell_area.config.card_limit = JoyousSpring.field_spell_area.config.card_limit +
                card.edition.card_limit
        end
        JoyousSpring.field_spell_area:emplace(card)
        card:add_to_deck()
    else
        if card.edition and card.edition.card_limit then
            JoyousSpring.extra_deck_area.config.card_limit = JoyousSpring.extra_deck_area.config.card_limit +
                card.edition.card_limit
        end
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
    if JoyousSpring.is_field_spell(card) then
        if #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit +
            ((card.edition and card.edition.negative) and 1 or 0) then
            return true
        else
            alert_no_space(card, JoyousSpring.field_spell_area)
            return false
        end
    end
    if JoyousSpring.is_extra_deck_monster(card) then
        if #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit +
            ((card.edition and card.edition.negative) and 1 or 0) then
            return true
        else
            alert_no_space(card, JoyousSpring.extra_deck_area)
            return false
        end
    end
    return check_for_buy_space_ref(card)
end

local can_select_card_ref = G.FUNCS.can_select_card
G.FUNCS.can_select_card = function(e)
    local card = e.config.ref_table
    if card.ability.set == 'Joker' and JoyousSpring.is_field_spell(card) then
        if (card.edition and card.edition.negative) or
            #JoyousSpring.field_spell_area.cards < JoyousSpring.field_spell_area.config.card_limit then
            e.config.colour = G.C.GREEN
            e.config.button = 'use_card'
        else
            e.config.colour = G.C.UI.BACKGROUND_INACTIVE
            e.config.button = nil
        end
    elseif card.ability.set == 'Joker' and JoyousSpring.is_extra_deck_monster(card) then
        if (card.edition and card.edition.negative) or
            #JoyousSpring.extra_deck_area.cards < JoyousSpring.extra_deck_area.config.card_limit then
            e.config.colour = G.C.GREEN
            e.config.button = 'use_card'
        else
            e.config.colour = G.C.UI.BACKGROUND_INACTIVE
            e.config.button = nil
        end
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
        self.area.config.type == 'extra_deck' and
        not self.ability.eternal then
        return true
    end
    return card_can_sell_card_ref(self, context)
end

local card_remove_from_area_ref = Card.remove_from_area
function Card:remove_from_area()
    if self.area == JoyousSpring.field_spell_area and
        self.edition and self.edition.card_limit then
        JoyousSpring.field_spell_area.config.card_limit =
            JoyousSpring.field_spell_area.config.card_limit - self.edition.card_limit
        if JoyousSpring.field_spell_area.config.card_limit < 1 then
            JoyousSpring.field_spell_area.config.card_limit = 1
        end
    end
    if self.area == JoyousSpring.extra_deck_area and
        self.edition and self.edition.card_limit then
        JoyousSpring.extra_deck_area.config.card_limit =
            JoyousSpring.extra_deck_area.config.card_limit - self.edition.card_limit
        if JoyousSpring.extra_deck_area.config.card_limit < 5 then
            JoyousSpring.extra_deck_area.config.card_limit = 5
        end
    end
    card_remove_from_area_ref(self)
end

local card_set_edition_ref = Card.set_edition
function Card:set_edition(edition, immediate, silent)
    if edition and edition.negative and JoyousSpring.is_monster_card(card) and card.area then
        if card.area == JoyousSpring.extra_deck_area then
            JoyousSpring.extra_deck_area.config.card_limit = JoyousSpring.extra_deck_area.config.card_limit + 1
        elseif card.area == JoyousSpring.field_spell_area then
            JoyousSpring.field_spell_area.config.card_limit = JoyousSpring.field_spell_area.config.card_limit + 1
        end
    end
    card_set_edition_ref(self, edition, immediate, silent)
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
            type = 'extra_deck',
            highlight_limit = 1,
        }
    )
    JoyousSpring.field_spell_area = G.joy_field_spell_area
    self.joy_extra_deck_area = CardArea(
        0,
        0,
        self.CARD_W * 4.95,
        self.CARD_H * 0.95,
        {
            card_limit = 5,
            type = 'extra_deck',
            highlight_limit = 1,
        }
    )
    JoyousSpring.extra_deck_area = G.joy_extra_deck_area

    game_start_run_ref(self, args)

    JoyousSpring.extra_deck_area.config.card_limit = self.GAME.modifiers["joy_extra_deck_slots"] or
        JoyousSpring.extra_deck_area.config.card_limit or 5

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
