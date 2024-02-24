extends AnimatedSprite2D

@onready var testing_map = $Testing_Map
@onready var open_close = $Open_Close
@onready var door = $"."

var is_open = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if is_open:
		door.animation = "open"
		open_close.set_collision_layer_value(1, false)
	else:
		door.animation = "closed"
		open_close.set_collision_layer_value(1, true)

func set_open():
	is_open = true
	
func set_closed():
	is_open = false
