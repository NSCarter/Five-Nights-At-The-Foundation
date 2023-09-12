extends Node


signal dial_rotation_changed

const ACID_MIN_LINE = 518

var _rng = RandomNumberGenerator.new()

func _ready():
	_rng.randomize()


func _process(delta):
	Stats.acid_pos += 0.099
	
	if Stats.acid_pos > ACID_MIN_LINE:
		print("You lose :(")
		
	for i in 4:
		if _rng.randi_range(0, 5000) == 1:
			Stats.lights[i].status = false
			
			Stats.lights[i].check_broken_lights()
			
	if Stats.dial_rotation < 90:
		var chance = 250 + Stats.dial_rotation + 19.8
		
		if _rng.randi_range(0, chance) == 1:
			var num = _rng.randi_range(1, 77)
			Stats.invisible_rust += ["Rust%d" % num]
			if Stats.invisible_rust.size() > 47:
				print ("You lose :( (882)")
	else:
		if _rng.randi_range(0, 40) == 1:
			var pos = _rng.randi_range(0, Stats.invisible_rust.size() - 1)
			Stats.invisibleRust.remove_at(pos)
			
	Stats.remaining_salt_water -= pow(((Stats.dial_rotation + 90.0) / 180.0) + 0.6, 3.0)
	
	if Stats.remaining_salt_water <= 0:
		Stats.dial_rotation -= 0.1
		emit_signal("dial_rotation_changed")
