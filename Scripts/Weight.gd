extends Carry_Object

class_name Weight

const weight_name = "Light Weight"

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	interaction_mouse.set_carry_type(Global_Func.Carry_Type.WEIGHT)
	carry_object_type = Global_Func.Carry_Type.WEIGHT
	
	carry_weight = Global_Func.Carry_Weight.LIGHT
	interaction_area.set_action_name(weight_name)
	interaction_mouse.set_over_text(weight_name)
	
func use_weight():
	queue_free() # Destory Weight

# In Carry_Object class
#func get_carry_weight():
	#return carry_weight
