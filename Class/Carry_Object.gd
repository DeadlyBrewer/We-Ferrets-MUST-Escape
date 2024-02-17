extends Node2D
class_name Carry_Object

@onready var data = get_node("/root/Global_Data")
@onready var interaction_area = $Interaction_Area
@onready var mouse_interaction = $Mouse_Interaction

var carry_weight
var follow_player
var carry_object_type

func _ready(): 
	carry_weight = Global_Func.Carry_Weight.NONE # Default
	carry_object_type = Global_Func.Carry_Type.NONE # Default
	interaction_area.interact = Callable(self, "_on_interact")
	follow_player = false

func _physics_process(_delta):
	if follow_player:
		position = data.player_pos

func _on_interact():
	#DEBUG.dprint("Test Key Interact")
	#DEBUG.dprint(" Interaction_Manager: var data.has_object -> %s" % data.has_object)
	# If player has a key, drop key
	if !follow_player:
		#data.has_object = true
		follow_player = true
		Global_Data.set_object_type_being_carried(carry_object_type)
		Global_Data.set_object_being_carried(self)
	else:
		#data.has_object = false
		follow_player = false
		Global_Data.clear_object_type_being_carried()
		Global_Data.clear_object_being_carried()
		
	data.invert_has_object()
