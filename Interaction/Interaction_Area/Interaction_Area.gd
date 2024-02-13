extends Area2D
class_name Interaction_Area

@export var action_name: String = "Pickup"


func _ready():
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

var interact: Callable = func():
	pass


func _on_body_entered(_body):
	Global_Func.debug("Interaction_Area: _on_body_entered")
	Intearaction_Manager.register_area(self)


func _on_body_exited(_body):
	Global_Func.debug("Interaction_Area: _on_body_exited")
	Intearaction_Manager.unregister_area(self)
