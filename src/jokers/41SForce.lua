--- S-Force
SMODS.Atlas({
    key = "sforce",
    path = "41SForce.png",
    px = 71,
    py = 95
})

---@type material_properties[]
local sforce_rivals = {
    { monster_archetypes = { "EvilTwin" } },
    { monster_archetypes = { "PSYFrame" } },
    { monster_archetypes = { "TimeThief" } },
    { key = "j_joy_ipmasq" },
    { key = "j_joy_spknight" },
    { key = "j_joy_wpball" },
}

local sforce_targets = copy_table(sforce_rivals)
sforce_targets[#sforce_targets + 1] = { monster_archetypes = { "SForce" } }

-- S-Force Retroactive
JoyousSpring.Joker({
    key = "sforce_retro",
    atlas = 'sforce',
    pos = { x = 0, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mills } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_all_materials = { LINK = true },
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
            mills = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if context.setting_blind then
                JoyousSpring.send_to_graveyard_pseudorandom(copy_table(sforce_rivals), self.key, card.ability.extra
                    .mills)
                return {
                    message = localize("k_joy_mill")
                }
            end
            if context.after and card.ability.extra.should_banish then
                JoyousSpring.banish(card, "boss_selected")
            end
        end
    end,
})

-- S-Force Rappa Chiyomaru
JoyousSpring.Joker({
    key = "sforce_rappa",
    atlas = 'sforce',
    pos = { x = 3, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.times, card.ability.extra.count, card.ability.extra.adds } }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "DARK",
                monster_archetypes = { ["SForce"] = true }
            },
            count = 0,
            times = 2,
            adds = 2
        },
    },
    calculate = function(self, card, context)
        if JoyousSpring.can_use_abilities(card) then
            if not context.blueprint_card and not context.retrigger_joker and
                context.joy_pre_setting_blind then
                JoyousSpring.banish(card, "boss_selected")

                JoyousSpring.create_pseudorandom(
                    { { monster_archetypes = { "SForce" }, is_main_deck = true } }, self.key)
            end

            if context.joy_returned and context.joy_returned_card == card then
                card.ability.extra.count = card.ability.extra.count + 1
                if card.ability.extra.count >= card.ability.extra.times then
                    card.ability.extra.count = 0
                    for i = 1, card.ability.extra.adds do
                        JoyousSpring.add_monster_tag_pseudorandom(
                            { { key = "j_joy_etwin_sunny" },
                                { key = "j_joy_ipmasq" },
                                { key = "j_joy_spknight" },
                                { key = "j_joy_wpball" }, }, self.key)
                    end
                end
            end
        end
        if JoyousSpring.used_as_material(card, context) and not context.joy_card.edition then
            local is_target = ({ j_joy_etwin_sunny = true, j_joy_ipmasq = true, j_joy_spknight = true, j_joy_wpball = true })
                [context.joy_card.config.center_key]
            if is_target then
                context.joy_card:set_edition('e_negative')
            end
        end
    end,
})

-- S-Force Signus
JoyousSpring.Joker({
    key = "sforce_signus",
    atlas = 'sforce',
    pos = { x = 1, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Warrior",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Professor DiGamma
JoyousSpring.Joker({
    key = "sforce_digamma",
    atlas = 'sforce',
    pos = { x = 2, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Psychic",
                attribute = "DARK",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Edge Razor
JoyousSpring.Joker({
    key = "sforce_razor",
    atlas = 'sforce',
    pos = { x = 1, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "DARK",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Orrafist
JoyousSpring.Joker({
    key = "sforce_orrafist",
    atlas = 'sforce',
    pos = { x = 0, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Dog Tag
JoyousSpring.Joker({
    key = "sforce_dog",
    atlas = 'sforce',
    pos = { x = 0, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Machine",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Gravitino
JoyousSpring.Joker({
    key = "sforce_gravitino",
    atlas = 'sforce',
    pos = { x = 2, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Psychic",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Pla-Tina
JoyousSpring.Joker({
    key = "sforce_platina",
    atlas = 'sforce',
    pos = { x = 1, y = 1 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Spellcaster",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Lapcewell
JoyousSpring.Joker({
    key = "sforce_lapcewell",
    atlas = 'sforce',
    pos = { x = 3, y = 0 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Fiend",
                attribute = "LIGHT",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Nightchaser
JoyousSpring.Joker({
    key = "sforce_nightchaser",
    atlas = 'sforce',
    pos = { x = 0, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "DARK",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Nightslayer
JoyousSpring.Joker({
    key = "sforce_nightslayer",
    atlas = 'sforce',
    pos = { x = 1, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "DARK",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Justify
JoyousSpring.Joker({
    key = "sforce_justify",
    atlas = 'sforce',
    pos = { x = 3, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "LIGHT",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Mystify
JoyousSpring.Joker({
    key = "sforce_mystify",
    atlas = 'sforce',
    pos = { x = 2, y = 3 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                monster_type = "Cyberse",
                attribute = "LIGHT",
                summon_type = "LINK",
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

-- S-Force Bridgehead
JoyousSpring.Joker({
    key = "sforce_bridgehead",
    atlas = 'sforce',
    pos = { x = 2, y = 2 },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return { vars = {} }
    end,
    joy_desc_cards = {
        { properties = copy_table(sforce_rivals),                  name = "k_joy_related" },
        { properties = { { monster_archetypes = { "SForce" } }, }, name = "k_joy_archetype" },
    },
    config = {
        extra = {
            joyous_spring = JoyousSpring.init_joy_table {
                is_field_spell = true,
                monster_archetypes = { ["SForce"] = true }
            },
        },
    },
})

JoyousSpring.collection_pool[#JoyousSpring.collection_pool + 1] = {
    keys = { "sforce" },
    label = "k_joy_archetype_sforce"
}
