extends VBoxContainer

func _ready():
	for i in range(Stats.cameras.size()):
		var button = Button.new()
		button.set_size(Vector2(125, 40))
		button.custom_minimum_size = Vector2(0, 40)
		button.text = Stats.cameras[i]
		button.connect("pressed",Callable(self,"change_camera").bind(Stats.cameras[i]))
		button.show()
		add_child(button)
		
		if button.text == Stats.selected_cam:
			button.grab_focus()
			change_camera(Stats.selected_cam)

func change_camera(name):
	var cam = load("Scenes/%s.tscn" % name).instantiate()
	remove_child_node()
	$"../SelectedCam".add_child(cam)
	Stats.selected_cam = name
	
func remove_child_node():
	for n in $"../SelectedCam".get_children():
		$"../SelectedCam".remove_child(n)
		n.queue_free()
