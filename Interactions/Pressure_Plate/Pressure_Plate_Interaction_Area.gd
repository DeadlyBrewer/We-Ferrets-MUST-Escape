extends Pressure_Plate
class_name Pressure_Plate_Area

@onready var pressure_plate = $".."
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area: Interaction_Weight):
	#DEBUG.dprint("Pressure_Plate_Area: _on_area_entered")
	pressure_plate.register_weight(area)


func _on_area_exited(area: Interaction_Weight):
	#DEBUG.dprint("Pressure_Plate_Area: _on_area_exited")
	pressure_plate.unregister_weight(area)
