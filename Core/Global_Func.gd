extends Node

# Class meant for static global variables and functions

enum Key_Color {
	RED,
	GREEN,
	BLUE,
	TEST
}

enum Carry_Type {
	NONE,
	KEY,
	DOOR,
	WEIGHT
}

enum Carry_Weight {
	NONE,
	LIGHT,
	MEDIUM,
	HEAVY
}

# Used to help calculate what is needed for pressure plate and weights
const Carry_Weight_Values = {
	"NONE": 0,
	"LIGHT": 1,
	"MEDIUM": 3,
	"HEAVY": 6
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
