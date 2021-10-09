extends KinematicBody2D


const GRAVITY = 9.8 * 2
const MAX_SPEED = 300

var dragging = true
var y_velocity = 0

signal press_drag_signal;
signal release_drag_signal;


func _ready():
	connect("press_drag_signal", self, "_press_drag")
	connect("release_drag_signal", self, "_release_drag")


func _press_drag():
	dragging = true


func _release_drag():
	dragging = false


func _physics_process(delta):
	if !dragging:
		if GRAVITY < MAX_SPEED:
			y_velocity += GRAVITY
		move_and_slide(Vector2(0, y_velocity))

func _process(delta):
	
	if Input.is_action_just_pressed("click"):
		emit_signal("press_drag_signal")
	elif Input.is_action_just_released("click"):
		emit_signal("release_drag_signal")
	
	if dragging:
		y_velocity = 0
		position = get_viewport().get_mouse_position() - Vector2(400, 0)
