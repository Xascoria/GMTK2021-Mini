extends Node


var isPaused = false;


func _on_Button2_pressed():
	if get_tree().paused == false:
		get_tree().paused = true
		$pause_popup.show()
	elif get_tree().paused == true:
		get_tree().paused = false
		$pause_popup.hide()
