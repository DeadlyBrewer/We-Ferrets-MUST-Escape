extends Weight

class_name Weight_Medium

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	weight_name = "Medium Weight"
	carry_weight = Global_Func.Carry_Weight_Values.MEDIUM
	interaction_area.set_action_name(weight_name)
	interaction_mouse.set_over_text(weight_name)
	


# In Carry_Object class
#func get_carry_weight():
	#return carry_weight
