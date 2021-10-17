extends KinematicBody2D


const RANGE = 400.0
const MIN_POS = 320.0 - (RANGE / 2)
const MAX_POS = 320.0 + (RANGE / 2)

onready var holdingLeftClick = false
onready var panelModel = get_node("../Panel2D")


func _physics_process(_delta):
	var x_mouse_pos = get_global_mouse_position().x
	if holdingLeftClick == true and x_mouse_pos >= MIN_POS and x_mouse_pos <= MAX_POS:
		var rotation_value = ((((x_mouse_pos - MIN_POS) - (RANGE / 2)) / (RANGE / 2)) * 90.0) + 180.0
		(panelModel as Sprite).set_rotation_degrees(rotation_value)
		position.x = x_mouse_pos


func _on_KinematicBody2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		holdingLeftClick = true
	if event is InputEventMouseButton and !event.pressed:
		holdingLeftClick = false


func _on_KinematicBody2D_mouse_exited():
	holdingLeftClick = false
