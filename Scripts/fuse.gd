class_name Fuse
extends Node


var texture_filled: String
var texture_empty: String
var x_pos: float
var y_pos: float
var status: bool
var node: TextureButton
var spot_light: SpotLight

func _init(texture: String, pos_x: float, pos_y: float, light):
	self.texture_filled = texture
	self.texture_empty = "res://Assests/Images/SCP 017/FuseEmpty.png"
	self.x_pos = pos_x
	self.y_pos = pos_y
	self.spot_light = light
	status = true
