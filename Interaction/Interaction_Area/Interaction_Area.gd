extends Area2D
class_name Interaction_Area

@export var action_name: String = "Object"
@onready var data = get_node("/root/Global_Data")

var interact: Callable = func():
	pass

func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _process(delta):
	pass

func _on_body_entered(_body):
	DEBUG.dprint("Interaction_Area: _on_body_entered")
	Intearaction_Manager.register_area(self)


func _on_body_exited(_body):
	DEBUG.dprint("Interaction_Area: _on_body_exited")
	Intearaction_Manager.unregister_area(self)
	
func get_action_name():
	return action_name
