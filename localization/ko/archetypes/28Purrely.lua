return {
    descriptions = {
        Joker = {
            j_joy_purr_purrely = {
                name = "{C:joy_effect}퓨어리",
                text = {
                    {
                        "덱 맨 위에서 카드를 {C:attention}#1#{}장 {C:attention}발굴{}합니다:",
                        "씰이 없는 각 카드에 {C:attention}메모리 씰{}을 추가합니다"
                    },
                    {
                        "{C:attention}메모리 씰{}이 있는 플레잉 카드를 선택해 파괴하고",
                        "이 카드를 해당 씰에 맞는 {C:joy_normal}\"에퓨어리\"{} {C:joy_xyz}엑시즈{}로",
                        "{C:attention}변신{}시킬 수 있습니다",
                        "{C:inactive}(이 효과는 1개의 소재를 가진 엑시즈 소환으로 취급됩니다)"
                    }
                }
            },
            j_joy_purr_purrelyly = {
                name = "{C:joy_effect}퓨어리 리리",
                text = {
                    {
                        "획득 시 및 라운드 종료 시,",
                        "{C:planet}\"마이프렌드 퓨어리\"{}를 {C:attention}#1#{}장 생성합니다"
                    },
                    {
                        "덱에 {C:attention}메모리 씰{}이 있는 카드가 있다면,",
                        "{C:attention}블라인드{} 선택 시 해당 카드가 나올 때까지 {C:attention}발굴{}하고,",
                        "덱에 그 복사본을 추가한 뒤 이 카드를 해당 씰에 맞는",
                        "{C:joy_normal}\"에퓨어리\"{} {C:joy_xyz}엑시즈{}로 {C:attention}변신{}시킵니다",
                        "{C:inactive}(이 효과는 1개의 소재를 가진 엑시즈 소환으로 취급됩니다)"
                    }
                }
            },
            j_joy_purr_eplump = {
                name = "{C:joy_xyz}에퓨어리 플럼프",
                text = {
                    {
                        "득점한 핸드에 있는 서로 다른 슈트(문양) 수만큼",
                        "{C:attention}딜리셔스 씰{}이 있는 득점 카드를 {C:attention}#1#{}번 다시 발동합니다",
                        "덱에 있는 {C:attention}딜리셔스 씰{} {C:attention}#3#{}개당 이 횟수가 {C:attention}#2#{} 증가합니다"
                    },
                    {
                        "{C:joy_xyz}소재 제거{} {C:attention}#4#{}:",
                        "{C:attention}블라인드{}를 선택할 때까지 무작위 {C:joy_normal}\"퓨어리\"{}를",
                        "{C:attention}#5#{}장 {C:attention}제외{}합니다"
                    },
                    {
                        "이 카드에 소재가 없다면,",
                        "앤티 종료 시 {C:joy_effect}\"퓨어리\"{}로 {C:attention}변신{}합니다"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}천사족{} {C:attention}2{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
                    "{s:0.9,C:inactive}또는 {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)"
                }
            },
            j_joy_purr_ebeauty = {
                name = "{C:joy_xyz}에퓨어리 뷰티",
                text = {
                    {
                        "득점한 핸드에 있는 서로 다른 슈트(문양) 수만큼",
                        "{C:attention}프리티 씰{}이 있는 득점 카드를 {C:attention}#1#{}번 다시 발동합니다",
                        "덱에 있는 {C:attention}프리티 씰{} {C:attention}#3#{}개당 이 횟수가 {C:attention}#2#{} 증가합니다"
                    },
                    {
                        "{C:joy_xyz}소재 제거{} {C:attention}#4#{}:",
                        "{C:planet}행성{} 카드 {C:attention}#5#{}장을 {C:attention}릴리스{}해",
                        "상점 무료 리롤을 {C:attention}#6#{}회 얻습니다"
                    },
                    {
                        "이 카드에 소재가 없다면,",
                        "앤티 종료 시 {C:joy_effect}\"퓨어리\"{}로 {C:attention}변신{}합니다"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}천사족{} {C:attention}2{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
                    "{s:0.9,C:inactive}또는 {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)"
                }
            },
            j_joy_purr_ehappiness = {
                name = "{C:joy_xyz}에퓨어리 해피니스",
                text = {
                    {
                        "득점한 핸드에 있는 서로 다른 슈트(문양) 수만큼",
                        "{C:attention}해피 씰{}이 있는 득점 카드를 {C:attention}#1#{}번 다시 발동합니다",
                        "덱에 있는 {C:attention}해피 씰{} {C:attention}#3#{}개당 이 횟수가 {C:attention}#2#{} 증가합니다"
                    },
                    {
                        "{C:joy_xyz}소재 제거{} {C:attention}#4#{}:",
                        "라운드당 한 번, {C:joy_normal}메인 덱 \"퓨어리\"{} 카드를",
                        "{C:attention}#5#{}장 생성합니다"
                    },
                    {
                        "이 카드에 소재가 없다면,",
                        "앤티 종료 시 {C:joy_effect}\"퓨어리\"{}로 {C:attention}변신{}합니다"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}천사족{} {C:attention}2{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
                    "{s:0.9,C:inactive}또는 {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)"
                }
            },
            j_joy_purr_enoir = {
                name = "{C:joy_xyz}에퓨어리 느와르",
                text = {
                    {
                        "득점한 핸드에 있는 서로 다른 슈트(문양) 수만큼",
                        "{C:attention}슬리피 씰{}이 있는 득점 카드를 {C:attention}#1#{}번 다시 발동합니다",
                        "덱에 있는 {C:attention}슬리피 씰{} {C:attention}#3#{}개당 이 횟수가 {C:attention}#2#{} 증가합니다"
                    },
                    {
                        "{C:joy_xyz}소재 제거{} {C:attention}#4#{}:",
                        "덱 맨 위에서 카드를 {C:attention}발굴{}하여 확인하고,",
                        "패에서 선택한 카드와 동일하게 복사/변환시킵니다"
                    },
                    {
                        "이 카드에 소재가 없다면,",
                        "앤티 종료 시 {C:joy_effect}\"퓨어리 리리\"{}로 {C:attention}변신{}합니다"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}천사족{} {C:attention}2{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
                    "{s:0.9,C:inactive}또는 {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)"
                }
            },
            j_joy_purr_exhappiness = {
                name = "{C:joy_xyz}익스퓨어리 해피니스",
                text = {
                    {
                        "{C:attention}메모리 씰{}이 있는 득점 카드가 {X:mult,C:white}X#1#{} 배수를 줍니다"
                    },
                    {
                        "{C:joy_xyz}소재 절반 제거{} {C:inactive}(올림){}:",
                        "이번 라운드 동안 {C:planet}\"마이프렌드 퓨어리\"{} 사용 시,",
                        "판매했을 때의 효과도 함께 발동됩니다"
                    },
                    {
                        "라운드 종료 시 소유 중인 서로 이름이 다른 {C:joy_normal}\"퓨어리\"{} 수만큼",
                        "{C:dark_edition}네거티브{} {C:planet}\"마이프렌드 퓨어리\"{}를 생성하며,",
                        "이 카드에 소재가 없다면 {C:joy_effect}\"퓨어리\"{}로 {C:attention}변신{}합니다"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}천사족{} {C:attention}5{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
                    "{s:0.9,C:inactive}또는 {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
                    "또는 {C:joy_normal}천사족{} {C:joy_xyz}엑시즈{} {C:attention}1{}장",
                    "{s:0.9,C:inactive}(소재를 인계받습니다)"
                }
            },
            j_joy_purr_exnoir = {
                name = "{C:joy_xyz}익스퓨어리 느와르",
                text = {
                    {
                        "{C:attention}메모리 씰{}이 있는 득점 카드가 {X:chips,C:white}X#1#{} 칩을 줍니다"
                    },
                    {
                        "{C:joy_normal}\"퓨어리\"{} 조커의 다시 발동 횟수가",
                        "2배로 늘어납니다"
                    },
                    {
                        "{C:joy_xyz}소재 절반 제거{} {C:inactive}(올림){}:",
                        "이번 라운드 동안 패에 있는 {C:attention}메모리 씰{}의 효과가",
                        "마치 득점한 것처럼 발동합니다"
                    },
                    {
                        "이 카드에 소재가 없다면,",
                        "라운드 종료 시 {C:joy_effect}\"퓨어리 리리\"{}로 {C:attention}변신{}합니다"
                    }
                },
                joy_summon_conditions = {
                    "{C:joy_normal}천사족{} {C:attention}5{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
                    "{s:0.9,C:inactive}또는 {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
                    "또는 {C:joy_normal}천사족{} {C:joy_xyz}엑시즈{} {C:attention}1{}장",
                    "{s:0.9,C:inactive}(소재를 인계받습니다)"
                }
            },
            j_joy_purr_street = {
                name = "{C:joy_spell}스트레이 퓨어리 스트리트",
                text = {
                    {
                        "{C:attention}퓨어리프!?{} 핸드를 플레이할 수 있게 됩니다"
                    },
                    {
                        "{C:joy_normal}\"퓨어리\"{} 조커와 {C:attention}메모리 씰{}이 있는 카드는",
                        "디버프되지 않습니다"
                    },
                    {
                        "{C:planet}\"마이프렌드 퓨어리\"{}로 씰을 부여할 때,",
                        "무작위 {C:joy_xyz}엑시즈{}에 소재를 {C:attention}#1#{}개 충전합니다",
                        "{C:inactive}(이미 씰이 부여된 카드여도 적용됩니다){}"
                    },
                    {
                        "라운드당 한 번, 전체 덱에 {C:attention}메모리 씰{}이 있는 카드가",
                        "{C:attention}#2#{}장 이상이라면, {C:joy_xyz}\"에퓨어리 해피니스\"{} 또는",
                        "{C:joy_xyz}\"에퓨어리 느와르\"{}를 그에 맞는 {C:joy_normal}\"익스퓨어리\"{}로 {C:attention}변신{}시킬 수 있습니다",
                        "{C:inactive}(이 효과는 엑시즈 소환으로 취급되며, 자신을 포함한 모든 소재를 인계합니다){}"
                    }
                }
            },
        },
        Planet = {
            c_joy_purr_friend = {
                name = "{C:joy_spell}마이프렌드 퓨어리",
                text = {
                    {
                        "({V:1}lvl.#1#{}) 레벨 업:",
                        "{C:attention}#2#",
                        "{C:mult}+#3#{} 배수 및",
                        "{C:chips}+#4#{} 칩",
                    },
                    {
                        "이 카드를 판매할 때,",
                        "패에서 선택한 카드에",
                        "{C:attention}메모리 씰{}을 부여합니다"
                    }
                },
            }
        },
        Spectral = {
            c_joy_purr_happy = {
                name = "{C:joy_spell}퓨어리의 해피메모리",
                text = {
                    {
                        "{C:joy_effect}\"퓨어리\"{}를 {C:attention}1{}장 생성합니다",
                        "{C:inactive}(자리가 있어야 합니다)"
                    },
                    {
                        "패에서 {C:hearts}하트{} 카드를 최대 {C:attention}5{}장까지 선택해",
                        "{C:attention}해피 씰{}을 부여합니다"
                    },
                    {
                        "소유 중인 무작위 {C:joy_xyz}엑시즈{} {C:attention}조커{}가",
                        "이하의 효과를 얻습니다:",
                        "{s:0.9}해당 조커의 {s:0.9,C:joy_xyz}엑시즈{} {s:0.9,C:attention}소재{s:0.9} 1개당,",
                        "{s:0.9}득점한 카드를 1번씩 다시 발동합니다",
                        "{s:0.9} ",
                        "{s:0.9}라운드 종료 시 {s:0.9,C:attention}소재 1개 제거",
                    }
                },
                joy_transfer_ability = {
                    "{C:joy_xyz}엑시즈{} {C:attention}소재{} 1개당,",
                    "득점한 카드를 1번씩 다시 발동합니다",
                    " ",
                    "라운드 종료 시 {C:attention}소재 1개 제거{}",
                }
            },
            c_joy_purr_sleepy = {
                name = "{C:joy_spell}퓨어리의 슬리피메모리",
                text = {
                    {
                        "{C:joy_effect}\"퓨어리 리리\"{}를 {C:attention}1{}장 생성합니다",
                        "{C:inactive}(자리가 있어야 합니다)"
                    },
                    {
                        "패에서 {C:clubs}클로버{} 카드를 최대 {C:attention}5{}장까지 선택해",
                        "{C:attention}슬리피 씰{}을 부여합니다"
                    },
                    {
                        "소유 중인 무작위 {C:joy_xyz}엑시즈{} {C:attention}조커{}가",
                        "이하의 효과를 얻습니다:",
                        "{s:0.9}{C:attention,s:0.9}블라인드{s:0.9} 선택 시, {s:0.9,C:joy_xyz}엑시즈{} {s:0.9,C:attention}소재{s:0.9} 1개당",
                        "{s:0.9}이번 라운드 동안 손패 크기를 {s:0.9,C:attention}+1{s:0.9} 늘립니다",
                        "{s:0.9} ",
                        "{s:0.9}라운드 종료 시 {s:0.9,C:attention}소재 1개 제거",
                    }
                },
                joy_transfer_ability = {
                    "{C:attention}블라인드{} 선택 시, {C:joy_xyz}엑시즈{} {C:attention}소재{} 1개당",
                    "이번 라운드 동안 손패 크기를 {C:attention}+1{} 늘립니다",
                    " ",
                    "라운드 종료 시 {C:attention}소재 1개 제거{}",
                }
            },
            c_joy_purr_pretty = {
                name = "{C:joy_spell}퓨어리의 프리티메모리",
                text = {
                    {
                        "{C:joy_effect}\"퓨어리\"{}를 {C:attention}1{}장 생성합니다",
                        "{C:inactive}(자리가 있어야 합니다)"
                    },
                    {
                        "패에서 {C:diamonds}다이아몬드{} 카드를 최대 {C:attention}5{}장까지 선택해",
                        "{C:attention}프리티 씰{}을 부여합니다"
                    },
                    {
                        "소유 중인 무작위 {C:joy_xyz}엑시즈{} {C:attention}조커{}가",
                        "이하의 효과를 얻습니다:",
                        "{s:0.9}카드가 {s:0.9,C:attention}릴리스{s:0.9}될 때마다,",
                        "{s:0.9,C:joy_xyz}엑시즈{} {s:0.9,C:attention}소재 1개{s:0.9} 충전",
                        "{s:0.9} ",
                        "{s:0.9}라운드 종료 시 {s:0.9,C:attention}소재 1개 제거",
                    }
                },
                joy_transfer_ability = {
                    "카드가 {C:attention}릴리스{}될 때마다,",
                    "{C:joy_xyz}엑시즈{} {C:attention}소재 1개{} 충전",
                    " ",
                    "라운드 종료 시 {C:attention}소재 1개 제거{}",
                }
            },
            c_joy_purr_delicious = {
                name = "{C:joy_spell}퓨어리의 딜리셔스메모리",
                text = {
                    {
                        "{C:joy_effect}\"퓨어리\"{}를 {C:attention}1{}장 생성합니다",
                        "{C:inactive}(자리가 있어야 합니다)"
                    },
                    {
                        "패에서 {C:spades}스페이드{} 카드를 최대 {C:attention}5{}장까지 선택해",
                        "{C:attention}딜리셔스 씰{}을 부여합니다"
                    },
                    {
                        "소유 중인 무작위 {C:joy_xyz}엑시즈{} {C:attention}조커{}가",
                        "이하의 효과를 얻습니다:",
                        "{s:0.9}해당 조커의 {s:0.9,C:joy_xyz}엑시즈{} {s:0.9,C:attention}소재{s:0.9} 1개당",
                        "{s:0.9}{s:0.9,C:mult}+#1#{s:0.9} 배수 제공",
                        "{s:0.9} ",
                        "{s:0.9}라운드 종료 시 {s:0.9,C:attention}소재 1개 제거",
                    }
                },
                joy_transfer_ability = {
                    "{C:joy_xyz}엑시즈{} {C:attention}소재{} 1개당",
                    "{C:mult}+#1#{} 배수 제공",
                    " ",
                    "라운드 종료 시 {C:attention}소재 1개 제거{}",
                }
            },
        },
        Other = {
            joy_purr_memory_seal = {
                name = "메모리 씰",
                text = {
                    "슈트(문양)에 따라 득점 시 발동하는 효과가 변합니다:",
                    "{C:hearts}하트{}: {C:attention}해피{}",
                    "{C:clubs}클로버{}: {C:attention}슬리피{}",
                    "{C:diamonds}다이아몬드{}: {C:attention}프리티{}",
                    "{C:spades}스페이드{}: {C:attention}딜리셔스{}"
                }
            },
            joy_purr_memory_seal_happy = {
                name = "해피 씰",
                text = {
                    "득점 시 {C:green}#2#분의 #1#{} 확률로",
                    "{C:joy_effect}\"퓨어리\"{} 생성 {C:inactive}(자리가 있어야 함){}",
                    " ",
                    "득점 시 {C:mult}+#3#{} 배수",
                    "패에 다른 슈트를 가진 카드 1장마다",
                    "{C:mult}+#3#{} 배수만큼 증가",
                    " ",
                    "기본 {C:hearts}하트{} 슈트에 적용됨"
                }
            },
            joy_purr_memory_seal_sleepy = {
                name = "슬리피 씰",
                text = {
                    "득점 시 {C:green}#2#분의 #1#{} 확률로",
                    "{C:joy_effect}\"퓨어리 리리\"{} 생성 {C:inactive}(자리가 있어야 함){}",
                    " ",
                    "득점 시 {C:chips}+#4#{} 칩",
                    "패에 다른 슈트를 가진 카드 1장마다",
                    "{C:chips}+#4#{} 칩만큼 증가",
                    " ",
                    "기본 {C:clubs}클로버{} 슈트에 적용됨"
                }
            },
            joy_purr_memory_seal_pretty = {
                name = "프리티 씰",
                text = {
                    "득점 시 {C:green}#2#분의 #1#{} 확률로",
                    "{C:joy_effect}\"퓨어리\"{} 생성 {C:inactive}(자리가 있어야 함){}",
                    " ",
                    "득점 시 {C:money}+$#5#{}",
                    "패에 다른 슈트를 가진 카드 1장마다",
                    "{C:money}+$#5#{} 만큼 증가",
                    " ",
                    "기본 {C:diamonds}다이아몬드{} 슈트에 적용됨"
                }
            },
            joy_purr_memory_seal_delicious = {
                name = "딜리셔스 씰",
                text = {
                    "득점 시 {C:green}#2#분의 #1#{} 확률로",
                    "{C:joy_effect}\"퓨어리\"{} 생성 {C:inactive}(자리가 있어야 함){}",
                    " ",
                    "득점 시 {C:green}#7#분의 #6#{} 확률로",
                    "{C:planet}\"마이프렌드 퓨어리\"{} 생성",
                    "패에 다른 슈트를 가진 카드 1장마다",
                    "생성 확률 증가",
                    " ",
                    "기본 {C:spades}스페이드{} 슈트에 적용됨"
                }
            },
            joy_purr_memory_seal_inactive = {
                name = "메모리 씰",
                text = {
                    "아무 효과가 없습니다"
                }
            },
        },
        JoyPokerHand = {
            phd_joy_purr_yeap = {
                name = "퓨어리프!?",
                text = {
                    "서로 다른 슈트(문양) 4장 이상",
                },
            }
        }
    },
    misc = {
        poker_hands = {
            joy_purr_yeap = "퓨어리프!?"
        },
        poker_hand_descriptions = {
            joy_purr_yeap = {
                "서로 다른 슈트(문양) 4장 이상",
                "{C:inactive}(능력에 의해 해금되어야 합니다)"
            }
        },
        labels = {
            joy_purr_memory_seal = "메모리 씰",
        },
        dictionary = {
            k_joy_archetype_purr = "퓨어리",
        }
    }
}