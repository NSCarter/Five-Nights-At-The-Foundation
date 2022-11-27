extends Node

var night_started = false

var selected_cam = "SCP 017"

var cameras = ["SCP 682", "SCP 017", "SCP 882"]

var acid_pos = 200

var light_status = [true, true, true, true]

var hand = ""

var fuses = [Fuse.new("res://Assests/Images/SCP 017/LightOn.png",0,0),
			 Fuse.new("res://Assests/Images/SCP 017/LightOn.png",512,0),
			 Fuse.new("res://Assests/Images/SCP 017/LightOn.png",0,300),
			 Fuse.new("res://Assests/Images/SCP 017/LightOn.png",512,300)]
