extends Node2D


@onready var player = get_tree().get_first_node_in_group("Player")
@onready var label = $Label

const base_text = "[center]"

var active_areas = []
var mouse_area = []
var can_interact = true

var door_area = []

#func _ready():
	#label.

func register_area(area: Interaction_Area):
	#DEBUG.dprint(" Interaction_Manager: register_area")
	active_areas.push_back(area)
	

func unregister_area(area: Interaction_Area):
	#DEBUG.dprint(" Interaction_Manager: unregister_area")
	var index = active_areas.find(area)
	if index != -1:
		active_areas.remove_at(index)

func register_door(area: Door_Area):
	DEBUG.dprint(" Interaction_Manager: register_door")
	door_area.push_back(area)
	
func unregister_door(area: Door_Area):
	DEBUG.dprint(" Interaction_Manager: unregister_door")
	var index = door_area.find(area)
	if index != -1:
		door_area.remove_at(index)

func _process(_delta):
	if active_areas.size() > 0 && can_interact:
		#DEBUG.dprint(" Interaction_Manager: _process")
		active_areas.sort_custom(_sort_by_distance_to_player)
		label.text = base_text + active_areas[0].action_name
		label.global_position = active_areas[0].global_position
		label.global_position.y -= 36
		label.global_position.x -= label.size.x / 2
		label.show()
	else:
		label.hide()
			
		
func _sort_by_distance_to_player(area1, area2):
	var area1_to_player = player.global_position.distance_to(area1.global_position)
	var area2_to_player = player.global_position.distance_to(area2.global_position)	
	return area1_to_player < area2_to_player

func _input(event):
	if event.is_action_pressed("interact") && can_interact:
		# Open Door
		if door_area.size() > 0:
			if Global_Data.object_type_being_carried == Global_Func.Carry_Type.KEY:
				if door_area[0].get_door().get_key_color() == Global_Data.object_being_carried.get_key_color():
					DEBUG.dprint("Key and Door Interact")
					door_area[0].door.open_door()
					Global_Data.object_being_carried.use_key()
		# Labels
		if active_areas.size() > 0:
			can_interact = false
			label.hide()
			await active_areas[0].interact.call() 
			can_interact = true
		
				
