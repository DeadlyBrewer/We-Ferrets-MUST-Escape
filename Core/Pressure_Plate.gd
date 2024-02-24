extends Node
class_name Pressure_Plate

@onready var interaction_area = $Interaction_Area
@onready var interaction_mouse = $Mouse_Interaction
@onready var sprite_2d = $Sprite2D

var weight_required
var pressure_plate_name
var current_weight = Global_Func.Carry_Weight_Values.NONE

var	is_active = false

var active_weights = []

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_mouse.set_carry_type(Global_Func.Carry_Type.PRESSURE_PLATE) 

# Uses same interaction_area for Labels and pickup
func register_weight(area: Interaction_Weight):
	#DEBUG.dprint("Pressure_Plate: register_weight")
	active_weights.push_back(area)
	
func unregister_weight(area: Interaction_Weight):
	#DEBUG.dprint("Pressure_Plate: unregister_weight")
	var index = active_weights.find(area)
	if index != -1:
		active_weights.remove_at(index)

func get_is_active():
	return is_active
