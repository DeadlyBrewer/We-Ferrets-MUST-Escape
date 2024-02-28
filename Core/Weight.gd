extends Carry_Object

class_name Weight

var weight_name
# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	interaction_mouse.set_type(Global_Func.Object_Type.WEIGHT)
	carry_object_type = Global_Func.Object_Type.WEIGHT

func use_weight():
	queue_free() # Destory Weight
