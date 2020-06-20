extends Node2D
#изначально два массива человек и бот
var gamer = []
var Bot = []
Bot = [0]
var Result=1

#сообщение о победе в раунде

#вывод статистики
#func _statistic():
#	for x in range(10):
#		Stat=[gamer(x):Bot(x)]  #-как записать
#		print (statistic["Stat"])
#окошко выбора бота становитс видимым
#func bot_action():
#	if Bot[-1]==0:
#		icon_game_action0.visible()
#	elif Bot[-1]==1:
#		icon_game_action1.visible()
#	elif Bot[-1]==2:
#		icon_game_action2.visible()
#выбор следующего действи бота .add
func bot_next_action():
	if result==2:
		Bot.append(Bot[-1]-1)
		if Bot([-1]=-1:
			Bot.pop(-1)
			Bot.append(2)
	elif result==1:
		Bot.append(Bot[-1]+1)
		if Bot[-1]=3:
			Bot.pop(-1)
			Bot.append(0)
	elif Bot[-1]=gamer[-1]:
		Bot.append(gamer[-1])

