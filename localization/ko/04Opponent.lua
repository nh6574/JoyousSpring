return {
    descriptions = {
        joy_Opponent = {
            --#region Effect
            opp_joy_dimensionshifter = {
                name = "{C:joy_effect}디멘션 어트랙터",
                text = {
                    "이번 앤티가 끝날 때까지 매 상점에서",
                    "처음 구매하는 {C:attention}조커{}를 {C:attention}제외{}합니다"
                }
            },
            opp_joy_droll = {
                name = "{C:joy_effect}드롤 & 로크 버드",
                text = {
                    "매 상점에서 아이템을",
                    "한 개만 구매할 수 있습니다",
                    "{C:inactive}(바우처 제외){}"
                }
            },
            opp_joy_kurikara = {
                name = "{C:joy_effect}쿠리카라천동",
                text = {
                    "무작위로 가장 희귀도가 높은 {C:attention}조커{}를",
                    "{C:attention}릴리스{}하고, 앤티 종료 시 가능하다면",
                    "희귀도는 같지만 이름이 다른",
                    "{C:attention}조커{}를 {C:attention}소생{}시킵니다"
                }
            },
            opp_joy_nibiru = {
                name = "{C:joy_effect}원시생명체 니비루",
                text = {
                    "{C:attention}소환{}된 카드들은 {C:attention}5{}번째 소환 이후",
                    "즉시 {C:attention}릴리스{}됩니다",
                    "{C:inactive}(#1#/5){}"
                }
            },
            opp_joy_theia = {
                name = "{C:joy_effect}원시생명체 테이아",
                text = {
                    "다른 {C:red}레어 {C:attention}조커{}를 소유하고 있다면,",
                    "획득한 {C:red}레어 {C:attention}조커{}를 {C:attention}릴리스{}합니다"
                }
            },
            opp_joy_parasiteparacide = {
                name = "{C:joy_effect}기생충 파라사이드",
                text = {
                    "{X:mult,C:white}X#1#{} 배수"
                }
            },
            opp_joy_parasiteparanoid = {
                name = "{C:joy_effect}기생충 파라노이드",
                text = {
                    "모든 {C:attention}조커{}는",
                    "{C:joy_normal}곤충족{}으로 취급됩니다"
                }
            },
            --#endregion
            --#region Spell
            opp_joy_bookofeclipse = {
                name = "{C:joy_spell}개기일식의 서",
                text = {
                    "{C:attention}조커{}는 앞면으로 {C:attention}뒤집힐{} 수 없습니다"
                }
            },
            opp_joy_bookoflunareclipse = {
                name = "{C:joy_spell}금기일식의 서",
                text = {
                    "매 라운드마다",
                    "{C:attention}조커 2장을 뒤집습니다{}"
                }
            },
            opp_joy_bookofmoon = {
                name = "{C:joy_spell}달의 서",
                text = {
                    "라운드 종료 시",
                    "{C:attention}조커{} 1장을 뒷면으로 {C:attention}뒤집습니다{}"
                }
            },
            opp_joy_bookoftaiyou = {
                name = "{C:joy_spell}태양의 서",
                text = {
                    "{C:attention}조커{}는 뒷면으로 {C:attention}뒤집힐{} 수 없습니다"
                }
            },
            opp_joy_cosmiccyclone = {
                name = "{C:joy_spell}코즈믹 싸이크론",
                text = {
                    "{C:attention}블라인드{} 선택 시 {C:attention}보스 블라인드{}가 시작될 때까지",
                    "{C:joy_spell}필드 마법{}을 {C:attention}제외{}합니다"
                }
            },
            opp_joy_drnm = {
                name = "{C:joy_spell}명왕결계파",
                text = {
                    "매 라운드 무작위 {C:green}언커먼 {C:attention}조커{} 하나가",
                    "라운드 종료 시까지",
                    "디버프됩니다"
                }
            },
            opp_joy_forchalice = {
                name = "{C:joy_spell}금지된 성배",
                text = {
                    "매 라운드 다른 {C:joy_effect}효과{} {C:attention}조커{}를 디버프하지만,",
                    "해당 {C:attention}조커{}는 {X:mult,C:white}X#1#{} 배수를 줍니다"
                }
            },
            opp_joy_fordress = {
                name = "{C:joy_spell}금지된 성의",
                text = {
                    "플레이한 핸드의 득점 카드들이",
                    "{X:chips,C:white}X#1#{} 칩을 주지만,",
                    "플레이하는 카드는 디버프될 수 없습니다"
                }
            },
            opp_joy_fordroplet = {
                name = "{C:joy_spell}금지된 일적",
                text = {
                    "{C:joy_effect}효과{}, {C:joy_trap}함정{} 또는 {C:joy_spell}필드 마법 {C:attention}조커{}를",
                    "디버프합니다. 매 라운드마다 대상이 순환합니다",
                    "{C:inactive}(현재 #1#){}"
                }
            },
            opp_joy_forlance = {
                name = "{C:joy_spell}금지된 성창",
                text = {
                    "모든 {C:joy_effect}효과{} {C:attention}조커{}가 {X:mult,C:white}X#1#{} 배수를 주지만,",
                    "뒷면으로 {C:attention}뒤집히거나{} 디버프될 수 없습니다"
                }
            },
            opp_joy_forscript = {
                name = "{C:joy_spell}금지된 성전",
                text = {
                    "{C:dark_edition}에디션{} 효과가 적용되지 않습니다"
                }
            },
            opp_joy_harpiesfeatherduster = {
                name = "{C:joy_spell}해피의 깃털",
                text = {
                    "{C:joy_spell}필드 마법{} 슬롯을 {C:attention}1{}칸 줄입니다"
                }
            },
            opp_joy_lightningstorm = {
                name = "{C:joy_spell}라이트닝 스톰",
                text = {
                    "앤티 종료 시 모든 {C:joy_spell}필드 마법{}을 파괴합니다",
                    "없을 경우 모든 {C:attention}조커{}를 파괴합니다"
                }
            },
            opp_joy_necrovalley = {
                name = "{C:joy_spell}왕가의 골짜기-네크로밸리",
                text = {
                    "{C:attention}조커{}를 {C:attention}소생{}시킬 수 없습니다"
                }
            },
            opp_joy_senetswitch = {
                name = "{C:joy_spell}세넷 스위치",
                text = {
                    "매 라운드 무작위 {C:attention}조커{} 1장이",
                    "라운드 종료 시까지 왼쪽 끝에",
                    "{C:attention}고정(Pin){}됩니다"
                }
            },
            opp_joy_superpoly = {
                name = "{C:joy_spell}초융합",
                text = {
                    "{C:joy_fusion}융합{} 몬스터를 제외한",
                    "{C:attention}조커{}를 소환할 수 없습니다"
                }
            },
            opp_joy_terminalworld = {
                name = "{C:joy_spell}단말세계",
                text = {
                    "{C:attention}빅 블라인드{}를",
                    "선택할 수 없습니다"
                }
            },
            opp_joy_terminalworldnext = {
                name = "{C:joy_spell}단말세계 NEXT",
                text = {
                    "{C:attention}조커{} 슬롯이",
                    "{C:attention}2{}칸 줄어듭니다"
                }
            },
            opp_joy_ultimateslayer = {
                name = "{C:joy_spell}얼티미트 슬레이어",
                text = {
                    "{V:1}#1#{} 타입의 {C:attention}조커{}만",
                    "소환할 수 있습니다"
                }
            },
            --#endregion
            --#region Trap
            opp_joy_chaindisappearance = {
                name = "{C:joy_trap}연쇄 제외",
                text = {
                    "{C:attention}조커{}가 소환될 때마다, 라운드 종료 시까지",
                    "같은 {C:attention}종족{} 또는 {C:attention}속성{}을 가진",
                    "다른 모든 카드를 {C:attention}제외{}합니다"
                }
            },
            opp_joy_chaindispel = {
                name = "{C:joy_trap}체인 디스펠",
                text = {
                    "{C:joy_effect}리버스{}: 이름이 같은 {C:attention}조커{}를",
                    "하나만 남기고 모두 파괴합니다",
                    "{C:inactive}(필드 마법 포함){}"
                }
            },
            opp_joy_chainhole = {
                name = "{C:joy_trap}체인 홀",
                text = {
                    "{C:attention}블라인드{} 선택 시, 라운드 종료 시까지",
                    "이름이 같은 {C:attention}조커{}를 하나만 남기고 모두 제외합니다",
                    "{C:inactive}(필드 마법 포함){}"
                }
            },
            opp_joy_evenly = {
                name = "{C:joy_trap}길항승부",
                text = {
                    "{C:attention}블라인드{} 선택 시, 다음 {C:attention}블라인드{}를",
                    "선택할 때까지 {C:attention}조커{} 1장을 {C:attention}제외{}합니다"
                }
            },
            opp_joy_imperialironwall = {
                name = "{C:joy_trap}왕궁의 철벽",
                text = {
                    "카드를 {C:attention}제외{}할 수 없습니다"
                }
            },
            opp_joy_imperialorder = {
                name = "{C:joy_trap}왕궁의 칙명",
                text = {
                    "매 라운드마다 {C:joy_spell}필드 마법{}이",
                    "라운드 종료 시까지 디버프됩니다"
                }
            },
            opp_joy_imperm = {
                name = "{C:joy_trap}무한포영",
                text = {
                    "매 라운드마다 {C:joy_trap}함정{}이 아닌",
                    "{C:joy_effect}효과 {C:attention}조커{} 하나가 라운드 종료 시까지 디버프됩니다"
                }
            },
            opp_joy_lightforcesword = {
                name = "{C:joy_trap}빛의 호봉검",
                text = {
                    "이번 앤티가 끝날 때까지 매 플레이한 핸드에서",
                    "득점 카드 {C:attention}1장을 제외{}합니다"
                }
            },
            opp_joy_macrocosmos = {
                name = "{C:joy_trap}매크로 코스모스",
                text = {
                    "어떤 카드도",
                    "{C:attention}묘지{}로 보내지지 않습니다"
                }
            },
            opp_joy_redreboot = {
                name = "{C:joy_trap}레드 리부트",
                text = {
                    "매 라운드마다 {C:joy_trap}함정{} 하나가",
                    "라운드 종료 시까지 디버프됩니다"
                }
            },
            --#endregion
        },
    },
    misc = {
        dictionary = {
            k_joy_opponent = "상대",
            k_joy_opponentcards = "상대방 카드",
            --#region Card specific
            k_joy_ultimateslayer_type = "[블라인드에 의해 소환 타입이 제한됨]"
            --#endregion
        }
    }
}