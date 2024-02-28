extends Node2D

class_name Testing_Map

@onready var pp_light_1 = $Pressure_Plates/Pressure_Plate_Light_1
@onready var door1 = $Switch_Doors/Switch_Door_Light_1

@onready var pp_medium_1 = $Pressure_Plates/Pressure_Plate_Medium_1
@onready var door2 = $Switch_Doors/Switch_Door_Med_1

@onready var pp_heavy_1 = $Pressure_Plates/Pressure_Plate_Heavy_1
@onready var door3 = $Switch_Doors/Switch_Door_Heavy_1
@onready var door4 = $Switch_Doors/Switch_Door_Heavy_2

@onready var switch = $Switches/Switch
@onready var door5 = $Switch_Doors/Switch_Door_Switch_1
@onready var door6 = $Switch_Doors/Switch_Door_Switch_2


func _physics_process(_delta):
	if pp_light_1.get_is_active():
		door1.set_open()
	else:
		door1.set_closed()

	if pp_medium_1.get_is_active():
		door2.set_open()
	else:
		door2.set_closed()
		
	if pp_heavy_1.get_is_active():
		door3.set_open()
		door4.set_open()
	else:
		door3.set_closed()
		door4.set_closed()
		
	if switch.get_is_active():
		door5.set_open()
		door6.set_open()
	else:
		door5.set_closed()
		door6.set_closed()
#func get_active_pp_l_1():
	#return pp_light_1.get_is_active()
#
#func get_active_pp_m_1():
	#return pp_medium_1.get_is_active()
#
#func get_active_pp_h_1():
	#return pp_light_1.get_is_active()
