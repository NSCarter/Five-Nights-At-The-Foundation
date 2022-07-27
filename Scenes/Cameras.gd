extends Control

func _ready():
	change_camera(Stats.selected_cam)

func _on_Cam_1_pressed():
	change_camera("Cam 1")

func _on_Cam_2_pressed():
	change_camera("Cam 2")
	
func change_camera(name):
	var cam = load("Scenes/%s.tscn" % name).instance()
	remove_child_node()
	$SelectedCam.add_child(cam)
	Stats.selected_cam = name
	
func remove_child_node():
	for n in $SelectedCam.get_children():
		$SelectedCam.remove_child(n)
		n.queue_free()
