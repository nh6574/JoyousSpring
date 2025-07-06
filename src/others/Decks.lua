-- DECKS

--#region Hanafuda

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

--#endregion
