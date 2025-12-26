return {
	descriptions = {
		Joker = {
			j_joy_sauravis = {
				name = "{C:joy_ritual}고성대 사우라비스",
				text = {
					{
						"이 카드를 {C:attention}보스 블라인드{} 도중 판매하면",
						"블라인드의 효과를 무효화하고 다음",
						"상점에 이 카드를 추가합니다",
					},
					{
						"이 런동안 이 효과를 발동한 갯수만큼",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					},
				},
				joy_summon_conditions = {
					"{C:attention}조커 2{}장",
				},
			},
			j_joy_lycanthrope = {
				name = "{C:joy_ritual}라이컨 슬로프",
				text = {
					{
						"보유하거나 {C:attention}묘지{}에 있는",
						"{C:joy_normal}일반{} 몬스터 한 장 마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
				},
				joy_summon_conditions = {
					"{C:attention}조커 2{}장",
					"또는",
					"{C:joy_normal}일반 {C:attention}몬스터 1{}장",
				},
			},
		},
	},
}
