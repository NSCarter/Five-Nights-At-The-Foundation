extends TextureButton


func _on_FuseDrawer_pressed():
	if Stats.drawer_open:
		_close_drawer()
	else:
		_open_drawer()
		
	Stats.drawer_open = not Stats.drawer_open


func _open_drawer():
	self.texture_normal = load("res://Assests/Images/SCP 017/DrawerOpened.png")
	$"5AFuse".visible = true
	$"10AFuse".visible = true
	$"15AFuse".visible = true
	$"20AFuse".visible = true


func _close_drawer():
	self.texture_normal = load("res://Assests/Images/SCP 017/DrawerClosed.png")
	$"5AFuse".visible = false
	$"10AFuse".visible = false
	$"15AFuse".visible = false
	$"20AFuse".visible = false


func _on_5AFuse_pressed():
	Stats.hand = "5AFuse"


func _on_10AFuse_pressed():
	Stats.hand = "10AFuse"


func _on_15AFuse_pressed():
	Stats.hand = "15AFuse"


func _on_20AFuse_pressed():
	Stats.hand = "20AFuse"
