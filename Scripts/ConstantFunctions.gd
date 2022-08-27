extends Node

var rng = RandomNumberGenerator.new()

var acid_min_line = 518

func _ready():
	rng.randomize()

func _process(delta):
	Stats.acid_pos += 0.099
	
	if (Stats.acid_pos > acid_min_line):
		print("You lose :(")
		
	for i in range(Stats.light_status.size()):
		if (rng.randi_range(0, 5000) == 1):
			Stats.light_status[i] = false
