extends Node2D

func _ready():
	for i in 4:
		var node = TextureRect.new()
		var light = Stats.lights[i]
		node.position.x = light.posX
		node.position.y = light.posY
		if light.status:
			node.texture = load(light.textureOn)
		else:
			node.texture = load(light.textureOff)
		light.node = node
		self.add_child(node)
		
	self.move_child($Panel, 6)
	self.move_child($Panel2, 5)

