extends Node

var rng = RandomNumberGenerator.new()

var acid_min_line = 518

func _ready():
	rng.randomize()

func _process(delta):
	Stats.acid_pos += 0.099
	
	if (Stats.acid_pos > acid_min_line):
		print("You lose :(")
		
	for i in 4:
		if (rng.randi_range(0, 5000) == 1):
			Stats.lights[i].status = false
			
			var broken_lights = 0
			for light in Stats.lights:
				if not light.status:
					broken_lights += 1
					
			if broken_lights >= 3:
				print("You lose :(")
