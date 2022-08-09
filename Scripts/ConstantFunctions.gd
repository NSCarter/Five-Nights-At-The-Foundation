extends Node

var acid_min_line = 518

func _process(delta):
	Stats.acid_pos += 0.099
	
	if (Stats.acid_pos > acid_min_line):
		print("You lose :(")
