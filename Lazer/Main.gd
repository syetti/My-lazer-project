extends Control

var lazering = false 

export (PackedScene) var lazer_scene

func _process(delta):
	if(lazering):
		blast()
	

func _input(event):
	if (event.is_action_pressed("ui_select")):
		lazering = true
	if (event.is_action_released("ui_select")):
		lazering = false
		
func _ready():
	set_process_input(true)
	set_process(true)
func blast():
	var lazer = lazer_scene.instance()
	lazer.set_pos(get_pos() + get_node("Position2D").get_pos())
	get_parent().add_child(lazer)
