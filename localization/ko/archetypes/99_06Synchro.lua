return {
	descriptions = {
		Joker = {
			j_joy_firewall_saber = {
				name = "{C:joy_synchro}파이어월 S 드래곤",
				text = {
					{
						"소환 시 {C:joy_spell}엑스트라 덱 {C:joy_normal}사이버스족{} 카드 {C:attention}#1#{}장을",
						"{C:dark_edition}네거티브{}를 부여해 {C:attention}소생{} 시킵니다",
					},
					{
						"{C:joy_link}링크{} 소환의 {C:attention}소재{}로 사용될 시",
						"무작위한 {C:dark_edition}네거티브{} {C:spectral}유령{} 카드",
						"{C:attention}#2#{}장을 생성합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:joy_synchro}튜너 {C:attention}1{}장",
					"{C:joy_synchro}튜너{} 이외의 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_bishbaalkin = {
				name = "{C:joy_synchro}궁극환신 얼티메틀 비시바르킨",
				text = {
					{
						"다른 디버프 되지 않은 {C:attention}조커{}",
						"한 장 마다 {C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"라운드 종료 시 다른 모든 토큰이 아니며",
						"디버프되지 않은 {C:attention}조커{}를 파괴하며",
						"파괴한 조커 한 장 마다",
						'{C:joy_token}"사안신 토큰"{}을 소환합니다',
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너 {C:attention}1{}장",
					"{C:joy_synchro}튜너{} 이외의 {C:red}레어{} 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_token_utchatzimime = {
				name = "{C:joy_token}사안신 토큰",
				text = {
					{
						"이 카드는 {C:joy_token}토큰{}으로",
						"사용할 수 있습니다",
					},
				},
			},
			j_joy_fishlamp = {
				name = "{C:joy_synchro}피시램프",
				text = {
					{
						"{C:attention}소재{}로 사용될 경우 {C:joy_spell}엑스트라 덱{}에 무작위한",
						"{C:joy_normal}어류족{} {C:joy_synchro}싱크로{} 카드를 {C:attention}#1#{}장 생성하며",
						"{C:joy_synchro}싱크로{} 소환의 {C:attention}소재{}를 대체 가능한",
						'{C:joy_token}"램프 토큰"을 최대 {C:attention}#2#{}장 생성합니다',
						"{C:inactive}(자리가 있어야 합니다)",
					},
					{
						"{C:joy_synchro}싱크로{} 소환에 필요한 임의의",
						"{C:attention}소재{}를 대체할수 있습니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너 {C:attention}1{}장",
					"{C:joy_synchro}튜너{} 이외의 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_token_lamp = {
				name = "{C:joy_token}램프 토큰",
				text = {
					{
						"이 카드는 {C:joy_token}토큰{}으로",
						"사용할 수 있습니다",
					},
					{
						"{C:joy_synchro}싱크로{} 소환에 필요한 임의의",
						"{C:attention}소재{}를 대체할수 있습니다",
					},
				},
			},
			j_joy_afd = {
				name = "{C:joy_synchro}고대 요정 드래곤",
				text = {
					{
						"소환 시 무작위한 {C:joy_synchro}튜너{}",
						"{C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다)",
					},
					{
						"{C:attention}블라인드{} 선택 시",
						"무작위한 {C:joy_spell}필드 마법{} {C:attention}#2#{}장을 파괴해 {C:money}+$#3#{}를 얻고,",
						"무작위한 {C:joy_spell}필드 마법{}을 {C:attention}#2#{}장 생성합니다",
						"{C:inactive}(자리가 있어야 합니다)",
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너 {C:attention}1{}장",
					"{C:joy_synchro}튜너{} 이외의 카드 {C:attention}1{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
		},
	},
}
