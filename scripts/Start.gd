# By Marcio Dantas: https://github.com/marc-dantas/
extends Button


# Only for debug purposes...
func _ready():
	print("res://scripts/GUI/Start.gd: (call: func) _ready")


# when the button is pushed down...
func _button_down():
	# Change the scene to "res://resources/gui_scenes/ChooseLevel.tscn"
	print("Button/Start: (call: event) _button_down")
	get_tree().change_scene("res://resources/gui_scenes/ChooseLevel.tscn")
