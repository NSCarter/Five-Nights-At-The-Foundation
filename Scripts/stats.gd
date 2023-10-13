extends Node


const CAMERAS = ["SCP 682", "SCP 017", "SCP 882"]

var night_started = false
var selected_cam = "SCP 882"
var acid_pos = 200
var hand = ""
var fuse_box_open = false
var drawer_open = false
var lights = [SpotLight.new("res://Assests/Images/SCP 017/LightOn.png", 0, 0),
	SpotLight.new("res://Assests/Images/SCP 017/LightOn.png", 512, 0),
	SpotLight.new("res://Assests/Images/SCP 017/LightOn.png", 0, 300),
	SpotLight.new("res://Assests/Images/SCP 017/LightOn.png", 512, 300),]
var fuses = [Fuse.new("res://Assests/Images/SCP 017/Fuse1.png", 39.781, 12.449, lights[0]),
	Fuse.new("res://Assests/Images/SCP 017/Fuse2.png" ,39.781,62, lights[1]),
	Fuse.new("res://Assests/Images/SCP 017/Fuse3.png", 40.724,107.775, lights[2]),
	Fuse.new("res://Assests/Images/SCP 017/Fuse4.png", 40.724,152.607, lights[3]),]
var dial_rotation = 0
var invisible_rust = []
var remaining_salt_water = Constants.STARTING_SALT_WATER
