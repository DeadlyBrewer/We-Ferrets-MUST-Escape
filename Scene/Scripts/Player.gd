extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var sprite_2d = $Sprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var action = false

func _physics_process(delta):
	# Moving Animations
	if (velocity.x >= 1 || velocity.x <= -1 || velocity.y >= 1 || velocity.y <= -1):
		sprite_2d.animation = "moving"
	else:
		sprite_2d.animation = "default"

	# Get the input direction and handle the movement/deceleration.
	# Horizontal
	var hoz_direction = Input.get_axis("left", "right")
	if hoz_direction:
		velocity.x = hoz_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 100)
		
	# Get the input direction and handle the movement/deceleration.
	# Horizontal
	var vert_direction = Input.get_axis("up", "down")
	if vert_direction:
		velocity.y = vert_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, 100)

# Add the gravity.
	#if not is_on_floor() && !Input.is_action_pressed("up"):
		#velocity.y += gravity * delta * 2

	move_and_slide()

	var isLeft = velocity.x < 0
	var isRight = velocity.x > 0
	var isUp = velocity.y < 0
	var isDown = velocity.y > 0
	sprite_2d.flip_h = isLeft
