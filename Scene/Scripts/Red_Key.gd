extends Key

class_name Red_Key

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	key_color = Global_Func.Key_Color.RED
	interaction_area.set_action_name("Red Key")
