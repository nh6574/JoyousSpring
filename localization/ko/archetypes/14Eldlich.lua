return {
	descriptions = {
		Joker = {
			j_joy_eld_eldlich = {
				name = "{C:joy_effect}황금경 엘드리치",
				text = {
					{
						"{C:attention}황금{} 카드가 득점할때마다 보유한 또는",
						"{C:attention}묘지{}에 있는 {C:attention}언데드족{} 한 장 마다",
						"{C:money}+$#1#{}를 획득합니다",
					},
					{
						"점수 계산 후, 득점한 모든 카드를",
						"{C:attention}황금{} 카드로 바꿉니다",
					},
					{
						"한 라운드에 한 번, {C:joy_normal}언데드족{} 또는 {C:joy_trap}함정{}",
						"{C:attention}조커 #2#{}장을 {C:attention}릴리스{}해 {C:joy_normal}메인 덱{}",
						'{C:joy_normal}"황금향"{} 조커를 {C:attention}#3#{}장 {C:attention}생성{}할 수 있습니다',
						"{C:inactive}(공간이 있어야 합니다){}",
					},
				},
			},
			j_joy_eld_conq = {
				name = "{C:joy_trap}황금향의 콘키스타도르",
				text = {
					{
						"{C:attention}황금{} 카드가 득점할때마다 보유한 또는",
						"{C:attention}묘지{}에 있는 {C:attention}언데드족{} 한 장 마다",
						"칩 {C:chips}+#1#{}개를 획득합니다",
					},
					{
						'{C:joy_normal}"엘드리치"{}를 보유했을경우,',
						"손패에 남은 카드를 포함한",
						"모든 {C:attention}강화된 카드{}를 다시 발동시킵니다",
					},
					{
						"{C:joy_effect}리버스{}: 이 라운드 동안",
						"버리기 횟수를 {C:red}+#2#{}번 얻습니다",
					},
				},
			},
			j_joy_eld_guard = {
				name = "{C:joy_trap}황금향의 가디언",
				text = {
					{
						"{C:attention}황금{} 카드가 득점할때마다 보유한 또는",
						"{C:attention}묘지{}에 있는 {C:attention}언데드족{} 한 장 마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
					},
					{
						'{C:joy_normal}"엘드리치"{}를 보유했을경우,',
						"손패에 남은 카드를 포함한",
						"모든 {C:attention}강화된 카드{}를 다시 발동시킵니다",
					},
					{
						"{C:joy_effect}리버스{}: 이 라운드 동안",
						"핸드를 {C:blue}+#2#{}번 얻습니다",
					},
				},
			},
			j_joy_eld_huaq = {
				name = "{C:joy_trap}황금향의 와케로",
				text = {
					{
						"{C:attention}황금{} 카드가 득점할때마다 보유한 또는",
						"{C:attention}묘지{}에 있는 {C:attention}언데드족{} 한 장 마다",
						"칩 {C:chips}+#1#{}개를 획득합니다",
					},
					{
						'{C:joy_normal}"엘드리치"{}를 보유했을경우,',
						"손패에 남은 카드를 포함한",
						"모든 {C:attention}강화된 카드{}를 다시 발동시킵니다",
					},
					{
						"{C:joy_effect}리버스{}: 라운드의 종료 시 {C:attention}블라인드{}를 선택할때까지",
						"{C:joy_normal}언데드족{} {C:attention}조커 #2#{}장을 {C:attention}제외{}합니다",
					},
				},
			},
			j_joy_eld_glorious = {
				name = "{C:joy_trap}고귀한 황금향의 엘드릭시르",
				text = {
					{
						"{C:attention}황금{} 카드가 득점할때마다 보유한 또는",
						"{C:attention}묘지{}에 있는 {C:attention}언데드족{} 한 장 마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
					},
					{
						'{C:joy_normal}"엘드리치"{}를 보유했을경우,',
						"손패에 남은 카드를 포함한",
						"모든 {C:attention}강화된 카드{}를 다시 발동시킵니다",
					},
					{
						'{C:joy_effect}리버스{}: {C:joy_normal}"황금향"{} 조커',
						"{C:attention}#2#{}장을 {C:attention}소생{}시킵니다",
						"한 장도 없을경우 대신",
						"{C:joy_trap}함정{} 조커를 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_eld_mad = {
				name = "{C:joy_fusion}엘 레이 콘키스타 엘드리치",
				text = {
					{
						"{C:attention}황금{} 카드가 득점할때마다 보유한 또는",
						"{C:attention}묘지{}에 있는 {C:attention}언데드족{} 한 장 마다",
						"{X:mult,C:white}X#1#{} 배수를 획득합니다",
					},
					{
						"모든 카드는 득점 후 {C:attention}황금{} 카드로 바뀝니다",
					},
					{
						"{C:joy_trap}함정{} 조커가 자신의 효과로 {C:attention}뒤집히지{}",
						"않지만 {C:joy_effect}리버스{} 효과가 블라인드 선택 시 발동합니다",
					},
				},
				joy_summon_conditions = {
					'{C:attention}"엘드리치"{} {C:attention}1{}장 + {C:attention}언데드족{} {C:attention}1{}장',
				},
			},
			j_joy_eld_angel = {
				name = "{C:joy_fusion}황금향의 앙헬카이도",
				text = {
					{
						"{C:attention}엘드릭시르{}를 낼수있습니다",
					},
					{
						"{C:joy_trap}함정{} 조커의 {C:joy_effect}리버스{} 효과가",
						"발동할때마다 {C:attention}엘드릭시르{}의 레벨을",
						"업그레이드합니다",
					},
					{
						"플레이한 핸드에 {C:attention}엘드릭시르{} 포함 시",
						'{C:attention}묘지{}에 {C:joy_effect}"황금경 엘드리치"{} {C:attention}#1#{}장을 생성합니다',
					},
					{
						"소환된 이 카드가 {C:attention}묘지{}로 갈 경우",
						'{C:joy_normal}"엘드리치"{} 조커를 {C:dark_edition}네거티브{}를 부여해',
						"{C:attention}#2#{}장 {C:attention}소생{}시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_trap}함정{}을 포함한 {C:attention}조커 2{}장",
				},
			},
		},
		Planet = {
			c_joy_cursed_eldland = {
				name = "{C:joy_spell}저주받은 엘도라도",
			},
		},
		JoyPokerHand = {
			phd_joy_eldlixir = {
				name = "엘드릭시르",
				text = {
					"{C:attention}황금{} 카드 5장",
				},
			},
		},
	},
	misc = {
		poker_hands = {
			joy_eldlixir = "엘드릭시르",
		},
		poker_hand_descriptions = {
			joy_eldlixir = {
				"황금 카드 5장",
				"(카드 효과로 활성화해야 낼수있습니다)",
			},
		},
		dictionary = {
			k_joy_archetype_eld = "엘드리치",
		},
	},
}
