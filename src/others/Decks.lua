-- DECKS
SMODS.Atlas({
    key = "Deck",
    path = "Decks01.png",
    px = 71,
    py = 95
})

-- Laundy Trap
SMODS.Back {
    key = "dmaid",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 0 },
    apply = function(self, back)
        G.GAME.modifiers.joy_copy_GY = true
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                SMODS.add_card { key = "j_joy_dmaid_laundry" }
                return true
            end)
        }))
    end
}

-- Evil★Twin Challenge
SMODS.Back {
    key = "etwin",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 0 },
    apply = function(self, back)
        G.GAME.modifiers.joy_revive_no_room = true
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.add_to_extra_deck("j_joy_etwin_sunny", { no_edition = true })
                return true
            end)
        }))
    end
}

-- Nadir Servant
-- SMODS.Back {
--     key = "dogma",
--     atlas = "Deck",
--     discovered = true,
--     pos = { x = 2, y = 0 },
--     apply = function(self, back)

--     end
-- }

-- Haunted Shrine
SMODS.Back {
    key = "yokai",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 0 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                local choice = pseudorandom_element(
                    { "j_joy_yokai_ogre", "j_joy_yokai_reaper", "j_joy_yokai_belle", "j_joy_yokai_sister",
                        "j_joy_yokai_mourner", "j_joy_yokai_ash" }, self.key)
                SMODS.add_card { key = choice, no_edition = true }
                SMODS.add_card { key = "c_strength" }
                return true
            end
        }))
    end
}

-- Spright Starter
SMODS.Back {
    key = "spright",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 0 },
    apply = function(self, back)
        G.GAME.modifiers.joy_only_rarity = 2
    end
}

-- World Legacy's Memory
SMODS.Back {
    key = "mekk",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 0 },
    initial_deck = {
        ranks = { "Ace", "King", "Queen", "Jack" }
    },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            blocking = false,
            func = function()
                if G.deck and G.deck.cards then
                    JoyousSpring.add_to_extra_deck("j_joy_mekk_spectrum", { no_edition = true })
                    local card_list = SMODS.shallow_copy(G.playing_cards)
                    for _, pcard in pairs(card_list) do
                        SMODS.copy_card(pcard)
                        SMODS.copy_card(pcard)
                    end
                    return true
                end
            end
        }))
    end
}

-- Generaider Boss Room
-- SMODS.Back {
--     key = "generaider",
--     atlas = "Deck",
--     discovered = true,
--     pos = { x = 6, y = 0 },
--     apply = function(self, back)

--     end
-- }

-- Ghoti Chain
SMODS.Back {
    key = "fish",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 1 },
    calculate = function(self, back, context)
        if context.joy_post_round_eval then
            for _, joker in ipairs(G.jokers.cards) do
                JoyousSpring.banish(joker, "blind_selected")
            end
        end
        if context.joy_pre_setting_blind then
            local banished = JoyousSpring.get_banished_cards(nil, true)
            for _, banished_card in ipairs(banished) do
                JoyousSpring.return_from_banish(banished_card)
            end
        end
    end
}

-- PSY-Frame Accelerator
-- SMODS.Back {
--     key = "psy",
--     atlas = "Deck",
--     discovered = true,
--     pos = { x = 1, y = 1 },
--     apply = function(self, back)

--     end
-- }

-- Runick Tip
-- SMODS.Back {
--     key = "runick",
--     atlas = "Deck",
--     discovered = true,
--     pos = { x = 2, y = 1 },
--     apply = function(self, back)

--     end
-- }

-- The Traveler and the Burning Abyss
SMODS.Back {
    key = "ba",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 1 },
    apply = function(self, back)
        G.GAME.modifiers.joy_ba_no_die = true
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { monster_type = "Fiend" }, weight_mod = 8, append = "sho" }
        }
    end
}

-- Welcome Labrynth
SMODS.Back {
    key = "lab",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 1 },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, 2, self.key)
        return { vars = { numerator, denominator } }
    end,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                SMODS.add_card { key = "j_joy_lab_ariane" }
                SMODS.add_card { key = "j_joy_lab_arianna" }
                return true
            end)
        }))
    end,
    calculate = function(self, back, context)
        if context.stay_flipped and context.to_area == G.hand and
            (G.GAME.current_round.hands_played == 0 and G.GAME.current_round.discards_used == 0) and
            SMODS.pseudorandom_probability(back, self.key, 1, 2) then
            return {
                stay_flipped = true
            }
        end
    end,
}

-- Subterror Final Battle
SMODS.Back {
    key = "sub",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 1 },
    calculate = function(self, back, context)
        if context.first_hand_drawn then
            G.E_MANAGER:add_event(Event({
                func = function()
                    JoyousSpring.flip_all_cards(self.key, 'back', { G.jokers })
                    return true
                end
            }))
            delay(1)
            G.E_MANAGER:add_event(Event({
                func = function()
                    JoyousSpring.flip_all_cards(self.key, 'front', { G.jokers })
                    return true
                end
            }))
        end
    end
}

-- Eldlixir of Scarlet Sanguine
SMODS.Back {
    key = "eld",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 1 },
    apply = function(self, back)
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { monster_type = "Zombie" }, weight_mod = 8, append = "sho" },
            { properties = { is_trap = true },          weight_mod = 8, append = "sho" }
        }
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.add_to_extra_deck("j_joy_eld_angel", { no_edition = true })
                return true
            end)
        }))
    end
}

-- A.I. Meet You
SMODS.Back {
    key = "ignis",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 2 },
    apply = function(self, back)
        G.GAME.modifiers.joy_summon_no_room = { LINK = true }
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { monster_type = "Cyberse" }, weight_mod = 8, append = "sho" }
        }
    end
}

-- Solfachord Symphony
SMODS.Back {
    key = "solfa",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 2 },
    initial_deck = {
        ranks = { 'Ace', 'King', 'Queen', 'Jack' },
        exclude = true
    },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blocking = false,
            blockable = false,
            func = function()
                if G.deck and G.deck.cards then
                    local even = { '2', '4', '6', '8', '10' }
                    local odd = { '3', '5', '7', '9' }
                    for i = 1, 6 do
                        local rank = pseudorandom_element(even, self.key)
                        SMODS.add_card { set = "Base", rank = rank, key_append = self.key, area = G.deck }
                    end
                    for i = 1, 10 do
                        local rank = pseudorandom_element(odd, self.key)
                        SMODS.add_card { set = "Base", rank = rank, key_append = self.key, area = G.deck }
                    end
                    return true
                end
            end
        }))
    end,
    calculate = function(self, back, context)
        if context.using_consumeable and JoyousSpring.is_pendulum_monster(context.consumeable) then
            JoyousSpring.add_monster_tag_pseudorandom({ { is_pendulum = true } }, self.key .. "create")
        end
    end
}

-- Witchcrafter Bystreet
SMODS.Back {
    key = "witch",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 2 },
    config = { vouchers = { 'v_tarot_merchant', 'v_tarot_tycoon' } },
    apply = function(self, back)
        G.GAME.modifiers.enable_eternals_in_shop = true
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.add_to_extra_deck("j_joy_witch_vicemadame", { no_edition = true })
                return true
            end)
        }))
    end
}

-- Sinister Shadow Games
SMODS.Back {
    key = "shaddoll",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 2 },
    apply = function(self, back)
        G.GAME.modifiers.joy_summon_no_room = { FUSION = true }
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { summon_type = "FUSION" }, weight_mod = 8, append = "sho" },
            { properties = { is_flip = true },         weight_mod = 8, append = "sho" },
        }
    end
}

-- That Grass Looks Greener
SMODS.Back {
    key = "paleo",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 2 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.send_to_graveyard_pseudorandom({ { monster_archetypes = { "Paleozoic" }, is_trap = true } },
                    self.key, 20)
                JoyousSpring.add_to_extra_deck("j_joy_paleo_cambro", { no_edition = true })
                return true
            end)
        }))
    end
}

-- The Book of the Law
SMODS.Back {
    key = "invoked",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 2 },
    apply = function(self, back)
        G.GAME.modifiers.joy_field_spell_slots = 2
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card { key = "j_joy_invoked_meltdown", no_edition = true }
                SMODS.add_card { key = "j_joy_fusiongate", no_edition = true }
                return true
            end
        }))
    end
}

-- You're in Danger!
SMODS.Back {
    key = "danger",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 2 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                SMODS.add_card { key = "j_joy_danger_big", no_edition = true, stickers = { "eternal" }, force_stickers = { "eternal" } }
                return true
            end
        }))
    end
}

-- Adamancipator Signs
SMODS.Back {
    key = "adaman",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 3 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for _, pcard in pairs(G.playing_cards) do
                    if pcard.base.suit == 'Spades' then
                        pcard:change_suit('Clubs')
                    end
                    if pcard.base.suit == 'Hearts' then
                        pcard:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end,
    calculate = function(self, back, context)
        if context.joy_excavated and context.joy_number <= 1 and context.joy_other_context.setting_blind then
            if context.joy_excavated:is_suit("Diamonds") then
                ease_hands_played(1)
            else
                ease_hands_played(-1)
            end
        end
    end,
    joy_set_excavate_count = function(self, back, context)
        if context.setting_blind then
            return 1
        end
    end
}

-- Emergency Teleport
SMODS.Back {
    key = "vw",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 3 },
    apply = function(self, back)
        G.GAME.modifiers.joy_vw_hands = true
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { monster_type = "Psychic" }, weight_mod = 8, append = "sho" }
        }
        G.E_MANAGER:add_event(Event({
            func = function()
                for _, pcard in pairs(G.playing_cards) do
                    local rank = pcard.base.value
                    if rank == '2' or rank == '4' then
                        assert(SMODS.change_base(pcard, nil, '3'))
                    end
                    if rank == '5' or rank == '7' then
                        assert(SMODS.change_base(pcard, nil, '6'))
                    end
                    if rank == '8' or rank == '10' then
                        assert(SMODS.change_base(pcard, nil, '9'))
                    end
                end
                return true
            end
        }))
    end
}

-- Flower Stacking
SMODS.Back {
    key = "hanafuda",
    atlas = "hanafuda",
    discovered = true,
    pos = { x = 1, y = 5 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                for _, pcard in ipairs(G.playing_cards) do
                    pcard:set_ability("m_joy_hanafuda")
                end
                return true
            end)
        }))
    end
}

-- Inherited Fortune
SMODS.Back {
    key = "flady",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 3 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.add_to_extra_deck("j_joy_flady_every", { no_edition = true })
                return true
            end)
        }))
    end,
    calculate = function(self, back, context)
        if context.mod_probability and not context.blueprint then
            return {
                numerator = context.numerator * 4
            }
        end
    end
}

-- Mimighoul Charm
SMODS.Back {
    key = "mimi",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 3 },
    apply = function(self, back)
        G.GAME.modifiers.joy_opponent_slots = 10
    end,
    calculate = function(self, back, context)
        if context.ante_change and context.ante_end then
            JoyousSpring.create_pseudorandom({ { is_opponent = true, is_blind_card = true } }, self.key)
        end
    end,
    calc_dollar_bonus = function(self, back)
        local amount = #JoyousSpring.opponent_area.cards
        return amount > 0 and amount * 2 or nil
    end
}

-- Artifact Sanctum
SMODS.Back {
    key = "artifact",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 3 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for i = 1, 5 do
                    JoyousSpring.create_pseudorandom({ { is_opponent = true, monster_archetypes = { "Artifact" } } },
                        self.key)
                end
                G.E_MANAGER:add_event(Event({
                    func = function()
                        save_run()
                        return true
                    end
                }))
                return true
            end
        }))
    end
}

-- Purrely Sharely!?
SMODS.Back {
    key = "purr",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 3 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                for _, pcard in ipairs(G.playing_cards) do
                    pcard:set_seal("joy_purr_memory", true, true)
                end
                return true
            end)
        }))
    end
}

-- Beetrooper Formation
SMODS.Back {
    key = "bee",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 3 },
    apply = function(self, back)
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { monster_type = "Insect" }, weight_mod = 8, append = "sho" }
        }
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.add_to_extra_deck_pseudorandom({ { monster_type = "Insect" } }, self.key, nil, nil,
                    { no_edition = true })
                return true
            end)
        }))
    end
}

-- Summoning Swarm
SMODS.Back {
    key = "wasp",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 4 },
    joy_get_monster_type = function(self, back, other_card, original_type)
        return "Insect"
    end
}

-- Zoodiac Barrage
SMODS.Back {
    key = "zoo",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 4 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                SMODS.add_card { key = "j_joy_xyzterritory", no_edition = true }
                return true
            end)
        }))
    end,
    calculate = function(self, back, context)
        if context.setting_blind then
            for _, joker in ipairs(G.jokers.cards) do
                if JoyousSpring.is_summon_type(joker, "XYZ") then
                    joker.ability.extra.joyous_spring.xyz_materials = joker.ability.extra.joyous_spring.xyz_materials + 1
                end
            end
        end
    end
}

-- Centur-Ion True Awakening
SMODS.Back {
    key = "centur",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 4 },
    apply = function(self, back)
        G.GAME.modifiers.joy_side_deck_slots = 10
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { summon_type = "SYNCHRO" }, weight_mod = 8, append = "sho" },
            { properties = { is_tuner = true },         weight_mod = 8, append = "sho" },
        }
    end
}

-- Sinful Spoils of the White Forest
SMODS.Back {
    key = "wforest",
    atlas = "Deck",
    discovered = true,
    pos = { x = 3, y = 4 },
    config = { vouchers = { 'v_overstock_norm' } },
    apply = function(self, back)
        G.GAME.spectral_rate = 2
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { monster_type = "Spellcaster" }, weight_mod = 8,  append = "sho" },
            { properties = { monster_type = "Illusion" },    weight_mod = 12, append = "sho" },
        }
    end
}

-- Rahu Dracotail
SMODS.Back {
    key = "dracotail",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 4 },
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                for _, pcard in ipairs(G.playing_cards) do
                    local poll = pseudorandom(self.key, 1, 3)
                    if poll == 1 then
                        pcard:set_seal(SMODS.poll_seal { guaranteed = true, key = self.key .. "_seal" }, true, true)
                    elseif poll == 2 then
                        pcard:set_edition(
                            SMODS.poll_edition { guaranteed = true, key = self.key .. "_edition", no_negative = true },
                            true, true)
                    else
                        pcard:set_ability(SMODS.poll_enhancement { guaranteed = true, key = self.key .. "_enhancement" })
                    end
                end
                return true
            end)
        }))
    end
}

-- Sky Striker Mobilize - Engage!
SMODS.Back {
    key = "striker",
    atlas = "Deck",
    discovered = true,
    pos = { x = 5, y = 4 },
    calculate = function(self, back, context)
        if context.after then
            if not SMODS.last_hand_oneshot then
                local planet = JoyousSpring.get_played_planet(context.scoring_name)
                if planet then
                    SMODS.add_card { key = planet, edition = 'e_negative' }
                end
            else
                if G.GAME.hands[context.scoring_name] and G.GAME.hands[context.scoring_name].level > 1 then
                    return {
                        level_up = -(G.GAME.hands[context.scoring_name].level - 1),
                    }
                end
            end
        end
    end
}

-- Blessing of the Voiceless Voice
SMODS.Back {
    key = "voice",
    atlas = "Deck",
    discovered = true,
    pos = { x = 6, y = 4 },
    apply = function(self, back)
        change_shop_size(1)
    end,
    calculate = function(self, back, context)
        if context.create_shop_card and #G.shop_jokers.cards == G.GAME.shop.joker_max - 1 then
            local choices = JoyousSpring.get_materials_in_collection({ { summon_type = "RITUAL" } })
            local choice = pseudorandom_element(choices, self.key)
            if choice then
                return {
                    shop_create_flags = {
                        key = choice
                    }
                }
            end
        end
    end
}

-- Drytron Nova
SMODS.Back {
    key = "dry",
    atlas = "Deck",
    discovered = true,
    pos = { x = 0, y = 5 },
    apply = function(self, back)
        change_shop_size(1)
    end,
    calculate = function(self, back, context)
        if context.create_shop_card and #G.shop_jokers.cards == G.GAME.shop.joker_max - 1 then
            local choices = JoyousSpring.get_materials_in_collection({ { monster_archetypes = { "Drytron" } } })
            local choice = pseudorandom_element(choices, self.key)
            if choice then
                return {
                    shop_create_flags = {
                        key = choice
                    }
                }
            end
        end
    end
}

-- Hazy Pillar
SMODS.Back {
    key = "hazy",
    atlas = "Deck",
    discovered = true,
    pos = { x = 1, y = 5 },
    apply = function(self, back)
        G.GAME.modifiers.enable_eternals_in_shop = true
        G.E_MANAGER:add_event(Event({
            blockable = false,
            func = (function()
                JoyousSpring.add_to_extra_deck("j_joy_hazy_basil", { no_edition = true })
                return true
            end)
        }))
    end
}

local tarot_spectrals_thief = {
    "c_magician", "c_empress", "c_heirophant", "c_lovers", "c_chariot", "c_ectoplasm",
    "c_justice", "c_devil", "c_tower", "c_joy_cardian_gathering", "c_talisman", "c_deja_vu", "c_aura",
    "c_trance", "c_medium", "c_joy_purr_happy", "c_joy_purr_sleepy", "c_joy_purr_delicious", "c_joy_purr_pretty"
}

-- Time Thief Flyback
SMODS.Back {
    key = "thief",
    atlas = "Deck",
    discovered = true,
    pos = { x = 2, y = 5 },
    apply = function(self, back)
        G.GAME.modifiers.joy_modify_weight = {
            { properties = { summon_type = "XYZ" }, weight_mod = 8, append = "sho" },
        }
    end,
    calculate = function(self, back, context)
        if context.setting_blind then
            if #G.consumeables.cards < G.consumeables.config.card_limit then
                local choice = pseudorandom_element(tarot_spectrals_thief, self.key)
                SMODS.add_card { key = choice }
            end
        end
    end
}

-- Dark Magic Inheritance
-- SMODS.Back {
--     key = "dm",
--     atlas = "Deck",
--     discovered = true,
--     pos = { x = 3, y = 5 },
--     apply = function(self, back)

--     end
-- }

-- S-Force Showdown
SMODS.Back {
    key = "sforce",
    atlas = "Deck",
    discovered = true,
    pos = { x = 4, y = 5 },
    apply = function(self, back)
        G.GAME.modifiers.joy_modify_weight = {
            {
                properties = {
                    exclude_monster_archetypes = { "SForce", "LiveTwin", "EvilTwin", "PSYFrame", "TimeThief" },
                    exclude_keys = { "j_joy_ipmasq", "j_joy_spknight", "j_joy_wpball" }
                },
                weight_mod = 0,
                append = "sho"
            }
        }
    end
}
