extends Node2D

var phone_up = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	if phone_up:
		$Phone/Receiver.texture_normal = load("res://Assests/Images/SCP 2992/Receiver.png")
	else:
		$Phone/Receiver.texture_normal = load("res://Assests/Images/SCP 2992/ReceiverUp.png")
		
	phone_up = !phone_up
