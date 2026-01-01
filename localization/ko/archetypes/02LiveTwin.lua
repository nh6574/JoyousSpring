return {
	descriptions = {
		Joker = {
			j_joy_ltwin_lilla = {
				name = "{C:joy_effect}Live☆Twin 리일라",
				text = {
					{
						"칩 {C:chips}+#1#{} 개",
					},
					{
						'소환 시 {C:joy_effect}"Live☆Twin 키스킬"{}을',
						"보유하지 않고 있다면 {C:attention}#2#{}장 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
			},
			j_joy_ltwin_kisikil = {
				name = "{C:joy_effect}Live☆Twin 키스킬",
				text = {
					{
						"{C:mult}+#1#{} 배수",
					},
					{
						'소환 시 {C:joy_effect}"Live☆Twin 리일라"{}를',
						"보유하지 않고 있다면 {C:attention}#2#{}장 생성합니다",
					},
				},
			},
			j_joy_ltwin_lilla_treat = {
				name = "{C:joy_effect}Live☆Twin 리일라 트리트",
				text = {
					{
						"라운드별 버리기 {C:red}+#1#{}번",
					},
					{
						'{C:joy_normal}"키스킬"{} 보유 시 무료',
					},
				},
			},
			j_joy_ltwin_lilla_sweet = {
				name = "{C:joy_effect}Live☆Twin 리일라 스위트",
				text = {
					{
						"라운드별 핸드 {C:blue}+#1#{}번",
					},
					{
						'{C:joy_normal}"키스킬"{} 보유 시 무료',
					},
				},
			},
			j_joy_ltwin_kisikil_frost = {
				name = "{C:joy_effect}Live☆Twin 키스킬 프로스트",
				text = {
					{
						"핸드 크기 {C:attention}+#1#{}장",
					},
					{
						'{C:joy_normal}"리일라"{} 보유 시 무료',
					},
				},
			},
			j_joy_etwin_kisikil_deal = {
				name = "{C:joy_link}Evil★Twin 키스킬 딜",
				text = {
					{
						"{C:mult}+#1#{} 배수",
						"핸드 크기 {C:attention}+#2#{}장",
					},
					{
						"{C:attention}블라인드{}를 선택 시 무작위한",
						'{C:joy_normal}메인 덱 "리일라"{}를 {C:attention}묘지{}에 생성합니다',
					},
					{
						"{C:joy_link}링크{} 소환의 {C:attention}소재{}로 사용될 때",
						'{C:joy_spell}엑스트라 덱{}에 무작위한 {C:joy_normal}"Evil{C:joy_normal,f:joy_font}★{}{C:joy_normal}Twin"{}',
						"카드를 {C:attention}#4#{}장 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					'{C:joy_normal}"키스킬"{} {C:attention}1{}장',
				},
			},
			j_joy_etwin_kisikil = {
				name = "{C:joy_link}Evil★Twin 키스킬",
				text = {
					{
						"{C:mult}+#1#{} 배수",
					},
					{
						'소환 시 {C:joy_normal}"리일라"{}를 보유하고 있다면',
						"핸드 크기 {C:attention}+#2#{}장을 영구히 얻습니다",
					},
					{
						"{C:attention}블라인드{}를 선택 시 {C:joy_link}Evil★Twin 리일라{} {C:attention}#3#{}장",
						'혹은 {C:joy_normal}"리일라"{} {C:attention}#3#{}장을 {C:attention}소생{}시킵니다',
					},
				},
				joy_summon_conditions = {
					'{C:joy_normal}"키스킬"{} {C:attention}1{}장을 포함한 {C:attention}조커 2{}장',
				},
			},
			j_joy_etwin_lilla = {
				name = "{C:joy_link}Evil★Twin 리일라",
				text = {
					{
						"칩 {C:chips}+#1#{}개",
					},
					{
						'소환 시 {C:joy_normal}"키스킬"{}를 보유하고 있다면',
						"{C:money}+$#2#{}를 얻습니다",
					},
					{
						"{C:attention}블라인드{}를 선택 시 {C:joy_link}Evil★Twin 키스킬{} {C:attention}#3#{}장",
						'혹은 {C:joy_normal}"키스킬"{} {C:attention}#3#{}장을 {C:attention}소생{}시킵니다',
					},
				},
				joy_summon_conditions = {
					'{C:joy_normal}"리일라"{} {C:attention}1{}장을 포함한 {C:attention}조커 2{}장',
				},
			},
			j_joy_etwin_kisikil_lilla = {
				name = "{C:joy_effect}Evil★Twins 키스킬 리일라",
				text = {
					{
						'{C:attention}묘지{}의 {C:joy_normal}"리일라" 한 장 마다 {C:chips}+#1#{}개를 획득합니다',
						'{C:attention}묘지{}의 {C:joy_normal}"키스킬" 한 장 마다 {C:mult}+#2#{} 배수를 획득합니다',
						"{C:inactive}(현재 칩 {C:chips}+#4#{}{C:inactive}개{} {C:mult}+#5#{} {C:inactive}배수){}",
						"{C:attention}블라인드{}를 선택할시 그 라운드동안 보유한",
						"{C:joy_link}링크{} 몬스터마다 버리기 횟수를 {C:red}#3#{}번 잃습니다",
					},
					{
						"이 카드는 {C:attention}소생{}될수 없습니다",
					},
				},
			},
			j_joy_etwin_sunny = {
				name = "{C:joy_link}Evil★Twin's 트러블 서니",
				text = {
					{
						"칩 {C:chips}+#1#{}개",
						"{C:mult}+#2#{} 배수",
					},
					{
						"라운드가 끝날때 {C:joy_spell{}엑스트라 덱{}으로 돌아가며",
						"{C:joy_link}Evil★Twin 키스킬{}과 {C:joy_link}Evil★Twin 리일라{}를",
						"{C:attention}#3#{}장씩 {C:attention}소생{}시킵니다",
					},
				},
				joy_summon_conditions = {
					'{C:joy_normal}"Evil★Twin"{} {C:attention}2{}장',
				},
			},
			j_joy_ltwin_channel = {
				name = "{C:joy_spell}Live☆Twin 채널",
				text = {
					{
						'{C:attention}블라인드{}의 도중, {C:joy_normal}"키시킬"{} 또는 {C:joy_normal}"리일라"{}',
						"{C:joy_link}링크{} 몬스터를 {C:attention}#1#{}장 {C:attention}릴리스{}해",
						"이 라운드에서 얻는 칩의 갯수를",
						"{C:attention}2배{}로 늘릴수 있습니다",
					},
					{
						'상점에서 나갈때 {C:joy_normal}"키시킬"{} 또는',
						'{C:joy_normal}"리일라"{} {C:attention}#2#{}장을 {C:attention}소생{}시킵니다',
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_ltwin = "이빌트윈",
		},
	},
}
