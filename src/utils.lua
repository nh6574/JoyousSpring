JoyousSpring.types_list = {
    "Aqua",
    "Beast",
    "BeastWarrior",
    "CreatorGod",
    "Cyberse",
    "Dinosaur",
    "DivineBeast",
    "Dragon",
    "Fairy",
    "Fiend",
    "Fish",
    "Illusion",
    "Insect",
    "Machine",
    "Plant",
    "Psychic",
    "Pyro",
    "Reptile",
    "Rock",
    "SeaSerpent",
    "Spellcaster",
    "Thunder",
    "Warrior",
    "WingedBeast",
    "Wyrm",
    "Zombie",
}

JoyousSpring.attributes_list = {
    "LIGHT",
    "DARK",
    "WATER",
    "FIRE",
    "EARTH",
    "WIND",
    "DIVINE",
}

---Checks if card is in the Extra Deck
---@param card_key string
---@return boolean
JoyousSpring.is_in_extra_deck = function(card_key)
    if not JoyousSpring.extra_deck_area then return false end
    for _, joker in ipairs(JoyousSpring.extra_deck_area.cards) do
        if joker.config.center.key == card_key then return true end
    end
    return false
end

---Count all Extra Deck types (Fusion, Synchro, Xyz, Link) are owned
---@return integer
JoyousSpring.extra_deck_types_owned = function()
    local fusion = (JoyousSpring.count_materials_owned({ { summon_type = "FUSION" } }) > 0) and 1 or 0
    local synchro = (JoyousSpring.count_materials_owned({ { summon_type = "SYNCHRO" } }) > 0) and 1 or 0
    local xyz = (JoyousSpring.count_materials_owned({ { summon_type = "XYZ" } }) > 0) and 1 or 0
    local link = (JoyousSpring.count_materials_owned({ { summon_type = "LINK" } }) > 0) and 1 or 0

    return fusion + synchro + xyz + link
end

---Get index of value in array
---@param array table
---@param value any
---@return integer?
JoyousSpring.index_of = function(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
end

---Gets column (index) of joker in G.jokers
---@param joker Card
---@return integer?
JoyousSpring.get_joker_column = function(joker)
    return G.jokers and JoyousSpring.index_of(G.jokers.cards or {}, joker) or 0
end

---Get not owned card in **keys** list
---@param keys string[]
---@param count_debuffed boolean?
---@return table
JoyousSpring.get_not_owned = function(keys, count_debuffed)
    local not_owned = {}
    for _, key in ipairs(keys) do
        if not next(SMODS.find_card(key, count_debuffed)) then
            table.insert(not_owned, key)
        end
    end
    if #not_owned == 0 then
        not_owned = { keys[1] }
    end
    return not_owned
end

---Adds a tag that creates a joker with *card_key* to the shop
---@param card_key string
JoyousSpring.add_monster_tag = function(card_key)
    local tag = Tag('tag_joy_monster')
    tag.ability.monster = card_key
    G.GAME.joy_last_monster_tag = card_key
    add_tag(tag)
end

---Create a random card tag with *property_list* properties
---@param property_list material_properties[]
---@param seed string|number?
---@param not_owned boolean?
---@param ignore_in_pool boolean?
---@return string?
JoyousSpring.add_monster_tag_pseudorandom = function(property_list, seed, not_owned, ignore_in_pool)
    local choices = JoyousSpring.get_materials_in_collection(property_list, not_owned, not_owned,
        not ignore_in_pool and seed)
    local key_to_add = pseudorandom_element(choices, seed or "JoyousSpring")
    if key_to_add then
        return JoyousSpring.add_monster_tag(key_to_add)
    end
    return key_to_add
end

---Flips a random card in *card_list*
---@param card_list table|Card[]
---@param facing? 'front'|'back' If card has to be facing a direction for it to be flipped
---@param seed? string
---@return table|Card?
JoyousSpring.flip_random_card = function(source_card, card_list, facing, seed)
    local facing_cards = {}
    for j, card in ipairs(card_list) do
        if not facing or card.facing == facing then
            facing_cards[#facing_cards + 1] = card
        end
    end
    local pick = pseudorandom_element(facing_cards, seed or "JoyousSpring")
    if pick then
        JoyousSpring.flip(pick, source_card)
    end
    return pick
end

---Flip all cards in all areas or in *area*
---@param source Card?
---@param flip_direction 'front'|'back'?
---@param areas CardArea[]|table[]?
JoyousSpring.flip_all_cards = function(source, flip_direction, areas)
    local flip_areas = areas or { G.jokers, G.consumeables, G.hand }

    for _, area in ipairs(flip_areas) do
        local any_flipped = false
        for _, card in ipairs(area.cards) do
            if not flip_direction or card.facing ~= flip_direction then
                JoyousSpring.flip(card, source)
                any_flipped = true
            end
        end
        if flip_direction == 'back' and any_flipped then
            area:shuffle(source and source.config.center.key or "JoyousSpring")
        end
    end
end

---Counts all cards in *areas* (or all areas) flipped in *flip_direction*
---@param flip_direction 'front'|'back'?
---@param areas CardArea[]|table[]?
---@return integer
JoyousSpring.count_flipped = function(flip_direction, areas)
    local flip_areas = areas or { G.jokers, G.consumeables, G.hand }
    local flip_direction = flip_direction or 'back'
    local count = 0
    for _, area in ipairs(flip_areas) do
        for _, card in ipairs(area.cards) do
            if card.facing == flip_direction then
                count = count + 1
            end
        end
    end
    return count
end

---Add random tag. Stolen from Cryptid
JoyousSpring.add_random_tag = function()
    local tag_key = get_next_tag_key("JoyousSpring")
    local i = 0
    while tag_key == "tag_boss" and i < 6 do
        tag_key = get_next_tag_key("JoyousSpring")
        i = i + 1
    end
    tag_key = tag_key ~= "tag_boss" and tag_key or "tag_double"
    local tag = Tag(tag_key)
    if tag.name == "Orbital Tag" then
        local _poker_hands = {}
        for k, v in pairs(G.GAME.hands) do
            if SMODS.is_poker_hand_visible(k) then
                _poker_hands[#_poker_hands + 1] = k
            end
        end
        tag.ability.orbital_hand = pseudorandom_element(_poker_hands, "joy_orbital")
    end
    add_tag(tag)
end

---Checks if a card is a playing card
---@param card table|Card
---@return boolean
JoyousSpring.is_playing_card = function(card)
    return card and (card.ability.set == 'Enhanced' or card.ability.set == 'Default')
end

---Levels up hand (with proper animation)
---@param card Card|table
---@param hand_key string
---@param instant boolean?
---@param amount integer?
JoyousSpring.level_up_hand = function(card, hand_key, instant, amount)
    if not (JoyousSpring.config.instant_poker_hand or instant) then
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
            {
                handname = localize(hand_key, 'poker_hands'),
                chips = G.GAME.hands[hand_key].chips,
                mult = G.GAME.hands[hand_key].mult,
                level = G.GAME.hands[hand_key].level
            })
    end
    level_up_hand(card, hand_key, JoyousSpring.config.instant_poker_hand or instant, amount)
    if not (JoyousSpring.config.instant_poker_hand or instant) then
        update_hand_text({ sound = 'button', volume = 0.7, pitch = 1.1, delay = 0 },
            { mult = 0, chips = 0, handname = '', level = '' })
    end
end

---Gets the attributes that are in a card list
---@param card_list Card[]|string[]|table
---@param ignore_debuffed? boolean
---@return table<attribute, boolean>
JoyousSpring.get_material_attributes = function(card_list, ignore_debuffed)
    local attributes = {
        LIGHT = false,
        DARK = false,
        WATER = false,
        FIRE = false,
        EARTH = false,
        WIND = false,
        DIVINE = false
    }
    local attributes_list = JoyousSpring.attributes_list
    for _, card in ipairs(card_list) do
        if type(card) == "table" and (not ignore_debuffed or not card.debuff) and JoyousSpring.is_monster_card(card) then
            if not JoyousSpring.is_all_attributes(card) and JoyousSpring.get_attribute(card) then
                attributes[JoyousSpring.get_attribute(card)] = true
            end
        else
            local card_center = G.P_CENTERS[card]
            if card_center and card_center.config and card_center.config.extra and
                type(card_center.config.extra) == "table" and
                card_center.config.extra.joyous_spring and card_center.config.extra.joyous_spring.attribute ~= "None" and not card_center.config.extra.joyous_spring.is_all_attributes then
                attributes[card_center.config.extra.joyous_spring.attribute] = true
            end
        end
    end
    for _, card in ipairs(card_list) do
        if type(card) == "table" and (not ignore_debuffed or not card.debuff) and JoyousSpring.is_monster_card(card) then
            if JoyousSpring.is_all_attributes(card) then
                for _, v in ipairs(attributes_list) do
                    if not attributes[v] then
                        attributes[v] = true
                        break
                    end
                end
            end
        else
            local card_center = G.P_CENTERS[card]
            if card_center and card_center.config and card_center.config.extra and
                type(card_center.config.extra) == "table" and
                card_center.config.extra.joyous_spring and card_center.config.extra.joyous_spring.is_all_attributes then
                for _, v in ipairs(attributes_list) do
                    if not attributes[v] then
                        attributes[v] = true
                        break
                    end
                end
            end
        end
    end

    return attributes
end

---Counts how many attributes are in *card_list*
---@param card_list Card[]|string[]|table
---@param ignore_debuffed? boolean
---@return integer
JoyousSpring.get_attribute_count = function(card_list, ignore_debuffed)
    local count = 0
    local attributes = JoyousSpring.get_material_attributes(card_list, ignore_debuffed)
    for k, v in pairs(attributes) do
        if v then
            count = count + 1
        end
    end
    return count
end

---Gets the type that are in a card list
---@param card_list Card[]|string[]|table
---@param ignore_debuffed? boolean
---@return table<attribute, boolean>
JoyousSpring.get_material_types = function(card_list, ignore_debuffed)
    local types = {
        Aqua = false,
        Beast = false,
        BeastWarrior = false,
        CreatorGod = false,
        Cyberse = false,
        Dinosaur = false,
        DivineBeast = false,
        Dragon = false,
        Fairy = false,
        Fiend = false,
        Fish = false,
        Illusion = false,
        Insect = false,
        Machine = false,
        Plant = false,
        Psychic = false,
        Pyro = false,
        Reptile = false,
        Rock = false,
        SeaSerpent = false,
        Spellcaster = false,
        Thunder = false,
        Warrior = false,
        WingedBeast = false,
        Wyrm = false,
        Zombie = false,
    }

    local types_list = JoyousSpring.types_list

    for _, card in ipairs(card_list) do
        if type(card) == "table" and (not ignore_debuffed or not card.debuff) and JoyousSpring.is_monster_card(card) then
            if not JoyousSpring.is_all_types(card) and JoyousSpring.get_monster_type(card) then
                types[JoyousSpring.get_monster_type(card)] = true
            end
        else
            local card_center = G.P_CENTERS[card]
            if card_center and card_center.config and card_center.config.extra and
                type(card_center.config.extra) == "table" and
                card_center.config.extra.joyous_spring and card_center.config.extra.joyous_spring.monster_type ~= "None" and not card_center.config.extra.joyous_spring.is_all_types then
                types[card_center.config.extra.joyous_spring.monster_type] = true
            end
        end
    end
    for _, card in ipairs(card_list) do
        if type(card) == "table" and (not ignore_debuffed or not card.debuff) and JoyousSpring.is_monster_card(card) then
            if JoyousSpring.is_all_types(card) then
                for _, v in ipairs(types_list) do
                    if not types[v] then
                        types[v] = true
                        break
                    end
                end
            end
        else
            local card_center = G.P_CENTERS[card]
            if card_center and card_center.config and card_center.config.extra and
                type(card_center.config.extra) == "table" and
                card_center.config.extra.joyous_spring and card_center.config.extra.joyous_spring.is_all_types then
                for _, v in ipairs(types_list) do
                    if not types[v] then
                        types[v] = true
                        break
                    end
                end
            end
        end
    end

    return types
end

---Counts how many types are in *card_list*
---@param card_list Card[]|string[]|table
---@param ignore_debuffed? boolean
---@return integer
JoyousSpring.get_type_count = function(card_list, ignore_debuffed)
    local count = 0
    local types = JoyousSpring.get_material_types(card_list, ignore_debuffed)
    for k, v in pairs(types) do
        if v then
            count = count + 1
        end
    end
    return count
end

---Get the cards tributed this round
---@param set? string Set the cards belong to (e.g. "Joker" or "Tarot")
---@param this_run? boolean Checks for the entire run instead
---@return table
JoyousSpring.get_set_tributed = function(set, this_run)
    local list = {}
    local tribute_table = this_run and G.GAME.joy_tributed_cards or G.GAME.current_round.joy_tributed_cards

    for key, value in pairs(tribute_table or {}) do
        if not set or (set == value.set) or (set == "Consumable" and value.consumable) then
            for i = 1, value.count do
                table.insert(list, key)
            end
        end
    end

    return list
end

---Counts the cards tributed this round
---@param set? string Set the cards belong to (e.g. "Joker" or "Tarot")
---@param this_run? boolean Checks for the entire run instead
---@return integer
JoyousSpring.count_set_tributed = function(set, this_run)
    return #JoyousSpring.get_set_tributed(set, this_run)
end

---Get the list of cards of a set in G.consumeables
---@param set? string Set the cards belong to (e.g. "Planet" or "Tarot")
---@return Card[]|table
JoyousSpring.get_consumable_set = function(set)
    local list = {}

    if G.consumeables then
        for _, card in ipairs(G.consumeables.cards) do
            if not set or (card.ability.set == set) then
                table.insert(list, card)
            end
        end
    end

    return list
end

---Counts the cards of a set in G.consumeables
---@param set? string Set the cards belong to (e.g. "Planet" or "Tarot")
---@return integer
JoyousSpring.get_consumable_count = function(set)
    return #JoyousSpring.get_consumable_set(set)
end

---Get the count of the cards summoned this run
---@param type? summon_type
---@param this_round? boolean Checks for the round instead
---@return integer
JoyousSpring.get_summoned_count = function(type, this_round)
    local table = not this_round and G.GAME.joy_summoned_count or G.GAME.joy_summoned_count_round
    return table and table[type or "Total"] or 0
end

---Get the count of the cards flipped this run
---@param set? string Set the cards belong to (e.g. "Joker" or "Tarot")
---@return integer
JoyousSpring.get_flipped_count = function(set)
    return G.GAME.joy_flipped_count and G.GAME.joy_flipped_count[set or "Total"] or 0
end

---Get the count of the pendulums used this run
---@return integer
JoyousSpring.get_pendulum_count = function()
    return G.GAME.joy_pendulum_count or 0
end

---Updates the excavated card count with *card*'s data
---@param card Card|table
JoyousSpring.update_excavated_count = function(card)
    if not G.GAME.joy_cards_excavated then
        G.GAME.joy_cards_excavated = { suit = {}, rank = {}, total = 0 }
    end
    G.GAME.joy_cards_excavated.total = G.GAME.joy_cards_excavated.total + 1

    if SMODS.has_any_suit(card) then
        G.GAME.joy_cards_excavated.suit.any_suit = (G.GAME.joy_cards_excavated.suit.any_suit or 0) + 1
    elseif not SMODS.has_no_suit(card) then
        G.GAME.joy_cards_excavated.suit[card.base.suit] = (G.GAME.joy_cards_excavated.suit[card.base.suit] or 0) + 1
    end

    if not SMODS.has_no_rank(card) then
        G.GAME.joy_cards_excavated.rank[card.base.value] = (G.GAME.joy_cards_excavated.rank[card.base.value] or 0) + 1
    end
end

---Get excavated count this run
---@param suit string?
---@param rank string?
---@return integer
JoyousSpring.get_excavated_count = function(suit, rank)
    if not G.deck then return 0 end
    if not G.GAME.joy_cards_excavated then
        G.GAME.joy_cards_excavated = { suit = {}, rank = {}, total = 0 }
    end
    if suit then
        return (G.GAME.joy_cards_excavated.suit[suit] or 0) + (G.GAME.joy_cards_excavated.suit.any_suit or 0)
    end
    if rank then
        return G.GAME.joy_cards_excavated.rank[rank] or 0
    end
    return G.GAME.joy_cards_excavated.total
end

---Gets the colour used by the name of the Joker
---@param key string
---@param set? string Set the cards belong to (e.g. "Joker" or "Tarot")
---@return table
JoyousSpring.get_name_color = function(key, set)
    if not key then return G.ARGS.LOC_COLOURS["joy_normal"] end
    local name_color
    local name_for_color = G.localization.descriptions[set or "Joker"][key].name or
        ""
    if string.sub(name_for_color, 1, 3) == "{C:" then
        local color = name_for_color:match("^%{C:([^}]+)%}")
        name_color = color
    end
    return G.ARGS.LOC_COLOURS[name_color or "joy_normal"]
end

---Checks if card is being used as material in this context
---@param card Card|table
---@param context CalcContext|table
---@return boolean
JoyousSpring.used_as_material = function(card, context)
    if type(card) ~= "table" then return false end
    return context.joy_material_self and not context.blueprint_card
end

---Gets the most owned Joker rarities and their count
---@return string[]
---@return integer
JoyousSpring.most_owned_rarity = function()
    if not G.jokers then return {}, 0 end

    local rarities = {}

    for _, joker in ipairs(G.jokers.cards) do
        rarities[joker.config.center.rarity] = (rarities[joker.config.center.rarity] or 0) + 1
    end

    if not next(rarities) then return {}, 0 end

    local max = 0
    for _, amount in pairs(rarities) do
        if amount > max then
            max = amount
        end
    end

    local ret = {}
    for key, amount in pairs(rarities) do
        if amount == max then
            table.insert(ret, key)
        end
    end

    return ret, max
end

---Gets the most owned suit in full deck, random if none or tied
---@param seed string|number
---@return string
JoyousSpring.most_owned_suit = function(seed)
    if not G.deck then return "Hearts" end

    local count = {}

    for _, card in ipairs(G.playing_cards) do
        if not SMODS.has_no_suit(card) and not SMODS.has_any_suit(card) then
            count[card.base.suit] = (count[card.base.suit] or 0) + 1
        end
    end

    local max = 0
    local suits = {}
    for suit_key, suit_count in pairs(count) do
        if suit_count > max then
            max = suit_count
            suits = { suit_key }
        elseif suit_count == max then
            table.insert(suits, suit_key)
        end
    end

    if #suits > 0 then
        return pseudorandom_element(suits, seed or "JoyousSpring") or "Hearts"
    end

    return (pseudorandom_element(SMODS.Suits, seed or "JoyousSpring") or {}).key or "Hearts"
end

---Checks if the *card*'s rarity is in *list*
---@param card Card|table
---@param list string[]
---@return boolean
JoyousSpring.is_card_rarity_from_array = function(card, list)
    for _, rarity in ipairs(list) do
        if card:is_rarity(rarity) then
            return true
        end
    end
    return false
end

---Returns highest (vanilla) rarity, nil if none
---@param list Card[]|table[]
---@return integer?
JoyousSpring.get_highest_rarity = function(list)
    local rarity
    for _, card in ipairs(list) do
        if card:is_rarity(4) then
            return 4
        else
            for i = (rarity or 0) + 1, 3 do
                if card:is_rarity(i) then
                    rarity = i
                end
            end
        end
    end
    return rarity
end

---Return the planet card for the handname
---@param handname string
---@return string?
JoyousSpring.get_played_planet = function(handname)
    local planet
    for _, center in pairs(G.P_CENTER_POOLS.Planet) do
        if center.config.hand_type == handname then
            planet = center.key
        end
        if center.config.joy_hand_types then
            for _, name in ipairs(center.config.joy_hand_types) do
                if name == handname then
                    planet = center.key
                    break
                end
            end
            if planet then break end
        end
    end
    return planet
end

---Checks if object is a card
---@param obj any
---@return boolean
JoyousSpring.is_card = function(obj)
    return type(obj) == "table" and type(obj.is) == "function" and obj:is(Card)
end

---Flips a card specifying the source
---@param card Card|table
---@param source Card|table?
JoyousSpring.flip = function(card, source)
    source = source or card
    JoyousSpring.joy_flip_source = source
    card:flip()
    JoyousSpring.joy_flip_source = nil
end

---Gets the card_limit of a card, 0 if none
---@param card Card|table
---@return integer
JoyousSpring.get_card_limit = function(card)
    return card and card.ability and card.ability.card_limit or 0
end

---Runs **func** on all (supported) objects
---@param func string
---@param args {default_return:any, return_func:(fun(new:any, original:any):any), ignore_jokers:boolean, ignore_blinds:boolean,ignore_debuff:boolean, ignore_disabled_blind:boolean, pass_return:boolean, return_if_true:boolean}?
---@param ... any?
---@return any?
JoyousSpring.calculate_prototype_function = function(func, args, ...)
    if not func or not G.jokers or not G.jokers.cards then return args and args.default_return or nil end
    args = args or {}
    local return_func = args.return_func or function(new, original)
        return new or original
    end
    local transfer_func = "joy_transfer_" .. func
    func = "joy_" .. func

    local return_value = args.default_return

    if not args.ignore_jokers then
        for _, area in ipairs(SMODS.get_card_areas('jokers')) do
            for _, joker in ipairs(area.cards or {}) do
                if (not joker.debuff or args.ignore_debuff) then
                    if type(joker.config.center[func]) == "function" then
                        local obj_return
                        if not args.pass_return then
                            obj_return = joker.config.center[func](joker.config.center, joker, ...)
                        else
                            obj_return = joker.config.center[func](joker.config.center, joker, return_value, ...)
                        end
                        return_value = return_func(obj_return, return_value)
                        if args.return_if_true and return_value then return return_value end
                    end
                    if JoyousSpring.is_monster_card(joker) and JoyousSpring.has_joyous_table(joker) and joker.ability.extra.joyous_spring.material_effects and next(joker.ability.extra.joyous_spring.material_effects) then
                        for material_key, config in pairs(joker.ability.extra.joyous_spring.material_effects) do
                            local material_center = G.P_CENTERS[material_key]

                            if material_center and type(material_center[transfer_func]) == "function" then
                                local obj_return
                                if not args.pass_return then
                                    obj_return = material_center[transfer_func](material_center, joker, config, ...)
                                else
                                    obj_return = material_center[transfer_func](material_center, joker, config,
                                        return_value, ...)
                                end
                                return_value = return_func(obj_return, return_value)
                                if args.return_if_true and return_value then return return_value end
                            end
                        end
                    end
                end
            end
        end

        if not args.ignore_side_deck then
            for _, joker in ipairs(JoyousSpring.side_deck_area.cards or {}) do
                if (not joker.debuff or args.ignore_debuff) then
                    if type(joker.config.center.joy_can_calculate_in_side) == "function" and
                        joker.config.center:joy_can_calculate_in_side(joker, func) and
                        type(joker.config.center[func]) == "function" then
                        local obj_return
                        if not args.pass_return then
                            obj_return = joker.config.center[func](joker.config.center, joker, ...)
                        else
                            obj_return = joker.config.center[func](joker.config.center, joker, return_value, ...)
                        end
                        return_value = return_func(obj_return, return_value)
                        if args.return_if_true and return_value then return return_value end
                    end
                end
            end
        end
    end

    if G.GAME.blind and G.GAME.blind.config and not args.ignore_blinds then
        if (not G.GAME.blind.disabled or args.ignore_disabled_blind) and type(G.GAME.blind.config.blind[func]) == "function" then
            local obj_return
            if not args.pass_return then
                obj_return = G.GAME.blind.config.blind[func](G.GAME.blind.config.blind, G.GAME.blind, ...)
            else
                obj_return = G.GAME.blind.config.blind[func](G.GAME.blind.config.blind, G.GAME.blind, return_value, ...)
            end
            return_value = return_func(obj_return, return_value)
            if args.return_if_true and return_value then return return_value end
        end
        for key, _ in pairs(G.GAME.joy_active_blinds or {}) do
            local prototype = G.P_BLINDS[key]
            if not SMODS.is_active_blind(key, true) and prototype and type(prototype[func]) == "function" then
                local obj_return
                if not args.pass_return then
                    obj_return = prototype[func](prototype, nil, ...)
                else
                    obj_return = prototype[func](prototype, nil, return_value, ...)
                end
                return_value = return_func(obj_return, return_value)
                if args.return_if_true and return_value then return return_value end
            end
        end
    end

    return return_value
end

--- Overflow compat

JoyousSpring.destroy_cards = function(cards, ...)
    local list = {}
    if type(Card.getQty) == "function" then
        if not cards[1] then
            if Object.is(cards, Card) then
                cards = { cards }
            else
                return
            end
        end

        for _, card in ipairs(cards) do
            if card:getQty() > 1 then
                card:addQty(-1)
                card:juice_up()
            else
                list[#list + 1] = card
            end
        end
    else
        list = cards
    end

    SMODS.destroy_cards(list, ...)
end

JoyousSpring.get_consumable_quantity = function(card)
    return type(Card.getQty) == "function" and card:getQty() or 1
end

--- Talisman compat
to_big = to_big or function(num)
    return num
end
