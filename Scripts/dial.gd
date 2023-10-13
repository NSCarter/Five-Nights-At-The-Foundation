extends StaticBody2D


var _pressed = false

func _enter_tree():
	$DialImage.rotation_degrees = Stats.dial_rotation


func _ready():
	ConstantFunctions.dial_rotation_changed.connect(_dial_rotation_changed)


func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		_pressed = event.pressed


func _input(event):
	if Stats.remaining_salt_water <= 0:
		return

	if _pressed:
		if event is InputEventMouseButton:
			if not event.pressed:
				_pressed = false
				
		if event is InputEventMouseMotion:
			if event.relative.x > 0:
				$DialImage.rotation_degrees += 4
				if $DialImage.rotation_degrees > 90:
					$DialImage.rotation_degrees = 90
				Stats.dial_rotation = $DialImage.rotation_degrees
			if event.relative.x < 0:
				$DialImage.rotation_degrees -= 4
				if $DialImage.rotation_degrees < -90:
					$DialImage.rotation_degrees = -90
				Stats.dial_rotation = $DialImage.rotation_degrees
					
		_check_dial_percent()


func _dial_rotation_changed():
	$DialImage.rotation_degrees = Stats.dial_rotation
	_check_dial_percent()


func _check_dial_percent():
	if $DialImage.rotation_degrees < -19.8:
		print("You lose! :()")
