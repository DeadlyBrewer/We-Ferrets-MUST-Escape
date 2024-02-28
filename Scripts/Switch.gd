extends AnimatedSprite2D
class_name Switch

@onready var switch = $"."
@onready var interaction_area = $Interaction_Area
@onready var interaction_mouse = $Mouse_Interaction

var is_active = false

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_mouse.set_type(Global_Func.Object_Type.SWITCH)
	interaction_mouse.set_over_text("Switch")
	interaction_area.set_action_name("Switch")
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	if is_active:
		is_active = false
	else:
		is_active = true
	DEBUG.dprint("Switch: _on_interact: %s" % is_active)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if is_active:
		switch.animation = "on"
	else:
		switch.animation = "off"
		
func get_is_active():
	return is_active
