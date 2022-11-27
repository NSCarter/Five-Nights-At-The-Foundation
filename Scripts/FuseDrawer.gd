extends TextureButton

var open = false

func _on_FuseDrawer_pressed():
	if open:
		self.texture_normal = load("res://Assests/Images/SCP 017/DrawerClosed.png")
		$"5AFuse".visible = false
		$"10AFuse".visible = false
		$"15AFuse".visible = false
		$"20AFuse".visible = false
		open = false
	else:
		self.texture_normal = load("res://Assests/Images/SCP 017/DrawerOpened.png")
		$"5AFuse".visible = true
		$"10AFuse".visible = true
		$"15AFuse".visible = true
		$"20AFuse".visible = true
		open = true


func _on_5AFuse_pressed():
	Stats.hand = "5AFuse"
	print(Stats.hand)


func _on_10AFuse_pressed():
	Stats.hand = "10AFuse"
	print(Stats.hand)


func _on_15AFuse_pressed():
	Stats.hand = "15AFuse"
	print(Stats.hand)


func _on_20AFuse_pressed():
	Stats.hand = "20AFuse"
	print(Stats.hand)
