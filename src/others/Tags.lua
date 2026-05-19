--- TAGS
SMODS.Atlas({
    key = "Tags",
    path = "tags.png",
    px = 34,
    py = 34
})

-- Booster Tag
SMODS.Tag({
    key = "booster",
    atlas = "Tags",
    pos = { x = 0, y = 0 },
    discovered = true,
    apply = function(self, tag, context)
        if context.type == 'voucher_add' then
            tag:yep('+', G.C.BOOSTER, function()
                SMODS.add_booster_to_shop()
                return true
            end)
            self.triggered = true
        end
    end,
    in_pool = function(self, args)
        return not JoyousSpring.config.disable_booster_tag
    end,
})

-- Monster Tag
SMODS.Tag({
    key = "monster",
    atlas = "Tags",
    loc_vars = function(self, info_queue, tag)
        --TODO: Make it display modifiers
        local center = G.P_CENTERS[tag.ability.monster]
        if center then
            info_queue[#info_queue + 1] = center
        end
        local name = center and localize({ type = 'name_text', set = center.set, key = center.key }) or
            localize("k_joy_monster_tag_default")
        center = center or {}
        return { vars = { name, colours = { (center.set == "Joker" and JoyousSpring.get_name_color(tag.ability.monster)) or (center.set == "Planet" and G.C.SECONDARY_SET.Planet) or G.C.JOY.NORMAL } } }
    end,
    pos = { x = 1, y = 0 },
    discovered = true,
    set_ability = function(self, tag)
        tag.ability.monster = G.GAME.joy_last_monster_tag
    end,
    apply = function(self, tag, context)
        if context.type == 'store_joker_create' then
            local modifiers = tag.ability.modifiers or {}
            modifiers.key = tag.ability.monster or "j_joy_token"
            modifiers.area = G.shop_jokers
            local joy_forced_card = SMODS.create_card(modifiers)
            create_shop_card_ui(joy_forced_card, 'Joker', G.shop_jokers)
            joy_forced_card.states.visible = false
            tag:yep('+', JoyousSpring.is_monster_card(joy_forced_card) and
                joy_forced_card.ability.extra.joyous_spring.summon_type and
                G.C.JOY[joy_forced_card.ability.extra.joyous_spring.summon_type] or G.C.JOY.EFFECT, function()
                    joy_forced_card:start_materialize()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            save_run()
                            return true
                        end
                    }))
                    return true
                end)
            tag.triggered = true
            joy_forced_card:set_cost()
            return joy_forced_card
        end
    end,
    in_pool = function(self, args)
        return false
    end,
})

-- Secret Booster Tag
SMODS.Tag {
    key = "secret",
    atlas = "Tags",
    pos = { x = 0, y = 0 }, -- TODO: Make art for it
    discovered = true,
    loc_vars = function(self, info_queue, tag)
        local center = G.P_CENTERS[tag.ability.booster]
        if center then
            info_queue[#info_queue + 1] = center
        end
        -- TODO: Do this properly once the boosters are done
        local name = center and (center.config.joy_secret or {}).name and
            (center.config.joy_secret.name .. " Secret Pack") or localize("k_joy_secret_tag_default")
        center = center or {}
        return { vars = { name } }
    end,
    set_ability = function(self, tag)
        tag.ability.booster = G.GAME.joy_last_secret_tag
    end,
    apply = function(self, tag, context)
        if context.type == 'new_blind_choice' then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.JOY.EFFECT, function()
                local booster = SMODS.create_card { key = tag.ability.booster or 'p_joy_selection_pack', area = G.play }
                booster.T.x = G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2
                booster.T.y = G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2
                booster.T.w = G.CARD_W * 1.27
                booster.T.h = G.CARD_H * 1.27
                booster.cost = 0
                booster.from_tag = true
                G.FUNCS.use_card({ config = { ref_table = booster } })
                booster:start_materialize()
                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
            return true
        end
    end
}
