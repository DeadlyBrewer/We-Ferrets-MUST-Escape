extends Area2D
class_name Door_Area

@onready var door = $".."
	

func _on_body_entered(body):
	Intearaction_Manager.register_door(self)


func _on_body_exited(body):
	Intearaction_Manager.unregister_door(self)

func get_door():
	return door
