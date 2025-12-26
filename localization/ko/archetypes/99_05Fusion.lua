return {
	descriptions = {
		Joker = {
			j_joy_mudragon = {
				name = "{C:joy_fusion}늪지의 도로곤",
				text = {
					{
						"이 카드는 보유한 동안",
						"모든 {C:joy_normal}속성{}으로 취급되며",
						"{C:joy_fusion}융합 소환{}에 필요한 임의의",
						"{C:attention}소재{}를 대체할 수 있습니다",
					},
				},
				joy_summon_conditions = {
					"희귀도가 다른 {C:attention}조커 2{}장",
				},
			},
			j_joy_garura = {
				name = "{C:joy_fusion}공명의 날개 가루라",
				text = {
					{
						"핸드 크기 {C:attention}+#1#{}장",
					},
					{
						"소환의 {C:attention}소재{}로 사용되면",
						"영구히 핸드 크기  {C:attention}+#2#{}장",
					},
				},
				joy_summon_conditions = {
					"희귀도가 같지만 이름이",
					"다른 {C:attention}조커 2{}장",
				},
			},
		},
	},
}
