extends Label
var Result=1
func _who_winer():
	if Result==2:
		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Lose"
	elif Result==1:
		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Win"
	elif Result==0:
		get_parent().get_node("Main").get_node("Panel").get_node("result").text="Draw"


func _on_BRock_pressed():
	pass # Replace with function body.


func _on_BScissors_pressed():
	pass # Replace with function body.


func _on_BPaper_pressed():
	pass # Replace with function body.
