extends Node

class_name Fuse

var texture: String
var textureEmpty: String
var posX: int
var posY: int
var status: bool
var node: TextureButton
var light: LightCamera

func _init(texture:String, posX:int, posY:int, light):
	self.texture = texture
	self.textureEmpty = "res://Assests/Images/SCP 017/FuseEmpty.png"
	self.posX = posX
	self.posY = posY
	self.light = light
	status = true
