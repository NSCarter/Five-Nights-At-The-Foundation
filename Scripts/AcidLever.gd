extends TextureButton

var button_down = false

func _process(delta):
	if button_down:
		Stats.acid_pos -= 0.75

func _on_AcidLever_button_down():
	button_down = true

func _on_AcidLever_button_up():
	button_down = false
