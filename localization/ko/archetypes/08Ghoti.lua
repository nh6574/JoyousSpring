return {
	descriptions = {
		Joker = {
			j_joy_fish_keaf = {
				name = "{C:joy_effect}고티스의 어스름 키프",
				text = {
					{
						"라운드 종료 시 {C:attention}블라인드{}를 선택할 때까지",
						"{C:attention}제외{}되며 {C:joy_spell}엑스트라 덱{}",
						"{C:joy_synchro}싱크로{} 카드 {C:attention}#1#{}장을 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_fish_paces = {
				name = "{C:joy_effect}고티스의 빛 페이시스",
				text = {
					{
						"칩 {C:chips}+#1#{} 개",
					},
					{
						"라운드 종료 시 {C:attention}블라인드{}를",
						"선택할 때까지 {C:attention}제외{}됩니다",
					},
				},
			},
			j_joy_fish_shif = {
				name = "{C:joy_effect}고티스의 요정 시프",
				text = {
					{
						"{C:mult}+#1#{} 배수",
					},
					{
						"라운드 종료 시 {C:attention}블라인드{}를",
						"선택할 때까지 {C:attention}제외{}됩니다",
					},
				},
			},
			j_joy_fish_zep = {
				name = "{C:joy_effect}고티스의 홍옥 제프",
				text = {
					{
						"라운드 종료 시 {C:attention}블라인드{}를",
						"선택할 때까지 {C:attention}제외{}되며 {C:joy_spell}메인 덱{}",
						'{C:joy_normal}"고티스" {C:attention}#1#{}장을 {C:attention}소생{}시킵니다',
					},
				},
			},
			j_joy_fish_ixeep = {
				name = "{C:joy_effect}고티스의 전조 이그지프",
				text = {
					{
						"라운드 종료 시",
						"{C:attention}보스 블라인드{}를 선택할 때까지",
						"{C:attention}제외{}되며 무작위한 {C:joy_spell}메인 덱{}",
						'{C:joy_normal}"고티스" {C:attention}#1#{}장을 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
			},
			j_joy_fish_eanoc = {
				name = "{C:joy_effect}고티스의 수호인 이녹",
				text = {
					{
						"라운드 종료 시 {C:attention}블라인드{}를",
						"선택할 때까지 {C:attention}제외{}됩니다",
					},
					{
						"{C:attention}제외{}에서 {C:attention}#2#{}번 돌아올 때마다",
						'무작위한 {C:joy_spell}엑스트라 덱{} {C:joy_normal}"고티스"{}를',
						"{C:joy_spell}엑스트라 덱{}에 {C:attention}#1#{}장 넣습니다",
						"{C:inactive}(자리가 있어야 합니다) (#3#/#2#){}",
					},
				},
			},
			j_joy_fish_psiics = {
				name = "{C:joy_effect}고티스의 월야 사이크스",
				text = {
					{
						"라운드 종료 시",
						"{C:attention}보스 블라인드{}를 선택할 때까지",
						"{C:attention}제외{}되며 {C:joy_spell}메인 덱{} {C:joy_synchro}튜너{} 조커",
						"{C:attention}#1#{}장을 {C:dark_edition}네거티브{}로 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_fish_snopios = {
				name = "{C:joy_effect}스노피오스, 고티의 그림자",
				text = {
					{
						"라운드 종료 시 자신과 소모품 존의 무작위한 카드",
						"{C:attention}#1#{}장을 {C:attention}블라인드{}를 선택할 때까지 {C:attention}제외{}합니다",
					},
					{
						"{C:attention}제외{}에서 {C:attention}#2#{}번 돌아올 때",
						'{C:joy_spell}"저편의 우주"{}를 생성합니다',
						"{C:inactive}(자리가 있어야 합니다) (#3#/#2#){}",
					},
				},
			},
			j_joy_fish_arionpos = {
				name = "{C:joy_synchro}고티스의 대사 아리온포스",
				text = {
					{
						"이 런에서 {C:attention}제외{}됬던 카드",
						"한 장 마다 칩 {C:chips}+#1#{} 개를 획득합니다",
						"{C:inactive}(현재 칩{} {C:chips}+#2#{} {C:inactive}개){}",
					},
					{
						"라운드 종료 시 {C:attention}보스 블라인드{}를 선택할 때까지",
						"{C:attention}제외{}되며 무작위한 {C:joy_spell}엑스트라 덱{}",
						'{C:joy_normal}"고티스"{}를 {C:joy_spell}엑스트라 덱{}에 {C:attention}#3#{}장 넣습니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}어류족{} {C:joy_synchro}튜너{} {C:attention}1{}장 +",
					"{C:joy_synchro}튜너{} 이의외 조커 {C:attention}1{}장",
				},
			},
			j_joy_fish_askaan = {
				name = "{C:joy_synchro}고티스의 쌍각 아스칸",
				text = {
					{
						"이 런에서 {C:attention}제외{}됬던 카드",
						"한 장 마다 {C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {C:mult}+#2#{} {C:inactive} 배수){}",
					},
					{
						"라운드 종료 시 이 카드와",
						'{C:joy_normal}"고티스"{}가 아닌 카드 한 장을',
						"{C:attention}블라인드{}를 선택할 때까지 {C:attention}제외{}합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너{} {C:attention}1{}장 +",
					"{C:joy_synchro}튜너{} 이외의 {C:red}레어{} 조커 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
					"{s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_fish_guoglim = {
				name = "{C:joy_synchro}고티스의 사극 구오그림",
				text = {
					{
						"이 런에서 {C:attention}제외{}됬던 카드",
						"한 장 마다 {X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					},
					{
						"소환 시 {C:joy_normal}어류족{} 조커를",
						"가능한 만큼 {C:attention}소생{}시킵니다",
						"{s:0.9,C:inactive}(이 소환에 사용된 소재는 소생할 수 없습니다)",
					},
					{
						"라운드 종료 시 {C:attention}블라인드{}를",
						"선택할 때까지 {C:attention}제외{}됩니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너{} {C:attention}1{}장 +",
					"{C:joy_synchro}튜너{} 이외의 {C:red}레어{} 조커 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
					"{s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_fish_deepbeyond = {
				name = "{C:joy_synchro}저편의 고티스",
				text = {
					{
						"라운드 종료 시 이 카드와",
						'{C:joy_normal}"고티스"{}가 아닌 모든 조커를',
						"{C:attention}블라인드{}를 선택할 때까지 {C:attention}제외{}합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}어류족{} {C:joy_synchro}튜너{} {C:attention}2{}장 +",
					"{C:joy_synchro}튜너{} 이외의 {C:red}레어{} 조커 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}",
					"{s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_fish_depths = {
				name = "{C:joy_spell}저편의 우주",
				text = {
					{
						"카드가 {C:attention}제외{}되면",
						"{C:money}+$#1#{}를 획득합니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_fish = "고티스",
		},
	},
}
