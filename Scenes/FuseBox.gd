extends TextureButton

var open = false

func _on_FuseBox_pressed():
	if open:
		self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxClosed.png")
		$Fuse1.visible = false
		$Fuse2.visible = false
		$Fuse3.visible = false
		$Fuse4.visible = false
		open = false
	else:
		self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxOpened.png")
		$Fuse1.visible = true
		$Fuse2.visible = true
		$Fuse3.visible = true
		$Fuse4.visible = true
		open = true
