extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_ControlsButton_button_down():
	get_tree().change_scene("res://Scenes/Controls.tscn")


func _on_ControlsButton_mouse_entered():
	get_tree().change_scene("res://Scenes/Controls.tscn")
