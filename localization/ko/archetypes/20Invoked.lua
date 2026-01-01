return {
	descriptions = {
		Joker = {
			j_joy_invoked_aleister = {
				name = "{C:joy_effect}소환사 알레이스터",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_normal}"소환수"{}로 {C:attention}변신{}시킬수 있습니다',
						"{C:inactive}(이 효과는 융합 소환으로 취급됩니다)",
					},
					{
						"이 카드를 {C:attention}소재{}로하는 {C:joy_fusion}융합{} 몬스터는",
						"이하의 효과를 부여받습니다:",
						"{s:0.9}이 런 동안 소환한 {s:0.9,C:joy_fusion}융합{} 몬스터마다",
						"{s:0.9}칩 {s:0.9,C:chips}+#2#{} {s:0.9}개",
					},
				},
				joy_transfer_ability = {
					"이 런 동안 소환한 {C:joy_fusion}융합{} 몬스터마다 칩 {C:chips}+#1#{}개",
					"{C:inactive}(현재 칩 {C:chips}+#2#{} {C:inactive}개)",
				},
			},
			j_joy_invoked_madness = {
				name = "{C:joy_link}폭주소환사 알레이스터",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_normal}"소환수"{}로 {C:attention}변신{}시킬수 있습니다',
						"{C:inactive}(이 효과는 융합 소환으로 취급됩니다)",
					},
					{
						"{C:joy_fusion}융합{} 소환의 {C:attention}재료로{} 사용될 시",
						'{C:joy_spell}"폭주소환진"{} {C:attention}#1#{}장을 생성합니다',
						"{C:inactive}(공간이 있어야 합니다)",
					},
					{
						"이 카드를 {C:attention}소재{}로하는 {C:joy_fusion}융합{} 몬스터는",
						"이하의 효과를 부여받습니다:",
						"{s:0.9}이 런 동안 소환한 {s:0.9,C:joy_fusion}융합{} 몬스터마다",
						"{s:0.9}칩 {s:0.9,C:mult}+#3#{} {s:0.9}배수",
					},
				},
				joy_summon_conditions = {
					"{C:attention}종족{}과 {C:attention}속성{}이",
					"다른 {C:attention}조커 2{}장",
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} 배수 for each {C:joy_fusion}Fusion{} summoned this run",
					"{C:inactive}(현재 {C:mult}+#2#{} {C:inactive}배수)",
				},
			},
			j_joy_invoked_caliga = {
				name = "{C:joy_fusion}소환수 칼리굴라",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"이 런 도중 {C:attention}릴리즈{}한 {C:attention}조커{} 한 장마다",
						"{X:mult,C:white}X#2#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#3#{} {C:inactive}배수){}",
					},
					{
						"{C:joy_effect}몬스터 팩{}의 가격이",
						"{C:money}$#4# 감소합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_dark}어둠{} 속성 {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(소재가 몬스터가 아니였을 경우",
					"{s:0.8,C:inactive}무작위로 소환됩니다)",
				},
				joy_transfer_ability = {
					"이 런 도중 {C:attention}릴리즈{}한 {C:attention}조커{} 한 장마다",
					"{X:mult,C:white}X#1#{} 배수를 획득합니다",
					"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					" ",
					"{C:joy_effect}몬스터 팩{}의 가격이",
					"{C:money}$#3# 감소합니다",
				},
			},
			j_joy_invoked_raidjin = {
				name = "{C:joy_fusion}소환수 라이딘",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"이 런 도중 {C:attention}뒤집힌{} {C:attention}조커{} 한 장마다",
						"{X:mult,C:white}X#2#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#3#{} {C:inactive}배수){}",
					},
					{
						"{C:attention}블라인드{} 선택 시 다른 {C:attention}조커",
						"{C:attention}#4#{}장을 앞면으로 뒤집습니다",
						"라운드 종료 시 다른 {C:attention}조커{}",
						"{C:attention}#4#{}장을 앞면으로 {C:attention}뒤집습니다{}",
					},
				},
				joy_summon_conditions = {
					"{C:joy_wind}바람{} 속성 {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(소재가 몬스터가 아니였을 경우",
					"{s:0.8,C:inactive}무작위로 소환됩니다)",
				},
				joy_transfer_ability = {
					"이 런 도중 {C:attention}뒤집힌{} {C:attention}조커{} 한 장마다",
					"{X:mult,C:white}X#1#{} 배수를 획득합니다",
					"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					" ",
					"{C:attention}블라인드{} 선택 시 다른 {C:attention}조커",
					"{C:attention}#3#{}장을 앞면으로 뒤집습니다",
					"라운드 종료 시 다른 {C:attention}조커{}",
					"{C:attention}#3#{}장을 앞면으로 {C:attention}뒤집습니다{}",
				},
			},
			j_joy_invoked_cocytus = {
				name = "{C:joy_fusion}소환수 코키토스",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"{C:attention}블라인드{}의 요구 점수를",
						"{C:red}#2#% 감소시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_water}물{} 속성 {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(소재가 몬스터가 아니였을 경우",
					"{s:0.8,C:inactive}무작위로 소환됩니다)",
				},
				joy_transfer_ability = {
					"{C:attention}블라인드{}의 요구 점수를",
					"{C:red}#1#% 감소시킵니다",
				},
			},
			j_joy_invoked_purgatorio = {
				name = "{C:joy_fusion}소환수 푸르가트리오",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"각 {C:joy_fusion}융합{} 몬스터가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_water}불{} 속성 {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(소재가 몬스터가 아니였을 경우",
					"{s:0.8,C:inactive}무작위로 소환됩니다)",
				},
				joy_transfer_ability = {
					"각 {C:joy_fusion}융합{} 몬스터가",
					"{X:mult,C:white}X#1#{} 배수를 부여합니다",
				},
			},
			j_joy_invoked_mage = {
				name = "{C:joy_fusion}소환수 메가라니카",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"{C:mult}+#2#{} 배수",
					},
				},
				joy_summon_conditions = {
					"{C:joy_earth}땅{} 속성 {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(소재가 몬스터가 아니였을 경우",
					"{s:0.8,C:inactive}무작위로 소환됩니다)",
				},
				joy_transfer_ability = {
					"{C:mult}+#1#{} 배수",
				},
			},
			j_joy_invoked_mechaba = {
				name = "{C:joy_fusion}소환수 메르카바",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"이 라운드 도중 카드 {C:attention}#2#{}장을",
						"판매 했을 경우 {C:attention}보스 블라인드{}의",
						"효과를 비활성화 시킵니다",
						"{C:inactive}(#3#/#2#)",
					},
				},
				joy_summon_conditions = {
					"{C:joy_light}빛{} 속성 {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(소재가 몬스터가 아니였을 경우",
					"{s:0.8,C:inactive}무작위로 소환됩니다)",
				},
				joy_transfer_ability = {
					"이 라운드 도중 카드 {C:attention}#1#{}장을",
					"판매 했을 경우 {C:attention}보스 블라인드{}의",
					"효과를 비활성화 시킵니다",
					"{C:inactive}(#2#/#1#)",
				},
			},
			j_joy_invoked_augo = {
				name = "{C:joy_fusion}소환수 아우고에이데스",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"{C:attention}묘지{}의 {C:joy_fusion}융합{} 조커 한 장 마다",
						"{X:mult,C:white}X#2#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#3#{} {C:inactive}배수){}",
					},
					{
						'{C:attention}블라인드{} 선택 시 묘지에 {C:joy_normal}"소환수"가 아닌',
						"{C:joy_fusion}융합{} {C:attention}조커{}를 {C:attention}#4#{}장 생성합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_light}융합{} {C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(다른 조건을 대체합니다)",
				},
				joy_transfer_ability = {
					"{C:attention}묘지{}의 {C:joy_fusion}융합{} 조커 한 장 마다",
					"{X:mult,C:white}X#1#{} 배수를 획득합니다",
					"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					" ",
					'{C:attention}블라인드{} 선택 시 묘지에 {C:joy_normal}"소환수"가 아닌',
					"{C:joy_fusion}융합{} {C:attention}조커{}를 {C:attention}#3#{}장 생성합니다",
				},
			},
			j_joy_invoked_elysium = {
				name = "{C:joy_fusion}소환수 엘리시온",
				text = {
					{
						"다른 {C:attention}조커{} {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'이 카드를 {C:joy_effect}"소환사 알레이스터"{}로',
						"변신시킬 수 있습니다",
					},
					{
						"{C:attention}묘지{}의 이름이 다른 모든",
						'{C:joy_normal}"소환수"{}의 능력을 얻습니다',
					},
					{
						"보유 시 모든 속성으로 취급되며",
						"{C:joy_fusion}융합{} 소환에 필요한",
						"임의의 소재를 대체할수 있습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_light}융합{}이 아닌 특수 소환된",
					"{C:attention}조커 1{}장을 {C:attention}릴리즈",
					"{s:0.8,C:inactive}(다른 조건을 대체합니다)",
					"{s:0.8,C:inactive}(다른 조건을 대체합니다)",
				},
			},
			j_joy_invoked_meltdown = {
				name = "{C:joy_spell}폭주마법진",
				text = {
					{
						"{C:joy_fusion}융합{} 몬스터 {C:attention}#1#{}장을 {C:attention}릴리즈{}해",
						'{C:joy_effect}"소환사 알레이스터"{} {C:attention}#1#{}장을 생성할수 있습니다',
					},
					{
						"이 런에서 {C:fusion}융합{} 소환한 횟수 만큼",
						"{X:mult,C:white}X#3#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#4#{} {C:inactive}배수){}",
					},
					{
						"{C:joy_fusion}융합{} 몬스터가 뒤집히거나 디버프될수 없습니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_invoked = "소환수",
		},
	},
}
