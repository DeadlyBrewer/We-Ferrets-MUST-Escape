extends Node
#class_name DEBUG
const DEBUG_MODE = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


static func dprint(text):
	if DEBUG_MODE >= 1:
		print_rich("[color=red][b]DEBUG | [/b][/color]", text)

static func dprint_once(text):
	if !Global_Data.DEBUG_ONE:
		Global_Data.DEBUG_ONE = true
		if DEBUG_MODE >= 1:
			print_rich("[color=red][b]DEBUG | [/b][/color]", text)
