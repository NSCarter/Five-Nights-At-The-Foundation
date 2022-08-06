extends Node2D

func _ready():
	if not("SCP 682" in Stats.cameras):
		$AcidLever.visible = false
