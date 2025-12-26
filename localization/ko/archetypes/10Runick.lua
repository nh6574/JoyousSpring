return {
	descriptions = {
		Joker = {
			j_joy_runick_hugin = {
				name = "{C:joy_fusion}루닉의 날개 후긴",
				text = {
					{
						"소모품 슬롯 {C:attention}+#1#{}개",
					},
					{
						'소환 시 {C:joy_spell}"루닉의 샘"{}을',
						"{C:attention}#1#{}장 생성하며",
						'무작위한 {C:joy_normal}"루닉"{} {C:attention}#3#{}장을',
						"{C:joy_spell}엑스트라 덱{}에 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					"{C:tarot}타로{} 카드 {C:attention}3{}장",
				},
			},
			j_joy_runick_munin = {
				name = "{C:joy_fusion}루닉의 날개 무닌",
				text = {
					{
						"소모품 슬롯 {C:attention}+#1#{}개",
					},
					{
						'소환 시 무작위한 {C:joy_normal}"루닉"{} {C:attention}#2#{}장을',
						"{C:joy_spell}엑스트라 덱{}에 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						"{C:attention}블라인드{} 도중 {C:tarot}타로{} 카드를 사용할 때마다",
						"이 카드의 칩 획득량이 {X:chips,C:white}X#3#{} 증가합니다",
						"{C:inactive}(현재 {X:chips,C:white}X#4#{}{C:inactive} 칩){}",
					},
				},
				joy_summon_conditions = {
					"{C:tarot}타로{} 카드 {C:attention}2{}장",
				},
			},
			j_joy_runick_geri = {
				name = "{C:joy_fusion}루닉의 이빨 게리",
				text = {
					{
						'소환 시 무작위한 {C:joy_normal}"루닉"{} {C:attention}#2#{}장을',
						"{C:joy_spell}엑스트라 덱{}에 생성하며",
						'{C:attention}묘지{}에 {C:joy_spell}"루닉의 샘"{}이 있을경우',
						'{C:joy_spell}"루닉의 샘"{}을 {C:attention}#1#{}장 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						"소환된 이 카드를 팔면 무작위한",
						"{C:tarot}타로{} 카드를 {C:attention}#3#{}장 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					"{C:tarot}타로{} 카드 {C:attention}2{}장",
				},
			},
			j_joy_runick_freki = {
				name = "{C:joy_fusion}루닉의 이빨 프레키",
				text = {
					{
						'소환 시 무작위한 {C:joy_normal}"루닉"{} {C:attention}#1#{}장을',
						"{C:joy_spell}엑스트라 덱{}에 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						"{C:attention}블라인드{} 도중 {C:tarot}타로{} 카드를 사용할 때마다",
						"덱에 무작위한 플레잉 카드 {C:attention}#2#{}장을 추가합니다",
					},
					{
						"이 카드를 팔면 무작위한",
						"{C:tarot}타로{} 카드를 {C:attention}#3#{}장 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					"{C:tarot}타로{} 카드 {C:attention}2{}장",
				},
			},
			j_joy_runick_sleipnir = {
				name = "{C:joy_fusion}루닉의 갈기 슬레이프닐",
				text = {
					{
						"소환 시 무작위한",
						'{C:joy_normal}"루닉"{} {C:attention}#1#{}장을',
						"{C:joy_spell}엑스트라 덱{}에 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						"라운드 종료 시 {C:attention}블라인드{}를",
						"선택할 때까지 {C:attention}제외{}됩니다",
					},
					{
						"{C:attention}제외{}에서 돌아올 때 무작위한",
						"{C:dark_edition}네거티브{} {C:tarot}타로{} 카드를 {C:attention}#2#{}장 생성합니다",
					},
				},
				joy_summon_conditions = {
					"{C:tarot}타로{} 카드 {C:attention}4{}장",
				},
			},
			j_joy_runick_fountain = {
				name = "{C:joy_spell}루닉의 샘",
				text = {
					{
						"라운드가 끝날때 그 라운드 동안 사용한",
						"{C:tarot}타로{} 카드들을 복제해 생성합니다",
						"{C:inactive}(모든 에디션은 사라집니다){}",
					},
					{
						"{C:attention}블라인드{} 선택 시 덱의 {C:attention}플레잉 카드{}",
						"{C:attention}#1#{}장을 무작위로 파괴합니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_runick = "루닉",
		},
	},
}
