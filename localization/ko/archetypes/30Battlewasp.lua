return {
    descriptions = {
        Joker = {
            j_joy_wasp_pin = {
                name = "{C:joy_effect}비포스-필중의 핀",
                text = {
                    {
                        "소유한 {C:joy_normal}\"비포스\"{} 1장당 {C:mult}+#1#{} 배수",
                        "{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)"
                    },
                    {
                        "획득 시 {C:attention}1{}장의 {C:joy_effect}\"비포스-필중의 핀\"{}을 생성합니다",
                        "{C:inactive}(\"비포스-필중의 핀\"의 효과로 획득한 경우 제외){}",
                    },
                    {
                        "다른 {C:joy_normal}곤충족{}을 소유하고 있다면,",
                        "가격이 무료가 되며 자리가 없어도 상점에서 획득할 수 있습니다",
                    }
                }
            },
            j_joy_wasp_dart = {
                name = "{C:joy_effect}비포스-추격의 다트",
                text = {
                    {
                        "{C:attention}소재{}로 사용될 시",
                        "{C:attention}1{}장의 {C:joy_normal}메인 덱 곤충족{}을 생성합니다",
                    },
                    {
                        "{C:joy_synchro}싱크로{} 소환 시 어떠한 {C:attention}소재{}로도 취급될 수 있습니다",
                    },
                    {
                        "다른 {C:joy_normal}곤충족{}을 소유하고 있다면,",
                        "가격이 무료가 되며 자리가 없어도 상점에서 획득할 수 있습니다",
                    }
                }
            },
            j_joy_wasp_sting = {
                name = "{C:joy_effect}비포스-독침의 니들",
                text = {
                    {
                        "{C:joy_normal}곤충족{} {C:attention}1장을 릴리스{}하여",
                        "상점 무료 리롤을 얻을 수 있습니다"
                    },
                    {
                        "획득 시 {C:joy_spell}엑스트라 덱{}에",
                        "{C:joy_normal}\"비포스\"{} {C:attention}1{}장을 추가합니다",
                        "{C:inactive}(자리가 있어야 합니다)"
                    },
                    {
                        "다른 {C:joy_normal}곤충족{}을 소유하고 있다면,",
                        "자리가 없어도 상점에서 이 카드를 획득할 수 있습니다",
                    }
                }
            },
            j_joy_wasp_twinbow = {
                name = "{C:joy_effect}비포스-연격의 트윈보우",
                text = {
                    {
                        "{C:joy_normal}곤충족{}의 {C:attention}소재{}로 사용될 시",
                        "상점에 {C:joy_effect}\"비포스-연격의 트윈보우\"{}를 {C:attention}2{}장 추가합니다",
                    },
                    {
                        "{C:joy_synchro}싱크로{} 소환 시 어떠한 {C:attention}소재{}로도 취급될 수 있습니다",
                    },
                    {
                        "다른 {C:joy_normal}곤충족{}을 소유하고 있다면,",
                        "자리가 없어도 상점에서 이 카드를 획득할 수 있습니다",
                    }
                }
            },
            j_joy_wasp_arbalest = {
                name = "{C:joy_effect}비포스-속사전의 알바레스트",
                text = {
                    {
                        "획득 시 {C:joy_normal}곤충족{} {C:attention}1장을 소생{}시킵니다",
                    },
                    {
                        "{C:joy_synchro}싱크로{} 소환 시 어떠한 {C:attention}소재{}로도 취급될 수 있습니다",
                    },
                    {
                        "다른 {C:joy_normal}곤충족{}을 소유하고 있다면,",
                        "자리가 없어도 상점에서 이 카드를 획득할 수 있습니다",
                    }
                }
            },
            j_joy_wasp_rapier = {
                name = "{C:joy_effect}비포스-돌격의 레이피어",
                text = {
                    {
                        "{C:joy_synchro}싱크로{} 소환 시 어떠한 {C:attention}소재{}로도 취급될 수 있습니다",
                    },
                    {
                        "다른 {C:joy_normal}곤충족{}을 소유하고 있다면,",
                        "자리가 없어도 상점에서 이 카드를 획득할 수 있습니다",
                    },
                    {
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이하의 능력을 얻습니다:",
                        "{s:0.9,C:green}#2#분의 #1#{s:0.9} 확률로 각 플레이된 카드를 다시 발동합니다",
                        "소유한 {s:0.9,C:joy_normal}곤충족{s:0.9} 1장당 확률이 증가합니다"
                    },
                },
                joy_transfer_ability = {
                    "{C:green}#2#분의 #1#{} 확률로 각 플레이된 카드를 다시 발동합니다",
                    "소유한 {C:joy_normal}곤충족{} 1장당 확률이 증가합니다"
                }
            },
            j_joy_wasp_azusa = {
                name = "{C:joy_synchro}비포스-항마궁의 아즈사",
                text = {
                    {
                        "{C:attention}블라인드{} 선택 시, 소유한 {C:joy_normal}곤충족{} 1장당",
                        "{C:attention}블라인드{}의 요구 점수를 {C:red}#1#%{} 낮춥니다",
                        "{C:inactive}(최대 50%). (현재 #2#%){}"
                    },
                    {
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이하의 능력을 얻습니다:",
                        "다음 {s:0.9,C:attention}블라인드{s:0.9}를 선택할 때까지",
                        "라운드 종료 시 자신을 {s:0.9,C:attention}제외{s:0.9}합니다"
                    },
                },
                joy_transfer_ability = {
                    "다음 {C:attention}블라인드{}를 선택할 때까지",
                    "라운드 종료 시 자신을 {C:attention}제외{}합니다"
                },
                joy_summon_conditions = {
                    "{C:joy_synchro}튜너{} {C:attention}1{}장 +",
                    "튜너 이외의 {C:joy_normal}곤충족{} {C:attention}1{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 또는 {s:0.9,C:joy_link}링크{s:0.9,C:inactive} 제외){}",
                    "자리가 없어도 됩니다",
                }
            },
            j_joy_wasp_halberd = {
                name = "{C:joy_synchro}비포스-돌격의 할베르트",
                text = {
                    {
                        "{C:joy_spell}엑스트라 덱 / 의식{} 소환된 {C:joy_normal}곤충족{} 조커가 {X:mult,C:white}X#1#{} 배수를 줍니다"
                    },
                    {
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이하의 능력을 얻습니다:",
                        "소유한 {s:0.9,C:joy_normal}곤충족{s:0.9} 1장당 {s:0.9,C:mult}+#1#{s:0.9} 배수"
                    },
                },
                joy_transfer_ability = {
                    "소유한 {C:joy_normal}곤충족{} 1장당 {C:mult}+#1#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)"
                },
                joy_summon_conditions = {
                    "{C:joy_normal}곤충족{} {C:joy_synchro}튜너{} {C:attention}1{}장 +",
                    "튜너 이외의 몬스터 {C:attention}1{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 또는 {s:0.9,C:joy_link}링크{s:0.9,C:inactive} 제외){}",
                    "자리가 없어도 됩니다",
                }
            },
            j_joy_wasp_sachi = {
                name = "{C:joy_synchro}비포스-신궁의 사치",
                text = {
                    {
                        "{C:joy_normal}곤충족{}의 {C:attention}소재{}로 사용될 시",
                        "소유한 {C:joy_normal}곤충족{} 1장당 {C:money}+$#1#{}"
                    },
                    {
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이하의 능력을 얻습니다:",
                        "앤티 종료 시 {s:0.9,C:attention}묘지{s:0.9}에 있는",
                        "{s:0.9,C:joy_normal}곤충족{s:0.9} 1장당 {s:0.9,C:money}+$#2#{}"
                    },
                },
                joy_transfer_ability = {
                    "앤티 종료 시 {C:attention}묘지{}에 있는 {C:joy_normal}곤충족{} 1장당 {C:money}+$#1#{}",
                    "{C:inactive}(현재 {C:money}+$#2#{}{C:inactive})"
                },
                joy_summon_conditions = {
                    "{C:joy_normal}곤충족{} {C:joy_synchro}튜너{} {C:attention}1{}장 +",
                    "튜너 이외의 몬스터 {C:attention}1{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 또는 {s:0.9,C:joy_link}링크{s:0.9,C:inactive} 제외){}",
                    "자리가 없어도 됩니다",
                }
            },
            j_joy_wasp_hama = {
                name = "{C:joy_synchro}비포스-강항궁의 하마",
                text = {
                    {
                        "{C:mult}+#1#{} 배수",
                        "{V:3}싱크로{V:2} 몬스터를 {V:4}소재{V:2}로",
                        "사용하여 소환되었을 경우 {V:1}+#2#{V:2} 배수"
                    },
                    {
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이하의 능력을 얻습니다:",
                        "{s:0.9,C:mult}+#3#{s:0.9} 배수"
                    },
                },
                joy_transfer_ability = {
                    "{C:mult}+#3#{} 배수"
                },
                joy_summon_conditions = {
                    "{C:joy_normal}곤충족{} {C:joy_synchro}튜너{} {C:attention}1{}장 +",
                    "튜너 이외의 {C:joy_synchro}싱크로{} 몬스터 {C:attention}1{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 또는 {s:0.9,C:joy_link}링크{s:0.9,C:inactive} 제외){}",
                    "자리가 없어도 됩니다",
                }
            },
            j_joy_wasp_ballista = {
                name = "{C:joy_synchro}비포스-결전의 발리스타",
                text = {
                    {
                        "이번 런에서 {C:attention}제외{}된 {C:joy_normal}곤충족{} 1장당 {C:mult}+#1#{} 배수",
                        "{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이 능력을 얻습니다"
                    },
                    {
                        "다음 {C:attention}블라인드{}를 선택할 때까지",
                        "라운드 종료 시 모든 {C:joy_normal}\"비포스\"{}를 {C:attention}제외{}합니다"
                    },
                },
                joy_transfer_ability = {
                    "이번 런에서 {C:attention}제외{}된 {C:joy_normal}곤충족{} 1장당 {C:mult}+#1#{} 배수",
                    "{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)"
                },
                joy_summon_conditions = {
                    "{C:joy_normal}곤충족{} {C:joy_synchro}튜너{} {C:attention}1{}장 +",
                    "{C:joy_synchro}싱크로{} 몬스터를 포함한 튜너 이외의 몬스터 {C:attention}2{}장",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 또는 {s:0.9,C:joy_link}링크{s:0.9,C:inactive} 제외){}",
                    "자리가 없어도 됩니다",
                }
            },
            j_joy_wasp_partisan = {
                name = "{C:joy_synchro}비포스-혁명의 파르티장",
                text = {
                    {
                        "이번 런에서 {C:attention}제외{}된 {C:joy_normal}곤충족{} 1장당",
                        "{X:mult,C:white}X#1#{} 배수를 획득합니다",
                        "{C:inactive}(현재 {X:mult,C:white}X#2#{}{C:inactive} 배수)",
                        "이 카드를 {C:attention}소재{}로 사용하여 소환된 {C:joy_normal}곤충족{}은",
                        "이 능력을 얻습니다"
                    },
                    {
                        "{C:attention}소재{}로 사용될 시 {C:joy_spell}엑스트라 덱{}에",
                        "각각의 {C:joy_normal}\"비포스\"{} {C:joy_synchro}싱크로{} 몬스터를 {C:attention}1{}장씩 추가합니다",
                        "{C:inactive}(\"비포스-혁명의 파르티장\" 제외){}",
                        "{C:inactive}(자리가 없어도 됩니다){}"
                    },
                },
                joy_transfer_ability = {
                    "이번 런에서 {C:attention}제외{}된 {C:joy_normal}곤충족{} 1장당",
                    "{X:mult,C:white}X#1#{} 배수를 획득합니다",
                    "{C:inactive}(현재 {X:mult,C:white}X#2#{}{C:inactive} 배수)"
                },
                joy_summon_conditions = {
                    "{C:joy_normal}곤충족{} {C:joy_synchro}튜너{} {C:attention}1{}장 +",
                    "{C:joy_synchro}싱크로{} 몬스터를 포함한 튜너 이외의 몬스터 {C:attention}3장 이상{}",
                    "{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 또는 {s:0.9,C:joy_link}링크{s:0.9,C:inactive} 제외){}",
                    "자리가 없어도 됩니다",
                }
            },
        }
    },
    misc = {
        dictionary = {
            k_joy_archetype_wasp = "비포스",
        }
    }
}