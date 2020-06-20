extends Node2D
var gamer = []     #список действий игрока
var Bot = [0]     #список действий бота
var Result=0        #результат в текущем раунде
var w=0             #счетчик побед игрока
var l=0             #счетчик поражений игрока
var n=0             #счетчик игр
func _score():#счет игры
	if Result==2:
		w+=1 #счетчик побед игрока
	elif Result==1:
		l+=1 #счетчик побед бота
func _test_invisible():#проверка видимости иконок бота
	if get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action0").visible==true:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action0").visible = !get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action0").visible
	if get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action1").visible==true:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action1").visible = !get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action1").visible
	if get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action2").visible==true:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action2").visible = !get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action2").visible
func _body(): #тело игры
	n+=1 #кол-во игр
	Result = (gamer[-1] - Bot[-1])%3 #определение победителя
	#иконки действий бота
	_invisible()
#надпись победителя и следующий ход бота
	if Result==2:
		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Win"
		if Bot[-1]==0:
			Bot.append(Bot[-1]+1)
		elif Bot[-1]==1:
			Bot.append(Bot[-1]+1)
		else:
			Bot.append(0)
	elif Result==1:
		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Lose"
		if Bot[-1]==1:
			Bot.append(Bot[-1]-1)
		elif Bot[-1]==2:
			Bot.append(Bot[-1]-1)
		else:
			Bot.append(2)
	elif Result==0:
		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Draw"
#		if w>l:
#			Bot.append(1)
#		elif w<l:
#			Bot.append(2)
#		else:
		Bot.append(0)
	_score()
	print('Game №  ', n, ' Score (', w, '-', l, ')')
	print('Gamer - ', '',gamer)
	print('Bot   - ', Bot)
func _invisible():#показ иконки действи бота во врем игры
	if Bot[-1]==0:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action0").visible = !get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action0").visible
	elif Bot[-1]==1:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action1").visible = !get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action1").visible
	elif Bot[-1]==2:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action2").visible = !get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action2").visible
func _on_BRock_pressed():#нажатие кнопки камн
	gamer.append(0)
	_test_invisible()
	_body()
func _on_BScissors_pressed():#нажатие кнопки ножницы
	gamer.append(1)
	_test_invisible()
	_body()
func _on_BPaper_pressed():#нажатие кнопки бумага
	gamer.append(2)
	_test_invisible()
	_body()
