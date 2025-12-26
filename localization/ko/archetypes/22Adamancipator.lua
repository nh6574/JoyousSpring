return {
	descriptions = {
		Joker = {
			j_joy_adaman_analyzer = {
				name = "{C:joy_effect}아다마시아 애널라이저",
				text = {
					{
						"{C:attention}발굴 #1#{}:",
						"공개된 {C:diamonds}다이아몬드{} 카드 한 장 마다",
						"이 라운드 동안 {C:diamonds}다이아몬드{} 카드가",
						"득점할 때 마다 칩 {C:chips}+#2#{}개를 얻습니다",
						"{C:inactive}(현재 {C:chips}+#3#{}{C:inactive}개)",
					},
					{
						"앤티당 한 번, {C:diamonds}다이아몬드 {C:attention}플러시{}를",
						"포함한 핸드를 {C:attention}#5#{}번 플레이 할 시",
						"{C:joy_normal}메인 덱 암석족 조커 #4#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다) {C:inactive}(#6#번 남음){}",
					},
					{
						"{C:joy_normal}암석족{} {C:attention}조커{} 보유 시 무료",
					},
				},
			},
			j_joy_adaman_researcher = {
				name = "{C:joy_effect}아다마시아 리서처",
				text = {
					{
						"{C:attention}발굴 #1#{}:",
						"공개된 {C:diamonds}다이아몬드{} 카드 한 장 마다",
						"이 라운드 동안 {C:diamonds}다이아몬드{} 카드가",
						"득점할 때 마다 {C:money}$#2#{}를 얻습니다",
						"{C:inactive}(현재 {C:money}$#3#{}{C:inactive})",
					},
					{
						"앤티당 한 번, {C:diamonds}다이아몬드 {C:attention}플러시{}를",
						"포함한 핸드를 {C:attention}#5#{}번 플레이 할 시",
						"{C:joy_normal}메인 덱 암석족 조커 #4#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다) {C:inactive}(#6#번 남음){}",
					},
					{
						"{C:joy_normal}암석족{} {C:attention}조커{} 보유 시 무료",
					},
				},
			},
			j_joy_adaman_seeker = {
				name = "{C:joy_effect}아다마시아 시커",
				text = {
					{
						"{C:attention}발굴 #1#{}:",
						"공개된 {C:diamonds}다이아몬드{} 카드 한 장 마다",
						"이 라운드 동안 {C:diamonds}다이아몬드{} 카드가",
						"득점할 때 마다 {C:mult}+#2#{} 배수를 얻습니다",
						"{C:inactive}(현재 {C:mult}+#3#{}{C:inactive} 배수)",
					},
					{
						"앤티당 한 번, {C:diamonds}다이아몬드 {C:attention}플러시{}를",
						"포함한 핸드를 {C:attention}#5#{}번 플레이 할 시",
						"{C:joy_normal}메인 덱 암석족 조커 #4#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다) {C:inactive}(#6#번 남음){}",
					},
					{
						"{C:joy_normal}암석족{} {C:attention}조커{} 보유 시 무료",
					},
				},
			},
			j_joy_adaman_crysdragite = {
				name = "{C:joy_effect}아다마시아 크리스타-드라가이트",
				text = {
					{
						"핸드에 남아 있는 {C:diamonds}다이아몬드{} 카드 한 장마다",
						"보유한 {C:joy_normal}암석족{} 몬스터 한 장 마다",
						"칩 {C:chips}+#1#{} 개를 획득합니다",
						"{C:inactive}(현재 {C:chips}+#2#{}{C:inactive} 개)",
					},
					{
						"이 카드를 {C:attention}소재{}로 {C:joy_synchro}싱크로{} 소환된",
						"카드는 이하의 효과를 얻습니다:",
						"{s:0.9}덱의 {s:0.9,C:diamonds}다이아몬드 {s:0.9}카드 한 장 마다",
						"{s:0.9}칩 {s:0.9,C:chips}+#1#{s:0.9}개를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"덱의 {C:diamonds}다이아몬드 {}카드 한 장 마다",
					"칩 {C:chips}+#1#{}개를 얻습니다",
					"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive}개)",
				},
			},
			j_joy_adaman_crysraptite = {
				name = "{C:joy_effect}아다마시아 크리스타-라프타이트",
				text = {
					{
						"핸드에 남아 있는 {C:diamonds}다이아몬드{} 카드 한 장마다",
						"보유한 {C:joy_normal}암석족{} 몬스터 한 장 마다",
						"{C:money}+$#1#{}를 얻습니다",
						"{C:inactive}(현재 {C:money}+$#2#{}{C:inactive})",
					},
					{
						"이 카드를 {C:attention}소재{}로 {C:joy_synchro}싱크로{} 소환된",
						"카드는 이하의 효과를 얻습니다:",
						"{s:0.9}덱의 {s:0.9,C:diamonds}다이아몬드 {s:0.9}카드 한 장 마다",
						"{s:0.9}칩 {s:0.9,C:money}+$#1#{s:0.9}를 얻습니다",
					},
				},
				joy_transfer_ability = {
					"덱의 {C:diamonds}다이아몬드 {}카드 한 장 마다",
					"{C:money}+$#1#{}를 얻습니다",
					"{C:inactive}(현재 {C:money}+$#2#{}{C:inactive}개)",
				},
			},
			j_joy_adaman_crysleonite = {
				name = "{C:joy_effect}아다마시아 크리스타-레오나이트",
				text = {
					{
						"핸드에 남아 있는 {C:diamonds}다이아몬드{} 카드 한 장마다",
						"보유한 {C:joy_normal}암석족{} 몬스터 한 장 마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 개)",
					},
					{
						"이 카드를 {C:attention}소재{}로 {C:joy_synchro}싱크로{} 소환된",
						"카드는 이하의 효과를 얻습니다:",
						"{s:0.9}덱의 {s:0.9,C:diamonds}다이아몬드 {s:0.9}카드 한 장 마다",
						"{s:0.9,C:mult}+$#1#{s:0.9} 배수를 획득합니다",
					},
				},
				joy_transfer_ability = {
					"덱의 {C:diamonds}다이아몬드 {}카드 한 장 마다",
					"{C:mult}+$#1#{} 배수를 획득합니다",
					"{C:inactive}(현재 {C:mult}+$#2#{}{C:inactive} 배수)",
				},
			},
			j_joy_adaman_dragite = {
				name = "{C:joy_synchro}아다마시아 라이즈-드라가이트",
				text = {
					{
						"{C:attention}발굴 #1#{}:",
						"공개된 {C:diamonds}다이아몬드{} 카드 한 장 마다",
						"이 라운드 동안 {X:chips,C:white}X#2#{} 칩",
						"{C:attention}#1#{}장 이상 공개됬을 경우",
						"{C:joy_normal}메인덱 암석족 조커 #3#{}장을 생성합니다",
						"{C:inactive}(현재 칩 {X:chips,C:white}X#4#{}{C:inactive})",
					},
					{
						"{C:diamonds}다이아몬드{} 카드가 득점할 때 마다",
						"손에 남을시 칩 {C:chips}+#5#{}개를",
						"제공하는 능력을 영구히 얻습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}암석족{} {C:joy_synchro}튜너{} {C:attention}1{}장 + ",
					"{C:joy_synchro}튜너{} 이외의 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_adaman_leonite = {
				name = "{C:joy_synchro}아다마시아 라이즈-레오나이트",
				text = {
					{
						"{C:attention}발굴 #1#{}:",
						"공개된 {C:diamonds}다이아몬드{} 카드 한 장 마다",
						"이 라운드 동안 {X:mult,C:white}X#2#{} 배수",
						"{C:attention}#1#{}장 이상 공개됬을 경우",
						"{C:joy_normal}메인덱 암석족 조커 #3#{}장을 생성합니다",
						"{C:inactive}(현재 {X:chips,C:white}X#4#{}{C:inactive} 배수)",
					},
					{
						"{C:diamonds}다이아몬드{} 카드가 득점할 때 마다",
						"손에 남을시 {C:mult}+#5#{} 배수를",
						"제공하는 능력을 영구히 얻습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}암석족{} {C:joy_synchro}튜너{} {C:attention}1{}장 + ",
					"{C:joy_synchro}튜너{} 이외의 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_adaman_raptite = {
				name = "{C:joy_synchro}아다마시아 라이즈-라프타이트",
				text = {
					{
						"{C:attention}발굴 #1#{}:",
						"공개된 {C:diamonds}다이아몬드{} 카드 한 장 마다 {C:money}+$#2#{}",
						"{C:attention}#1#{}장 이상 공개됬을 경우",
						"{C:joy_normal}메인덱 암석족 조커 #3#{}장을 생성합니다",
					},
					{
						"{C:diamonds}다이아몬드{} 카드가 득점할 때 마다",
						"손에 남을시 {C:money}+$#4#{}를",
						"제공하는 능력을 영구히 얻습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}암석족{} {C:joy_synchro}튜너{} {C:attention}1{}장 + ",
					"{C:joy_synchro}튜너{} 이외의 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_adaman_laputite = {
				name = "{C:joy_spell}아다마시아 라퓨타이트",
				text = {
					{
						"각 {C:joy_normal}암석족{} 조커가",
						"{C:mult}+#1#{} 배수를 부여합니다",
					},
					{
						"{C:attention}블라인드{} 선택 시 핸드에",
						"무작위 {C:attention}강화{}된 {C:diamonds}다이아몬드{}카드를 넣습니다",
					},
					{
						"{C:attention}블라인드{} 선택 시",
						"{C:attention}발굴{}되는 모든 카드들이",
						'{C:joy_normal}"아다마시아"{}의 효과들을 발동시킵니다',
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_adaman = "아다마시아",
		},
	},
}
