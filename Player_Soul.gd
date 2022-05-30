extends KinematicBody2D

var run_speed = 200
var jump_speed = 500
var gravity = 10
var acceleration = 10
var velocity = Vector2()
var facing_right = true




func _physics_process(_delta):
	
	velocity.y += gravity

	$AnimationPlayer.play("Idle")
	
	if facing_right:
		$Sprite.scale.x = -3
	else:
		$Sprite.scale.x = 3

	velocity.x = clamp(velocity.x,-run_speed,run_speed)
	
	if Input.is_action_pressed("right"):
		velocity.x += acceleration
		facing_right = true
	elif Input.is_action_pressed("left"):
		velocity.x -= acceleration
		facing_right = false
	else:
		velocity.x = lerp(velocity.x,0,0.2)
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_speed
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
