extends Area2D

@onready var data = %Data
const GlobalVars = preload("res://Class/Global_Vars.gd")
# Called when the node enters the scene tree for the first time.
func _ready(): 
	pass # Replace with function body.

func useKey():
	queue_free() # Destory Key

func _on_body_entered(body):
	if (body.name == "Player"):
		data.is_touching_key(true, GlobalVars.KeyColor.RED)

func _on_body_exited(body):
	if (body.name == "Player"):
		data.is_touching_key(false, GlobalVars.KeyColor.RED)

