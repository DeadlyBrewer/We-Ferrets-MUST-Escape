extends Door


# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	door_name = "Red Door"
	key_color = Global_Func.Key_Color.RED
	mouse_interaction.set_over_text(door_name)
