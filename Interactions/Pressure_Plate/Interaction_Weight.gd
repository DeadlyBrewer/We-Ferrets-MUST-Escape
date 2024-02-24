extends Node2D
class_name Interaction_Weight

@onready var weight = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_carry_weight():
	return weight.get_carry_weight()
