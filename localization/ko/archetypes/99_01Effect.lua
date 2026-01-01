return {
	descriptions = {
		Joker = {
			j_joy_boarder = {
				name = "{C:joy_effect}인스펙트 보더",
				text = {
					{
						"소환돼 있는 {C:joy_spell}엑스트라 덱{} 조커",
						"한 장마다 {X:mult,C:white}X#1#{} 배수를 얻습니다",
						"{C:inactive}(현재{} {X:mult,C:white}X#2#{} {C:inactive}배수){}",
					},
					{
						"{C:blue}핸드 수{}는 보유한 {C:joy_spell}엑스트라 덱{} 몬스터",
						"종류의 수에 1을 더한 값이 됩니다",
					},
					{
						"한 라운드 도중 플레이한 핸드 유형을",
						"그 라운드 동안 다시 플레이할 수 없습니다",
					},
					{
						"보유한 모든 {C:joy_normal}메인 덱{} 조커는 디버프됩니다",
						'{C:inactive}({C:joy_effect}"인스펙트 보더"{}{C:inactive} 제외){}',
					},
				},
			},
			j_joy_grenmaju = {
				name = "{C:joy_effect}붉은 마수 다 이자",
				text = {
					{
						"이 런에서 {C:attention}제외{}됬던 카드마다",
						"칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 칩{} {C:chips}+#2#{} {C:inactive}개){}",
					},
				},
			},
			j_joy_rhino = {
				name = "마주사이의 전사",
				text = {
					{
						"소환의 {C:attention}소재{}로 사용될 경우",
						"{C:attention}묘지{}에 무작위한 {C:joy_normal}악마족{} 조커를 {C:attention}#1#{}장 생성한 후",
						"{C:attention}악마족{} 조커를 {C:attention}#2#{}장 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_tourguide = {
				name = "마계발 현세행 데스가이드",
				text = {
					{
						"소환 시 무작위한 {C:dark_edition}네거티브{} {C:joy_normal}메인 덱{}",
						"{C:blue}일반{} 또는 {C:green}희귀{} {C:joy_normal}악마족{}",
						"조커를 {C:attention}#1#{}장 생성합니다",
					},
				},
			},
			j_joy_heavenlyprison = {
				name = "{C:joy_effect}천옥의 왕",
				text = {
					{
						"{X:mult,C:white}X#1#{} 배수",
						"보유한 {C:joy_trap}함정{} 카드 한 장 마다",
						"배수 획득량이 {X:mult,C:white}X#2#{} 증가합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#3#{} {C:inactive}배수)",
					},
					{
						"{C:joy_trap}함정{} 카드들이 자신을 뒷면으로 {C:attention}뒤집지{} 않지만",
						"{C:attention}블라인드{} 선택시 {C:joy_effect}리버스{} 효과를 발동합니다",
					},
				},
			},
			j_joy_backup = {
				name = "{C:joy_effect}백업 세크레터리",
				text = {
					{
						"{C:attention}소재{}로 사용될 시 {C:joy_spell}엑스트라 덱{}에",
						"{C:joy_normal}사이버스족{} 조커를 {C:attention}#1#{}장 생성합니다",
					},
					{
						"{C:joy_normal}사이버스족{} 보유시 무료",
					},
				},
			},
			j_joy_wizard = {
				name = "{C:joy_effect}사이버스 위저드",
				text = {
					{
						"{C:joy_normal}사이버스족{} {C:attention}조커{} 한 장 마다",
						"칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 {C:chips}+#2#{} {C:inactive}칩)",
					},
					{
						"{C:joy_normal}사이버스족{} 보유시 무료",
					},
				},
			},
			j_joy_formud = {
				name = "{C:joy_effect}포맷 스킵퍼",
				text = {
					{
						"{C:joy_link}링크{} 소환의 임의의",
						"{C:attention}소재{}를 대체할수 있습니다",
					},
					{
						"{C:joy_normal}사이버스족{} 몬스터의 {C:attention}소재{}로 사용되면",
						"무작위한 {C:joy_normal}메인 덱 {C:red}레어 {C:joy_normal}사이버스족",
						"카드 {C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다)",
					},
				},
			},
			j_joy_procession = {
				name = "{C:joy_effect}동요 차항아리",
				text = {
					{
						"각 뒷면 표시 {C:attention}조커{}가",
						"{X:mult,C:white}X#1#{} 배수를 부여합니다",
					},
					{
						"{C:attention}블라인드{} 선택시 모든 {C:attention}조커{}를",
						"뒷면으로 {C:attention}뒤집습니다{}",
						'{C:inactive}("동요 차항아리" 제외){}',
					},
				},
			},
			j_joy_darkcat = {
				name = "{C:joy_effect}흰꼬리의 검은 고양이",
				text = {
					{
						"{C:mult}+#1#{} 배수",
					},
					{
						"{C:joy_effect}리버스{}: {C:dark_edition}네거티브{} {C:attention}행운{} {C:attention}2{}",
						"{C:attention}#2#{}장을 덱에 추가합니다",
					},
				},
			},
			j_joy_dekoichi = {
				name = "{C:joy_effect}마장기관차 데코이치",
				text = {
					{
						"{C:mult}+#1#{} 배수,",
						"보유한 {C:joy_normal}일반{} {C:attention}몬스터{} 한 장 마다",
						"{C:mult}+#2#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#3#{}{C:inactive} 배수)",
					},
					{
						"{C:joy_effect}리버스{}: 이 라운드 동안 핸드 크기가 {C:attention}+#4#{}장 증가하며,",
						"보유한 {C:joy_normal}일반{} {C:attention}몬스터{}마다 {C:attention}+#5#{}장 추가로 증가합니다",
						'그 후 {C:dark_edition}네거티브{} {C:joy_normal}"마화물차량 보코이치"{}를 {C:attention}#6#{}장 생성합니다',
					},
				},
			},
			j_joy_bokoichi = {
				name = "{C:joy_normal}마화물차량 보코이치",
				text = {
					{
						"{E:1}데코이치 전용의 화물차량.",
						"{E:1}어떤 물건이든 운반할 수 있지만",
						"{E:1}대부분은 도착시에 부서져 있다.",
					},
				},
			},
			j_joy_desertapir = {
				name = "{C:joy_effect}사막 맥",
				text = {
					{
						"라운드 종료 시 {C:money}+$#1#{}",
					},
					{
						"{C:joy_effect}리버스{}: 무작위한 {C:attention}조커{}",
						"{C:attention}#2#{}장을 앞면으로 {C:attention}뒤집습니다",
					},
				},
			},
			j_joy_searchlight = {
				name = "{C:joy_effect}서치라이트맨",
				text = {
					{
						"{C:mult}+#1#{} 배수",
						"{C:attention}조커{}가 앞면으로 {C:attention}뒤집힐{} 때 마다",
						"배수 획득량이 {C:mult}+#2#{} 증가합니다",
						"{s:0.9,C:inactive}(이 카드가 뒷면이여도 증가합니다)",
						"{C:inactive}(현재 {C:mult}+#3# {C:inactive}배수)",
					},
					{
						"{C:joy_effect}리버스{}: 모든 {C:attention}조커{}를",
						"앞면으로 {C:attention}뒤집습니다{}",
					},
					{
						"{C:attention}블라인드{} 선택 시",
						"{C:green}#4#/#5#{}의 확률로 {C:attention}뒤집힙니다{}",
					},
				},
			},
			j_joy_sternmystic = {
				name = "{C:joy_effect}엄격한 노마술사",
				text = {
					{
						"칩 {C:chips}+#1#{} 개",
						"{C:attention}플레잉 카드{}가 {C:attention}뒤집힐{} 때 마다",
						"칩 획득량이 {C:chips}+#2#{} 증가합니다",
						"{s:0.9,C:inactive}(이 카드가 뒷면이여도 증가합니다)",
						"{C:inactive}(현재 칩 {C:chips}+#3# {C:inactive}개)",
					},
					{
						"{C:joy_effect}리버스{}: 손패의 모든",
						"{C:attention}카드{}를 {C:attention}뒤집습니다{}",
					},
					{
						"{C:attention}블라인드{} 선택 시",
						"{C:green}#4#/#5#{}의 확률로 {C:attention}뒤집힙니다{}",
					},
				},
			},
			j_joy_mof = {
				name = "{C:joy_effect}성스러운 마술사",
				text = {
					{
						"{C:attention}묘지{}의 {C:joy_spell}필드 마법{} 한 장마다",
						"칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive} 개)",
					},
					{
						"{C:joy_effect}리버스{}: {C:attention}묘지{}의 무작위한 {C:joy_spell}필드 마법{}을",
						"복사해 {C:attention}#3#{}장 생성하며 {C:dark_edition}네거티브{}를 부여합니다",
					},
				},
			},
			j_joy_mask = {
				name = "{C:joy_effect}암흑의 가면",
				text = {
					{
						"{C:attention}묘지{}의 {C:joy_spell}함정{} 한 장마다",
						"{C:mult}+#1#{} 배수를 획득합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"{C:joy_effect}리버스{}: {C:joy_trap}함정{} 카드",
						"{C:attention}#3#{}장을 {C:attention}소생{}시킵니다",
					},
				},
			},
			j_joy_angraecum = {
				name = "{C:joy_effect}상애의 언브레캄",
				text = {
					{
						"소환 시 {C:joy_synchro}튜너{} 이외의 몬스터 {C:attention}#1#{}장",
						"{C:dark_edition}네거티브{}와 디버프된 상태로 {C:attention}소생{}시키고",
						"상점에 {C:joy_synchro}싱크로{} 카드 {C:attention}#2#{}장을 추가합니다",
					},
				},
			},
			j_joy_eater = {
				name = "{C:joy_effect}백만먹기의 그랏톤",
				text = {
					{
						"{C:joy_spell}엑스트라 덱{} {C:attention}조커{}가 제외될 때마다",
						"배수 획득량이 {X:mult,C:white}X#1#{} 증가합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{} {C:inactive}배수)",
					},
					{
						"라운드가 끝날 때 디버프 되지 않은",
						"{C:joy_spell}엑스트라 덱{} {C:attention}조커{} {C:attention}#3#{}장을",
						"{C:attention}보스 블라인드{} 선택 까지 {C:attention}제외{}합니다",
					},
				},
			},
			j_joy_miradora = {
				name = "{C:joy_effect}바람의 천익 미라도라",
				text = {
					{
						"소환 시 무작위한 {C:joy_spell}엑스트라 덱{} {C:attention}조커 #1#{}장을",
						"디버프 시키며 {C:dark_edition}네거티브{}를 부여합니다",
					},
					{
						"디버프 된 {C:joy_spell}엑스트라 덱{} {C:attention}조커{}가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_beautunaful = {
				name = "{C:joy_effect}꼬마민어 공주",
				text = {
					{
						"소환되거나 {C:attention}제외{}에서 돌아올 때",
						"무작위한 {C:joy_normal}어류족{} {C:attention}조커 #1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다)",
					},
				},
			},
			j_joy_leaffish = {
				name = "{C:joy_effect}요해어 데드리프",
				text = {
					{
						"{C:attention}블라인드{} 선택 시",
						"무작위한 {C:joy_normal}메인 덱 어류족{} {C:attention}조커",
						"{C:attention}#1#{}장을 {C:attention}묘지{}에 생성합니다",
					},
					{
						"이 카드를 판매하면 무작위한 {C:joy_normal}어류족{} {C:attention}조커{}",
						"{C:attention}#2#{}장을 {C:attention}소생{}시킵니다",
						'{C:inactive}("요해어 데드리프" 제외){}',
					},
				},
			},
			j_joy_ringowurm = {
				name = "{C:joy_effect}백금룡-링고블룸",
				text = {
					{
						"{C:joy_synchro}싱크로{} 소환의 {C:attention}재료{}로 사용될 시",
						'{C:dark_edition}네거티브 {C:joy_synchro}튜너{} {C:joy_token}"백금 토큰"{}',
						"{C:attention}#1#{}장을 생성합니다",
					},
					{
						"{C:joy_effect}효과{} 몬스터가 아닌",
						"{C:attention}조커{} 보유시 무료",
						"Free if you own a non-{C:joy_effect}Effect{} {C:attention}Joker{}",
					},
				},
			},
			j_joy_token_ringo = {
				name = "{C:joy_token}백금 토큰",
				text = {
					{
						"이 카드는 {C:joy_token}토큰{}으로",
						"사용할 수 있습니다",
					},
				},
			},
			j_joy_stormshooter = {
				name = "{C:joy_effect}스톰 슈터",
				text = {
					{
						"이 카드가 {C:attention}#1#{}번째 열에 있고",
						"이 카드의 {C:attention}열{}에 득점하지 않는 카드가 있다면",
						"플레이한 핸드에 해당하는 {C:planet}행성{} 카드를",
						"가능한 만큼 생성합니다",
						"{C:inactive}(위치는 매 라운드마다 바뀝니다){}",
						"{C:inactive}(현재 {C:attention}#2#{}열{C:inactive})",
					},
				},
			},
			j_joy_ghostbird = {
				name = "{C:joy_effect}매유조",
				text = {
					{
						"이 조커의 {C:attention}열{}에 해당하는",
						"플레이된 카드를 파괴시킵니다",
						"{C:inactive}(현재 {C:attention}#1#{}열{C:inactive})",
					},
					{
						"이 카드의 {C:attention}열{}에 따라 효과를 얻습니다",
						"{V:1}1: 이 {C:attention}열{V:1}의 카드가 득점시 칩 {C:chips}+#2#{} {V:1}개{}를",
						"{V:1}제공하며 이 조커의 효과로 파괴되지 않습니다",
						"{V:2}3: 이 {C:attention}열{V:2}의 카드가 득점시 두 번 재발동시킵니다",
						"{V:3}5: 이 {C:attention}열{V:3}의 카드는 무조건 득점합니다{}",
					},
				},
			},
			j_joy_tiamaton = {
				name = "{C:joy_effect}철기룡 티아마톤",
				text = {
					{
						"플레잉 카드를 파괴할 때마다 이 카드의",
						"배수 획득량이 {X:mult,C:white}X#1#{} 증가합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#2#{}{C:inactive} 배수)",
					},
					{
						"이 카드의 {C:attention}열{}에 위치한 플레이한",
						"카드는 득점 후 파괴됩니다",
						"{C:inactive}(6+ 열에 있을시 모든 플레이한 카드를)",
						"{C:inactive}(현재 {C:attention}#3#{}열{C:inactive})",
					},
				},
			},
			j_joy_zenoguitar = {
				name = "{C:joy_effect}록 밴드 그루브-제노기탐",
				text = {
					{
						"소환된 이 카드가 {C:attention}묘지{}로 보내질 시",
						"{C:joy_normal}암석족{} {C:attention}조커 #1#{}장을 {C:attention}묘지{}로 보낸 후",
						"{C:joy_normal}암석족{} {C:attention}조커 #2#{}장을 {C:attention}소생{}시킵니다",
					},
					{
						"{C:attention}소재{}로 사용될 시 덱에",
						"{C:attention}강화된{} {C:diamonds}다이아몬드{} {C:attention}#3#{}장을 추가합니다",
					},
					{
						"{C:attention}소생{}될수 없습니다",
					},
				},
			},
			j_joy_revgolem = {
				name = "{C:joy_effect}리바이벌 골렘",
				text = {
					{
						"{C:attention}소재{}로 사용될 경우 무작위한 {C:attention}인장{}이 붙은",
						"{C:diamonds}다이아몬드{} 카드 {C:attention}#1#{}장을 덱에 넣은 뒤",
						'{C:dark_edition}네거티브{}이며 디버프된 {C:joy_effet}"리바이벌 골렘"',
						"{C:attention}#2#{}장을 생성합니다",
					},
				},
			},
			j_joy_tackcrusader = {
				name = "{C:joy_effect}태크루세이더",
				text = {
					{
						"이 런 도중 {C:attention}발굴{}한 {C:diamonds}다이아몬드{} 카드",
						"한 장 마다 {C:mult}+#1#{} 배수를 부여합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"한 라운드 당 한번, {C:joy_normal}암석족{} {C:attention}조커{}",
						"{C:attention}#3#{}장을 {C:attention}릴리스{}해 무작위한",
						"{C:attention}에디션{}이 달린 {C:diamonds}다이아몬드{} 카드 {C:attention}#4#{}장을",
						"덱에 추가하고 모든 {C:attention}조커{}를 {C:attention}앞면{}으로 뒤집을수 있습니다",
					},
				},
			},
			j_joy_doki = {
				name = "{C:joy_effect}노기도키",
				text = {
					{
						"이 런 도중 {C:attention}발굴{}한 {C:diamonds}다이아몬드{} 카드",
						"한 장 마다 칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive} 개수)",
					},
					{
						"한 앤티 당 한번, {C:joy_normal}암석족{} {C:attention}조커{}",
						"{C:attention}#3#{}장을 {C:attention}릴리스{}해 무작위한",
						"{C:joy_normal}메인 덱 암석족{} {C:attention}조커 #4#{}장을 생성할수 있습니다",
						"{C:inactive}(자리가 있어야 합니다)",
					},
				},
			},
			j_joy_blockdragon = {
				name = "{C:joy_effect}블록드래곤",
				text = {
					{
						"{C:attention}묘지{}에 있는 {C:joy_normal}암석족{} 조커",
						"한 장 마다 {C:mult}+#1#{} 배수를 부여합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"이 런 도중 {C:attention}발굴{}한 {C:diamonds}다이아몬드{} 카드",
						"한 장 마다 {C:mult}X#3#{} 배수를 부여합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#4#{}{C:inactive} 배수)",
					},
					{
						"{C:attention}묘지{}에 최소 {C:attention}#5#{}장의 {C:joy_normal}암석족{} {C:attention}조커{}가 있고",
						"이 카드가 {C:attention}소재{}로 사용될 경우",
						"무작위한 {C:blue}일반{} 또는 {C:green}희귀{} {C:joy_normal}암석족{} {C:attention}조커{}를",
						"{C:dark_edition}네거티브{}를 부여해 {C:attention}#6#{}장 생성하지만",
						"{C:attention}묘지{}에서 모든 {C:joy_normal}암석족{} {C:attention}조커{}를 제거합니다",
					},
				},
			},
			j_joy_elfobia = {
				name = "{C:joy_effect}이괴의 요정 엘포비아",
				text = {
					{
						"{C:attention}묘지{}의 {C:joy_wind}바람{} 속성 {C:attention}카드",
						"한 장 마다 칩 {C:chips}+#1#{}개",
						"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive}개)",
					},
					{
						"{C:attention}보스 블라인드{} 선택 시 모든 {C:joy_wind}바람족{} {C:attention}조커{}의",
						"기재된 {C:green}확률{}을 영구히 {C:attention}#3#{} 증가시킵니다",
					},
					{
						'{C:joy_effect}"신비의 요정 엘피리아"{}를 보유할 경우',
						"{C:attention}묘지{}에는 {C:joy_wind}바람{} 속성 {C:attention}조커{}만 갈 수 있습니다",
					},
				},
			},
			j_joy_elfuria = {
				name = "{C:joy_effect}신비의 요정 엘피리아",
				text = {
					{
						"{C:attention}묘지{}의 {C:joy_wind}바람{} 속성 {C:attention}카드",
						"한 장 마다 {C:mult}+#1#{} 배수",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"{C:attention}보스 블라인드{} 선택 시 모든 {C:joy_xyz}엑시즈{} 카드에",
						"{C:attention}소재{}를 {C:attention}#3#{}장 겹쳐넣습니다",
					},
					{
						'{C:joy_effect}"이괴의 요정 엘포리아"{}를 보유할 경우',
						"상점에 {C:joy_wind}바람{} 속성 조커만 나옵니다",
					},
				},
			},
			j_joy_lindbloom = {
				name = "{C:joy_effect}린드블룸",
				text = {
					{
						"각 {C:attention}조커{}가 다른 {C:attention}조커{}와",
						"{C:attention}속성{}과 {C:attention}종족{}을 공유할 경우",
						"{X:mult,C:white}X#1#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_genomix = {
				name = "{C:joy_effect}제노믹스 파이터",
				text = {
					{
						"{C:joy_synchro}싱크로{} 소환에 필요한 임의의",
						"{C:attention}소재{}를 대체할수 있습니다",
					},
					{
						"이 카드를 {C:attention}소재{}로 해 {C:joy_synchro}싱크로{} 소환된",
						"카드는 이하의 효과를 얻습니다:",
						"{s:0.9}이 카드와 {s:0.9,C:attention}종족{s:0.9}과 {s:0.9,C:attention}속성{s:0.9}이 같은",
						"{s:0.9}보유한 혹은 {s:0.9,C:attention}묘지{s:0.9}의 {s:0.9,C:attention}조커{s:0.9}",
						"{s:0.9}한 장 마다 {s:0.9,C:mult}+#1#{s:0.9} 배수를 부여합니다",
					},
				},
				joy_transfer_ability = {
					"이 카드와 {C:attention}종족{}과 {C:attention}속성{}이 같은",
					"보유한 혹은 {C:attention}묘지{}의 {C:attention}조커{}",
					"한 장 마다 {C:mult}+#1#{} 배수를 부여합니다",
					"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
				},
			},
			j_joy_maxsix = {
				name = "{C:joy_effect}맥시멈 식스",
				text = {
					{
						"{C:green}#1#/#2#{}의 확률로 {X:mult,C:white}X#3#{} 배수",
					},
					{
						"{C:attention}블라인드{} 선택 시",
						"{C:green}#4#/#5#{}의 확률로 {C:dark_edition}네거티브{}가 됩니다",
					},
				},
			},
			j_joy_stpolice = {
				name = "{C:joy_effect}스페이스타임 폴리스",
				text = {
					{
						"라운드 종료 시키며 {C:attention}보스 블라인드{} 선택 시 까지 {C:attention}제외{}된 {C:attention}조커{}",
						"{C:attention}#1#{}장을 돌아오게 만든 후 이 카드와 다른 {C:joy_normal}사이킥족{} {C:attention}조커{}를",
						"{C:attention}보스 블라인드{} 선택 시 까지 {C:attention}제외{}시킵니다",
					},
				},
			},
			j_joy_wannabee = {
				name = "{C:joy_effect}워너비!",
				text = {
					{
						"{C:attention}발굴 #1#{}: 공개된 랭크가 {C:attention}2{}인 카드",
						"한 장 마다 {C:attention}#2#{}장을 드로우합니다",
					},
				},
			},
			j_joy_merchant = {
				name = "{C:joy_effect}마도 잡화상인",
				text = {
					{
						"{C:attention}#1#{}장 이상의 카드가 {C:attention}발굴{}되면",
						"라운드 종료 시 {C:attention}뒤집힙니다{} {C:inactive}(뒷면이여도 발동합니다)",
						"{C:inactive}(#2#장 남음){}",
					},
					{
						"{C:joy_effect}리버스{}: {C:attention}블라인드{} 선택 시,",
						"가장 많이 보유한 문장인 카드를 공개할때까지",
						"{C:attention}발굴{}한 뒤, {C:attention}발굴{}한 카드의 장수 만큼",
						"카드를 드로우합니다",
						"{C:inactive}(현재 {V:1}#3#{}{C:inactive}) (라운드마다 바뀝니다)",
					},
				},
			},
			j_joy_catoblepas = {
				name = "{C:joy_effect}카토브레퍼스와 운명의 마녀",
				text = {
					{
						"{C:attention}묘지{}의 {C:joy_normal}마법사족{} 한 장마다",
						"{C:mult}+#1#{} 배수를 부여합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"라운드 종료 시 {C:green}#3#/#4#{}의 확률로",
						"{C:joy_normal}마법사족{} {C:attention}조커 #5#{}장을",
						"{C:attention}보스 블라인드{] 선택 시 까지 {C:attention}제외{}하며",
						"그 카드들에 기재된 모든 {C:attention}확률{}을 영구히 두배로 만듭니다",
					},
				},
			},
			j_joy_coupleofaces = {
				name = "{C:joy_effect}Couple of Aces",
				text = {
					{
						"플레이한 핸드가 {C:attention}페어{}를 포함할 경우",
						"{X:mult,C:white}X#1#{} 배수",
						"{C:green}#2#/#3#{}의 확률로 {C:attention}에이스{}가",
						"득점시 {X:mult,C:white}X#1#{} 배수 부여",
						"{C:green}#4#/#5#{}의 확률로 플레이한 족보 레벨 업",
						"{C:green}#6#/#7#{}의 확률로 득점하는 모든 카드를",
						"{C:attention}황금 인장 행운 에이스{} 카드로 변경",
					},
				},
			},
			j_joy_linkslayer = {
				name = "{C:joy_effect}링크슬레이어",
				text = {
					{
						"각 {C:joy_normal}사이버스족{} {C:attention}조커{}가",
						"사용한 버리기 횟수마다 칩 {C:chips}+#1#{}개를 줍니다",
						"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive}개)",
					},
					{
						"{C:joy_normal}사이버스족{} {C:attention}조커{} 보유 시",
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
		},
	},
}
