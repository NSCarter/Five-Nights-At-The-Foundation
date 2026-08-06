extends Node2D

var phone_up = false

func _ready():
	randomize()
	$Timer.wait_time = randi_range(30, 120)
	$Timer.start()


func _on_texture_button_pressed():
	if phone_up:
		$Phone/Receiver.texture_normal = load("res://Assests/Images/SCP 2992/Receiver.png")
	else:
		$Phone/Receiver.texture_normal = load("res://Assests/Images/SCP 2992/ReceiverUp.png")
		
	phone_up = !phone_up


func _on_timer_timeout() -> void:
	Stats.phoneRinging = true
	$Timer.wait_time = randi_range(30, 120)
	$Timer.start()
