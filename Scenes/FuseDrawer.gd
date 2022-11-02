extends TextureButton

var open = false

func _on_FuseDrawer_pressed():
	if open:
		self.texture_normal = load("res://Assests/Images/SCP 017/DrawerClosed.png")
		open = false
	else:
		self.texture_normal = load("res://Assests/Images/SCP 017/DrawerOpened.png")
		open = true
