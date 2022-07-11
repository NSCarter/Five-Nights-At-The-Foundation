extends Button

var left = false

func _ready():
	pass
	
func _on_ControlsButton_mouse_entered():
	if (left):
		get_tree().change_scene("res://Scenes/Controls.tscn")

func _on_ControlsButton_mouse_exited():
	left = true
