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
			
			Stats.lights[i].check_broken_lights()
			
	if (rng.randi_range(0, 250) == 1):
		var num = rng.randi_range(1, 77)
		Stats.invisibleRust += ["Rust%d" % num]
	
