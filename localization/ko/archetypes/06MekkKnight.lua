return {
	descriptions = {
		Joker = {
			j_joy_mekk_avram = {
				name = "{C:joy_normal}잭나이츠 아브람",
				text = {
					{
						"{E:1}별의 빛을 수호하는 용사 환계에 드리운 어둠을",
						"{E:1}물리치기 위해 선택받은 자에게 힘을 맡기다",
						"{E:1}별의 잔으로 이어진 의지는 새로운 열쇠가 되어",
						"{E:1}어둠을 끊어내는 검이 되리라",
					},
				},
			},
			j_joy_mekk_red = {
				name = "{C:joy_effect}홍련의 잭나이츠",
				text = {
					{
						"이 조커의 {C:attention}열{}에 위치한 카드가",
						"득점할때 그 카드의 랭크에 {C:mult}+#1#{}를",
						"곱한만큼 배수를 획득합니다",
						"{C:inactive}(현재 열:{} {C:attention}#2#{}{C:inactive}){}",
					},
				},
			},
			j_joy_mekk_orange = {
				name = "{C:joy_effect}등영의 잭나이츠",
				text = {
					{
						"이 조커의 {C:attention}열{}에 위치한",
						"플레이한 카드는 무조건 득점합니다",
						"{C:inactive}(현재 열:{} {C:attention}#1#{}{C:inactive}){}",
					},
					{
						"첫 번째 효과가 발동할 때마다",
						"{X:chips,C:white}X#2#{} 칩을 얻습니다",
						"{C:inactive}(현재 {X:chips,C:white}X#3#{}{C:inactive} 칩)",
					},
				},
			},
			j_joy_mekk_yellow = {
				name = "{C:joy_effect}황화의 잭나이츠",
				text = {
					{
						"이 조커의 {C:attention}열{}에 위치한 카드가",
						"득점할때 그 카드의 랭크에",
						"{C:money}+$#1#{}를 곱한만큼 얻습니다",
						"{C:inactive}(현재 열: {} {C:attention}#2#{}{C:inactive}){}",
					},
				},
			},
			j_joy_mekk_green = {
				name = "{C:joy_effect}취람의 잭나이츠",
				text = {
					{
						"이 조커의 {C:attention}열{}에 위치한 카드가",
						"{C:green}#1#/#2#{}의 확률로 <랭크>번",
						"다시 득점합니다",
						'보유한 {C:joy_normal}"잭나이츠"{} 한 장 마다',
						"확률이 증가합니다",
						"{C:inactive}(현재 열: {C:attention}#2#{}{C:inactive}){}",
					},
				},
			},
			j_joy_mekk_blue = {
				name = "{C:joy_effect}창궁의 잭나이츠",
				text = {
					{
						"이 조커의 {C:attention}열{}에 위치한 카드가",
						"득점할때 그 카드의 랭크에 {C:chips}+#1#{}를",
						"곱한만큼 칩을 획득합니다",
						"{C:inactive}(현재 열: {C:attention}#2#{}{C:inactive}){}",
					},
				},
			},
			j_joy_mekk_indigo = {
				name = "{C:joy_effect}감벽의 잭나이츠 ",
				text = {
					{
						"이 조커의 {C:attention}열{}에 따라 다른 효과를 얻습니다",
						"{V:1}1:{} 모든 득점하는 카드들을 재발동합니다{}",
						"{V:2}2:{} 칩 {C:chips}+#1#{} {}개",
						"{V:3}3:{} {C:mult}+#2#{} 배수",
						"{V:4}4:{} {X:mult,C:white}X#3#{} 배수",
						"{V:5}5+:{} 라운드 종료 시 {C:money}+$#4#{} {V:5}",
					},
				},
			},
			j_joy_mekk_purple = {
				name = "{C:joy_effect}자소의 잭나이츠",
				text = {
					{
						"{C:attention}블라인드{} 선택 시 현재 {C:attention}앤티{}의",
						"끝까지 {C:attention}제외{}되며 무작위한 {C:joy_normal}메인 덱",
						'{C:joy_normal}"잭나이츠" {C:attention}#1#{}장을 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
			},
			j_joy_mekk_morningstar = {
				name = "{C:joy_link}명성의 잭나이츠",
				text = {
					{
						"인접한 {C:attention}열{}에 위치한 카드가 득점할때",
						'그 {C:attention}열{}에 {C:joy_normal}"잭나이츠"{}가 있을경우',
						"{X:mult,C:white}X#1#{} 배수를 얻습니다",
						"{C:inactive}(현재 열들:{} {C:attention}#2#{} {C:inactive},{} {C:attention}#3#{}{C:inactive}){}",
					},
				},
				joy_summon_conditions = {
					"조커 {C:attention}2{}장",
				},
			},
			j_joy_mekk_spectrum = {
				name = "{C:joy_link}성흔의 잭나이츠",
				text = {
					{
						'{C:joy_normal}"잭나이츠"{}의 효과들이 모든',
						"플레이한 카드에 발동합니다",
					},
					{
						'라운드당 한번 {C:joy_normal}"잭나이츠"{}를 판매할 시',
						'무작위한 {C:dark_edition}네거티브{} {C:joy_normal}메인 덱 "잭나이츠"{}를 {C:attention}#1#{}장 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					'{C:joy_normal}"잭나이츠" {C:attention}3{}장',
				},
			},
			j_joy_mekkcrus_avramax = {
				name = "{C:joy_link}잭나이츠 파라디온 아스트람",
				text = {
					{
						"{C:attention}블라인드{}에 무조건 승리합니다",
					},
					{
						"이 카드는 소환에 사용된 {C:attention}소재{} 수 만큼의",
						"{C:attention}블라인드{}에 승리한 후 파괴됩니다 {C:inactive}(#1#/#2#){}",
					},
				},
				joy_summon_conditions = {
					"{C:joy_spell}엑스트라 덱{}에서 소환된 조커 {C:attention}2{}장 이상",
				},
			},
			j_joy_mekkleg_scars = {
				name = "{C:joy_spell}성유물이 새긴 상흔",
				text = {
					{
						'각 {C:joy_normal}"잭나이츠"{}가 {C:mult}+#1#{} 배수를 부여합니다',
					},
					{
						'{C:attention}블라인드{} 도중, {C:joy_normal}"잭나이츠"{}를',
						"{C:attention}#2#{}장 {C:attention}릴리스{}해 그 블라인드 동안",
						"핸드 크기를 {C:blue}+#3#{}장 늘릴수 있습니다",
					},
					{
						'{C:attention}묘지{}에 이름이 다른 {C:joy_normal}"잭나이츠"{}가',
						"#4#장 이상 있을때 이 카드를 판매하면",
						"즉시 {C:attention}블라인드{}에 승리합니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_mekk = "잭나이츠",
		},
	},
}
