extends Label
var gamer = []
var Bot = []
var Stat = []
#Bot = [0]
func _statistic():
	for x in range(10):
		Stat.append(gamer[x], ":", Bot[x])  #-как записать
	get_parent().get_node("Main").get_node("Panel").get_node("statistic").text=Stat[-1]
