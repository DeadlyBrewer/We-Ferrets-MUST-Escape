extends Node

const GlobalVars = preload("res://Class/Global_Vars.gd")

var has_key
var touching_key_red
var touching_key_green
var touching_key_blue

# Called when the node enters the scene tree for the first time.
func _ready():
	has_key = false
	touching_key_red = false
	touching_key_green = false
	touching_key_blue = false

# Sets true/false to touch_key_(color) vars based on what is passed
# bool is_touching -> set from object/key scenes
# color int -> GlobalVars.KeyColor.(color)
func is_touching_key(is_touching, color: int):
	GlobalVars.debug("@ func is_touching_key -> is_touching: %s | color: %s" % [is_touching, color])
	match color:
		GlobalVars.KeyColor.RED:
			touching_key_red = is_touching
			GlobalVars.debug("Is touching key Red")
		GlobalVars.KeyColor.GREEN:
			touching_key_green = is_touching
			GlobalVars.debug("Is touching key Green")
		GlobalVars.KeyColor.BLUE:
			touching_key_blue = is_touching
			GlobalVars.debug("Is touching key Blue")
