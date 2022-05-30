extends KinematicBody2D

var run_speed = 220
var jump_speed = 500
var gravity = 10
var acceleration = 10
var velocity = Vector2()
var facing_right = true

func _physics_process(_delta):
	
	velocity.y += gravity
	
	velocity.x = clamp(velocity.x,-run_speed,run_speed)
	
	#if facing_right:
		#$Sprite.scale.x = -1
	#else !facing_right:
		#$Sprite.scale.x = 1
	
	if Input.is_action_pressed("right"):
		velocity.x += acceleration
		facing_right = true
		$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("left"):
		velocity.x -= acceleration
		facing_right = false
		$AnimationPlayer.play("Run")
	else:
		velocity.x = lerp(velocity.x,0,0.2)
		$AnimationPlayer.play("Idle")
	
	if !is_on_floor():
		$AnimationPlayer.play("jump")
	
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jump_speed
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
