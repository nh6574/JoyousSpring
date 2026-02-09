return {
	descriptions = {
		Joker = {
			j_joy_flady_light = {
				name = "{C:joy_effect}포츈 레이디 라이티",
				text = {
					{
						"{C:green}#1#/#2#{} 확률로 라운드 종료 시",
						'{C:joy_normal}"포츈 레이디" {C:attention}#3#{}장을',
						"{C:attention}블라인드{}를 선택 할 때까지 {C:attention}제외{}시킵니다",
					},
					{
						"라운드 종료 시 {C:money}$#4#{} x {C:green}확률 분자{}를 얻습니다",
						"{C:inactive}(최대 $#4# x #2#){}",
						"{C:inactive}(현재 {C:money}+$#5#{}{C:inactive})",
					},
					{
						"카드가 {C:attention}제외{} 될 때마다",
						"모든 {C:attention}조커{}에 기재된 {C:attention}확률{}을",
						"영구히 {C:attention}#6#{}씩 증가시킵니다",
					},
				},
			},
			j_joy_flady_fire = {
				name = "{C:joy_effect}포츈 레이디 파이리",
				text = {
					{
						"{C:attention}블라인드{} 선택 시 {C:green}#1#/#2#{} 확률로",
						"다른 모든 {C:green}확률{}을 두배로 만듭니다",
					},
					{
						'{C:mult}+#3#{} x (모든 {C:joy_normal}"포츈 레이디"{} {C:green}확률 분자{}) 배수',
						"{C:inactive}(최대 +#3# x #4#){}",
						"{C:inactive}(현재 {C:mult}+#5#{}{C:inactive} 배수)",
					},
					{
						"라운드 종료 시",
						"모든 {C:attention}조커{}에 기재된 {C:attention}확률{}을",
						"영구히 {C:attention}#6#{}씩 증가시킵니다",
					},
				},
			},
			j_joy_flady_wind = {
				name = "{C:joy_effect}포츈 레이디 윈디",
				text = {
					{
						"핸드를 플레이할 시 {C:green}#1#/#2#{} 확률로",
						"해당하는 {C:planet}행성{}카드를 생성합니다",
					},
					{
						'각 {C:joy_normal}"포츈 레이디"{} 마다',
						"칩 {C:chips}+#3#{} x {C:green}그 카드의 확률 분자{} 개",
						"{C:inactive}(최대 +#3# x 그 카드의 확률 분모){}",
					},
					{
						"라운드 종료 시",
						"모든 {C:attention}조커{}에 기재된 {C:attention}확률{}을",
						"영구히 {C:attention}#4#{}씩 증가시킵니다",
					},
				},
			},
			j_joy_flady_water = {
				name = "{C:joy_effect}포츈 레이디 워테리",
				text = {
					{
						"{C:attention}블라인드{} 선택 시 {C:green}#1#/#2#{}의 확률로",
						"핸드 크기를 영구히 {C:attention}#3#{}장 증가시킵니다",
						"{C:inactive}(실패할시 핸드 크기가 초기화됩니다)",
						"{C:inactive}(최대 +#8#) (현재 {C:attention}+#4#{}{C:inactive}장.)",
					},
					{
						"칩 {C:chips}+#5#{} x {C:green}확률 분자{} 개",
						"{C:inactive}(최대 +#5# x #2#){}",
						"{C:inactive}(현재 칩 {C:chips}+#6#{}{C:inactive}개)",
					},
					{
						"라운드 종료 시",
						"모든 {C:attention}조커{}에 기재된 {C:attention}확률{}을",
						"영구히 {C:attention}#7#{}씩 증가시킵니다",
					},
				},
			},
			j_joy_flady_earth = {
				name = "{C:joy_effect}포츈 레이디 어시",
				text = {
					{
						"{C:attention}블라인드{} 선택 시 {C:green}#1#/#2#{}의 확률로",
						'{C:joy_normal}메인 덱 "포츈 레이디"{} {C:attention}#3#{}장을 생성합니다',
						"{C:inactive}(자리가 있어야 합니다)",
					},
					{
						"이 카드의 {C:green}확률 분자{}가 영구히 올라갈때마다",
						"배수 획득량이 {X:mult,C:white}X#4#{} 상승합니다",
						"{C:inactive}(현재 {X:mult,C:white}X#5#{}{C:inactive} 배수)",
					},
					{
						"이 카드의 {C:green}확률 분자{}가 영구히 올라갈때마다",
						"모든 {C:attention}조커{}에 기재된 {C:attention}확률{}을",
						"영구히 {C:attention}#4#{}씩 증가시킵니다",
						'{C:inactive}("포츈 레이디 어시" 제외){}',
					},
				},
			},
			j_joy_flady_dark = {
				name = "{C:joy_effect}포츈 레이디 다키",
				text = {
					{
						"{C:attention}블라인드{} 선택 시 {C:green}#1#/#2#{}의 확률로",
						'{C:joy_normal}"포츈 레이디"{} {C:attention}#3#{}장을 {C:attention}소생{}시킵니다',
						"(한 장도 없을 경우 {C:joy_normal}마법사족{}을)",
					},
					{
						"{C:mult}+#4#{} x {C:green}확률 분자{} 배수",
						"{C:inactive}(최대 +#4# x #2#){}",
						"{C:inactive}(현재 {C:mult}+#5#{}{C:inactive} Mult)",
					},
					{
						"라운드 종료 시",
						"모든 {C:attention}조커{}에 기재된 {C:attention}확률{}을",
						"보유한 {C:joy_normal}마법사족{} 카드 한 장마다",
						"영구히 {C:attention}#6#{}씩 증가시킵니다",
					},
				},
			},
			j_joy_flady_past = {
				name = "{C:joy_effect}포츈 레이디 패스티",
				text = {
					{
						"라운드 종료 시 {C:green}#1#/#2#{}의 확률로",
						"모든 {C:joy_normal}마법사족{} {C:attention}조커{}를",
						"{C:attention}블라인드{}를 선택할 때까지",
						"{C:attention}제외{}시킵니다",
					},
					{
						"{X:mult,C:white}X#3#{} x {C:green}확률 분자{}만큼",
						"배수를 획득합니다",
						"{C:inactive}(현재 X#3# x #2#){}",
						"{C:inactive}(현재 {X:mult,C:white}X#4#{}{C:inactive} 배수)",
					},
					{
						"카드가 {C:attention}제외{}에서 돌아올 때",
						"그 카드에 기재된 {C:green}확률{}을 영구히",
						"{C:attention}#5#{}씩 증가시킵니다",
					},
				},
			},
			j_joy_flady_every = {
				name = "{C:joy_synchro}포츈 레이디 에버리",
				text = {
					{
						"{C:green}#1#/#2#{}의 확률로 라운드 동안 {X:mult,C:white}X#3#{} 배수",
						"{C:green}#4#/#5#{}의 확률로 라운드 종료 시 {C:attention}블라인드{}를 선택할 때까지",
						'{C:joy_normal}"포츈 레이디" {C:attention}#6#{}장을 {C:attention}제외{}',
						"{C:green}#7#/#8#{}의 확률로 라운드 종료 시 {C:money}+$#9#{}",
						"{C:green}#10#/#11#{}의 확률로 득점하는 카드의",
						"모든 {C:green}확률{}을 두배로 만듭니다",
						"{C:green}#12#/#13#{}의 확률로 {C:attention}블라인드{} 선택 시",
						'무작위 {C:joy_normal}"포츈 페어리"{} {C:attention}#14#{}장 생성',
						'{C:green}#15#/#16#{}의 확률로 블라인드 선택 시 {C:joy_normal}"포츈 페어리" {C:attention}#17#{}장을',
						"{C:dark_edition}네거티브{}를 부여한 뒤 {C:attention}소생{} (없을 경우 {C:joy_normal}마법사족{}을)",
					},
					{
						"{C:mult}+#18#{} x ({C:green}확률 분자의 합{})",
						"{C:inactive}(최대 +#18# x #19#){}",
						"{C:inactive}(현재 {C:mult}+#20#{}{C:inactive} 배수)",
					},
					{
						"카드가 {C:attention}제외{}에서 돌아올 때",
						"그 카드에 기재된 {C:green}확률{}을 영구히",
						"두배로 만듭니다",
					},
				},
				joy_summon_conditions = {
					"{C:attention}1{} {C:joy_synchro}Tuner{} +",
					"{C:attention}1{} {C:joy_normal}Spellcaster{} non-{C:joy_synchro}Tuner{}",
					"{s:0.9,C:inactive}(Except {s:0.9,C:joy_xyz}Xyz{s:0.9,C:inactive} or {s:0.9,C:joy_link}Links{}{s:0.9,C:inactive})",
					"자리를 필요하지 않습니다",
				},
			},
			j_joy_ffairy_hikari = {
				name = "{C:joy_effect}점쟁이 마녀 히카리",
				text = {
					{
						"{C:green}확률{} 효과가 성공할 시 {C:money}+$#1#{}",
					},
					{
						"앤티 당 한 번,",
						"{C:green}확률{} 효과가 {C:attention}#3#{}번 성공할 경우",
						"무작위 {C:joy_normal}메인 덱 마법사족{}",
						"{C:attention}조커 #2#{}장을 생성합니다 {C:inactive}(#4#/#3#){}",
						"{C:inactive}(자리가 있어야 합니다)",
					},
					{
						'{C:joy_normal}"포츈 레이디"{}를 보유할 경우',
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
			j_joy_ffairy_en = {
				name = "{C:joy_effect}점쟁이 마녀 엔",
				text = {
					{
						"이 런 도중 {C:green}확률{} 효과가 성공했던",
						"횟수마다 {C:mult}+#1#{} 배수를 부여합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"카드가 득점할 때 {C:green}#3#/#4#{}의 확률로",
						"{C:attention}행운{} 카드로 강화합니다",
					},
					{
						'{C:joy_normal}"포츈 레이디"{}를 보유할 경우',
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
			j_joy_ffairy_hu = {
				name = "{C:joy_effect}점쟁이 마녀 후",
				text = {
					{
						"이 런 도중 {C:green}확률{} 효과가 성공했던",
						"횟수마다 칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive} 개)",
					},
					{
						"이 카드가 {C:attention}제외{}에서 돌아올 경우",
						"다음 {C:green}확률{} 효과는 무조건 성공합니다",
					},
					{
						'{C:joy_normal}"포츈 레이디"{}를 보유할 경우',
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
			j_joy_ffairy_swee = {
				name = "{C:joy_effect}점쟁이 마녀 수이",
				text = {
					{
						"이 런 도중 {C:green}확률{} 효과가 성공했던",
						"횟수마다 칩 {C:chips}+#1#{}개를 획득합니다",
						"{C:inactive}(현재 칩 {C:chips}+#2#{}{C:inactive} 개)",
					},
					{
						"{C:green}확률{} 효과가 라운드 도중 성공했을 경우,",
						"라운드 종료 시 이 카드와 다른 무작위 {C:attention}조커 #3#{}장을",
						"{C:attention}블라인드{} 선택 시까지 {C:attention}제외{}시킵니다",
					},
					{
						'{C:joy_normal}"포츈 레이디"{}를 보유할 경우',
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
			j_joy_ffairy_chee = {
				name = "{C:joy_effect}점쟁이 마녀 치",
				text = {
					{
						"이 런 도중 {C:green}확률{} 효과가 성공했던",
						"횟수마다 {C:mult}+#1#{} 배수를 부여합니다",
						"{C:inactive}(현재 {C:mult}+#2#{}{C:inactive} 배수)",
					},
					{
						"{C:joy_normal}마법사족{}이 아닌 모든 카드에 기재된",
						"{C:green}확률 분모{}를 절반으로 만듭니다",
					},
					{
						'{C:joy_normal}"포츈 레이디"{}를 보유할 경우',
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
			j_joy_ffairy_ann = {
				name = "{C:joy_effect}점쟁이 마녀 안",
				text = {
					{
						"{C:green}확률{} 효과가 성공할 시 {C:money}+$#1#{}를 얻고",
						"{C:attention}묘지{}에 무작위한 {C:joy_normal}마법사족{} {C:attention}조커 #2#{}장을 생성합니다",
					},
					{
						"라운드 종료 시 {C:green}#3#/#4#{}의 확률로",
						"{C:attention}블라인드{} 선택 시까지 {C:attention}제외{}됩니다",
					},
					{
						'{C:joy_normal}"포츈 레이디"{}를 보유할 경우',
						"무료이며 자리가 없어도 상점에서",
						"구매할 수 있습니다",
					},
				},
			},
		},
	},
	misc = {
		dictionary = {
			k_joy_archetype_flady = "포츈 레이디",
		},
	},
}
