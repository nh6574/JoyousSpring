return {
	descriptions = {
		Joker = {
			j_joy_spright_blue = {
				name = "{C:joy_effect}스프라이트 블루",
				text = {
					{
						"라운드 종료 시 무작위한 {C:joy_normal}메인 덱{}",
						'{C:joy_normal}"스프라이트"{} {C:attention}#1#{}장을 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						"{C:green}희귀{} 조커 보유 시 무료",
					},
				},
			},
			j_joy_spright_jet = {
				name = "{C:joy_effect}스프라이트 제트",
				text = {
					{
						"라운드 종료 시 무작위한 {C:joy_normal}메인 덱{}",
						'{C:joy_normal}"스프라이트"{} {C:attention}#1#{}장을 {C:attention}묘지{}에 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						"{C:green}희귀{} 조커 보유 시 무료",
					},
				},
			},
			j_joy_spright_carrot = {
				name = "{C:joy_effect}스프라이트 캐롯",
				text = {
					{
						"보유한 {C:green}희귀{} 조커마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					},
					{
						"{C:green}희귀{} 조커 보유 시 무료",
					},
				},
			},
			j_joy_spright_red = {
				name = "{C:joy_effect}스프라이트 레드",
				text = {
					{
						"보유한 {C:green}희귀{} 조커마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {C:mult}+#2#{} {C:inactive}배수){}",
					},
					{
						"{C:green}희귀{} 조커 보유 시 무료",
					},
				},
			},
			j_joy_spright_pixies = {
				name = "{C:joy_effect}스프라이트 픽시즈",
				text = {
					{
						"보유한 {C:green}희귀{} 조커마다",
						"칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 칩{C:chips}+#2#{} {C:inactive}개){}",
					},
					{
						"{C:green}희귀{} 조커 보유 시 무료",
					},
				},
			},
			j_joy_spright_elf = {
				name = "{C:joy_link}스프라이트 엘프",
				text = {
					{
						"{C:attention}블라인드{}를 선택 시",
						"{{C:green}희귀{} 조커 {C:attention}#1#{}장을 {C:attention}소생{}시킵니다",
					},
					{
						'{C:joy_normal}"스프라이트"{}의 효과를 처리 시',
						"{C:attention}묘지{}의 {C:green}희귀{} 조커들은",
						"보유된것으로 취급됩니다",
					},
				},
				joy_summon_conditions = {
					"{C:green}희귀{} 조커 {C:attention}2{}장",
				},
			},
			j_joy_spright_sprind = {
				name = "{C:joy_link}스프라이트 스프린드",
				text = {
					{
						'{C:joy_normal}"스프라이트"{}를 {C:attention}소재{}로 해 소환될 때',
						"다른 모든 {C:green}희귀{} {C:attention}조커{}는 {C:dark_edition}네거티브{}가 되며",
						"다른 희귀도의 {C:attention}조커{}들은 모두 디버프됩니다",
					},
					{
						"{C:attention}엑시즈 소재 #1#{}장을 {C:joy_xyz}엑시즈{}할 시",
						'{C:joy_spell}엑스트라 덱{}에 {C:joy_xyz}"기간틱 스프라이트"{}를 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
						"{C:inactive}(#2#/#1#){}",
					},
				},
				joy_summon_conditions = {
					"{C:joy_xyz}엑시즈{} 조커 {C:attention}1{}장을 포함한",
					"{C:green}희귀{} 조커 {C:attention}2{}장,",
				},
			},
			j_joy_spright_gigantic = {
				name = "{C:joy_xyz}기간틱 스프라이트",
				text = {
					{
						"{C:joy_xyz}엑시즈{} {C:attention}1{}: 무작위한",
						"{C:green}희귀{} 조커를 {C:attention}#1#{}장",
						"생성 합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					"{C:green}희귀{} 조커 {C:attention}2{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
					"{s:0.9,C:inactive}({C:joy_link}링크{s:0.9,C:inactive} 몬스터는 가능)",
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_spright = "스프라이트",
		},
	},
}
