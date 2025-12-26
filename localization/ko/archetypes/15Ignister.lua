return {
	descriptions = {
		Joker = {
			j_joy_ignis_achichi = {
				name = "{C:joy_effect}아치치＠이그니스터",
				text = {
					{
						"{C:mult}+#1#{} 배수",
					},
					{
						"소환 시 무작위한",
						'{C:blue}일반 {C:joy_normal}"@이그니스터"',
						"카드를 {C:attention}#2#{}장 생성합니다",
						"{C:inactive}(공간이 있어야 합니다){}",
					},
				},
			},
			j_joy_ignis_pikari = {
				name = "{C:joy_effect}피카리@이그니스터",
				text = {
					{
						"라운드 종료 시",
						"{C:money}+$#1#{}를 획득합니다",
					},
					{
						"소환시 무작위한 {C:tarot}타로{} 카드를",
						"{C:attention}#2#{}장 생성합니다",
						"{C:inactive}(공간이 있어야 합니다){}",
					},
				},
			},
			j_joy_ignis_hiyari = {
				name = "{C:joy_effect}히야리@이그니스터",
				text = {
					{
						"손패 크기 {C:attention}+#1#{}장",
					},
					{
						"한 라운드당 한 번, {C:joy_normal}사이버스족{}",
						"조커를 {C:attention}#2#{}장 {C:attention}릴리스{}해",
						'무작위한 {C:green}희귀{} {C:joy_normal}"@이그니스터"',
						"카드 {C:attention}#3{}장을 생성할 수 있습니다",
						"{C:inactive}(공간이 있어야 합니다){}",
					},
					{
						'{C:joy_normal}"@이그니스터"{} 보유시 무료',
					},
				},
			},
			j_joy_ignis_bururu = {
				name = "{C:joy_effect}부르르@이그니스터",
				text = {
					{
						'소환 시 {C:attention}묘지에{} {C:joy_normal}"@이그니스터"{}',
						"카드 {C:attention}#1#{}장을 생성합니다",
					},
					{
						"{C:joy_normal}사이버스족{} 카드의 {C:attention}소재{}로 사용될 시",
						'{C:joy_normal}메인 덱 "@이그니스터"{} {C:attention}#2#{}장을',
						"{C:dark_edition}네거티브{}를 부여해 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_ignis_doshin = {
				name = "{C:joy_effect}드싱@이그니스터",
				text = {
					{
						"칩 {C:chips}+#1#{}개",
					},
					{
						"{C:joy_normal}사이버스족{} 카드의 {C:attention}소재{}로 사용될 시",
						'{C:joy_spell}엑스트라 덱 "@이그니스터"{}',
						"{C:attention}#2#{}장을 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_ignis_gatchiri = {
				name = "{C:joy_effect}갓치리@이그니스터",
				text = {
					{
						"{X:mult,C:white}X#1#{} 배수",
					},
					{
						"{C:joy_link}링크{} 소환의 소재 한 장을",
						"대체할 수 있습니다",
					},
					{
						"이 카드를 {C:attention}소재{}로 한 {C:joy_normal}사이버스족{}",
						"카드는 이하의 효과를 얻습니다:",
						"{s:0.9}뒷면으로 {s:0.9,C:attention}뒤집히거나{s:0.9} 디버프될수 없습니다",
					},
				},
				joy_transfer_ability = {
					"뒷면으로 {C:attention}뒤집히거나{} 디버프될수 없습니다",
				},
			},
			j_joy_ignis_gussari = {
				name = "{C:joy_effect}굿사리@이그니스터",
				text = {
					{
						"{C:mult}+#1#{} 배수",
					},
					{
						"{C:joy_link}링크{} 소환의 소재 한 장을",
						"대체할 수 있습니다",
					},
					{
						"이 카드를 {C:attention}소재{}로 한 {C:joy_normal}사이버스족{}",
						"카드는 이하의 효과를 얻습니다:",
						"소환에 사용된 {s:0.9,C:attention}소재{s:0.9} 한 장 마다 {s:0.9,C:mult}+#1#{} 배수",
					},
				},
				joy_transfer_ability = {
					"소환에 사용된 {C:attention}소재{} 한 장 마다 {C:mult}+#1#{} 배수",
					"{C:inactive}(현재 {C:mult}+#2#{} 배수{C:inactive})",
				},
			},
			j_joy_ignis_danmari = {
				name = "{C:joy_effect}단마리@이그니스터",
				text = {
					{
						"{C:joy_link}링크{} 소환의 소재 한 장을",
						"대체할 수 있습니다",
					},
					{
						"이 카드를 {C:attention}소재{}로 한 {C:joy_normal}사이버스족{}",
						"카드는 이하의 효과를 얻습니다:",
						"{s:0.9,C:attention}블라인드{s:0.9}의 요구 점수를 {s:0.9,C:red}#1#%{s:0.9} 낮춥니다",
					},
				},
				joy_transfer_ability = {
					"{C:attention}블라인드{}의 요구 점수를 {C:red}#1#%{} 낮춥니다",
				},
			},
			j_joy_ignis_doyon = {
				name = "{C:joy_effect}드용@이그니스터",
				text = {
					{
						'소환 시 {C:joy_normal}메인 덱 "@이그니스터"{}',
						"{C:attention}#1#{}장을 {C:attention}소생{}시킵니다",
					},
					{
						"{C:joy_normal}사이버스족{}의 {C:attention}소재{}로 사용될 시",
						'{C:joy_spell}엑스트라 덱{}에 무작위한 {C:joy_normal}"@이그니스터"{}',
						"{C:attention}#2#{}장을 생성합니다",
					},
				},
			},
			j_joy_ignis_donyoribo = {
				name = "{C:joy_effect}덩요리보@이그니스터",
				text = {
					{
						'{C:joy_normal}"@이그니스터"{}를 구매할때마다',
						"{C:money}+$#1#{}를 획득합니다",
					},
					{
						"이 카드를 판매해",
						"{C:attention}블라인드{}를 선택할때까지",
						'{C:joy_normal}"@이그니스터"{} 카드를 {C:attention}#2#{}장',
						"{C:attention}제외{}할 수 있습니다",
					},
				},
			},
			j_joy_ignis_backup = {
				name = "{C:joy_effect}백업@이그니스터",
				text = {
					{
						"소환 시 다른 무작위한 {C:joy_normal}사이버스족{}",
						"카드에 {C:dark_edition}네거티브{}를 부여합니다",
					},
					{
						"이 카드를 {C:attention}소재{}로 한 {C:joy_normal}사이버스족{}은",
						"가능하면 {C:dark_edition}네거티브{}가 부여됩니다",
					},
				},
			},
			j_joy_ignis_wizard = {
				name = "{C:joy_effect}위저드@이그니스터",
				text = {
					{
						"이 카드를 {C:attention}릴리스{}해 이름이 다른",
						"{C:joy_normal}사이버스족{} 조커를 {C:attention}#1#{}장",
						"{C:attention}소생{}시킬수 있습니다",
						"소환된 {C:joy_spell}엑스트라 덱{} {C:joy_normal}사이버스족{},",
						"조커를 보유했을경우, 추가로",
						'{C:joy_normal}"@이그니스터"{} 한 장을 더',
						"{C:dark_edition}네거티브{}를 부여해 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_ignis_kiruku = {
				name = "{C:joy_effect}크리크링크@이그니스터",
				text = {
					{
						"이 카드를 판매하면 현재",
						"{C:attention}보스 블라인드{}를 비활성화 한뒤,",
						"소환된 {C:joy_spell}엑스트라 덱{} {C:joy_normal}사이버스족{}",
						"조커를 보유했을경우 다음 상점에",
						"이 카드를 추가합니다",
					},
				},
			},
			j_joy_ignis_linkslayer = {
				name = "{C:joy_effect}링크슬레이어@이그니스터",
				text = {
					{
						"{C:joy_link}링크{} 소환의 무작위 {C:attention}소재{}를",
						"대체 할수 있습니다",
					},
					{
						"{C:joy_normal}사이버스{}족의 {C:attention}소재{}로 사용될 시",
						"영구히 버리기 횟수 {C:red}+#1#{}번을 얻습니다",
					},
				},
			},
			j_joy_ignis_leviathan = {
				name = "{C:joy_ritual}워터 리바이어던@이그니스터",
				text = {
					{
						"소환 시 {C:joy_spell}엑스트라 덱{}에",
						'보유하지 않은 {C:joy_normal}"@이그니스터"{} 카드',
						"{C:attention}#1#{}장을 생성합니다",
					},
					{
						"소환에 사용된 {C:attention}속성{}마다",
						"칩 {C:chips}+#2#{}개를 획득합니다",
						"이 획득량은 조커를 {C:joy_link}링크{} 소환",
						"할때마다 {C:chips}+#3#{}개씩 증가합니다",
						"{C:inactive}(현재 칩 {C:chips}+#3#{C:inactive}개)",
						"이 카드를 {C:attention}소재{}로 한 {C:joy_link}링크{}",
						"조커도 이 효과를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"소환에 사용된 소재마다",
					"칩 {C:chips}+#1#{}개를 획득합니다",
					"이 획득량은 조커를 {C:joy_link}링크{} 소환",
					"할때마다 {C:chips}+#2#{}개씩 증가합니다",
					"{C:inactive}(현재 칩 {C:chips}+#3#{C:inactive}개)",
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:attention}2{}장 이상",
				},
			},
			j_joy_ignis_golem = {
				name = "{C:joy_fusion}어스 골렘 @이그니스터",
				text = {
					{
						"소환 시 {C:joy_spell}엑스트라 덱{}에",
						'보유하지 않은 {C:joy_normal}"@이그니스터"{} 카드',
						"{C:attention}#1#{}장을 생성합니다",
					},
					{
						"소환에 사용된 {C:attention}속성{}마다",
						"조커 슬롯 {C:attention}+#2#{}개를 획득합니다",
						"{C:inactive}(현재 {C:attention}+#3#{C:inactive}개)",
						"이 카드를 {C:attention}소재{}로 한 {C:joy_link}링크{}",
						"조커도 이 효과를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"소환에 사용된 소재마다",
					"조커 슬롯 {C:attention}+#1#{}개를 획득합니다",
					"{C:inactive}(현재 {C:attention}+#3#{C:inactive}개)",
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:attention}2{}장 이상",
				},
			},
			j_joy_ignis_pegasus = {
				name = "{C:joy_synchro}윈드페가수스@이그니스터",
				text = {
					{
						"소환 시 {C:joy_spell}엑스트라 덱{}에",
						'보유하지 않은 {C:joy_normal}"@이그니스터"{} 카드',
						"{C:attention}#1#{}장을 생성합니다",
					},
					{
						"{C:green}#2#/#3#{} 확률로 득점한",
						"카드를 재발동시킵니다",
						"소환에 사용된 {C:attention}속성{}마다",
						"확률이 증가합니다",
						"이 카드를 {C:attention}소재{}로 한 {C:joy_link}링크{}",
						"조커도 이 효과를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"{C:green}#1#/#2#{} 확률로 득점한",
					"카드를 재발동시킵니다",
					"소환에 사용된 {C:attention}속성{}마다",
					"확률이 증가합니다",
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너{} {C:attention}1{}장 + {C:joy_normal}사이버스족{} {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_ignis_dragon = {
				name = "{C:joy_xyz}라이트드래곤@이그니스터",
				text = {
					{
						"소환 시 {C:joy_spell}엑스트라 덱{}에",
						'보유하지 않은 {C:joy_normal}"@이그니스터"{} 카드',
						"{C:attention}#1#{}장을 생성합니다",
					},
					{
						"이 조커의 소환에 사용된 {C:attention}속성{} 하나 마다",
						"득점한 카드는 영구히 손패에 남아 있으면",
						"{C:money}+$#2#{}를 획득하는 능력을 얻습니다",
						"{C:inactive}(현재 {C:money}+$#3#{C:inactive})",
						"이 카드를 {C:attention}소재{}로 한 {C:joy_link}링크{}",
						"조커도 이 효과를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"득점한 카드는 영구히",
					"소환에 사용된 {C:attention}속성{}마다",
					"손패에 남아 있으면 {C:money}+$#2#{}를",
					"획득하는 능력을 얻습니다",
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:attention}2{}장 이상",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:joy_token} 제외)",
				},
			},
			j_joy_ignis_phoenix = {
				name = "{C:joy_link}파이어피닉스@이그니스터",
				text = {
					{
						"소환 시 {C:joy_spell}엑스트라 덱{}에",
						'보유하지 않은 {C:joy_normal}"@이그니스터"{} 카드',
						"{C:attention}#1#{}장을 생성합니다",
					},
					{
						"{C:joy_normal}사이버스족{} 조커의 {C:attention}소재{}로",
						"사용되면 디버프된 {C:dark_edition}네거티브{}",
						'{C:joy_link}"파이어피닉스@이그니스터"{}',
						"{C:attention}#2#{}장을 생성합니다",
					},
					{
						"득점한 카드는 영구히",
						"{X:mult,C:white}X#3#{} 배수를 획득합니다",
						"이 획득량은 조커를 {C:joy_link}링크{} 소환",
						"할때마다 {X:mult,C:white}X#4#{}씩 증가합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#5#{} {C:inactive} 배수)",
						"이 카드를 {C:attention}소재{}로 한 {C:joy_link}링크{}",
						"조커도 이 효과를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"득점한 카드는 영구히",
					"{X:mult,C:white}X#1#{} 배수를 획득합니다",
					"이 획득량은 조커를 {C:joy_link}링크{} 소환",
					"할때마다 {C:chips}+#2#{}개씩 증가합니다",
					"{C:inactive}(현재 {X:mult,C:white}X#5#{} {C:inactive} 배수)",
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:attention}2{}장 이상",
				},
			},
			j_joy_ignis_accode = {
				name = "{C:joy_link}어코드 토커@이그니스터",
				text = {
					{
						"각 {C:joy_link}링크{} 조커마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)",
					},
					{
						"소환 시 {C:joy_link}링크{} 조커",
						"{C:attention}#3#{}장을 {C:attention}소생{}시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_link}링크{} 조커 {C:attention}5{}장 이상",
				},
			},
			j_joy_ignis_allied = {
				name = "{C:joy_link}어코드 토커＠이그니스터",
				text = {
					{
						"{C:joy_link}링크{} 조커 한 장 마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)",
					},
					{
						"소환 시 무작위한 {C:joy_link}링크{} 조커",
						"{C:attention}#3#{}장을 {C:attention}소생{}시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_link}링크{} 조커 {C:attention}3{}장",
				},
			},
			j_joy_ignis_infant = {
				name = "{C:joy_link}다크인펀트 @이그니스터",
				text = {
					{
						'소환 시 {C:joy_spell}"이그니스터 AI랜드"{}를',
						"{C:attention}#1#{}장 생성합니다",
						"{C:inactive}(공간이 있어야 합니다){}",
					},
					{
						"{C:joy_link}링크{} 소환의 소재 한 장을",
						"대체할 수 있으며 임의의 {C:attention}속성{}을",
						"대체할 수 있습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:attention}1{}장",
				},
			},
			j_joy_ignis_templar = {
				name = "{C:joy_link}다크나이트@이그니스터",
				text = {
					{
						"소환 시 가능한 만큼 이름이 다른",
						'{C:joy_normal}"@이그니스터"{} 조커들을',
						"{C:dark_edition}네거티브{}를 부여해",
						"디버프된 채로 {C:attention}소생{}시킵니다",
					},
					{
						"{C:joy_normal}사이버스족{} 조커의 {C:attention}소재{}로 사용될 시",
						"{C:joy_normal}메인덱 사이버스족{} 조커를",
						"{C:attention}#1#{}장 {C:attention}소생{}시킵니다",
					},
				},
				joy_summon_conditions = {
					'{C:joy_normal}"@이그니스터"{} {C:attention}3{}장',
				},
			},
			j_joy_ignis_arrival = {
				name = "{C:joy_link}디 어라이벌 사이버스@이그니스터",
				text = {
					{
						"소환에 사용된 {C:joy_link}속성{} 하나마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)",
					},
					{
						"이 카드의 {C:attention}소재{}들의 {C:joy_link}속성{}에 따라 아래의 효과들을 얻습니다",
						"{V:1}빛{V:3}: 라운드 종료시 {V:2}+$#3#{V:3}를 획득합니다",
						"{V:4}어둠{V:7}: 라운드 종료시 {{V:6}유령{V:7} 카드",
						"{V:5}#4#{V:7}장을 획득합니다 {s:0.8,C:inactive}(공간이 있어야 합니다)",
						"{V:8}물{V:10}: 칩 {V:9}+#5#{V:10}개",
						"{V:11}화염{V:13}: {V:12}+#6#{V:13} 배수",
						"{V:14}바람{V:17}: {V:15}#7#/#8#{V:17}의 확률로 소모품을 사용할 때",
						"{V:16}네거티브{V:17}로 복제해 생성합니다",
						"{V:18}땅{V:20}: 손패 {V:19}+#9#{V:20}장",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스{}족 {C:attention}5{}장",
				},
			},
			j_joy_ignis_arrival_divine = {
				name = "{C:joy_link}디 어라이벌 사이버스@이그니스터",
				text = {
					{
						"소환에 사용된 {C:joy_link}속성{} 하나마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)",
					},
					{
						"이 카드의 {C:attention}소재{}들의 {C:joy_link}속성{}에 따라 아래의 효과들을 얻습니다",
						"{V:1}빛{V:3}: 라운드 종료시 {V:2}+$#3#{V:3}를 획득합니다",
						"{V:4}어둠{V:7}: 라운드 종료시 {{V:6}유령{V:7} 카드",
						"{V:5}#4#{V:7}장을 획득합니다 {s:0.8,C:inactive}(공간이 있어야 합니다)",
						"{V:8}물{V:10}: 칩 {V:9}+#5#{V:10}개",
						"{V:11}화염{V:13}: {V:12}+#6#{V:13} 배수",
						"{V:14}바람{V:17}: {V:15}#7#/#8#{V:17}의 확률로 소모품을 사용할 때",
						"{V:16}네거티브{V:17}로 복제해 생성합니다",
						"{V:18}땅{V:20}: 손패 {V:19}+#9#{V:20}장",
						"{C:joy_divine}신{}: {C:attention}블라인드{}의 요구 점수가 {C:red}50%{} 감소합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스{}족 {C:attention}5{}장",
				},
			},
			j_joy_ignis_ailand = {
				name = "{C:joy_spell}이그니스터 AI랜드",
				text = {
					{
						'{C:joy_normal}"@이그니스터"{} 카드가 소재로 사용될 시',
						'상점에 {C:joy_normal}메인 덱 "@이그니스터"{}',
						"카드 {C:attention}#1#{}장을 추가합니다",
					},
					{
						"{C:attention}조커{}들이 {C:attention}#2#{}개의 다른 {C:attention}속성{}들을 보유할경우",
						"라운드의 끝에 모든 {C:joy_normal}사이버스족{} 조커를",
						"{C:attention}블라인드{}를 선택할때 까지 {C:attention}제외{}한뒤",
						"{C:joy_normal}사이버스족{}이 아닌 모든 조커를 디버프시킵니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_ignis = "@이그니스터",
			k_joy_arrival_text1 = ": Lowers ",
			k_joy_arrival_text2 = "Blind",
			k_joy_arrival_text3 = "'s requirement by ",
			k_joy_arrival_text4 = "50%",
		},
	},
}
