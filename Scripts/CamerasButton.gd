extends Button

var left = false

func _ready():
	if (!Stats.night_started):
		left = true
		Stats.night_started = true

func _on_CamerasButton_mouse_entered():
	if (left):
		get_tree().change_scene_to_file("res://Scenes/Cameras.tscn")

func _on_CamerasButton_mouse_exited():
	left = true
