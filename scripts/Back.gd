# By Marcio Dantas: https://github.com/marc-dantas/
extends Button


# Only for debug purposes...
func _ready():
	print("res://scripts/GUI/Back.gd: (call: func) _ready")


# when the button is pushed down...
func _button_down():
	# Change the scene to "res://resources/gui_scenes/MainMenu.tscn"
	print("Button/Back: (call: event) _button_down")
	get_tree().change_scene("res://resources/gui_scenes/MainMenu.tscn")
