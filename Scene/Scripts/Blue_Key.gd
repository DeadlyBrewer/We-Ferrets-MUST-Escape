extends Node2D

class_name Key

@onready var interaction_area = $Interaction_Area
@onready var data = get_node("/root/Global_Data")
var key_color
var follow_player 

# Called when the node enters the scene tree for the first time.
func _ready(): 
	follow_player = false
	interaction_area.interact = Callable(self, "_on_interact")
	key_color = Global_Func.Key_Color.BLUE
	
func _physics_process(delta):
	if follow_player:
		position = data.player_pos
	
func _process(delta):
	pass

func useKey():
	queue_free() # Destory Key

func _on_interact():
	DEBUG.dprint("Blue Key Interact")
	DEBUG.dprint(" Interaction_Manager: var data.has_object -> %s" % data.has_object)
	# If player has a key, drop key
	if !follow_player:
		#data.has_object = true
		follow_player = true
	else:
		#data.has_object = false
		follow_player = false
		
	data.invert_has_object()
	
	

