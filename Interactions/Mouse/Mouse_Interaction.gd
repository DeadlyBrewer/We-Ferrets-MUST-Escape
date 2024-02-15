extends Area2D

@onready var label = $Label
var over_text: String = "Mouse_Over"
var show_label = false

# Called when the node enters the scene tree for the first time.
func _ready():
	label.hide()
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if show_label:
		label.text = "[center]" + over_text
		label.global_position = global_position
		label.global_position.y -= 36
		label.global_position.x -= label.size.x / 2
		label.show()
	else:
		label.hide()


func _on_mouse_entered():
	show_label = true
	#DEBUG.dprint("Mouse_Interaction: _on_mouse_entered | %s" % show_label)


func _on_mouse_exited():
	show_label = false
	#DEBUG.dprint("Mouse_Interaction: _on_mouse_exited | %s" % show_label)
	

func set_over_text(new_text):
	over_text = new_text
	
func get_over_text():
	return over_text
