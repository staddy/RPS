extends Button
var Bot = []
func bot_action():
	if Bot[-1]==1:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action1").visible()
	


func _on_BScissors_pressed():
	pass # Replace with function body.
