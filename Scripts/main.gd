extends Node2D


var _controls_scene = preload("res://Scenes/Controls.tscn")
var _cameras_scene = preload("res://Scenes/Cameras.tscn")
var _showing_controls = true


func _ready():
	_change_scene(_controls_scene)


func _process(_delta):
	if Stats.phoneRinging && !$PhoneAudio.playing:
		$PhoneAudio.play()


func _on_phone_audio_finished():
	if Stats.phoneRinging:
		$PhoneAudio.play()


func _on_cameras_button_mouse_entered():
	var scene = _cameras_scene if _showing_controls else _controls_scene
	_change_scene(scene)
	_showing_controls = not _showing_controls


func _change_scene(scene):
	_remove_child_node()
	var node = scene.instantiate()
	$Node2D.add_child(node)


func _remove_child_node():
	for n in $Node2D.get_children():
		$Node2D.remove_child(n)
		n.queue_free()
