extends Node2D


func _ready():
	if not("SCP 682" in Stats.CAMERAS):
		$AcidLever.visible = false
	if not("SCP 017" in Stats.CAMERAS):
		$FuseBox.visible = false
		$FuseDrawer.visible = false
	else:
		if Stats.drawer_open:
			$FuseDrawer.openDrawer()
		if Stats.fuse_box_open:
			$FuseBox.openFuseBox()
	if not("SCP 882" in Stats.CAMERAS):
		$DialBase.visible = false
