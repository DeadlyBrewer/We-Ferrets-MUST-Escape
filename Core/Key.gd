extends Carry_Object

class_name Key

var key_color

# Called when the node enters the scene tree for the first time.
func _ready(): 
	super._ready()
	interaction_mouse.set_type(Global_Func.Object_Type.KEY)
	carry_object_type = Global_Func.Object_Type.KEY
	
func get_key_color():
	return key_color

func use_key():
	queue_free() # Destory Key


