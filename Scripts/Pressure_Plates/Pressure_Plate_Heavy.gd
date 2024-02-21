extends Pressure_Plate

class_name Pressure_Plate_Heavy

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	weight_required = Global_Func.Carry_Weight_Values.HEAVY
	pressure_plate_name = "Heavy Plate"
	interaction_area.set_action_name(pressure_plate_name)
	interaction_mouse.set_over_text(pressure_plate_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var total_weight = 0
	for n in active_weights.size():
		total_weight += active_weights[n].get_carry_weight()
	if total_weight >= weight_required:
		sprite_2d.animation = "on"
		is_active = true
	elif total_weight > 0 && total_weight < weight_required:
		sprite_2d.animation = "half"
		is_active = false
	else:
		sprite_2d.animation = "default"
		is_active = false


