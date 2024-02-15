extends Key

class_name Green_Key

const key_name = "Green Key"
const local_key_color = Global_Func.Key_Color.GREEN

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	key_color = local_key_color
	interaction_area.set_action_name(key_name)
	mouse_interaction.set_over_text(key_name)



