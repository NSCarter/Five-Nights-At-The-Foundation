extends TextureButton


func open_fuse_box():
	self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxOpened.png")
	
	for i in 4:
		var node = TextureButton.new()
		var fuse = Stats.fuses[i]
		node.position.x = fuse.x_pos
		node.position.y = fuse.y_pos
		node.connect("pressed", Callable(self,"_on_Fuse_pressed").bind(fuse))
		
		if fuse.status:
			node.texture_normal = load(fuse.texture_filled)
		else:
			node.texture_normal = load(fuse.texture_empty)
		fuse.node = node
		self.add_child(node)


func _on_FuseBox_pressed():
	if Stats.fuse_box_open:
		_close_fuse_box()
	else:
		open_fuse_box()
		
	Stats.fuse_box_open = not Stats.fuse_box_open


func _close_fuse_box():
	self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxClosed.png")
	
	for i in self.get_children():
		self.remove_child(i)
		i.queue_free()


func _on_Fuse_pressed(fuse):
	if fuse.status:
		_fuse_removed(fuse)
	else:
		_fuse_replaced(fuse)


func _fuse_removed(fuse):
	fuse.node.texture_normal = load(fuse.texture_empty)
	fuse.status = false
	fuse.spot_light.status = false
	
	fuse.spot_light.check_broken_lights()


func _fuse_replaced(fuse):
	if Stats.hand == "":
		return
		
	fuse.node.texture_normal = load(fuse.texture_filled)
	
	if Stats.hand == "15AFuse":
		fuse.spot_light.status = true
		
	Stats.hand = ""
	fuse.status = true
