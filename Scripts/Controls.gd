extends Node2D

func _ready():
	if not("SCP 682" in Stats.cameras):
		$AcidLever.visible = false
	if not("SCP 017" in Stats.cameras):
		$FuseBox.visible = false
		$FuseDrawer.visible = false
	else:
		if Stats.drawerOpen:
			$FuseDrawer.openDrawer()
		if Stats.fuseBoxOpen:
			$FuseBox.openFuseBox()
