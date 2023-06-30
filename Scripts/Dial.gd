extends StaticBody2D

var pressed = false

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		pressed = event.pressed

func _input(event):
	if pressed:
		if event is InputEventMouseButton:
			if not event.pressed:
				pressed = false
				
		if event is InputEventMouseMotion:
			if event.relative.x > 0:
				$DialImage.rotation_degrees += 4
				if $DialImage.rotation_degrees > 90:
					$DialImage.rotation_degrees = 90
			if event.relative.x < 0:
				$DialImage.rotation_degrees -= 4
				if $DialImage.rotation_degrees < -90:
					$DialImage.rotation_degrees = -90
