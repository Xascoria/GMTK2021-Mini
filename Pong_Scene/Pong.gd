tool
extends Node2D

onready var score_left = $ScoreLeft
onready var score_right = $ScoreRight
onready var ball = $Ball
var ball_start_loc : Vector2 = Vector2()
var paddle_ai_init_loc : Vector2 = Vector2()
var RNG = RandomNumberGenerator.new()

func _ready():
	RNG.randomize()
	$PaddleAI.ball = $"Ball"
	ball_start_loc = $Ball.position
	paddle_ai_init_loc = $PaddleAI.position
	on_round_reset()

func _draw():
	pass

func _on_BackWall_body_entered(body):
	#Play point.wap
	if ball.position.x < 400:
		score_right.text = str(int(score_right.text) + 1)
	else:
		score_left.text = str(int(score_left.text) + 1)
	on_round_reset()

func on_round_reset():
	$Ball.position = ball_start_loc
	ball.cur_x = 0
	ball.cur_y = 0
	$PaddleAI.disabled = true
	$RoundStartTimer.start()
	$PaddleAI.position = paddle_ai_init_loc

func _on_RoundStartTimer_timeout():
	$Ball.cur_x = 160
	var p = RNG.randi_range(0,1)
	if p == 0:
		p = -1
	$Ball.cur_y = RNG.randi_range(80,90) * p
	$PaddleAI.disabled = false

func reset_game():
	score_left.text ="0"
	score_right.text ="0"
	$RoundStartTimer.stop()
	on_round_reset()


