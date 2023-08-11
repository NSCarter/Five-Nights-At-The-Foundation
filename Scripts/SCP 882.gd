extends Node2D

func _ready():
	for i in Stats.invisibleRust:
		get_node("%s" % i).visible = false
	
	$RemainingWater.value = (Stats.remaining_water / Constants.STARTING_WATER) * 100

func _process(delta):
	pass
