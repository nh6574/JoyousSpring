--- CENTUR-ION
SMODS.Atlas({
    key = "centur",
    path = "32CenturIon.png",
    px = 71,
    py = 95
})

-- Centur-Ion Primera
SMODS.Joker({
    key = "centur_primera",
    atlas = 'centur',
    pos = { x = 0, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["CenturIon"] = true }
            },
            mult = 20
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
        if JoyousSpring.used_as_material(card, context) and JoyousSpring.is_summon_type(context.joy_card, "SYNCHRO") then
            SMODS.add_card { key = "j_joy_centur_primera", area = JoyousSpring.side_deck_area, stickers = { 'perishable' }, force_stickers = { 'perishable' } }
            JoyousSpring.add_monster_tag_pseudorandom({ { is_extra_deck = true, monster_archetypes = { "CenturIon" } } },
                self.key)
        end
    end,
    joy_prevent_flip = function(self, card, other_card)
        if other_card.facing == "front" and card.area and card.area == JoyousSpring.side_deck_area then
            if JoyousSpring.is_summon_type(other_card, "SYNCHRO") then
                return true
            end
        end
    end,
    joy_can_calculate_in_side = function(self, card, func)
        return not not next(SMODS.find_card("j_joy_centur_legatia"))
    end
})

local mod_set_debuff_ref = SMODS.current_mod.set_debuff or function() end
SMODS.current_mod.set_debuff = function(card)
    if JoyousSpring.is_summon_type(card, "SYNCHRO") then
        local has_primera = false
        for _, joker in ipairs(JoyousSpring.side_deck_area.cards) do
            if joker.config.center.key == "j_joy_centur_primera" and JoyousSpring.can_use_abilities(joker) then
                has_primera = true
                break
            end
        end
        return has_primera and "prevent_debuff" or nil
    end
    return mod_set_debuff_ref(card)
end

-- Centur-Ion Atrii
SMODS.Joker({
    key = "centur_atrii",
    atlas = 'centur',
    pos = { x = 0, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips, card.ability.extra.h_size } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_tuner = true,
                is_all_materials = { SYNCHRO = true },
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            chips = 80,
            h_size = 1
        },
    },
})

-- Centur-Ion Chimerea
SMODS.Joker({
    key = "centur_chimerea",
    atlas = 'centur',
    pos = { x = 1, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Pyro",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            money = 4
        },
    },
})

-- Centur-Ion Trudea
SMODS.Joker({
    key = "centur_trudea",
    atlas = 'centur',
    pos = { x = 1, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Pyro",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            xmult = 2
        },
    },
})

-- Centur-Ion Gargoyle II
SMODS.Joker({
    key = "centur_gargoyle",
    atlas = 'centur',
    pos = { x = 3, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xchips, card.ability.extra.xmult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            xchips = 2,
            xmult = 1.2
        },
    },
})

-- Centur-Ion Emeth VI
SMODS.Joker({
    key = "centur_emeth",
    atlas = 'centur',
    pos = { x = 2, y = 0 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "EARTH",
                monster_archetypes = { ["CenturIon"] = true }
            },
            mult = 6
        },
    },
})

-- Centur-Ion Primera Primus
SMODS.Joker({
    key = "centur_primus",
    atlas = 'centur',
    pos = { x = 0, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * JoyousSpring.get_summoned_count("SYNCHRO") } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                is_tuner = true,
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["CenturIon"] = true }
            },
            xmult = 0.1
        },
    },
})

-- Centur-Ion Auxila
SMODS.Joker({
    key = "centur_auxila",
    atlas = 'centur',
    pos = { x = 1, y = 2 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult, 1 + card.ability.extra.xmult * (JoyousSpring.side_deck_area and #JoyousSpring.side_deck_area.cards or 0) } }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                monster_type = "Dragon",
                attribute = "DARK",
                monster_archetypes = { ["CenturIon"] = true }
            },
            xmult = 0.25
        },
    },
})

-- Centur-Ion Legatia
SMODS.Joker({
    key = "centur_legatia",
    atlas = 'centur',
    pos = { x = 3, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                summon_type = "SYNCHRO",
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["CenturIon"] = true }
            },
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            return JoyousSpring.calculate_in_side_deck(context, card)
        end
    end
})

-- Stand Up Centur-Ion!
SMODS.Joker({
    key = "centur_standup",
    atlas = 'centur',
    pos = { x = 2, y = 1 },
    rarity = 1,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = { { monster_archetypes = { "CenturIon" } }, }, name = "k_joy_archetype" },
    },
    set_sprites = JoyousSpring.set_back_sprite,
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["CenturIon"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "centur" },
    label = "k_joy_archetype_centur"
}
