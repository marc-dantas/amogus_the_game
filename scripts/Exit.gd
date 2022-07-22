# By Marcio Dantas: https://github.com/marc-dantas/
extends Button


# Only for debug purposes...
func _ready():
	print("res://scripts/GUI/Exit.gd: (call: func) _ready")


# when the button is pushed down...
func _button_down():
	# Exit the game
	print("Button/Exit: (call: event) _button_down")
	get_tree().quit()
