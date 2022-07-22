# By Marcio Dantas: https://github.com/marc-dantas/
extends Button


# Only for debug purposes...
func _ready():
	print("res://scripts/levels/L3.gd: (call: func) _ready")


func _button_down():
	get_tree().change_scene("res://resources/levels/L3.tscn")
