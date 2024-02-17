extends Node

var player
var player_pos
var player_global_pos

var has_object
var object_type_being_carried: Global_Func.Carry_Type 
var object_being_carried # Object being carried

var doors_unlocked

# Called when the node enters the scene tree for the first time.
func _ready():
	has_object = false
	object_type_being_carried = Global_Func.Carry_Type.NONE
	doors_unlocked = 0
	object_being_carried = -1
	
func _process(_delta):
	player = get_tree().get_first_node_in_group("Player")
	player_pos = player.position
	player_global_pos = player.global_position


func get_has_object() -> bool:
	#DEBUG.dprint(" Global_data: get_has_object -> %s" % has_object)
	return has_object

func invert_has_object():
	has_object = !has_object
	#DEBUG.dprint(" Global_data: invert_has_object -> %s" % has_object)

func set_object_type_being_carried(obj: Global_Func.Carry_Type):
	object_type_being_carried = obj
	
func clear_object_type_being_carried():
	object_type_being_carried = Global_Func.Carry_Type.NONE
	
func set_object_being_carried(obj):
	object_being_carried = obj
	
func clear_object_being_carried():
	object_type_being_carried = Global_Func.Carry_Type.NONE
