extends Area2D

@onready var bgmusic = $"../bgmusic"
@onready var enemy_hit = $"../enemy_hit"

@onready var speed = 400

func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("move_left"):
		velocity.x -= 10
	if Input.is_action_pressed("move_right"):
		velocity.x += 10
	if Input.is_action_pressed("move_up"):
		velocity.y -= 10
	if Input.is_action_pressed("move_down"):
		velocity.y += 10
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed




func _on_enemy_body_entered(body):
	hide()
	enemy_hit
