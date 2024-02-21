extends Node2D

class_name Pressure_Plate

@onready var interaction_area = $Interaction_Area
@onready var interaction_mouse = $Mouse_Interaction
@onready var sprite_2d = $Sprite2D

var weight_required 
var pressure_plate_name = "Light Weight"
var current_weight

var	is_active = false

var active_weights = []

# Called when the node enters the scene tree for the first time.
func _ready():
	weight_required = Global_Func.Carry_Weight_Values.LIGHT
	current_weight = Global_Func.Carry_Weight_Values.NONE
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

# Uses same interaction_area for Labels and pickup
func register_weight(area: Interaction_Weight):
	DEBUG.dprint("Pressure_Plate: register_weight")
	active_weights.push_back(area)
	
func unregister_weight(area: Interaction_Weight):
	DEBUG.dprint("Pressure_Plate: unregister_weight")
	var index = active_weights.find(area)
	if index != -1:
		active_weights.remove_at(index)
