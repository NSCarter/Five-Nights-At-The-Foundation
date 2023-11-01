extends Button


var _left = false

func _ready():
	if not Stats.night_started:
		_left = true
		Stats.night_started = true


func _on_CamerasButton_mouse_entered():
	if _left:
		get_tree().change_scene_to_file("res://Scenes/Cameras.tscn")


func _on_CamerasButton_mouse_exited():
	_left = true
