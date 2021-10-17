extends KinematicBody2D


const GRAVITY = 9.8 * 2
const MAX_SPEED = 300

var dragging = true
var y_velocity = 0

signal seed_press_drag_signal
signal seed_release_drag_signal

func get_seed_position():
	return position

func _ready():
	connect("seed_press_drag_signal", self, "_press_drag")
	connect("seed_release_drag_signal", self, "_release_drag")


func _press_drag():
	dragging = true


func _release_drag():
	dragging = false


func _physics_process(_delta):
	if !dragging:
		if GRAVITY < MAX_SPEED:
			y_velocity += GRAVITY
		move_and_slide(Vector2(0, y_velocity))

func _process(_delta):
	if dragging:
		y_velocity = 0
		position = get_viewport().get_mouse_position() - Vector2(640, 0)

func _on_KinematicBody2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.is_action_pressed("click"):
			emit_signal("seed_press_drag_signal")
		elif event.is_action_released("click"):
			emit_signal("seed_release_drag_signal")
