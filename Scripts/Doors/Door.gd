extends Node
class_name Door

@onready var mouse_interaction = $Mouse_Interaction
@onready var unlock_area = $Unlock_Area

var door_name
var key_color


# Called when the node enters the scene tree for the first time.
func _ready():
	mouse_interaction.set_carry_type(Global_Func.Carry_Type.DOOR)
	
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func open_door():
	queue_free()

func get_key_color():
	return key_color
	
