extends Control

func _ready():
	change_camera(Stats.selected_cam)
	
func change_camera(name):
	var cam = load("Scenes/%s.tscn" % name).instance()
	remove_child_node()
	$SelectedCam.add_child(cam)
	Stats.selected_cam = name
	
func remove_child_node():
	for n in $SelectedCam.get_children():
		$SelectedCam.remove_child(n)
		n.queue_free()
