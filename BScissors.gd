extends Button
var gamer = []
var Result=1
func _on_BScissors_pressed():
	gamer.append(1)
func _skolko_Result(Result, gamer, Bot):
	Result = (gamer[-1] - Bot[-1])%3 
#func _who_winer():
#	if Result==2:
#		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Lose"
#	elif Result==1:
#		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Win"
#	elif Result==0:
#		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Draw"
