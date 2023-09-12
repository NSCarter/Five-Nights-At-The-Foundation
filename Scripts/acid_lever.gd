extends TextureButton


var _lever_down = false

func _process(delta):
	if _lever_down:
		Stats.acid_pos -= 1


func _on_AcidLever_button_down():
	_lever_down = true


func _on_AcidLever_button_up():
	_lever_down = false
