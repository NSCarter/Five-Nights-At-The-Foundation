extends TextureButton

func _on_FuseBox_pressed():
	if Stats.fuseBoxOpen:
		closeFuseBox()
	else:
		openFuseBox()
		
	Stats.fuseBoxOpen = !Stats.fuseBoxOpen

func openFuseBox():
	self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxOpened.png")
	
	for i in 4:
		var node = TextureButton.new()
		var fuse = Stats.fuses[i]
		node.position.x = fuse.posX
		node.position.y = fuse.posY
		node.connect("pressed",Callable(self,"_on_Fuse_pressed").bind(fuse))
		
		if fuse.status:
			node.texture_normal = load(fuse.texture)
		else:
			node.texture_normal = load(fuse.textureEmpty)
		fuse.node = node
		self.add_child(node)
		
func closeFuseBox():
	self.texture_normal = load("res://Assests/Images/SCP 017/FuseBoxClosed.png")
	
	for i in self.get_children():
		self.remove_child(i)
		i.queue_free()

func _on_Fuse_pressed(fuse):
	if (fuse.status):
		fuse_removed(fuse)
	else:
		fuse_replaced(fuse)

func fuse_removed(fuse):
	fuse.node.texture_normal = load(fuse.textureEmpty)
	fuse.status = false
	fuse.light.status = false
	
	fuse.light.check_broken_lights()

func fuse_replaced(fuse):
	if (Stats.hand == ""):
		return
		
	fuse.node.texture_normal = load(fuse.texture)
	
	if (Stats.hand == "15AFuse"):
		fuse.light.status = true
		
	Stats.hand = ""
	fuse.status = true
