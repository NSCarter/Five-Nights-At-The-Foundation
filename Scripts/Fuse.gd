extends Node

class_name Fuse

var textureOn: String
var textureOff: String
var posX: int
var posY: int
var status: bool
var light: TextureRect

func _init(texture:String, posX:int, posY:int):
	self.textureOn = texture
	self.textureOff = "res://Assests/Images/SCP 017/LightOff.png"
	self.posX = posX
	self.posY = posY
	status = true
