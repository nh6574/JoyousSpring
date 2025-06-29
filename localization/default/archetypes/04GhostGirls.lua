return {
    descriptions = {
        Joker = {
            j_joy_yokai_ogre = {
                name = "{C:joy_effect}Ghost Ogre & Snow Rabbit",
                text = {
                    {
                        "Destroys every scored card",
                        "Gains {X:mult,C:white}X#1#{} Mult for each",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_reaper = {
                name = "{C:joy_effect}Ghost Reaper & Winter Cherries",
                text = {
                    {
                        "{X:mult,C:white}X#1#{} Mult for each",
                        "{C:joy_spell}Extra Deck{} {C:attention}Joker{} in the {C:attention}GY{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_ash = {
                name = "{C:joy_effect}Ash Blossom & Joyous Spring",
                text = {
                    {
                        "{C:green}#1# in #2#{} chance to not draw cards",
                        "after playing/discarding",
                        "Gains {X:mult,C:white}X#3#{} Mult each time",
                        "this effect is triggered",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#4#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_belle = {
                name = "{C:joy_effect}Ghost Belle & Haunted Mansion",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult when a {C:attention}Joker{}",
                        "is {C:attention}revived{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
            j_joy_yokai_sister = {
                name = "{C:joy_effect}Ghost Sister & Spooky Dogwood",
                text = {
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult per consumable used",
                        "during a {C:attention}Blind{}",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                    {
                        "If none are used this round, {C:red}you lose{}",
                    },
                },
            },
            j_joy_yokai_mourner = {
                name = "{C:joy_effect}Ghost Mourner & Moonlit Chill",
                text = {
                    {
                        "Permanently debuffs every obtained",
                        "{C:blue}Common{} and {C:green}Uncommon{} {C:attention}Joker{}",
                    },
                    {
                        "Gains {X:mult,C:white}X#1#{} Mult for each debuffed card sold",
                        "{C:inactive}(Currently{} {X:mult,C:white}X#2#{} {C:inactive}Mult){}",
                    },
                },
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_yokai = "Ghost Girls",
        }
    }
}
