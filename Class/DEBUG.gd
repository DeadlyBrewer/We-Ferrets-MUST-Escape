extends Node

const DEBUG_MODE = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


static func dprint(text):
	if DEBUG_MODE >= 1:
		print_rich("[color=red][b]DEBUG | [/b][/color]", text)
