return {
	descriptions = {
		Joker = {
			j_joy_ooze = {
				name = "{C:joy_pendulum_xyz}액상거인 다이다라턴트",
				joy_consumable = {
					"무작위한 {C:joy_xyz}엑시즈{} 몬스터에",
					"무작위한 {C:attention}소재 #1#{}장을 추가합니다",
				},
				text = {
					{
						"{C:joy_xyz}엑시즈{} {C:attention}#2#{}: 무작위한 {C:joy_pendulum}펜듈럼{} 카드 {C:attention}#3#{}장을",
						"{C:dark_edition}네거티브{}를 부여해 {C:attention}소생{}시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_pendulum}펜듈럼{} 카드 {C:attention}2{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} 제외)",
				},
			},
		},
	},
}
