extends Node2D


func _ready():
	if not("SCP 682" in Stats.CAMERAS):
		$AcidLever.visible = false
	if not("SCP 017" in Stats.CAMERAS):
		$FuseBox.visible = false
		$FuseDrawer.visible = false
	else:
		if Stats.drawer_open:
			$FuseDrawer.open_drawer()
		if Stats.fuse_box_open:
			$FuseBox.open_fuse_box()
	if not("SCP 882" in Stats.CAMERAS):
		$DialBase.visible = false
