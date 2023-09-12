extends TextureButton


func _on_FuseBox_pressed():
	if Stats.fuse_box_open:
		_close_fuse_box()
	else:
		_open_fuse_box()
		
	Stats.fuse_box_open = not Stats.fuse_box_open


func _open_fuse_box():
	self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxOpened.png")
	
	for i in 4:
		var node = TextureButton.new()
		var fuse = Stats.fuses[i]
		node.position.x = fuse.pos_x
		node.position.y = fuse.pos_y
		node.connect("pressed", Callable(self,"_on_Fuse_pressed").bind(fuse))
		
		if fuse.status:
			node.texture_normal = load(fuse.texture)
		else:
			node.texture_normal = load(fuse.texture_empty)
		fuse.node = node
		self.add_child(node)


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
	fuse.light.status = false
	
	fuse.light.check_broken_lights()


func _fuse_replaced(fuse):
	if Stats.hand == "":
		return
		
	fuse.node.texture_normal = load(fuse.texture)
	
	if Stats.hand == "15AFuse":
		fuse.light.status = true
		
	Stats.hand = ""
	fuse.status = true
