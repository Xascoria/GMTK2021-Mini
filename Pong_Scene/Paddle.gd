extends KinematicBody2D

export var is_AI : bool

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if is_AI:
		pass

func _draw():
	draw_rect(Rect2(-9, -45, 18, 90), Color("#998d77"), true)
