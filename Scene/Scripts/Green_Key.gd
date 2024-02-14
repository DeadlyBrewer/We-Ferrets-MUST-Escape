extends Key

class_name Green_Key

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	key_color = Global_Func.Key_Color.GREEN
	interaction_area.set_action_name("Green Key")



