return {
	descriptions = {
		Joker = {
			j_joy_zeus = {
				name = "{C:joy_xyz}네가로기어 아제우스",
				text = {
					{
						"{C:joy_xyz}엑시즈{} {C:attention}#1#{}: 현재 {C:attention}블라인드{}의",
						"요구 점수를 {C:red}#2#%{} 감소시킵니다",
						"덱에 있는 모든 카드의 강화 효과를 제거합니다",
					},
				},
				joy_summon_conditions = {
					"{C:red}레어{} {C:attention}조커{} {C:attention}2{}장 이상",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{} {s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
					"혹은",
					"이 라운드 도중 {C:attention}소재{}를 제거한",
					"{C:joy_xyz}엑시즈{} 몬스터 {C:attention}1{}장",
					"{s:0.9,C:inactive}(그 카드의 엑시즈 소재를 얻습니다)",
				},
			},
			j_joy_typhon = {
				name = "{C:joy_xyz}로기어스텔라 티 폰",
				text = {
					{
						"{C:joy_xyz}엑시즈{} {C:attention}#1#{}: {C:money}돈{}을 {C:red}#2#%{} 잃지만",
						"이 라운드 동안 득점하는 모든 카드를",
						"{C:attention}붉은색 인장{}이 붙은 {C:dark_edition}폴리크롬{} {C:attention}유리{}",
						"카드로 변환시킵니다",
					},
				},
				joy_summon_conditions = {
					"{C:red}레어{} {C:attention}조커{} {C:attention}2{}장 이상",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{} {s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
					"혹은",
					"이 라운드 도중 {C:attention}2{}장 이상의",
					"{C:attention}조커{}를 소환했을 경우",
					"{C:joy_xyz}조커{} {C:attention}1{}장",
				},
			},
			j_joy_85 = {
				name = "{C:joy_xyz}No.85 크레이지 박스",
				text = {
					{
						"{C:attention}블라인드{} 도중 {C:joy_xyz}엑시즈 소재{}를 {C:attention}#1#{}장 제거해",
						"아래의 효과중 무작위로 하나를 적용할수 있습니다",
						"{C:attention}1{}: {C:attention}블라인드{} 요구 점수가 두배가 됩니다",
						"{C:attention}2{}: {C:attention}블라인드{} 요구 점수가 반이 됩니다",
						"{C:attention}3{}: 이 라운드 동안 핸드 크기 {C:attention}+#2#{}장",
						"{C:attention}4{}: 영구히 핸드 크기 {C:attention}-#3#{}장",
						"{C:attention}5{}: 다음 내는 핸드의 득점하는 모든 카드를",
						"{C:dark_edition}폴리크롬{} {C:attention}붉은 인장 행운{}카드로 바꿉니다",
						"{C:attention}6{}: 이 카드를 파괴합니다",
					},
					{
						"{C:attention}블라인드{} 선택 시 {C:green}#4#/#5#{}의 확률로 ",
						"이 카드에 무작위한 {C:joy_xyz}엑시즈 소재{}를 {C:attention}#6#{}장 추가합니다",
					},
				},
				joy_summon_conditions = {
					"{C:blue}일반{} {C:attention}조커{} {C:attention}2{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{} {s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_67 = {
				name = "{C:joy_xyz}No.67 파라다이스매셔",
				text = {
					{
						"이 카드에 {C:joy_xyz}엑시즈 소재{}가 있을 경우",
						"모든 {C:green}확률{}이 두배가 됩니다",
					},
					{
						"{C:joy_xyz}엑시즈{} {C:attention}#1#{}: 모든 {C:attention}조커{} 효과의 {C:green}확률{}의 분자를",
						"영구히 {C:attention}#2#{}~{C:attention}#3#{} 씩 증가시킵니다",
					},
					{
						"{C:attention}블라인드{} 선택 시 {C:green}#4#/#5#{}의 확률로 ",
						"이 카드에 무작위한 {C:joy_xyz}엑시즈 소재{}를 {C:attention}#6#{}장 추가합니다",
					},
				},
				joy_summon_conditions = {
					"희귀도가 같은 {C:attention}조커{} {C:attention}2{}장 이상",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{} {s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_igniter = {
				name = "{C:joy_xyz}코드 이그나이터",
				text = {
					{
						"이 런 동안 소환한 {C:joy_ritual}의식{} 몬스터",
						"한 장 마다 {X:mult,C:white}X#1#{} 배수를 얻습니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)",
					},
					{
						"{C:joy_xyz}엑시즈{} {C:attention}#3#{}: 상점에 {C:joy_ritual}의식",
						"카드 {C:attention}#4#{}장을 추가합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_normal}사이버스족{} {C:attention}2{}장",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive}, {s:0.9,C:joy_link}링크{} {s:0.9,C:inactive}, {s:0.9,C:joy_token}토큰{s:0.9,C:inactive} 제외)",
				},
			},
		},
	},
}
