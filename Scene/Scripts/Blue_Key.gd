extends Key

class_name Blue_Key

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	key_color = Global_Func.Key_Color.BLUE
	interaction_area.set_action_name("Blue Key")
