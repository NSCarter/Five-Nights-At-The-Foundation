extends Node2D


func _ready():
	for i in Stats.invisible_rust:
		get_node("%s" % i).visible = false
	
	$RemainingWater.value = (Stats.remaining_salt_water / Constants.STARTING_SALT_WATER) * 100
