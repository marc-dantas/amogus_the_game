extends KinematicBody2D

const SPEED = 130
const GRAVITY = 18.1
const JUMP = 400


func _ready():
	print("res://scripts/Player.gd: (call: func) _ready")


var log_start = false
var motion = Vector2()


func _process(delta):
	
	# Gravity
	motion.y += GRAVITY
	
	# Movement
	if Input.is_action_pressed("ui_left"):
		print("KinematicBody2d/Player: (call: keycode) ui_left")
		print(">    KinematicBody2d/Player: (call: movement) BACKWARD")
		motion.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		print("KinematicBody2d/Player: (call: keycode) ui_right")
		print(">    KinematicBody2d/Player: (call: movement) FORWARD")
		motion.x = SPEED
	elif Input.is_action_just_pressed("ui_select") and is_on_floor():
		print("KinematicBody2d/Player: (call: keycode) ui_select")
		print(">    KinematicBody2d/Player: (call: movement) JUMP")
		motion.y = -JUMP
	else:
		motion.x = 0
	
	motion = move_and_slide(motion, Vector2(0, -1))
