extends Control


func _ready():
	pass # Replace with function body.

func _on_Button_pressed():
	#get_tree().reload_current_scene()
	$ViewportContainer/Viewport/Pong.reset_game()

