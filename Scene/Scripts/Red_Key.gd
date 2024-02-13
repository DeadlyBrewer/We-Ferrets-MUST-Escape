extends Node2D

@onready var data = %"/root/Global_Data"
@onready var interaction_area = $Interaction_Area

# Called when the node enters the scene tree for the first time.
func _ready(): 
	interaction_area.interact = Callable(self, "_on_interact")

func useKey():
	queue_free() # Destory Key

func _on_interact():
	DEBUG.dprint("Red Key Interact")

