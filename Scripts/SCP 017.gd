extends Node2D

func _ready():
	for i in 4:
		var node = TextureRect.new()
		var fuse = Stats.fuses[i]
		node.rect_position.x = fuse.posX
		node.rect_position.y = fuse.posY
		if fuse.status:
			node.texture = load(fuse.textureOn)
		else:
			node.texture = load(fuse.textureOff)
		fuse.light = node
		self.add_child(node)
		
	self.move_child($Panel, 6)
	self.move_child($Panel2, 5)

