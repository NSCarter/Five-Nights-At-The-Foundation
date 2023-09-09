extends Node

var rng = RandomNumberGenerator.new()

var acid_min_line = 518

signal dial_rotation_changed

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
			
	if (Stats.dialRotation < 90):
		var chance = 250 + (Stats.dialRotation + 19.8)
		
		if (rng.randi_range(0, chance) == 1):
			var num = rng.randi_range(1, 77)
			Stats.invisibleRust += ["Rust%d" % num]
			if Stats.invisibleRust.size() > 47:
				print ("You lose :( (882)")
	else:
		if (rng.randi_range(0, 40) == 1):
			var pos = rng.randi_range(0, Stats.invisibleRust.size() - 1)
			Stats.invisibleRust.remove_at(pos)
			
	Stats.remaining_water -= pow(((Stats.dialRotation + 90.0) / 180.0) + 0.6, 3.0)
	
	if (Stats.remaining_water <= 0):
		Stats.dialRotation -= 1
		emit_signal('dial_rotation_changed')
