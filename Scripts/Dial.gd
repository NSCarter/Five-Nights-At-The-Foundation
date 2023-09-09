extends StaticBody2D

var pressed = false

func _ready():
	ConstantFunctions.dial_rotation_changed.connect(_dial_rotation_changed)

func _enter_tree():
	$DialImage.rotation_degrees = Stats.dialRotation

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		pressed = event.pressed

func _input(event):
	if Stats.remaining_water <= 0:
		return
		
	if pressed:
		if event is InputEventMouseButton:
			if not event.pressed:
				pressed = false
				
		if event is InputEventMouseMotion:
			if event.relative.x > 0:
				$DialImage.rotation_degrees += 4
				if $DialImage.rotation_degrees > 90:
					$DialImage.rotation_degrees = 90
				Stats.dialRotation = $DialImage.rotation_degrees
			if event.relative.x < 0:
				$DialImage.rotation_degrees -= 4
				if $DialImage.rotation_degrees < -90:
					$DialImage.rotation_degrees = -90
				Stats.dialRotation = $DialImage.rotation_degrees
					
		_check_dial_percent()
		
func _dial_rotation_changed():
	$DialImage.rotation_degrees = Stats.dialRotation
	_check_dial_percent()

func _check_dial_percent():
	if $DialImage.rotation_degrees < -19.8:
			print("You lose! :()")
