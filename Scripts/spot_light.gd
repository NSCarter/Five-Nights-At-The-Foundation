class_name SpotLight
extends Node


var textureOn: String
var textureOff: String
var x_pos: int
var y_pos: int
var status: bool
var node: TextureRect

func _init(texture:String,posX:int,posY:int):
	self.textureOn = texture
	self.textureOff = "res://Assests/Images/SCP 017/LightOff.png"
	self.x_pos = posX
	self.y_pos = posY
	status = true


func check_broken_lights():
	var broken_lights = 0
	
	for light in Stats.lights:
		if not light.status:
			broken_lights += 1
			
	if broken_lights >= 3:
		print("You lose :(")
