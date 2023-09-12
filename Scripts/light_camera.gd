class_name LightCamera
extends Node


var textureOn: String
var textureOff: String
var posX: int
var posY: int
var status: bool
var node: TextureRect

func _init(texture:String,posX:int,posY:int):
	self.textureOn = texture
	self.textureOff = "res://Assests/Images/SCP 017/LightOff.png"
	self.posX = posX
	self.posY = posY
	status = true


func check_broken_lights():
	var broken_lights = 0
	
	for light in Stats.lights:
		if not light.status:
			broken_lights += 1
			
	if broken_lights >= 3:
		print("You lose :(")
