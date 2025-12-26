return {
	descriptions = {
		Joker = {
			j_joy_psy_driver = {
				name = "{C:joy_normal}PSY프레임 드라이버",
				text = {
					{
						"{E:1}전격을 조종하는 사이킥 전사.",
						'{E:1}자율형 증폭기 "PSY(싸이)프레임"을 구사하여',
						"{E:1}시큐리티 포스에 습격을 갱항한다.",
						"{E:1}그 모습은, 정말로 전광석화와 같다.{}",
					},
				},
			},
			j_joy_psy_alpha = {
				name = "{C:joy_effect}PSY프레임기어 알파",
				text = {
					{
						'소환 시 {C:joy_normal}"PSY프레임 드라이버"{}가',
						"없다면 {C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						'{C:attention}블라인드{} 선택 시 {C:joy_normal}"PSY프레임 드라이버"{}를',
						"라운드의 끝까지 {C:attention}제외{}합니다",
						"이 효과가 발동한 라운드에서 손패에 남은 모든 카드가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_psy_beta = {
				name = "{C:joy_effect}PSY프레임기어 베타",
				text = {
					{
						'소환 시 {C:joy_normal}"PSY프레임 드라이버"{}가',
						"없다면 {C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						'{C:attention}블라인드{} 선택 시 {C:joy_normal}"PSY프레임 드라이버"{}를',
						"라운드의 끝까지 {C:attention}제외{}합니다",
						"이 효과가 발동한 라운드에서 득점하는 모든 카드가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_psy_gamma = {
				name = "{C:joy_effect}PSY프레임기어 감마",
				text = {
					{
						'소환 시 {C:joy_normal}"PSY프레임 드라이버"{}가',
						"없다면 {C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						'{C:attention}블라인드{} 선택 시 {C:joy_normal}"PSY프레임 드라이버"{}를',
						"라운드의 끝까지 {C:attention}제외{}합니다",
						"이 효과가 발동한 라운드에서 각 조커가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_psy_delta = {
				name = "{C:joy_effect}PSY프레임기어 델타",
				text = {
					{
						'소환 시 {C:joy_normal}"PSY프레임 드라이버"{}가',
						"없다면 {C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						'{C:attention}블라인드{} 선택 시 {C:joy_normal}"PSY프레임 드라이버"{}를',
						"라운드의 끝까지 {C:attention}제외{}합니다",
						"이 효과가 발동한 라운드에서 보유한 각 {C:tarot}타로{} 카드가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_psy_epsilon = {
				name = "{C:joy_effect}PSY프레임기어 엡실론",
				text = {
					{
						'소환 시 {C:joy_normal}"PSY프레임 드라이버"{}가',
						"없다면 {C:attention}#1#{}장을 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
					{
						'{C:attention}블라인드{} 선택 시 {C:joy_normal}"PSY프레임 드라이버"{}를',
						"라운드의 끝까지 {C:attention}제외{}합니다",
						"이 효과가 발동한 라운드에서 보유한 각 {C:planet}행성{} 카드가",
						"{X:mult,C:white}X#2#{} 배수를 부여합니다",
					},
				},
			},
			j_joy_psy_multithreader = {
				name = "{C:joy_effect}PSY프레임 멀티스레더",
				text = {
					{
						'{C:joy_normal}"PSY프레임"{}의 능력을 처리 시',
						'이 카드는 {C:joy_normal}"PSY프레임 드라이버"{}로 취급됩니다',
					},
					{
						"이 카드가 {C:attention}제외{}당한 후 돌아올 때에 무작위한",
						'{C:joy_normal}메인 덱 "PSY프레임"{} 효과 몬스터를 생성합니다',
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
			},
			j_joy_psy_zeta = {
				name = "{C:joy_synchro}PSY프레임로드 제타",
				text = {
					{
						"{C:attention}라운드{}가 끝날때 {C:attention}블라인드{}를",
						"선택할 때까지 이 카드와 무작위한",
						"{C:attention}소모품 {C:attention}#1#{}장을 {C:attention}제외{}합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너{} {C:attention}1{}장 +",
					"{C:joy_synchro}튜너{} 이외의 {C:blue}일반{} 조커",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} or {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_psy_omega = {
				name = "{C:joy_synchro}PSY프레임로드 오메가",
				text = {
					{
						"{C:attention}라운드{}가 끝날때 {C:attention}블라인드{}를",
						"선택할 때까지 이 카드와 다른 무작위한",
						"{C:attention}조커 1{}장을 {C:attention}제외{}합니다",
					},
				},
				joy_summon_conditions = {
					"{C:joy_synchro}튜너{} {C:attention}1{}장 +",
					"{C:joy_synchro}튜너{} 이외의 {C:blue}일반{} 조커",
					"{s:0.9,C:inactive}({s:0.9,C:joy_xyz}엑시즈{s:0.9,C:inactive} or {s:0.9,C:joy_link}링크{}{s:0.9,C:inactive} 제외)",
				},
			},
			j_joy_psy_lambda = {
				name = "{C:joy_synchro}PSY프레임로드 램다",
				text = {
					{
						'{C:joy_normal}"PSY프레임"{} 능력이 {C:joy_normal}"PSY프레임 드라이버"{}를',
						"{C:attention}제외{}하지 않습니다",
					},
					{
						"{C:joy_normal}사이킥족{} 조커가 {C:attention}제외{}에서 돌아올 때마다",
						'무작위한 {C:joy_spell}엑스트라 덱{} {C:joy_normal}"PSY프레임"{} 조커 {C:attention}#1#{}장을',
						"{C:joy_spell}엑스트라 덱{}에 생성합니다",
						"{C:inactive}(자리가 있어야 합니다){}",
					},
				},
				joy_summon_conditions = {
					"{C:joy_token}토큰{}이 아닌 조커 {C:attention}2{}장",
				},
			},
			j_joy_psy_circuit = {
				name = "{C:joy_spell}PSY프레임 서킷",
				text = {
					{
						"{C:joy_synchro}싱크로{} 조커를 소환할 때마다 {C:money}+$#1#{}",
					},
					{
						"{C:joy_normal}사이킥족{} {C:joy_synchro}싱크로{} 조커는",
						"소환 시 {C:dark_edition}네거티브{}가 됩니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_psy = "PSY프레임",
		},
	},
}
