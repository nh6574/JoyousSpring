return {
	descriptions = {
		Joker = {
			j_joy_danger_jack = {
				name = "{C:joy_effect}미계역의 재카로프",
				text = {
					{
						'이 런에서 {C:joy_normal}"미계역"{} 카드의 파괴 효과가',
						"발동한 횟수 마다 칩 {C:chips}+#1#{}개를 얻고,",
						"{C:attention}블라인드{}를 선택 할 시 이 카드의",
						"칩 획득량이 {C:chips}+#2#{} 증가합니다",
						"{C:inactive}(현재 칩 {C:chips}+#3# {C:inactive}개)",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'무작위한 {C:joy_normal}"미계역" 카드 {C:attention}#4#{}장을 생성합니다',
						"{C:inactive}(공간이 있어야 합니다){}",
					},
				},
			},
			j_joy_danger_tsuch = {
				name = "{C:joy_effect}미계역의 츠치노코",
				text = {
					{
						'이 런에서 {C:joy_normal}"미계역"{} 카드의 파괴 효과가',
						"발동한 횟수 마다 배수 획득량이 {C:mult}+#1#{} 증가하고",
						"{C:attention}블라인드{}를 선택 할 시 이 카드의",
						"배수 획득량이 {C:mult}+#2#{} 증가합니다",
						"{C:inactive}(현재 {C:mult}+#3# {C:inactive}배수)",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'무작위한 {C:joy_normal}"미계역" 카드 {C:attention}#4#{}장을 생성합니다',
						"{C:inactive}(공간이 있어야 합니다){}",
					},
				},
			},
			j_joy_danger_chup = {
				name = "{C:joy_effect}미계역의 츄파카브라",
				text = {
					{
						"라운드의 종료 시 {C:money}+$#1#{}",
						"{C:attention}블라인드{}를 선택할 때마다",
						"획득량이 {C:money}+$#2#{} 증가합니다",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'무작위한 {C:joy_normal}"미계역" 카드 {C:attention}#3#{}장을 {C:attention}소생{}시킵니다',
					},
				},
			},
			j_joy_danger_moth = {
				name = "{C:joy_effect}미계역의 모스맨",
				text = {
					{
						"버리기 횟수 {C:red}+#1#{}번",
						"{C:attention}블라인드{}를 선택할 때마다",
						"획득량이 {C:money}#2#{} 증가합니다",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'무작위한 {C:joy_normal}"미계역" 카드 {C:attention}#3#{}장을 {C:attention}소생{}시킵니다',
					},
				},
			},
			j_joy_danger_dog = {
				name = "{C:joy_effect}미계역의 워울프",
				text = {
					{
						"{C:attention}블라인드{}의 요구 점수를 {C:red}#1#%{}감소시킵니다",
						"{C:attention}블라인드{}를 선택할 때마다",
						"감소량이 {C:red}#2#%{} 증가합니다",
						"{s:0.9,C:inactive}(최대 25%)",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'다음 상점에 무작위한 {C:joy_normal}"미계역" 카드',
						"{C:attention}#3#{}장을 추가합니다",
					},
				},
			},
			j_joy_danger_ness = {
				name = "{C:joy_effect}미계역의 넷시",
				text = {
					{
						"핸드 크기 {C:attention}+#1#{}장",
						"{C:attention}블라인드{}를 선택할 때마다",
						"얻는 크기가 {C:attention}#2#{}장 증가합니다",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'다음 상점에 무작위한 {C:joy_normal}"미계역" 카드',
						"{C:attention}#3#{}장을 추가합니다",
					},
				},
			},
			j_joy_danger_big = {
				name = "{C:joy_effect}미계역의 빅풋",
				text = {
					{
						'이 런에서 {C:joy_normal}"미계역"{} 카드의 파괴 효과가',
						"발동한 횟수 마다 {X:mult,C:white}X#1#{} 배수를 얻고,",
						"{C:attention}블라인드{}를 선택 할 시 이 카드의",
						"배수 획득량이 {X:mult,C:white}X#2#{} 증가합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#3#{} {C:inactive}배수)",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						"다른 모든 {C:attention}조커{}를 파괴합니다",
					},
				},
			},
			j_joy_danger_ogo = {
				name = "{C:joy_effect}미계역의 오고포고",
				text = {
					{
						'{C:attention}묘지{}에 있는 {C:joy_normal}"미계역"{} 한 장마다',
						"칩 {C:chips}+#1#{} 개를 획득합니다",
						"{C:inactive}(현재 칩 {C:chips}+#2# {C:inactive}개)",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						'{C:attention}묘지{}에 무작위한 {C:joy_normal}"미계역"{}',
						"{C:attention}#3#{}장을 생성합니다",
						"{C:inactive}(공간이 있어야 합니다){}",
					},
				},
			},
			j_joy_danger_thunder = {
				name = "{C:joy_effect}미계역의 썬더버드",
				text = {
					{
						'이 런에서 {C:joy_normal}"미계역"{} 카드의 파괴 효과가',
						"발동한 횟수 마다 {X:chips,C:white}X#1#{} 칩을 얻고,",
						"{C:attention}블라인드{}를 선택 할 시 이 카드의",
						"칩 획득량이 {X:chips,C:white}X#2#{} 증가합니다",
						"{C:inactive}(현재 {X:chips,C:white}X#3#{C:inactive} 칩)",
					},
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴합니다",
						"{C:inactive}(자기 자신 포함)",
					},
					{
						'{C:joy_normal}"미계역"{}의 효과로 파괴될 시',
						"다른 무작위 {C:attention}조커{} {C:attention}#3#{}장과",
						"모든 {C:attention}소모품{}을 파괴합니다",
					},
				},
			},
			j_joy_danger_realm = {
				name = "{C:joy_spell}미계역-유마리아 대륙",
				text = {
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한",
						"{C:attention}조커{}를 파괴하며 {C:money}+$#1#{}",
					},
					{
						'{C:joy_normal}"미계역"{} 카드가 {C:attention}소생{} 혹은 생성하는',
						"카드들에 {C:dark_edition}폴리크롬{}을 부여합니다",
					},
				},
			},
			j_joy_danger_disorder = {
				name = "{C:joy_spell}격동의 미계역",
				text = {
					{
						'{C:attention}묘지{}에 있는 {C:joy_normal}"미계역"{} 한 장마다',
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#2# {C:inactive}배수)",
					},
					{
						"{C:attention}블라인드{}를 선택 시",
						'무작위한 {C:joy_normal}"미계역" 카드 {C:attention}#3#{}장을 생성합니다',
						"{C:inactive}(공간이 있어야 합니다){}",
					},
					{
						'{C:joy_normal}"미계역"{}이 아닌 모든 카드는 디버프됩니다',
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_danger = "미계역",
		},
	},
}
