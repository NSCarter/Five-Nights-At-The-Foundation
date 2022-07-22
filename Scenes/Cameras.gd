extends Control

func _on_Cam_1_pressed():
	var cam = load("Scenes/Cam 1.tscn").instance()
	remove_child_node()
	$SelectedCam.add_child(cam)


func _on_Cam_2_pressed():
	var cam = load("Scenes/Cam 2.tscn").instance()
	remove_child_node()
	$SelectedCam.add_child(cam)
	
func remove_child_node():
	for n in $SelectedCam.get_children():
		$SelectedCam.remove_child(n)
		n.queue_free()
