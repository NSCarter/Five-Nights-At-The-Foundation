extends Button


var _left = false

func _on_ControlsButton_mouse_entered():
	if _left:
		get_tree().change_scene_to_file("res://Scenes/Controls.tscn")


func _on_ControlsButton_mouse_exited():
	_left = true
