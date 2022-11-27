extends TextureButton

var open = false
var fuse1 = true
var fuse2 = true
var fuse3 = true
var fuse4 = true

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


func _on_Fuse1_pressed():
	if (fuse1):
		fuse_removed($Fuse1)
		fuse1 = false
	else:
		if (Stats.hand == "15AFuse"):
			$Fuse1.texture_normal = load("res://Assests/Images/SCP 017/Fuse1.png")


func _on_Fuse2_pressed():
	fuse_removed($Fuse2)


func _on_Fuse3_pressed():
	fuse_removed($Fuse3)


func _on_Fuse4_pressed():
	fuse_removed($Fuse4)


func fuse_removed(fuse):
	fuse.texture_normal = load("res://Assests/Images/SCP 017/FuseEmpty.png")
	
func fuse_replaced(fuse):
	fuse.texture_normal = load("res://Assests/Images/SCP 017/FuseEmpty.png")
