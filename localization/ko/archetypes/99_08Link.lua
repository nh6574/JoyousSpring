return {
	descriptions = {
		Joker = {
			j_joy_apollousa = {
				name = "{C:joy_link}소명의 신궁-아폴로우사",
				text = {
					{
						"소환에 사용된 {C:attention}소재{}마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"각 라운드마다 배수 획득량이",
						"{C:mult}#2#{} 감소합니다",
						"{C:inactive}(현재 {} {C:mult}+#3#{} {C:inactive}배수){}",
					},
				},
				joy_summon_conditions = {
					"이름이 다른 {C:attention}조커 2{}장 이상",
				},
			},
			j_joy_beyond = {
				name = "{C:joy_link}비욘드 더 펜듈럼",
				text = {
					{
						"이 런에서 소모한 {C:joy_pendulum}펜듈럼{} 카드마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재{} {C:mult}+#2#{} {C:inactive}배수){}",
					},
					{
						"{C:joy_pendulum}펜듈럼{} 카드를 {C:attention}#4#{}장 소모하면",
						"무작위한 {C:joy_pendulum}펜듈럼{} 카드 {C:attention}#3#{}장을 생성합니다",
						"{C:inactive}(#5#/#4#) (자리가 있어야합니다)",
					},
				},
				joy_summon_conditions = {
					"{C:joy_pendulum}펜듈럼{} 카드를",
					"포함한 {C:attention}조커 2{}장",
				},
			},
			j_joy_exceed = {
				name = "{C:joy_link}엑시드 더 펜듈럼",
				text = {
					{
						"이 런에서 소모한 {C:joy_pendulum}펜듈럼{} 카드마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{}{C:inactive} 배수)",
					},
					{
						"{C:attention}보스 블라인드{}에 승리할 시",
						"무작위한 {C:dark_edition}네거티브{} {C:joy_normal}메인 덱{}",
						"{C:joy_pendulum}펜듈럼{} 카드 {C:attention}#3#{}장을 생성합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_pendulum}펜듈럼{} 카드를",
					"포함한 {C:attention}조커 3{}장",
				},
			},
			j_joy_linkuriboh = {
				name = "{C:joy_link}링크리보",
				text = {
					{
						"판매하면 현재 {C:attention}보스 블라인드{}를 비활성화",
						"하지만 보유한 {C:money}돈{}이 {C:money}$0{}가 됩니다",
					},
				},
				joy_summon_conditions = {
					"{C:blue}일반{} {C:attention}조커 {C:attention}1{}장",
				},
			},
			j_joy_linguriboh = {
				name = "{C:joy_link}링그리보",
				text = {
					{
						"판매하면 현재 {C:attention}보스 블라인드{}를 비활성화",
						'하지만 이 카드가 {C:joy_normal}"@이그니스터"{}를',
						"{C:attention}소재{}로 사용해 소환되지 않았다면",
						"핸드 크기를 {C:attention}#1#{}장 감소시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스{}족 {C:attention}1{}장",
				},
			},
			j_joy_ipmasq = {
				name = "{C:joy_link}아이:피 마스카레나",
				text = {
					{
						"{C:attention}블라인드{}를 선택할 시 무작위한 {C:joy_link}링크{} 몬스터로 {C:attention}변신{}합니다",
						"{C:inactive}(소재 2장을 사용한 링크 소환으로 취급됩니다)",
						"이 효과로 소환된 {C:joy_link}링크{} 몬스터는 이하의 효과를 얻습니다",
						'{s:0.9}라운드 종료 시 {s:0.9,C:joy_link}"아이:피 마스카레나"{s:0.9}로 {s:0.9,C:attention}변신{s:0.9}합니다',
					},
				},
				joy_summon_conditions = {
					"{C:joy_effect}효과 {C:attention}조커 2{} 장",
				},
				joy_transfer_ability = {
					'라운드 종료 시 {C:joy_link}"아이:피 마스카레나"{}로 {C:attention}변신{}합니다',
				},
			},
			j_joy_spknight = {
				name = "{C:joy_link}에스:피 리틀나이트",
				text = {
					{
						"라운드가 끝나면 자신과 무작위 {C:attention}조커 #1#{}장을",
						"{C:attention}보스 블라인드{}를 선택할때까지 {C:attention}제외{}시킵니다",
						"만약 이 카드가 {C:joy_spell}엑스트라 덱{} {C:attention}조커{} {C:attention}2{}장을",
						"{C:attention}소재{}로 사용해 소환됬을 경우, 대신",
						"{C:attention}블라인드{}를 선택할때까지 {C:attention}제외{}시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_effect}효과 {C:attention}조커 2{} 장",
				},
			},
			j_joy_progleo = {
				name = "{C:joy_link}푸로그레오",
				text = {
					{
						"라운드가 종료 시 옆의 {C:attention}조커 #1#{}장을",
						"{C:attention}보스 블라인드{}를 선택할때까지 {C:attention}제외{}시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_token}토큰{}을 제외한",
					"{C:attention}조커 2{}장",
				},
			},
			j_joy_raster = {
				name = "{C:joy_link}래스터라이거",
				text = {
					{
						"{C:attention}묘지{}의 {C:joy_link}링크{} 몬스터 한 장 마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"다른 모든 {C:attention}조커{}를 {C:attention}릴리스{}해",
						"현재 {C:attention}블라인드{}의 요구 점수를",
						"{C:attention}릴리스{}한 {C:attention}조커{}의 장수만큼",
						"{C:red}#3#%{} 감소시킬수 있습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_token}토큰{}을 제외한",
					"{C:attention}조커 4{}장",
				},
			},
		},
	},
}
