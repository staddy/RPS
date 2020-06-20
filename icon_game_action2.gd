extends Button
var Bot = []
func bot_action():
	if Bot[-1]==2:
		get_parent().get_node("Main").get_node("Panel").get_node("icon_game_action2").visible()


func _on_BPaper_pressed():
	pass # Replace with function body.
