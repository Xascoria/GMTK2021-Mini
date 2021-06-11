extends Node

# The order makes no sense cuz I make this for personal use

var is_full_screen :bool= OS.window_fullscreen
var is_muted_all :bool= false

func toggle_fullscreen():
	is_full_screen = not is_full_screen
	OS.window_fullscreen = is_full_screen
	
func quit_game():
	get_tree().quit()

func sum_arr(arr):
	var x = 0
	for i in arr:
		x += i
	return x
	
func multiply_arr(arr):
	var x = 1
	for i in arr:
		x *= i
	return x

func sorted(arr):
	var x = arr.duplicate()
	x.sort()
	return x

#Out of place
func shuffle_arr(arr):
	var x = arr.duplicate()
	randomize()
	x.shuffle()
	return x
	
func toggle_mute_all() -> void:
	var x = AudioServer.bus_count
	is_muted_all = not is_muted_all
	for i in range(x):
		AudioServer.set_bus_mute(i, is_muted_all)
	
#No limit so, use with care lol
func change_volume_all(vol_change: float) -> void:
	var x = AudioServer.bus_count
	for i in range(x):
		AudioServer.set_bus_volume_db(i, AudioServer.get_bus_volume_db(i) + vol_change)
	
func _input(event):
	if event is InputEventKey and event.is_pressed():
		#Insert function to test here
		#OS.window_position = Vector2(0,0)
		pass


		
