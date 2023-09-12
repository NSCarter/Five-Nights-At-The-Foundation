extends VBoxContainer


func _ready():
	for i in range(Stats.CAMERAS.size()):
		var button = Button.new()
		button.set_size(Vector2(125, 40))
		button.custom_minimum_size = Vector2(0, 40)
		button.text = Stats.CAMERAS[i]
		button.connect("pressed",Callable(self,"_change_camera").bind(Stats.CAMERAS[i]))
		button.show()
		add_child(button)
		
		if button.text == Stats.selected_cam:
			button.grab_focus()
			_change_camera(Stats.selected_cam)


func _change_camera(name):
	_remove_child_node()
	var cam = load("Scenes/%s.tscn" % name).instantiate()
	$"../SelectedCam".add_child(cam)
	Stats.selected_cam = name
	
	
func _remove_child_node():
	for n in $"../SelectedCam".get_children():
		$"../SelectedCam".remove_child(n)
		n.queue_free()
