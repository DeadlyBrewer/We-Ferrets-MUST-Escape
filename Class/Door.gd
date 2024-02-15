extends Node

@onready var mouse_interaction = $Mouse_Interaction

var door_name


# Called when the node enters the scene tree for the first time.
func _ready():
	door_name = "Green Door"
	mouse_interaction.set_carry_type(Global_Func.Carry_Type.DOOR)
	mouse_interaction.set_over_text(door_name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func open_door():
	queue_free()
