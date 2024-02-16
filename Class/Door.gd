extends Node

@onready var mouse_interaction = $Mouse_Interaction
@onready var unlock_area = $Unlock_Area

var door_name
var key_color


# Called when the node enters the scene tree for the first time.
func _ready():
	door_name = "Green Door"
	key_color = Global_Func.Key_Color.GREEN
	mouse_interaction.set_carry_type(Global_Func.Carry_Type.DOOR)
	mouse_interaction.set_over_text(door_name)
	unlock_area.interact = Callable(self, "_on_interact")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func open_door():
	queue_free()

func _on_interact():
	DEBUG.dprint("Door: _on_interact")
