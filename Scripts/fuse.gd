class_name Fuse
extends Node


var texture: String
var texture_empty: String
var pos_x: int
var pos_y: int
var status: bool
var node: TextureButton
var light: LightCamera

func _init(texture: String, pos_x: int, pos_y: int, light):
	self.texture = texture
	self.texture_empty = "res://Assests/Images/SCP 017/FuseEmpty.png"
	self.pos_x = pos_x
	self.pos_y = pos_y
	self.light = light
	status = true
