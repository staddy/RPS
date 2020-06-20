extends Button
var Bot = []
func bot_action():
	if Bot[-1]==0:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action0").visible()


func _on_BRock_pressed():
	pass # Replace with function body.
