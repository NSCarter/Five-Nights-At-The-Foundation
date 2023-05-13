extends TextureButton

var lever_down = false

func _process(delta):
	if lever_down:
		Stats.acid_pos -= 0.75

func _on_AcidLever_button_down():
	lever_down = true

func _on_AcidLever_button_up():
	lever_down = false
