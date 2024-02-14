extends Node

var player
var player_pos
var player_global_pos

var has_object
var touching_key_red
var touching_key_green
var touching_key_blue
var doors_unlocked

# Called when the node enters the scene tree for the first time.
func _ready():
	has_object = false
	touching_key_red = false
	touching_key_green = false
	touching_key_blue = false
	doors_unlocked = 0
	
func _process(delta):
	player = get_tree().get_first_node_in_group("Player")
	player_pos = player.position
	player.global_position


func get_has_object() -> bool:
	#DEBUG.dprint(" Global_data: get_has_object -> %s" % has_object)
	return has_object

func invert_has_object():
	has_object = !has_object
	#DEBUG.dprint(" Global_data: invert_has_object -> %s" % has_object)
