extends Node2D

func _ready():
	for i in range(Stats.light_status.size()):
		var light = get_child(i) as TextureRect
		if Stats.light_status[i] == true:
			light.texture = load("res://Assests/Images/SCP 017/LightOn.png")
		else:
			light.texture = load("res://Assests/Images/SCP 017/LightOff.png")
