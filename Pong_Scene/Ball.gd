extends KinematicBody2D

var cur_x : int = 160
var cur_y : int = 0
var RNG := RandomNumberGenerator.new()

func _ready():
	pass # Replace with function body.

func _draw():
	draw_rect(Rect2(-10, -10, 20, 20), Color("#998d77"), true)

func _physics_process(delta):
	var a = move_and_collide(Vector2(0, cur_y*delta))
	var b = move_and_collide(Vector2(cur_x*delta, 0))
	#Hit a wall
	if a != null:
#		$sfxplayer.stream = beep2.wav
#		$sfxplayer.play()
		cur_y = -cur_y
	#Hit a paddle
	if b != null:
		#$sfxplayer.stream = beep1.wav
#		$sfxplayer.play()
		if cur_x > 0:
			cur_x += 5
		else:
			cur_x -= 5
		cur_x = -cur_x
		cur_y += RNG.randi_range(-20,20)
