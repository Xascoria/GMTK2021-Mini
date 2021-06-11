extends KinematicBody2D

export var is_AI : bool
var ball :KinematicBody2D= null
var disabled = false

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if is_AI:
		if not disabled and ball != null:
			if ball.position.y > position.y:
				move_and_collide(Vector2(0, 100.0*delta))
			elif ball.position.y < position.y:
				move_and_collide(Vector2(0, -100.0*delta))
	else:
		#TODO for arin, change the input according the mapped controls here
		if Input.is_key_pressed(KEY_W):
			move_and_collide(Vector2(0, -130.0*delta))
		elif Input.is_key_pressed(KEY_S):
			move_and_collide(Vector2(0, 130.0*delta))

func _draw():
	draw_rect(Rect2(-9, -45, 18, 90), Color("#998d77"), true)
