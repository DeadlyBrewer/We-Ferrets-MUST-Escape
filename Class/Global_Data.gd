extends Node

var has_key
var touching_key_red
var touching_key_green
var touching_key_blue
var doors_unlocked

# Called when the node enters the scene tree for the first time.
func _ready():
	has_key = false
	touching_key_red = false
	touching_key_green = false
	touching_key_blue = false
	doors_unlocked = 0

