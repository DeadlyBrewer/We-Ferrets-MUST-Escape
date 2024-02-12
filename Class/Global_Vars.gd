extends Node

# Set debugging mode
# 0: off | 1: on
const DEBUG_MODE = 1

enum KeyColor {
	RED,
	GREEN,
	BLUE
}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

static func debug(text):
	if DEBUG_MODE >= 1:
		print_rich("[color=red][b]DEBUG | [/b][/color]", text)


