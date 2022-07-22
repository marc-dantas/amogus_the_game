extends Area2D

# Only for debug purposes...
func _ready():
	print("res://scripts/levels/Trap.gd: (call: func) _ready")

# when collide...
func _body_entered(body): 
	print("Area2D/Finish: (call: event) _body_entered(body=", body, ")")
	if body == $"/root/Level/Player":
		print(">    Area2D/Finish: (call: true condition) body == $\"/root/Level/Player\"")
		get_tree().change_scene("res://resources/gui_scenes/EndLevel.tscn")
