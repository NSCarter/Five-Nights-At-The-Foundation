extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in Stats.invisibleRust:
		get_node("%s" % i).visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
